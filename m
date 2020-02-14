Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5681F15D2B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:17:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBZ1KiLDhtm1u7TdH6Q7azBIPDmw2U5uMKQL/BOFymg=; b=UR92RhfXcvm5F9
	KZmY1Y6u0oGvKHNMt1Y9IlAnVo6B+jx7MrcADyEu+do8YSNZ+oscqgrU13dfCQ7xglfZjGQSCBcYk
	IhaF6cPZ79TIlcyZchFvcXgUA5V5+byDMRlA9SfacBxZDn7zD+GilYueJ3NuZTlp8ifeVMlmpPPfn
	H6pr7TrZggv2FpC9o5oEx3c1e/szXzFM/cRbHL1qkgtfp5ksZM7R2UowhhAtOdxNX58/cG42ah6IW
	giNdnhPqsUoGbFPvDkLjm3eLJOk+iCCqhjHqbXBgiCUcRp4rmzV9RCBUaquLv0UuYBf+eUQJijbEJ
	1brdvyZg4udF32DOlwOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2VDd-0006Ai-F7; Fri, 14 Feb 2020 07:16:57 +0000
Received: from mail-dm6nam11on2072.outbound.protection.outlook.com
 ([40.107.223.72] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2VCp-0005bM-TC
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:16:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NR7FdHwoX7OvGTF8EhAf2Uteo9FUyL/TJkqyoA0G09Pce0FwKiedidGIw+ayhUTNzfFvyYYndvrFrmRRKhWq0MIZWD62REpxC8G0GJpKHHhrButGptiCU3IkZvtSW0+80y88o5TYmnu94JZ4Nm+qnO3VERK8kLWMOsmd18uP3OAS8doCUSv2O1xl87zqfpjPiLbRg8nINQO0cn3NtaQsSoP13M8QUGj2nGWgCOznrcJdK01o3hRLhJNBW+cGIhyGJ/6yoqatsKR4j8dZTV87LjmE6fwz9gEMM232EcN0AVqYUdR0xVvvqMpIUkHVGruPEDILhBWOrOAbpkmSvSwTZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EQWixedHB99MNjm5sifD58n+2HUxu3rJcfY3+yP6SLU=;
 b=QqDL0y2WrqCoDTmOGpsAb59JzDI2pINTassFDJRR12RWegCmR7Yc7SnEiqX7b25+uBCO9ptbbTZsqtiaL3ympvxzGc3b7dDDmWyliNWUimXMyRfq0VbcZj+1A5WNP6MqtwMGNTVXQK5DNKhmujyVjl5Y5+Q8L5CDtiM9kjS2WH9viYiWD+u37JzotdaqEnOubUqivWMRqySYc0F3IllzuXvoUdmvFzx/NQvvuMvK3vhCIJBpwPypAAtaTgd7aaesvL8SKEcKp5WxnkcpulacwPDkcBHn7pNp1Hia0oZQROhU8mQbamDi2e5S8VzW9GGlAfNfB6q/CEzy3vJjFj1K0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EQWixedHB99MNjm5sifD58n+2HUxu3rJcfY3+yP6SLU=;
 b=D0JnJHypUICO4Eyyf/MLtwEzbZtWkA3ZHU/CcmKi35a056Wl9H1Bu0LJI/Ocf5r2gifPAStSplVqdg6lMY4CP+4pFp6EVd8+MHSlOiyhN4d0F4Sl9xwkwy9gEPuP8jgfuk5rS+T2Vx7+/obzDPaUvIXCUqp52aU/oDW7bA7qcrg=
Received: from CH2PR02CA0008.namprd02.prod.outlook.com (2603:10b6:610:4e::18)
 by DM6PR02MB6651.namprd02.prod.outlook.com (2603:10b6:5:21b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.25; Fri, 14 Feb
 2020 07:16:05 +0000
Received: from CY1NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::207) by CH2PR02CA0008.outlook.office365.com
 (2603:10b6:610:4e::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22 via Frontend
 Transport; Fri, 14 Feb 2020 07:16:05 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT032.mail.protection.outlook.com (10.152.75.184) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Fri, 14 Feb 2020 07:16:04 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCl-0006GQ-S9; Thu, 13 Feb 2020 23:16:03 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCg-0000Ru-OZ; Thu, 13 Feb 2020 23:15:58 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01E7FqKG018794; 
 Thu, 13 Feb 2020 23:15:52 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCa-0000OQ-5G; Thu, 13 Feb 2020 23:15:52 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH V2 4/7] gpio: zynq: Add Versal support
Date: Fri, 14 Feb 2020 12:45:34 +0530
Message-Id: <1581664537-14386-5-git-send-email-srinivas.neeli@xilinx.com>
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
 SFS:(10009020)(4636009)(376002)(136003)(346002)(39850400004)(396003)(189003)(199004)(5660300002)(6636002)(2906002)(107886003)(44832011)(336012)(70586007)(70206006)(478600001)(36756003)(4326008)(6666004)(7696005)(426003)(9786002)(2616005)(316002)(356004)(8936002)(966005)(81156014)(186003)(81166006)(8676002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB6651; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 094666b0-2c81-4340-3365-08d7b11dc115
X-MS-TrafficTypeDiagnostic: DM6PR02MB6651:
X-Microsoft-Antispam-PRVS: <DM6PR02MB6651E7DC25B0D8D1580E87F0AF150@DM6PR02MB6651.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 03137AC81E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ooCJWMjqYXFDAXtwOo7JIpnLJYvyIu3ymC/wiArnjkA1UKXUfLNXkqD9vqCN4PC1wzoYBSkSHLn/S//hJGJ60t9gAQJEuUxI+/EZqdonAJex5rqxdqm2erRIZfuF97mhu/N4Nx6SapmXplnXA60gNeVQdvwXAw/8Y0iJHdYI2R7Pqz4MxgZEy6xqbsw0x0aMMglpilECeleGubrZd+tAJcZoHNfs/JkzUnpIvRgIicn4rXwsLHe/eL8my+Qs9cYBe7cA46GR7VES/UD/VY5N5XlHxqCuVS4egjn6+6rQ7qgDMI5Wsfd4umGg5x8be4BeWMfuOnHl1QUVueFKVr+ejyWT0VjWNBkZ+IP4HErGQAiNJ/JO0M740JTJrX8YEmU7f5/JnuGrsYJ2+xiTkaQxAkllk/ZFu47Y+1RFn3szwe2OQcFGtTot8ov7xStDb03gbPlIjCGZs/+HuHEt+B2iGOe4pP/0YjTDKiSz+0CiJR64GX/y5sOykS8Yul1zfp105Nl94oNRYp//Y/NGUrWavg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2020 07:16:04.6043 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 094666b0-2c81-4340-3365-08d7b11dc115
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6651
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_231607_982014_3A776CBF 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.72 listed in wl.mailspike.net]
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

Add Versal support in gpio.
Only bank 0 and 3 are connected to the Multiplexed Input output pins.
Bank 0 to mio and bank3 to fabric Multiplexed input output pins.

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
 drivers/gpio/gpio-zynq.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index fb93b35ab19e..9ac69144a0eb 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -22,6 +22,8 @@
 /* Maximum banks */
 #define ZYNQ_GPIO_MAX_BANK	4
 #define ZYNQMP_GPIO_MAX_BANK	6
+#define VERSAL_GPIO_MAX_BANK	4
+#define VERSAL_UNUSED_BANKS	2
 
 #define ZYNQ_GPIO_BANK0_NGPIO	32
 #define ZYNQ_GPIO_BANK1_NGPIO	22
@@ -96,6 +98,7 @@
 /* set to differentiate zynq from zynqmp, 0=zynqmp, 1=zynq */
 #define ZYNQ_GPIO_QUIRK_IS_ZYNQ	BIT(0)
 #define GPIO_QUIRK_DATA_RO_BUG	BIT(1)
+#define GPIO_QUIRK_VERSAL	BIT(2)
 
 struct gpio_regs {
 	u32 datamsw[ZYNQMP_GPIO_MAX_BANK];
@@ -199,6 +202,8 @@ static inline void zynq_gpio_get_bank_pin(unsigned int pin_num,
 					gpio->p_data->bank_min[bank];
 			return;
 		}
+		if (gpio->p_data->quirks & GPIO_QUIRK_VERSAL)
+			bank = bank + VERSAL_UNUSED_BANKS;
 	}
 
 	/* default */
@@ -656,6 +661,8 @@ static void zynq_gpio_irqhandler(struct irq_desc *desc)
 		int_enb = readl_relaxed(gpio->base_addr +
 					ZYNQ_GPIO_INTMASK_OFFSET(bank_num));
 		zynq_gpio_handle_bank_irq(gpio, bank_num, int_sts & ~int_enb);
+		if (gpio->p_data->quirks & GPIO_QUIRK_VERSAL)
+			bank_num = bank_num + VERSAL_UNUSED_BANKS;
 	}
 
 	chained_irq_exit(irqchip, desc);
