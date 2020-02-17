Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF62E16122D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pj6WWJvoLBjx/8DZZ2aUUEjdFfGl1nVuxhCLFVwNYt0=; b=GQyknXnEDXg8Sb
	xtXW3HeL5NZGm8kQykrmNvoc5gBBj1cRF2BaT8SLBrX71yvvhb5QguG0zq1d/TzGnlLDLUMWVorRf
	axcnPMdl4S7J6N/KlPX4y41wScFQ7PktyDlc1sVmGXpyem9MJIhWVTaW2KFuDe71yCiQD94mdI05w
	wVrpIFPiow4yK9psfGu7k8Puh9IlOc36xHLQeyBj0o6cQo0ZfK0vivHqiSRRAVyGDGEdBpgj7tY8a
	TJG8TKlrzBjclU+lIDwAFKPoEeiHoDFcH2UoYDTaX/9t3OyHq2ImRnICVMo3Ye9reOKvoxDa6OZDG
	K2S9jPZMbvTDHYLDFBrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fcu-0003Ml-Pp; Mon, 17 Feb 2020 12:35:52 +0000
Received: from mail-dm6nam12on2061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe59::61f]
 helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fbe-0001Dz-Gv
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:34:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0cqnMujP6M7c3CaRhSTDD9TluOBFqDk+SDrGTgK1c1RsVGV6QmRsJTHdDMYVBB+R05d+3WPDeMKmeXTKVGm6AINUng2ftuGAvxDdo5AVT5qtbNJSNBILNLu8DnrpVwnHSBi+fqYypp23E6w9Kxj1iczo/IGT86Tn1oRde6SOhdTetVvBYZSvq3gGPwf4tfw60mXU3Di+LxkbL2pR9uIM9vpC3M+bq8qIw6jN/+ja3rCJ6x7MJA8dAvuTOrQCgMjDv22LUFqa2CywNB7GySNSxDxTIkeH2DwVkWqV0e30kNdNqOuzmxV0nguzQIRwj2awWD8b4nILor6JXna7wiEzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96lmm/m9X4pYH/c3YVANjdHqmCAjoHOI1sptdry4dEs=;
 b=O/5NdvtMuoxspc3mgVhMh18Ycq80xw//0DWb4R5zPPeoYeQU4gT6NUswXpaO3WNBNhNjplQqoOzjXoBauZ/ANzDRtD6tYfiyzYcrBJ1f8NN/9ZAZjqz2XWB3th5gpAomdptpPhFj2JgNFNAaNGMhpg/KDBt1yblLPSVDvx5+Q0HUD8mghpFn63WRzj+oJqASNUKalOVpedXqxS3jhwZXLw2cUaJqOIfq4cSlHkIgsvpKX9TXekPfngEKcfqjB3UZjmFcn0+IaInaRlrBJeWDap5U9pAMor730ABEnQb7O08uKhn/i5AqohTGlPMgaZ6/nDNn91MKmSgJVhZ9EyxzsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96lmm/m9X4pYH/c3YVANjdHqmCAjoHOI1sptdry4dEs=;
 b=VbUoC4ZPY/Qr7hYbQ9MidJwKEk5MVFAaaK37PbUGNltwE0Pfp/gdgUJIgPALYGl4BM05aeFFuBOpZVDx67QseebLQtIWUKVH7sSINZ+gPffRW5JQClboU7r/kTW0r7HTIIsiIBk6BLrW1HtQgDcxIajowqWPjszA5dmd3zqP1CU=
