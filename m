Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7D5B4FB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wioG2tPvDaL+lXPVxYma/AWGsVX67EO1xyvcwF003Ns=; b=V8FDqdX0eyq9So
	aHkuGFNQjzkmxzkFbXeiNNnNCaReagNXBv+JAtPY69TEsKXeQVTwhRHt/biXm2g+ymBErZ4mSQE86
	pAGNh3KcZkwrk84sDoFklwdGGcqjlzaU070dU/D38n+VV/ekVOsiqVwm+Yn3w/4IT8uDxYAyXSPCF
	x/VwZmJaJvYuToWRe5Ev0s1XxJNsU8cYCLEiv2eVVCENlpsyX0twne96vgmMWXcXZG0UMcgXmxITm
	bghCDSKMznyeeWuc05fQm1nTHudRGjn7pbTBxoBFJMPH6qA/dk9/RbZxvEuaeO6zl0akKtZi9n/wb
	HijnYZjS6sTvR7qronWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADua-0004I7-Ve; Tue, 17 Sep 2019 13:52:57 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADts-0003xD-4m
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:52:14 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8HDfoKU019778; Tue, 17 Sep 2019 15:52:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=aUuRSQwIFPiGfsmi4Vym/gWuxjE0wuSWUtUhECjq8Vc=;
 b=1pFlI5o2/+K+HEBbhT3MPTQXm7yxt3Gzo2eBe5uTkx372Kt7/Laxyj3Vtx+Gmx5fNMaY
 qloenvWqU1Z3UVZ6ob5J6SZGGLqzSFIEukHcJBFJDDgE6v7YkbEtGXsLmEsYc7CNERVZ
 oT52XBQFinU0phxaysyMRatRlMtYQluA14BOOpCfFdLgx0tRFA/o30A2zrnZ3IoZksSZ
 HvpJe2tLblTVSGlFARLU6FnIeFdgMiXsZN13jX37BGVkT5t+rqZfSPkt2C1mRwmhkn1t
 FN6KiqjXiAlHy01FMmU07yaqY5/IPOS0CTTzQa9WHDo5txYNt4tJw2rZJa18Bgu4XuIL pQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v0q3fspqm-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 17 Sep 2019 15:52:08 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 9777D4D;
 Tue, 17 Sep 2019 13:52:05 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 068FE2C2B9A;
 Tue, 17 Sep 2019 15:52:05 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 17 Sep
 2019 15:52:04 +0200
Received: from localhost (10.48.1.232) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 17 Sep 2019 15:52:04 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <thierry.reding@gmail.com>
Subject: [PATCH] pwm: stm32-lp: add check in case requested period cannot be
 achieved
Date: Tue, 17 Sep 2019 15:51:50 +0200
Message-ID: <1568728310-20948-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.1.232]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-17_06:2019-09-17,2019-09-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_065212_950131_CACB0521 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LPTimer can use a 32KHz clock for counting. It depends on clock tree
configuration. In such a case, PWM output frequency range is limited.
Although unlikely, nothing prevents user from requesting a PWM frequency
above counting clock (32KHz for instance):
- This causes (prd - 1) = 0xffff to be written in ARR register later in
the apply() routine.
This results in badly configured PWM period (and also duty_cycle).
Add a check to report an error is such a case.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/pwm/pwm-stm32-lp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pwm/pwm-stm32-lp.c b/drivers/pwm/pwm-stm32-lp.c
index 2211a64..5c2c728 100644
--- a/drivers/pwm/pwm-stm32-lp.c
+++ b/drivers/pwm/pwm-stm32-lp.c
@@ -59,6 +59,12 @@ static int stm32_pwm_lp_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	/* Calculate the period and prescaler value */
 	div = (unsigned long long)clk_get_rate(priv->clk) * state->period;
 	do_div(div, NSEC_PER_SEC);
+	if (!div) {
+		/* Fall here in case source clock < period */
+		dev_err(priv->chip.dev, "Can't reach expected period\n");
+		return -EINVAL;
+	}
+
 	prd = div;
 	while (div > STM32_LPTIM_MAX_ARR) {
 		presc++;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
