Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE20513DBC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:28:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCN+bexo3C9/K0qizpWE/cE39+VT2muLmID0xvkItUk=; b=WgHhy0HI55bJn7
	VsjWspnxTBhgw0K/vRQOj22Ac8dbfXKLsqTmx+mD47fHLyp7jfCHA79p+oxgQQcVySYInZnzvqNHs
	uNTXEbUgjlRLbJHOvKIgh3zrfsSnoC1WIer1fwd7LGu2SDQfMATp2KaVwgLCIsC9uvDzBId8E+7Yp
	F7bPP5tYJ/bzq+GsToT1wGw6mbKDaz3E0qTdd2Uf/3kelR1AobOVRydSMT3swAEAMQNP1+7eUzGBP
	evul8DEbeXIUZfuiZFrna8esJ/LpCn1D7q05gnnjKKC85+zBovJhbK7wSjphUaozYEafDttYzDHNy
	v5YCbdR4iEJo6Wh30HgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5C6-0000Ef-Ju; Thu, 16 Jan 2020 13:28:18 +0000
Received: from mail-eopbgr770042.outbound.protection.outlook.com
 ([40.107.77.42] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5BE-00085d-Ht
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:27:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lrTbiTct6/6PHpGI45SCEBRiHlHm1TzMr/LyxaYWW3VmY2SFNc9PMuB/8W0mhiTYC2SVDu3TB0nHrQUXQX1ugcNdbLvV1C69r/Fkpq7ZGW5XvxZq8q3e29zFjgj5ZXKySXcy9LXPUoMX3JG/hqtL+WqvKverGjiO5wKzVCHbfyOJnyStOS0dh69sGsZi0pMdUwFq4OHpGX9J44SlkA6U5SnJvvfAXaNj61gLEHLUMv583UTyblUYDbXElvUdwtn69LgMGlD9FAb6LOqlIGUGpEv0KRlaFnqIk7OXFASwFEseRt0xB+OCfeyparJj5DRkI/Y33AwSz7cVuV5XVz7AWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=slKBieQ9aPV2MJEcnHqXqVgvCBZc1VjQ4z265Kb+CCk=;
 b=a0ESf7wvx/D5p65tRQ7l9KUpcpX1D+NGH8hQ4xkUy6yZvliM8o5AISTVEXxzzQXRYsqdTJ0Pg2J2DQoKHdes+dp5Exm8VPhRwZn7MFeG1/5iaDzRcDDC8bPoJMnl5rhDGoRghQZtCy0jjTL2Ln7v/WzAdx2b041FIyOkjBRxrYAC1/q3tLpgZzVCM5iEHlAuYw9WvGnrIseI6TPfQIaWjdyBSeq3bsOWCZMu3IFjnjvlGx9mArNqg3VcECH8yvtOASWaxBm3tESAoVXSQkKb7hQkQpLof6Qlqw/AbRpfif1d1CIp3coZ8LE3lrcaYu/J1JqWAgszlMxMgej7SUNagg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=slKBieQ9aPV2MJEcnHqXqVgvCBZc1VjQ4z265Kb+CCk=;
 b=ViSilz0AQ1QMNQwG5X7ZqGnsNapI9wV39OaPXTLbt/SqHYLJTnLl51/3Kox7QaTnHiK4EPNSpms7H5xivPbDlJ4dnddzNwej+f1RufTf0/N+XsNXhPwTbRGdHS0OlT6cVl8SRSwe4BKhH0LjV8GAQbdJSkP0u6+EtjVVA3+uWKo=
Received: from MWHPR02CA0019.namprd02.prod.outlook.com (2603:10b6:300:4b::29)
 by BL0PR02MB4818.namprd02.prod.outlook.com (2603:10b6:208:28::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Thu, 16 Jan
 2020 13:27:21 +0000
Received: from CY1NAM02FT006.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by MWHPR02CA0019.outlook.office365.com
 (2603:10b6:300:4b::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.18 via Frontend
 Transport; Thu, 16 Jan 2020 13:27:20 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT006.mail.protection.outlook.com (10.152.74.104) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2623.9
 via Frontend Transport; Thu, 16 Jan 2020 13:27:19 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5B8-0005vC-Gr; Thu, 16 Jan 2020 05:27:18 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5B3-0001BU-3w; Thu, 16 Jan 2020 05:27:13 -0800
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00GDR9fZ016366; 
 Thu, 16 Jan 2020 05:27:09 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5Az-00018J-2r; Thu, 16 Jan 2020 05:27:09 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linux@roeck-us.net, michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com,
 sgoud@xilinx.com
Subject: [PATCH 3/9] watchdog: of_xilinx_wdt: Used dev_dbg()
Date: Thu, 16 Jan 2020 18:56:51 +0530
Message-Id: <1579181217-31127-4-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(346002)(376002)(189003)(199004)(8676002)(44832011)(8936002)(6666004)(81156014)(316002)(9786002)(4326008)(81166006)(6636002)(186003)(2906002)(5660300002)(7696005)(107886003)(70206006)(478600001)(36756003)(336012)(26005)(70586007)(426003)(356004)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4818; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 327ccf6c-12d3-41f6-6448-08d79a87cfea
X-MS-TrafficTypeDiagnostic: BL0PR02MB4818:
X-Microsoft-Antispam-PRVS: <BL0PR02MB481896408051FC52B2F5B75DAF360@BL0PR02MB4818.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1284;
X-Forefront-PRVS: 02843AA9E0
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KCx7cKHv5kNZBeX9PCudkkaNcbVCfsWssYX99hjcb/tRlA+V8vyyecAiMpEoyb6GaD8jC22mD933RGm0CQdp+I0LfJiU3IoI6fgqocjQ4yrIau/ONbFt1MhdiAAvowtJEAueE/wH65sQaqvRENdtpBmBtoRXvoLcg6cVSmBkFuQhv8tlHijtdLEld+9EXTvLKXBrO1zkKbxuVLx476XKCP4Y/jczR1BdOp5qHscYQyNHq5zgUeBYUvWxnByFwFSlf9jh0Rtw1ZF/umcx3f+PBDvTaaRWWZxP4ECh9n05IqP/UtuaafQ6Ak7wITh4OZlPvAcsqRmFi7EFaFfvf+WRLNzqpAuohj8pEcrOmSiql+k+GY88ITuBrdtOuD9jkAUQe1VNPiPHvs4PZEbDw3aKWf+H5MfEv3x8DxjE+6iphSsKgFBhntH3ByCN4VxPLTla
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2020 13:27:19.4410 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 327ccf6c-12d3-41f6-6448-08d79a87cfea
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_052724_616635_AC34BC96 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: git@xilinx.com, wim@linux-watchdog.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Srinivas Goud <srinivas.goud@xilinx.com>

This patch removes pr_info in stop function and adds dev_dbg()
in start/stop function to display device specific debug info.

Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/watchdog/of_xilinx_wdt.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/of_xilinx_wdt.c b/drivers/watchdog/of_xilinx_wdt.c
index 0d7df2370db7..9e67b598907e 100644
--- a/drivers/watchdog/of_xilinx_wdt.c
+++ b/drivers/watchdog/of_xilinx_wdt.c
@@ -50,6 +50,7 @@ static int xilinx_wdt_start(struct watchdog_device *wdd)
 	int ret;
 	u32 control_status_reg;
 	struct xwdt_device *xdev = watchdog_get_drvdata(wdd);
+	struct watchdog_device *xilinx_wdt_wdd = &xdev->xilinx_wdt_wdd;
 
 	ret = clk_enable(xdev->clk);
 	if (ret) {
@@ -70,6 +71,8 @@ static int xilinx_wdt_start(struct watchdog_device *wdd)
 
 	spin_unlock(&xdev->spinlock);
 
+	dev_dbg(xilinx_wdt_wdd->parent, "Watchdog Started!\n");
+
 	return 0;
 }
 
@@ -77,6 +80,7 @@ static int xilinx_wdt_stop(struct watchdog_device *wdd)
 {
 	u32 control_status_reg;
 	struct xwdt_device *xdev = watchdog_get_drvdata(wdd);
+	struct watchdog_device *xilinx_wdt_wdd = &xdev->xilinx_wdt_wdd;
 
 	spin_lock(&xdev->spinlock);
 
@@ -91,7 +95,7 @@ static int xilinx_wdt_stop(struct watchdog_device *wdd)
 
 	clk_disable(xdev->clk);
 
-	pr_info("Stopped!\n");
+	dev_dbg(xilinx_wdt_wdd->parent, "Watchdog Stopped!\n");
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
