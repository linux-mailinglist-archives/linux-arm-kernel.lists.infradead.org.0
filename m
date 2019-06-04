Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B1934888
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CGiqHblNhwImxGTkJTliclPofsMVz6rEXX2H9i+9qaM=; b=iONk4aLzPAIu+7
	o270/TD6vIGo+UIrFD/IXEaDCXZB5wlRI4BBaKECLtb/wyFPZ9nWqCcHClYbEpABYn7bCL5J3lfJe
	AakB3loqQbFHjl4T49JIBnaE6IWyhvmfnRraaUCfo/LqOZNWStdwvHF3RgVurrlJYuiP2kalyZgxs
	8J36olBEDAge+wUrNxR6lDjUG7BN1vEjVqhHFhlWn2OHG3GvIe3+Ssqh9MpY19Klz2W+5sVyq6q9s
	O2cwzQqO0e1Ak9URT4M4rp2ZtFbzeoDKJLbz0xeHy4p3rH7CGwyoItBtdQSVH4CP9Js9wV2qQD7/8
	Py0SiU3va17xzF82/mxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9Nm-00015F-4a; Tue, 04 Jun 2019 13:21:42 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9NO-0000eL-FX
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:21:35 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x54DHe5h015265; Tue, 4 Jun 2019 15:21:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Z2wZnvXgH6bB09YHyNfYI32IlYynHCA1Xqq9/7lFTwg=;
 b=H+I7whk9sG8h4A89ycMv5XHr1o7DazjFe9o/suKueQljc0gCwHkcZKiPP8ZO72HqyO9N
 KsELv+j+c8gXO+WvAhhb4FDUdC+5kljDnqeqS0uceyHzFlDHuditRub05LqtzFLCAF3L
 aIrIYywGTIzQ0D/uHBHrn4syzqPkmMqUG2PmkfYnLO8Ld/pfiVdX/yJiv8iUUa52BeNN
 7guXsQ9Mpk74TSDAjHEKoIhtxYkN9i+WjgEYaMa8/rjlyHR5Kt7onZftDkoWJgFZP8je
 MOmDmRVeqkFF2sFS6TPsuOZHuyQl0DSXGGBCObvpLydJ2KNxGtkZN3RRGeHTplD0eomE jQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sunmegvxm-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 04 Jun 2019 15:21:13 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0BB0F34;
 Tue,  4 Jun 2019 13:21:11 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DF6662A65;
 Tue,  4 Jun 2019 13:21:10 +0000 (GMT)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 4 Jun 2019 15:21:10 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <wsa@the-dreams.de>, <pierre-yves.mordret@st.com>
Subject: [PATCH] i2c: i2c-stm32f7: Add I2C_SMBUS_I2C_BLOCK_DATA support
Date: Tue, 4 Jun 2019 15:20:51 +0200
Message-ID: <1559654451-26612-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-04_09:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_062119_125878_3209378E 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the support of I2C_SMBUS_I2C_BLOCK_DATA transaction type
for the stm32f7 SMBUS Controller.
Use emulated I2C_SMBUS_I2C_BLOCK_DATA transactions as there is no specific
hardware in STM32 I2C to manage this (e.g. like no need for PEC here).
Emulated transfer will fall back calling i2c transfer method where there's
already support for DMAs for example.
So, use the I2C_FUNC_SMBUS_I2C_BLOCK in stm32f7_i2c_func(), and rely on
emulated transfer by returning -EOPNOTSUPP in the smbus_xfer() routine
for such a case.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/i2c/busses/i2c-stm32f7.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index 48337be..68a751e 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -953,6 +953,9 @@ static int stm32f7_i2c_smbus_xfer_msg(struct stm32f7_i2c_dev *i2c_dev,
 		cr2 &= ~STM32F7_I2C_CR2_RD_WRN;
 		f7_msg->read_write = I2C_SMBUS_READ;
 		break;
+	case I2C_SMBUS_I2C_BLOCK_DATA:
+		/* Rely on emulated i2c transfer (through master_xfer) */
+		return -EOPNOTSUPP;
 	default:
 		dev_err(dev, "Unsupported smbus protocol %d\n", f7_msg->size);
 		return -EOPNOTSUPP;
@@ -1803,7 +1806,8 @@ static u32 stm32f7_i2c_func(struct i2c_adapter *adap)
 		I2C_FUNC_SMBUS_QUICK | I2C_FUNC_SMBUS_BYTE |
 		I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA |
 		I2C_FUNC_SMBUS_BLOCK_DATA | I2C_FUNC_SMBUS_BLOCK_PROC_CALL |
-		I2C_FUNC_SMBUS_PROC_CALL | I2C_FUNC_SMBUS_PEC;
+		I2C_FUNC_SMBUS_PROC_CALL | I2C_FUNC_SMBUS_PEC |
+		I2C_FUNC_SMBUS_I2C_BLOCK;
 }
 
 static struct i2c_algorithm stm32f7_i2c_algo = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