Received: from CY4PR02CA0035.namprd02.prod.outlook.com (2603:10b6:903:117::21)
 by MN2PR02MB5725.namprd02.prod.outlook.com (2603:10b6:208:11c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.25; Mon, 17 Feb
 2020 12:33:54 +0000
Received: from BL2NAM02FT018.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by CY4PR02CA0035.outlook.office365.com
 (2603:10b6:903:117::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22 via Frontend
 Transport; Mon, 17 Feb 2020 12:33:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT018.mail.protection.outlook.com (10.152.77.170) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Mon, 17 Feb 2020 12:33:47 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3fat-0000TN-9q; Mon, 17 Feb 2020 04:33:47 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3fao-0001yh-6e; Mon, 17 Feb 2020 04:33:42 -0800
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01HCXW0e025992; 
 Mon, 17 Feb 2020 04:33:32 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3fad-0001uE-QT; Mon, 17 Feb 2020 04:33:32 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH V3 6/7] gpio: zynq: Add pmc gpio support
Date: Mon, 17 Feb 2020 18:03:12 +0530
Message-Id: <1581942793-19468-7-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(199004)(189003)(2906002)(6666004)(7696005)(356004)(26005)(966005)(336012)(426003)(186003)(498600001)(5660300002)(2616005)(44832011)(70206006)(9786002)(8936002)(70586007)(81166006)(6636002)(81156014)(36756003)(4326008)(8676002)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB5725; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9c085b15-9b81-4f54-1d30-08d7b3a5a2f3
X-MS-TrafficTypeDiagnostic: MN2PR02MB5725:
X-Microsoft-Antispam-PRVS: <MN2PR02MB57255CF5EEC1D9D5C3D97D94AF160@MN2PR02MB5725.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 0316567485
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S3Ncxls5JF6NGv9Wi9lycZBj7Fqicm2XAyCmIMRD5YNtnu+DPAj6AZiXyDtY9vzmdq1RyNweTMw0+MEGnzVN80O8IQdjZ/Qdy4Jw6pxZnuAslPsdm5VpXslNG8mb9LqK6nNHUzFs3/mKLo3iFDWYWYXpx75pInoBW/nVTgZewssDjhRP0IeP7cHAw+4ruHChF86Praqie7Cy5OlhO6qdP18Uf34crtaQbzmZp24IzRc/6q3wP+M0FXY7yJX9qQnHIhWVHmnz1Jz2BuC8a28F7f5I2kkpi3sRxgci8Ts1dx355igv7tOP4CuLiieYyCIHLpfst7Qb1f1/yhvHVCDeEhmjKY8EbrLLVdMpVHZQBM7gwvOyru7BLYt/3mlcJDQynhv4fGS6THTenNcxl+2Vwx4WCftL0Vdlq/msXgxoSjvei6axoiAI2jHh4bv6iuPKAhD/arLTE85mr7LDMj7KWmz+WnE7nR+JcQqTNmxw+XJ08LB7G5Z/ntEQUYz+TDPpQZA6+ZHm7kn2lX2hnFsqJg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2020 12:33:47.8640 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c085b15-9b81-4f54-1d30-08d7b3a5a2f3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5725
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_043434_594171_188F9B15 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Add PMC gpio support.
Only bank 0,1, 3 and 4 are connected to the multiplexed Input output
pins. Bank 0 and 1 to mio and bank 3 and 4 to extended multiplexed input
output pins.

Versal devices are the industry's first adaptive compute
acceleration platforms.
https://www.xilinx.com/support/documentation/data_sheets/ds950-versal-overview.pdf

On the Versal platform, we are using two customized GPIO controllers(IP)
which were used in Zynq/ZynqMp platform.
One of them present in the Platform Management Controller(PMC) block and
other in Processing System(PS) block.

In PMC_GPIO only Bank0,1,3 & 4 are enabled and in PS_GPIO only
Bank 0 & 3 are enabled.

You can find more details of GPIO IP in ZynqMP TRM General Purpose
I/O(Chapter-27).
https://www.xilinx.com/support/documentation/user_guides/ug1085-zynq-ultrascale-trm.pdf

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/gpio/gpio-zynq.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index b6261a3aec55..2ddb59b242e7 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -23,6 +23,7 @@
 #define ZYNQ_GPIO_MAX_BANK	4
 #define ZYNQMP_GPIO_MAX_BANK	6
 #define VERSAL_GPIO_MAX_BANK	4
+#define PMC_GPIO_MAX_BANK	5
 #define VERSAL_UNUSED_BANKS	2
 
 #define ZYNQ_GPIO_BANK0_NGPIO	32
@@ -815,6 +816,20 @@ static const struct zynq_platform_data versal_gpio_def = {
 	.bank_max[3] = 57, /* Bank 3 is connected to FMIOs (32 pins) */
 };
 
+static const struct zynq_platform_data pmc_gpio_def = {
+	.label = "pmc_gpio",
+	.ngpio = 116,
+	.max_bank = PMC_GPIO_MAX_BANK,
+	.bank_min[0] = 0,
+	.bank_max[0] = 25, /* 0 to 25 are connected to MIOs (26 pins) */
+	.bank_min[1] = 26,
+	.bank_max[1] = 51, /* Bank 1 are connected to MIOs (26 pins) */
+	.bank_min[3] = 52,
+	.bank_max[3] = 83, /* Bank 3 is connected to EMIOs (32 pins) */
+	.bank_min[4] = 84,
+	.bank_max[4] = 115, /* Bank 4 is connected to EMIOs (32 pins) */
+};
+
 static const struct zynq_platform_data zynqmp_gpio_def = {
 	.label = "zynqmp_gpio",
 	.quirks = GPIO_QUIRK_DATA_RO_BUG,
@@ -853,6 +868,7 @@ static const struct of_device_id zynq_gpio_of_match[] = {
 	{ .compatible = "xlnx,zynq-gpio-1.0", .data = &zynq_gpio_def },
 	{ .compatible = "xlnx,zynqmp-gpio-1.0", .data = &zynqmp_gpio_def },
 	{ .compatible = "xlnx,versal-gpio-1.0", .data = &versal_gpio_def },
+	{ .compatible = "xlnx,pmc-gpio-1.0", .data = &pmc_gpio_def },
 	{ /* end of table */ }
 };
 MODULE_DEVICE_TABLE(of, zynq_gpio_of_match);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
