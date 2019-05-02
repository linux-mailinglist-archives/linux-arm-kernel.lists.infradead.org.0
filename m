Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A94611AEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 16:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4fmtDsggVxbYGz2M+rJEMWu9q1XH+c3OeQ37LKPFe4=; b=AiFSzfQCKrkxE1
	pLlCxF8cTTNI0KjG/L8LTSK5tREhCmddofGINp3vAQk10HWxQ9PqdF1uxJj3N6OXbll+Hho53XPUI
	jvNARTmAYNSZEEnWYvNDGB7Q0U+pClAH2iJGuH9qRC9kYof/OFsqbOB8Z4GKsinXhTG+3lPuuIH12
	2bVcEg6zhvlltUjmpVAaNQydGI2oCD0s9ZMKCob/TM66LDFJgmIssiGDOs/lWDwSs07D/J72PFmN0
	q83PGo14uRlnxwUimtZcLXg7tgd/JoIaWjTlTrSC+WQjVG9Jm297ofA2uUswIPEFtvJEYgowoqeQM
	ek7Rmso2lxT3YXjDOUmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCPD-0008KK-Sh; Thu, 02 May 2019 14:09:47 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCOU-0007Qq-UL
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 14:09:06 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42Dwv1T002402; Thu, 2 May 2019 16:08:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=DotoY9nutLi40qa0Yd+weRq6+JlgwWdEZ7kKUqLTC+4=;
 b=Vfg77em4dNL5X+jwogs1tuWzG2L5MbFsl2dJnKokYyvhnkgXiihj+AsV6es0FjC/r0Z9
 VQZBKjiWr8SSOqA9b7YZrJm1kATEoepRXa2FWkgA7Q4IPNKWZVvRBNJJBfwID8HfEtjZ
 oNhF2+U5PJw/xsxFc2yjfSsjDJJv8+eqkQd3Wgwy8tiIn92rijFtJ6/t8oNlhfrL1A/B
 LugMZAoFrzk2UOK9mw609YDPvtxgV59SMPY1Rvi8yBvXFBsFQZr+YFDkTcUy6kw7WhOv
 wnz1ydmF4BwOsLTWyI2j8ckhrylvZmL2o/mOqYA6uM6zvdUkmfRxAmMceA8uVrEzrHex Cw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s6xgcry0r-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 02 May 2019 16:08:50 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B2C8F42;
 Thu,  2 May 2019 14:08:49 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7ECA22731;
 Thu,  2 May 2019 14:08:49 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.361.1; Thu, 2 May 2019
 16:08:49 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 2 May 2019
 16:08:48 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V2 1/3] watchdog: stm32: update to
 devm_watchdog_register_device
Date: Thu, 2 May 2019 16:08:44 +0200
Message-ID: <1556806126-15890-2-git-send-email-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556806126-15890-1-git-send-email-ludovic.Barre@st.com>
References: <1556806126-15890-1-git-send-email-ludovic.Barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_070903_799206_3CEF127A 
X-CRM114-Status: GOOD (  15.84  )
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

This patch updates to devm_watchdog_register_device interface

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/watchdog/stm32_iwdg.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index e00e3b3..e191bd8 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -243,7 +243,7 @@ static int stm32_iwdg_probe(struct platform_device *pdev)
 		dev_warn(&pdev->dev,
 			 "unable to set timeout value, using default\n");
 
-	ret = watchdog_register_device(wdd);
+	ret = devm_watchdog_register_device(&pdev->dev, wdd);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to register watchdog device\n");
 		goto err;
@@ -263,7 +263,6 @@ static int stm32_iwdg_remove(struct platform_device *pdev)
 {
 	struct stm32_iwdg *wdt = platform_get_drvdata(pdev);
 
-	watchdog_unregister_device(&wdt->wdd);
 	clk_disable_unprepare(wdt->clk_lsi);
 	clk_disable_unprepare(wdt->clk_pclk);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
