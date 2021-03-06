package chap08.spring;

import java.time.LocalDateTime;

public class MemberRegisterService {

    private MemberDao memberDao;

    public MemberRegisterService(MemberDao memberDao) {
        this.memberDao = memberDao;
    }

    public long regist(RegisterRequest request) {
        Member member = memberDao.selectByEmail(request.getEmail());
        if (member != null) {
            throw new DuplicateMemberException("중복 email : " + request.getEmail());
        }
        Member newMember = new Member(
                request.getEmail(),
                request.getPassword(),
                request.getName(),
                LocalDateTime.now()
        );
        memberDao.insert(newMember);
        return newMember.getId();
    }
}