@@ -685,6 +692,8 @@ static void zynq_gpio_save_context(struct zynq_gpio *gpio)
 		gpio->context.int_any[bank_num] =
 				readl_relaxed(gpio->base_addr +
 				ZYNQ_GPIO_INTANY_OFFSET(bank_num));
+		if (gpio->p_data->quirks & GPIO_QUIRK_VERSAL)
+			bank_num = bank_num + VERSAL_UNUSED_BANKS;
 	}
 }
 
@@ -716,6 +725,8 @@ static void zynq_gpio_restore_context(struct zynq_gpio *gpio)
 		writel_relaxed(~(gpio->context.int_en[bank_num]),
 			       gpio->base_addr +
 			       ZYNQ_GPIO_INTEN_OFFSET(bank_num));
+		if (gpio->p_data->quirks & GPIO_QUIRK_VERSAL)
+			bank_num = bank_num + VERSAL_UNUSED_BANKS;
 	}
 }
 
@@ -787,6 +798,17 @@ static const struct dev_pm_ops zynq_gpio_dev_pm_ops = {
 			   zynq_gpio_runtime_resume, NULL)
 };
 
+static const struct zynq_platform_data versal_gpio_def = {
+	.label = "versal_gpio",
+	.quirks = GPIO_QUIRK_VERSAL,
+	.ngpio = 58,
+	.max_bank = VERSAL_GPIO_MAX_BANK,
+	.bank_min[0] = 0,
+	.bank_max[0] = 25, /* 0 to 25 are connected to MIOs (26 pins) */
+	.bank_min[3] = 26,
+	.bank_max[3] = 57, /* Bank 3 is connected to FMIOs (32 pins) */
+};
+
 static const struct zynq_platform_data zynqmp_gpio_def = {
 	.label = "zynqmp_gpio",
 	.quirks = GPIO_QUIRK_DATA_RO_BUG,
@@ -824,6 +846,7 @@ static const struct zynq_platform_data zynq_gpio_def = {
 static const struct of_device_id zynq_gpio_of_match[] = {
 	{ .compatible = "xlnx,zynq-gpio-1.0", .data = &zynq_gpio_def },
 	{ .compatible = "xlnx,zynqmp-gpio-1.0", .data = &zynqmp_gpio_def },
+	{ .compatible = "xlnx,versal-gpio-1.0", .data = &versal_gpio_def },
 	{ /* end of table */ }
 };
 MODULE_DEVICE_TABLE(of, zynq_gpio_of_match);
@@ -903,9 +926,12 @@ static int zynq_gpio_probe(struct platform_device *pdev)
 		goto err_pm_dis;
 
 	/* disable interrupts for all banks */
-	for (bank_num = 0; bank_num < gpio->p_data->max_bank; bank_num++)
+	for (bank_num = 0; bank_num < gpio->p_data->max_bank; bank_num++) {
 		writel_relaxed(ZYNQ_GPIO_IXR_DISABLE_ALL, gpio->base_addr +
 			       ZYNQ_GPIO_INTDIS_OFFSET(bank_num));
+		if (gpio->p_data->quirks & GPIO_QUIRK_VERSAL)
+			bank_num = bank_num + VERSAL_UNUSED_BANKS;
+	}
 
 	/* Set up the GPIO irqchip */
 	girq = &chip->irq;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
