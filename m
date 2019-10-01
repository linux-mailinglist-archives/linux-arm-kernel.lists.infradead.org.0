Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5699FC2F43
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=andSzKQ3/Jp0MX0nge8xxT0OxVDp1EWJRB9NrX7/2nU=; b=OSSuIkS0JmfKtt
	EpA9elLBgm1HhVOzyEz/uKCuyAR4ZddAVnj2v/oVoe6RO7X7Zy0VUCUOpvaZL8IwMO5JIQ4URtLWX
	gtGRySltnpmWnaE39Zi3CPA72p16DeAmE1sG1GCYOH3TfysfvmzGe5uyfXTKF9Gyb4npWfFrm2bvy
	ZNLlgEZiOhPjblCXQ8iyoxW1C3U0jAFzVWwaDHqB5DgwOQnSnSWhClCCVvy//ANlgfn2vA8nSauYq
	7fvaE3wuzlvp7BkntdPT0IvdYKWDVNpkt3m/x2mDOu/ZiHUzICiLphNM+7IcSqzdrEmihL13xlMuQ
	GK1oTrzuenJ6QMIZPWcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDsy-0000OG-AK; Tue, 01 Oct 2019 08:51:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDso-0000NE-FV
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:51:48 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x918aqa3032721; Tue, 1 Oct 2019 10:51:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=pHr2o+ZAoiEIH4WNUEwd9qYwlYMRQA1EuZfFQPwwXFA=;
 b=ceANKyQriGj7GYQEv1c9rHo45HNQobCG6YZP3AMFOBN4o92ul8CSv0d45ZdJFwOxI4cY
 JV3RL1c5NH45gyU3xjew5P1QGeL9kZa1O0MgDEkLw5TON/KZKyu/xA8ssDScji3uyjGy
 jwP/z7AUu+dDYvkJjxw2y30rg4l9UyQ30b2iG3/S9lVbfkWm6X7r93V9NmgskjhCkwkG
 P3h4drbVxw9czQUNqxQmnBdKX+Wc4pAHIKCd3EvyXY6A1K9C+3CnjWc+IuL1aaWoZAW8
 6I2Mf+siPsU53Fu4w/dtbXOmaM+W2HtLW5Df1K+UG2ZiYPo8wpRcOCGrPsRBvjHVf6Ag sQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9xdgqmf4-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 01 Oct 2019 10:51:44 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 6063523;
 Tue,  1 Oct 2019 08:51:40 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B97C42B2FF9;
 Tue,  1 Oct 2019 10:51:39 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 1 Oct 2019
 10:51:39 +0200
Received: from localhost (10.48.0.192) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 1 Oct 2019 10:51:39 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <wsa@the-dreams.de>, <pierre-yves.mordret@st.com>
Subject: [PATCH] i2c: i2c-stm32f7: fix a race in slave mode with arbitration
 loss irq
Date: Tue, 1 Oct 2019 10:51:09 +0200
Message-ID: <1569919869-3218-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-01_04:2019-10-01,2019-10-01 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_015146_992016_4733A241 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When in slave mode, an arbitration loss (ARLO) may be detected before the
slave had a chance to detect the stop condition (STOPF in ISR).
This is seen when two master + slave adapters switch their roles. It
provokes the i2c bus to be stuck, busy as SCL line is stretched.
- the I2C_SLAVE_STOP event is never generated due to STOPF flag is set but
  don't generate an irq (race with ARLO irq, STOPIE is masked). STOPF flag
  remains set until next master xfer (e.g. when STOPIE irq get unmasked).
  In this case, completion is generated too early: immediately upon new
  transfer request (then it doesn't send all data).
- Some data get stuck in TXDR register. As a consequence, the controller
  stretches the SCL line: the bus gets busy until a future master transfer
  triggers the bus busy / recovery mechanism (this can take time... and
  may never happen at all)

So choice is to let the STOPF being detected by the slave isr handler,
to properly handle this stop condition. E.g. don't mask IRQs in error
handler, when the slave is running.

Fixes: 60d609f30de2 ("i2c: i2c-stm32f7: Add slave support")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/i2c/busses/i2c-stm32f7.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index 266d1c2..3a8ab0c 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1501,7 +1501,7 @@ static irqreturn_t stm32f7_i2c_isr_error(int irq, void *data)
 	void __iomem *base = i2c_dev->base;
 	struct device *dev = i2c_dev->dev;
 	struct stm32_i2c_dma *dma = i2c_dev->dma;
-	u32 mask, status;
+	u32 status;
 
 	status = readl_relaxed(i2c_dev->base + STM32F7_I2C_ISR);
 
@@ -1526,12 +1526,15 @@ static irqreturn_t stm32f7_i2c_isr_error(int irq, void *data)
 		f7_msg->result = -EINVAL;
 	}
 
-	/* Disable interrupts */
-	if (stm32f7_i2c_is_slave_registered(i2c_dev))
-		mask = STM32F7_I2C_XFER_IRQ_MASK;
-	else
-		mask = STM32F7_I2C_ALL_IRQ_MASK;
-	stm32f7_i2c_disable_irq(i2c_dev, mask);
+	if (!i2c_dev->slave_running) {
+		u32 mask;
+		/* Disable interrupts */
+		if (stm32f7_i2c_is_slave_registered(i2c_dev))
+			mask = STM32F7_I2C_XFER_IRQ_MASK;
+		else
+			mask = STM32F7_I2C_ALL_IRQ_MASK;
+		stm32f7_i2c_disable_irq(i2c_dev, mask);
+	}
 
 	/* Disable dma */
 	if (i2c_dev->use_dma) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
