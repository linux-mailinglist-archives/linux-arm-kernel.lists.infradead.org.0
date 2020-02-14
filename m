Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DBA15D2BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:18:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzU+6o5vkjUvmJvWso2FiGoiKbnTtnptebLKpVNUpPQ=; b=l+0WsdLtGVQbPp
	qrZaahSyx80p5k7R20eQW1uGggM/8VNuvj02YPRN3QkHBHUHZ2TiDnkTPwo33nIAsGHWcyl5Qh/oM
	ZvVYLZ0ZQpHHVkP5L93sPVvz1yQbbYofRRfufvC6P5/bVaYYOgdUCpxbhMMciAn3sNeTlYj4YtDpw
	p4/ePR602aR942n/tBIMNID4rxgz796LLC/6QuXDbkRSl5lCPimSuAze8MSlPLhAd8kPm6qhiP2EB
	N8/DZawqqYW2U4jWj2AoNsSPQe685uginxX5I4Se/8d8XEu6Q3NWblrgt128fuFiwbA6QL3pcgL+n
	0Km27PG1H1tqCA6tGf3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2VEi-0007Bk-2w; Fri, 14 Feb 2020 07:18:04 +0000
Received: from mail-dm6nam11on2062.outbound.protection.outlook.com
 ([40.107.223.62] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2VD0-0005mz-NV
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:16:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WbB4vN6pUq4pe0AvqtiSLxtjUxCrf7L1asLyBgCi+Hg+RAEya2PiXTeEymosYW/39vOUPNnNflRwM3mOk1wqtdjpsRGg/NvgpIDNzwxGxTTpRv7EsaGtkuYx8QgqZyTyFYD5LEitpTKdN1gkssGpUDM1aj/DjBafV8MtJAlG5HBwjr+v11cu5DjFOvkYpoTlHJ9GrZrZaz+Qvus3kj5b0+o9zzuE4Mg/MSXBOj6Au75DPnElq07X6N8qyGzcmqkNbBUZ1BA3PIgH4QfNh2iN5ZsU76jKq92q0oQpjXVKr81yW6cMNpBa2lZZTm6SK+qaBZdvCtyiGR26kpon/m+wZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sRjMKkpkUyonj62oWCWHcCtH01gsJmzRrIJ4r5lqWPY=;
 b=TSivyJFrDBHJhjIKIgSMQIg9dqjARXrKMHmhlJk3Qa3m5vdkZvOm8Z6ECo/MIb5h4pRM2c4mcg8bDQ1mCY5Dea+ddh8gax422s0SEZ6gov3u427+hEDhCoEz6yKcIBVG7lef1bE0xGZc0ChZoayV2pXyBPoOodn1YyWOfolH8xByPmcyob87ons/AUTlzdeAAXuwFgUzACb+teOtnmvELFm+VuH+9zepdvF4Jr5uooucyKSEBJtjaA3oDm2EuUe6Ow2BL5rfJ07+Ezm8P4gFzVRMdSgt+DVP6sdUmTYF+P9X2H4wzKOBNYufPohpqOA9Q4Caqqh9D3TZrBcOnChY/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sRjMKkpkUyonj62oWCWHcCtH01gsJmzRrIJ4r5lqWPY=;
 b=Us7p9ybaVVdSEyeA7ZjoIC87S8qrlaBo32HwrolvKcsP4oP8hnlAm5IYNTgXl4+TCKmcIHFdza6SspjIBG6ybDaBLFE2iJRjnQ9+L0Ae/CMt8x7EUdzLb6vHUWYTl3sIuY9Y8ve6MwbeS0ALcppMLmiAl3+fQP0GZqrQRlSEU4Y=
Received: from MN2PR02CA0023.namprd02.prod.outlook.com (2603:10b6:208:fc::36)
 by BN6PR02MB3346.namprd02.prod.outlook.com (2603:10b6:405:67::34)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.23; Fri, 14 Feb
 2020 07:16:15 +0000
Received: from BL2NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by MN2PR02CA0023.outlook.office365.com
 (2603:10b6:208:fc::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.23 via Frontend
 Transport; Fri, 14 Feb 2020 07:16:15 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT062.mail.protection.outlook.com (10.152.77.57) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Fri, 14 Feb 2020 07:16:15 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCw-0006Hw-0K; Thu, 13 Feb 2020 23:16:14 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCq-0000Um-TE; Thu, 13 Feb 2020 23:16:08 -0800
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01E7Fw72015592; 
 Thu, 13 Feb 2020 23:15:58 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCf-0000OQ-V7; Thu, 13 Feb 2020 23:15:58 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH V2 6/7] gpio: zynq: Add pmc gpio support
Date: Fri, 14 Feb 2020 12:45:36 +0530
Message-Id: <1581664537-14386-7-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581664537-14386-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1581664537-14386-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(189003)(199004)(6636002)(107886003)(336012)(7696005)(426003)(2616005)(316002)(4326008)(186003)(5660300002)(26005)(44832011)(2906002)(966005)(81166006)(81156014)(8676002)(8936002)(70586007)(9786002)(478600001)(356004)(6666004)(36756003)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB3346; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a8910a40-bc07-4c9b-0f9a-08d7b11dc757
X-MS-TrafficTypeDiagnostic: BN6PR02MB3346:
X-Microsoft-Antispam-PRVS: <BN6PR02MB334664B0DD3D322A72BFB943AF150@BN6PR02MB3346.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 03137AC81E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gj2MOYLrarLn7vqsEILJ2VScfcmzeuMwjsyMiv4KJQRrgbeRFRZa2hdYTNIt3Jsr6ZotEQpxG4I294JEPwIGE5AwPqC9U0lJqh5NQGIqNs9qTqAKIugLgera47LrkYO+SAs8OG2C1oi+ltyT2zWFCzaLMixXMl9nKaJqFf1nfsTcJOi8V4CUnmEzEYHTV3Z63NfOl27OI6TC4guSB5xkphZH100kFm1jNptp3kIIAm0FB+bjqXwvnN949zp10+OPAxIyx09U5YvseuqLRB9a92cqCVfrVVwjx2NHfFd1csMt7vXWKr+6Q9fZ9uRjolFot2KvsL6p3V64VXbLcaRLJqI4CImwRRKvUKdChcWdpa9F5tPSKfhqQhL/d7dM7L+PFcLu8gW0lG0wtmZxgSQ+onI1Tf8qs4noE0v5uAYRFnz8Pk1un7nmFjs4JEkyNDVBOVNGtT1MzFBPZJdJQ0YHiKIvaE5G53ACcsh0ht87pYUwJfvcybHGhMZgPSxr0q7NgLg6uJ20a0HI/zQ8y2vJWQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2020 07:16:15.0362 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a8910a40-bc07-4c9b-0f9a-08d7b11dc757
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB3346
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_231618_788819_FEAF55EE 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.62 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.62 listed in wl.mailspike.net]
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

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
Versal devices are the industry's first adaptive compute acceleration platforms.
https://www.xilinx.com/support/documentation/data_sheets/ds950-versal-overview.pdf

On the Versal platform, we are using two customized GPIO controllers(IP) which were used in Zynq/ZynqMp platform.
One of them present in the Platform Management Controller(PMC) block and other in Processing System(PS) block.

In PMC_GPIO only Bank0,1,3 & 4 are enabled and in PS_GPIO only Bank 0 & 3 are enabled.

You can find more details of GPIO IP in ZynqMP TRM General Purpose I/O(Chapter-27).
https://www.xilinx.com/support/documentation/user_guides/ug1085-zynq-ultrascale-trm.pdf
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
