Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E2E11AE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 16:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSZMCWY1Tvd1uevdSLrRj4KKYu8u9+l3X94E3i6TMac=; b=DFw0+JHfgppdxB
	fDcCKTnFor06po1bpPfEFjYMVszPoRT+IKAUN4m42LMKJIDFd2s64eeZ0TCh5SF00Apw5Tjzzl+7Y
	iir4+U1WUfFy+vUNv75DSNX9r22dwGtX29x9sYB4jlvreAPTfuQnV34CS4E4wyGt4uy4jv1pbZf/Z
	vrC9p8rWxUmhJt+HKl9oaQW8ljxSxKxclcO7H/SZGNFPNupsTwuc/w3lGmzrt/MS66y+/F6TvXAIJ
	7eKJ/w1p8n/Gr0NuyBmcpByC5BIooiz1sqwywlfIM/BbW3X7Hjqa/QvfMgbg53znjMlHubhNxrNQh
	OT96yssLNLPEcHvg08PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCP0-00080h-Qc; Thu, 02 May 2019 14:09:34 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCOR-0007Qr-MK
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 14:09:04 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42Dwtn4002390; Thu, 2 May 2019 16:08:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=ErLblLqpuz55YxCpK0I2Nnwtday0NkjHtDQvnjNDp9A=;
 b=ipIiiuNp77KGMq39ygECSJuLNSF1W9U95F2YmK3auSgZjwMvLjRlhETE6P84wKjUt3ed
 q3OAspnSrtkcsv/uUvua9Ini5Qydg3o7GVfaxjOPGnJKpzyQxqL+3UAASvLgxqmecsn7
 /C5OqwZx5/cPAkmbO0UsaxHG55qmrgvkAA7AJwWSgYsfh/xB0FM/d0bJ4bOk4P0WZrEj
 u7mj5QhYnyd7T39Mj14B7a+D+kHyzqbbrvdJNaPIQXP+wnDJPTO4imEjWRzv5ujxAsi4
 ocRaiRYMA5mFnXhQxaDyKnaTUFAdlWB7qjLIg5exoUaFwAocJZ5pwNlNWFUrxr0R+XM9 OA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s6xgcry0w-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 02 May 2019 16:08:51 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B480146;
 Thu,  2 May 2019 14:08:50 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8BFA92730;
 Thu,  2 May 2019 14:08:50 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.361.1; Thu, 2 May 2019
 16:08:50 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 2 May 2019
 16:08:49 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V2 2/3] watchdog: stm32: update return values recommended by
 watchdog kernel api
Date: Thu, 2 May 2019 16:08:45 +0200
Message-ID: <1556806126-15890-3-git-send-email-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556806126-15890-1-git-send-email-ludovic.Barre@st.com>
References: <1556806126-15890-1-git-send-email-ludovic.Barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_070900_473701_68946EA4 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ludovic Barre <ludovic.barre@st.com>

This patch updates return values on watchdog-kernel-api.txt:
return 0 on succes, -EINVAL for "parameter out of range"
and -EIO for "could not write value to the watchdog".

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/watchdog/stm32_iwdg.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index e191bd8..f19a6d4 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -81,7 +81,6 @@ static int stm32_iwdg_start(struct watchdog_device *wdd)
 	struct stm32_iwdg *wdt = watchdog_get_drvdata(wdd);
 	u32 val = FLAG_PVU | FLAG_RVU;
 	u32 reload;
-	int ret;
 
 	dev_dbg(wdd->parent, "%s\n", __func__);
 
@@ -98,13 +97,11 @@ static int stm32_iwdg_start(struct watchdog_device *wdd)
 	reg_write(wdt->regs, IWDG_KR, KR_KEY_ENABLE);
 
 	/* wait for the registers to be updated (max 100ms) */
-	ret = readl_relaxed_poll_timeout(wdt->regs + IWDG_SR, val,
-					 !(val & (FLAG_PVU | FLAG_RVU)),
-					 SLEEP_US, TIMEOUT_US);
-	if (ret) {
-		dev_err(wdd->parent,
-			"Fail to set prescaler or reload registers\n");
-		return ret;
+	if (readl_relaxed_poll_timeout(wdt->regs + IWDG_SR, val,
+				       !(val & (FLAG_PVU | FLAG_RVU)),
+				       SLEEP_US, TIMEOUT_US)) {
+		dev_err(wdd->parent, "Fail to set prescaler, reload regs\n");
+		return -EIO;
 	}
 
 	/* reload watchdog */
@@ -128,8 +125,16 @@ static int stm32_iwdg_ping(struct watchdog_device *wdd)
 static int stm32_iwdg_set_timeout(struct watchdog_device *wdd,
 				  unsigned int timeout)
 {
+	unsigned int tout = clamp(timeout, wdd->min_timeout,
+				  wdd->max_hw_heartbeat_ms / 1000);
+
 	dev_dbg(wdd->parent, "%s timeout: %d sec\n", __func__, timeout);
 
+	if (tout != timeout) {
+		dev_err(wdd->parent, "parameter out of range\n");
+		return -EINVAL;
+	}
+
 	wdd->timeout = timeout;
 
 	if (watchdog_active(wdd))
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
