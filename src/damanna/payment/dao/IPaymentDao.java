package damanna.payment.dao;

import java.util.List;

import damanna.vo.PaymentVO;

public interface IPaymentDao {

	/**
	 * paymentVO에 담겨진 데이터를 DB에 insert 하는 메서드
	 * @param payVo db에 insert할 자료가 저장될 paymentVO객체
	 * @return 작업성공 : 1이상, 작업실패 : 0
	 */
	public int insertPayment(PaymentVO payVo);

	public List<PaymentVO> getAllpayList();
}
