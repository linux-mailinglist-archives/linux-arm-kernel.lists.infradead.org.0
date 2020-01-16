Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BF113DBE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:30:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UixBaKQKgSaqw7eSTv5C+Gs/V7H7ER254KMr3dzWeqE=; b=jAfTnYWGiWA0Gx
	EaqGPVwoBe2Jvmbrx7fI1iTj9d/Ry1avVJzuSe9WJ1QdsM9gGNNHjCrA2Oh9V2jt2kyoeNBDEbBHI
	1oHfCr+U8GWb7COdEZtAu505GYJF5rJY6EOS5PC0M4SZchPQbX67vcVm853vMkXpKUqV+xSmavxI3
	VkoUPDnYCM9qNFMbwBlUZPWE6CVGGtiKnDvipLvgX568stSlvdATpnPmcHK1ihyiGH1ivPIiY/jX9
	8ePog48UteKf07f74yW0YDbiXNsza7m2nP0TYtKUCBFlEZBm8YXvLfFE++LrLemtpfPZVwRcaAB1y
	mTTN3lPfzJ/N8NjVJxnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5EG-00026u-NM; Thu, 16 Jan 2020 13:30:32 +0000
Received: from mail-eopbgr700072.outbound.protection.outlook.com
 ([40.107.70.72] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5BX-0008PV-Nu
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:27:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HIExJKqCtgrnrzXaxNfVOJO/SSDbaDtozE+m9/C4rO2O4RiHMqiDqFsqk2DafadF8C2NgcgUAZmwyJynbb2hGwcVmgSeIh6xvQvw/9OTaWloV44+BIxhF6e4gDvrHBQxgEXsVJ7t1LuTI0MKKTSaT596WHcBR4sWz6oJe/x2rZOzMRHBQkXnYUvzuxaOkKTenZouz2k+gSICX6+wIxwfPBito39KQpS0Mnm1tlrfKr4lFqzjyJix7dB+jE/dMIcgzdJv6D81eKQN6eEwFJe8vQz2vgLcN5RTb79ubiE2guCMeQZMzdA+wYCBJ3DYGOcw2n0U4VR2/rTg7aOc/D80Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zren9AmI5kwSedMoJZmzUtpomiwcxSJIc7hV5rHKd9U=;
 b=HbRhNCsWgDR6CSya5KH98Kh+3qH1CQbH+NR4GK7LIIPsnBaBCG1nB5pT3J1+RsbRs3bCQ0P1LjoxOrHhYLpRz24ZpVk2Ibe6M/4Mg2aQg9p0b/jhJ3p7tgy698oqt+3CR325SsOhJcqcRYScsW0gHrIGgw6JAjRq/aGIJGlh6u06n1pT1LxbhRryQiEI46kh3cDVnIVB72SejXjoZI93blh68Qr7cCiXh4SsT3G+FeYKWuTuJ7m6285RcLqAsBeTd2I8+//uUG/abCZvj7JFpYruiKmhTeWa/stIUuBySicfbZHNt9jaaaCiM9hQSVn+0qCEdCRxdXEC/qKDPhCzRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zren9AmI5kwSedMoJZmzUtpomiwcxSJIc7hV5rHKd9U=;
 b=VUyQY6zPnGhTTRakkgFWrxVOIwaq9ZOSMhOny6uR+7R4u9qJfdp/Y2kTBpfJwwjT3dJDtCszfQlV8YkatNsXvhTOVROyKOYqE9dKYQRoAPRW1jJ8n8dYjiGrqu2ncjzZfIVWl5wiDpWcPMFaQHCoZ53yBmvPCkKMA+SD876RYiE=
Received: from BYAPR02CA0026.namprd02.prod.outlook.com (2603:10b6:a02:ee::39)
 by SN6PR02MB4893.namprd02.prod.outlook.com (2603:10b6:805:98::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Thu, 16 Jan
 2020 13:27:40 +0000
Received: from SN1NAM02FT015.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::200) by BYAPR02CA0026.outlook.office365.com
 (2603:10b6:a02:ee::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.8 via Frontend
 Transport; Thu, 16 Jan 2020 13:27:39 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT015.mail.protection.outlook.com (10.152.72.109) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2644.19
 via Frontend Transport; Thu, 16 Jan 2020 13:27:39 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5BS-0005wL-Pm; Thu, 16 Jan 2020 05:27:38 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5BN-0001FY-M4; Thu, 16 Jan 2020 05:27:33 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00GDRNQ1016410; 
 Thu, 16 Jan 2020 05:27:23 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5BD-00018J-4w; Thu, 16 Jan 2020 05:27:23 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linux@roeck-us.net, michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com,
 sgoud@xilinx.com
Subject: [PATCH 8/9] watchdog: of_xilinx_wdt: Wire setting up timeout via
 module parameter/DT
Date: Thu, 16 Jan 2020 18:56:56 +0530
Message-Id: <1579181217-31127-9-git-send-email-srinivas.neeli@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(376002)(346002)(189003)(199004)(26005)(5660300002)(186003)(426003)(336012)(2616005)(8936002)(70586007)(7696005)(4326008)(70206006)(9786002)(107886003)(81156014)(6636002)(8676002)(44832011)(356004)(6666004)(36756003)(316002)(2906002)(81166006)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4893; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8cbbf6a6-44b7-44b9-898c-08d79a87dbae
X-MS-TrafficTypeDiagnostic: SN6PR02MB4893:
X-Microsoft-Antispam-PRVS: <SN6PR02MB48934C84CC98D2751C63BB99AF360@SN6PR02MB4893.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-Forefront-PRVS: 02843AA9E0
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0OCqkjbZa5mx8lc+1JGsfnvO31KQ4X7B/6wjSWZWd/+XAkhsRoLY6BCaJlI8zIp0USIyl2Vg/9Atfmebbt7XIXAErsDIRYJeuhvRKUKOaT1vul6BErp4NfFkXi0yy0rdhFoUSS1i3khxWeubMS75lJmUBydPtSMM+dRYra12INqvZZ0r1mBo7dv6S4L5Bq2afYBUsienquKRbkZZ2HEjPE+Eh0XCkZUCiX2D2m4NhnTAJ7F7BNp/LkndX4m1o8d+Gwy4egfY45uOkiZjADKg3k+Pk+MZ9dsNqlnnek+sgt4PuhDaF7rS4nU9ig609p3JLryQ+ulMTpLRbe/X/AmmKpQ8bUZfeaD3gjN7/xJsbvSRkoqMFIl0rvbtvtUNT9PinclSqJX36EgbhdeGl5cG118K0a2CU7s7y8HWe6/QTI+L7Ev4/QGRnKPeYElCieXH
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2020 13:27:39.1994 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cbbf6a6-44b7-44b9-898c-08d79a87dbae
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4893
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_052743_837072_17D5103B 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.72 listed in list.dnswl.org]
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

Add support for setting up timeout via kernel module parameter or read
timeout-sec via device tree.

Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/watchdog/of_xilinx_wdt.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/watchdog/of_xilinx_wdt.c b/drivers/watchdog/of_xilinx_wdt.c
index d2c389d9eaa7..375289e3bed2 100644
--- a/drivers/watchdog/of_xilinx_wdt.c
+++ b/drivers/watchdog/of_xilinx_wdt.c
@@ -18,6 +18,7 @@
 #include <linux/of_device.h>
 #include <linux/of_address.h>
 
+#define XWT_WWDT_DEFAULT_TIMEOUT	10
 #define XWT_WWDT_MIN_TIMEOUT		1
 #define XWT_WWDT_MAX_TIMEOUT		80
 
@@ -55,6 +56,13 @@
 
 #define WATCHDOG_NAME     "Xilinx Watchdog"
 
+static int wdt_timeout;
+
+module_param(wdt_timeout, int, 0644);
+MODULE_PARM_DESC(wdt_timeout,
+		 "Watchdog time in seconds. (default="
+		 __MODULE_STRING(XWT_WWDT_DEFAULT_TIMEOUT) ")");
+
 /**
  * enum xwdt_ip_type - WDT IP type.
  *
@@ -416,6 +424,15 @@ static int xwdt_probe(struct platform_device *pdev)
 			xilinx_wdt_wdd->timeout =
 				2 * ((1 << xdev->wdt_interval) /
 					pfreq);
+	} else {
+		xilinx_wdt_wdd->timeout = XWT_WWDT_DEFAULT_TIMEOUT;
+		xilinx_wdt_wdd->min_timeout = XWT_WWDT_MIN_TIMEOUT;
+		xilinx_wdt_wdd->max_timeout = XWT_WWDT_MAX_TIMEOUT;
+
+		rc = watchdog_init_timeout(xilinx_wdt_wdd,
+					   wdt_timeout, &pdev->dev);
+		if (rc)
+			dev_warn(&pdev->dev, "unable to set timeout value\n");
 	}
 
 	spin_lock_init(&xdev->spinlock);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
