Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9618ECF8B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tMrV56ZmssLYDjD/8VHblo8Ag6rvec3fRvP97Sl0PjU=; b=Aw4Zh0dYrj5+nG
	GwFnSs0OmZzVzKleDYQEHGs+KpSnDnA8s/k0Ajmh2FypUtfr8ZIJBjZBZeQ61/e+RY2Uoky9Qwh0g
	yZlLc2CsfZhrqxGnCJrJridsUvO8pUabcp438knXae5mHU/TN+e8JqrixyQQO38Cj90wTMrJD80yF
	QBjkZp6OBwmTbM5FCoH6zf2KGQPKL2aDlftx/P1J1mrzlJcI9shFgwHwTNPv41K/4Jbeq1tcA8NOh
	HA0KgXjaT1UkAMY6AZj0WY5nM3DpPs38n0xpW8wrXp8tHXY9cHVaNtCYVvFsOQnQ5lHpG2k5s3dRV
	QgvMq9aKNlP9BEjnFteA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnsQ-0003L4-0I; Tue, 08 Oct 2019 11:42:02 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnsI-0003Ka-IA
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:41:56 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x98BesFt005862; Tue, 8 Oct 2019 13:41:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=JZ29o3+ZA5x48x8+yCCPyxRuo1rTg5MroHIYryI/F3c=;
 b=LempFh1Xlla+0GUWqcqrMNqJTOx1DFSj02f0oYlIGwTNiroRG51+Pt80DQ+R8llxMluq
 GRry1sBSVssoH4J4s6U0FzLfcEMwAqAMh08xU+2PdkDlEUt5iPYsgW/fvAgrVlkjpRuo
 8shy6xDyiign0oIshGl7hQguuuhNHm7O+UIdtEqH4w5VAAZ5FazUCjlPkcMubO01NF3N
 qm60avg/xJmeThj3w2VPhYbWql+x2G2r5MD4ACkkgp0vhkJmrSOshbXd1DHeszEKrccG
 uHdB4htnX4OoWP+f5fsHKPRf2Nv2XIZX1K4jWi8QTRMbYK0OUBf5qyKyMsg0o43/evk7 og== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxvqwq4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 08 Oct 2019 13:41:50 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 831D710002A;
 Tue,  8 Oct 2019 13:41:47 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 766142B8A64;
 Tue,  8 Oct 2019 13:41:47 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 8 Oct 2019
 13:41:47 +0200
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 8 Oct 2019 13:41:46 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <thierry.reding@gmail.com>, <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] pwm: stm32: add comment to better describe breakinput feature
Date: Tue, 8 Oct 2019 13:41:27 +0200
Message-ID: <1570534887-26181-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-08_04:2019-10-08,2019-10-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_044155_050755_C6EB7B43 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a comment to better describe the purpose of breakinput feature that
can be found on some STM32 timer instances. Briefly comment on the
characteristics of this input for PWM, and pinmuxing as suggested in [1].

[1] https://lkml.org/lkml/2019/10/1/207

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/pwm/pwm-stm32.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index 359b085..6406ebb 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -522,8 +522,14 @@ static int stm32_pwm_apply_breakinputs(struct stm32_pwm *priv,
 					     sizeof(struct stm32_breakinput));
 
 	/*
+	 * Some timer instances can have BRK input pins (e.g. basically a fault
+	 * pin from the output power stage). The break feature allows a safe
+	 * shut-down of the PWM outputs to a predefined state. Further details
+	 * are available in application note AN4277, "Using STM32 device PWM
+	 * shut-down features..."
 	 * Because "st,breakinput" parameter is optional do not make probe
-	 * failed if it doesn't exist.
+	 * failed if it doesn't exist. The pinctrl handle must hold the BRK
+	 * pin(s) when using "st,breakinput" property.
 	 */
 	if (nb <= 0)
 		return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
