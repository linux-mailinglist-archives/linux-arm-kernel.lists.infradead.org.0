Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C9B1FCC9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pj6WWJvoLBjx/8DZZ2aUUEjdFfGl1nVuxhCLFVwNYt0=; b=D7mx1oOUr0Qd6X
	UyG6z8vgejCzZ7imLQmp/2jJQEXifG2nqyxJUN43JiBZpz7+KJ9yC+bk13yQl9ZDt0nY4G2QRi3DJ
	2QVznKJ6nKUKoW/ExzDJ3o655dfTcAa6FX3A9hq2i8VvLB0YrUxxoHAlaIwQrGjQnEF2qir7fIoqg
	8fexWEndpkjPtJnzmRPpsmaw7mxHy+kOgyp55mgvR4pmYwcsUL1FzyYuT82lVTM3qfhEjyZ9zBrN3
	nm3FYLxgapRZDWj8i2QGvbsK6nIz4Qb/FAOV6MfJSzk70aHGdXCG0AOpGj0RqFRynA5eIi2eOLA/z
	Vs9hyZrF5h50uzI8+dNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWQP-0002uR-GE; Wed, 17 Jun 2020 11:40:13 +0000
Received: from mail-bn8nam12on2075.outbound.protection.outlook.com
 ([40.107.237.75] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOF-0001BF-0r
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:38:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gO2u/GDBi4fW54r7Bm8TXlijeNpEjRHF6NtVD4yrrScd1Caz90GQHRz253qJPQiYspUz5KVIWcElNjy0KPscP/chuLOHKaER4QwgLcfTrQqq1xJ1sY8SsEYUwQKoRZzOIFxjWgvId2ifu+yM81JvbvwxSZbHgU6l6ubDgNXncLNCzIbg+0c9oEK7Nd8FRD8WCVL+EoCeyWhV4B+jcNmaMYkBYEWojSZATAJnUHoMTL930PvdiLuXuTQnKKsyWiaLsLqN2bWILufJ3yhVXFy9J8JiLvEeqAapOuDkE5KRqAs1pLhjkkRGDRgEE7rqIJdhoVmX42UE5dChJBJgWkULWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96lmm/m9X4pYH/c3YVANjdHqmCAjoHOI1sptdry4dEs=;
 b=cOKbPW/CtZRQWXRbdxLBSEkSVdIJle5htWySeef/vdUeqc1/pyEU77omS16jAfD5HL0h7Qx4/tCy/ltuYeb17JK6yTzXaeravAYadBlYGsj0M5a+5ySswfzWLr4NcN9xhp+sAKXRwoFWUH06lRB729xr088NlaYHDO5VJRtsSHPJkQb8QuJJLbwxz8p/vwxLqoxKO61pihYLYRFBAFzbxiOH2BZb1YvE1hs5hQ9UO2TkpoQW/gJqfcV0WeXNM5axPPdb4KD1pdri371YWhDqWCI7x2i+yPloEqgQvex9LyfSxsVe6mTt/zl1qIltk5bfewEvfizPy8XUhOA7Ocqsyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96lmm/m9X4pYH/c3YVANjdHqmCAjoHOI1sptdry4dEs=;
 b=FpKpr858taUULVLYeTkXOSkWMEa5WZXox2ZdWw5nabQ5kVtaEUxfTgotkWOteXI5uhLpr/x16uPHm+CmNIUhSkoDJwKhK5y72rRVRuwB/zWE4bGAJMiksmPtlCKBDsNRYkw8Z8kfwU3S/QsAjtxHrT8fnjoGmLpEfJpul14ILvs=
Received: from DM6PR02CA0110.namprd02.prod.outlook.com (2603:10b6:5:1b4::12)
 by MWHPR02MB3327.namprd02.prod.outlook.com (2603:10b6:301:62::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Wed, 17 Jun
 2020 11:37:50 +0000
Received: from CY1NAM02FT018.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:1b4:cafe::e6) by DM6PR02CA0110.outlook.office365.com
 (2603:10b6:5:1b4::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22 via Frontend
 Transport; Wed, 17 Jun 2020 11:37:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT018.mail.protection.outlook.com (10.152.75.183) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Wed, 17 Jun 2020 11:37:50
 +0000
Received: from [149.199.38.66] (port=36164 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWN3-0001I3-Fd; Wed, 17 Jun 2020 04:36:45 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWO5-0007aG-Pd; Wed, 17 Jun 2020 04:37:49 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 05HBblI8015107; 
 Wed, 17 Jun 2020 04:37:47 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWO3-0007TR-0M; Wed, 17 Jun 2020 04:37:47 -0700
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com, sgoud@xilinx.com
Subject: [PATCH V4 6/7] gpio: zynq: Add pmc gpio support
Date: Wed, 17 Jun 2020 17:07:26 +0530
Message-Id: <1592393847-1415-7-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592393847-1415-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1592393847-1415-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(136003)(39860400002)(396003)(46966005)(26005)(107886003)(966005)(83380400001)(47076004)(4326008)(478600001)(8936002)(82740400003)(356005)(82310400002)(81166007)(316002)(336012)(7696005)(426003)(70586007)(6666004)(44832011)(70206006)(5660300002)(9786002)(186003)(6636002)(36756003)(2906002)(8676002)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: faba5c50-7338-402b-0a91-08d812b2dd64
X-MS-TrafficTypeDiagnostic: MWHPR02MB3327:
X-Microsoft-Antispam-PRVS: <MWHPR02MB33277E628E362E1FD901A328AF9A0@MWHPR02MB3327.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 04371797A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P5U9Ho6/WdnvuUOU+LEkLjeXgvTm5ww/HvMWPKbsxB3GJjqZEsYwBipzmXu1ir1c8RUZo0NGRnrM/VxLHpURaxvFefyZF7Z6nEYtJlP1fJFt120yPTjkF9uwZKnIdBXPcA3nW7gen+gbHMmmdP4db6eKRQbXun9AUklRPm8IRBibPmwl00PJcX94kmHJdFNvsCZz/O2Z1X2V7gLwOrbxJUc0zWX1D+/hJO2E75TroZRD/hupXJZ2FDbzES0ZB/Ga1DxHpE7ytEpXyJ48BKG32ZwJAZpZQfZvsUSe2ieBDNIKVgzvrmBfN/MBxXZVnqNpX1xa9+oOv8H+FG73Ph4vFasqJLF/zLYb6H7siTrsLHH2y3/9AbwJ2X5CQe/9xSjZFN7juyxWnT7CBHC9yUIf3eAscSWPnAQTvywLtpLQUr0a1op9TmvRejkIOJ83Epjc47tPfeCpOmgQsroQNrZPRtfvHgPW7Ksi1wPZArSFvnQ=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2020 11:37:50.0644 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: faba5c50-7338-402b-0a91-08d812b2dd64
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB3327
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043759_085018_1EB30D22 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.75 listed in wl.mailspike.net]
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
