Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A857812AC2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 13:15:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWBzSDSyD60BeLgmRIq4oJlNwxmy0ASc9DQl+VDHBjE=; b=TmXhbAWIwHrrJQ
	6W9ngRQ6a4dQUVFuCtRl8x27J+FK6O+CghkSFIU53koVuOcL2PVS8JtL4E1bYl7Fr0HLoE81ZfQkj
	MkN8Tvnl1OdpIefQUQDmYTEiPxhUU3oDw55lhsqNYhGtil2oUSAmPBimVH0TLShk2FQwp2PoS8k7m
	/ROO+dlTovAqC+YxC+I5hMK2p8+tLa8gC7zUBSp+Y6wI/OM3MeHoZJloZM7eB9ifJqh9vzoMz2mhI
	J3uoemsf5nrvse/uSTcU0+i3+t3J3VnNbvXhgDQqb/d4gA8j7ngfHazcAExy0sClMK6AnTtlQw0sF
	p/aZyqRYuDOLuc0bXcMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikS2s-0006cm-33; Thu, 26 Dec 2019 12:15:14 +0000
Received: from mail-mw2nam12on2044.outbound.protection.outlook.com
 ([40.107.244.44] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikS0a-00053Q-6R
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 12:12:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M0OFvXmo0VcPilkGdpL/e7j460AO924UdbO2r6J0511zHoCKUbJr2k2r76LHZdgMj7TIMvjUgOLNkv0VUCYIZoaryu0aqz09aV/ybskjYOBFzMNeZISK9aL8t57pRfHwuoA/ODRYEIWVOTHnDkbB8tFQe8u9M8THgVrdN90xarTOPw8C7D4oKZEwH2VpoeREafYaLVw3Jdt+L7apAPTl0axt6nMQMal0k6C9cmAXxCjlXA3T9EdTFWmHkeT4XznMaq7TcgTT9ZYUt4taZzMgTzIFo5C5xc9kXZ7g9uk1B1akCHwywqI/NmcEhQqg2EkOPG+v2G6cOUXxJXENGCDPcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tI6zRJesDfi11F8Uo66SVsC7aLRcRSyb5XiVgAtmQ1U=;
 b=SyUZmSTTOcHcFIVSonlvc1VQ0ZmxShUDwdCoCBO+WkALWYk2ewACbhdUrI/DYcoZkpgHIkBm9zcscu5AcMcUOXu3dduP4GYoLRqJH4ib0BXekSdJWCuKd+dzv0PqN4Hk5CEe6jePu+VofXoaO8DXrf22bYDexe7SDQgXL8kXpoR3oSdIoGTJsqavfZkYQVoegpZiBzTdT4EVefQJnlnPny5dZZV6qSIOD0DxAmIAWdD3OaUqdqf6GaZxwOs/ROLBnZCIfp27vOBhY3jpjNqQWldvMVgY1Uy/zJljFJ9X8TqbtlLXsyTXHPuhvOVN+F0Wo4B07YO4QlJj727kvZu4Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tI6zRJesDfi11F8Uo66SVsC7aLRcRSyb5XiVgAtmQ1U=;
 b=m3OqrR+7Hbjv+gJoSutlvce1Nty+xzL6hsQVvYE+0/+bYc0pD4kawifLg7K9bYsjQ7Os70xOH47vfM6IJNR8BRqHNGNPBhUnz8amsSciSjIFP/TC+9r7LEpTT8V6xEswlyWUi0TcYebtLLRBBZwI3Z3DQRfk7ebF/4vI1KrBFL4=
Received: from SN4PR0201CA0057.namprd02.prod.outlook.com
 (2603:10b6:803:20::19) by SN6PR02MB4271.namprd02.prod.outlook.com
 (2603:10b6:805:ac::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.12; Thu, 26 Dec
 2019 12:12:48 +0000
Received: from BL2NAM02FT033.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::203) by SN4PR0201CA0057.outlook.office365.com
 (2603:10b6:803:20::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11 via Frontend
 Transport; Thu, 26 Dec 2019 12:12:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT033.mail.protection.outlook.com (10.152.77.163) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Thu, 26 Dec 2019 12:12:47 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0V-0003KE-3I; Thu, 26 Dec 2019 04:12:47 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0P-0007xv-Vw; Thu, 26 Dec 2019 04:12:42 -0800
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBQCCYgG003163; 
 Thu, 26 Dec 2019 04:12:34 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0H-0007v9-Qt; Thu, 26 Dec 2019 04:12:34 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH 5/8] gpio: zynq: Add Versal support
Date: Thu, 26 Dec 2019 17:42:15 +0530
Message-Id: <1577362338-28744-6-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(136003)(346002)(376002)(199004)(189003)(2616005)(356004)(6666004)(8676002)(26005)(8936002)(81166006)(7696005)(9786002)(478600001)(70586007)(81156014)(426003)(70206006)(336012)(186003)(36756003)(2906002)(316002)(44832011)(6636002)(4326008)(5660300002)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4271; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8a99d3d9-fb6b-45f2-2e72-08d789fcebed
X-MS-TrafficTypeDiagnostic: SN6PR02MB4271:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4271375FBCC657D25F313E2CAF2B0@SN6PR02MB4271.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 02638D901B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vUOIGY94lvJPIFJXbdE8HiiLyDH0x0XQh42tqDQCcmrS8TFpeFvooTZ/G7dAFPMTKGpEO5c1zAI2rXFJX7BtlE9Ed5RI3mk8mzYmF9Nfbv1FzzVx9KVovKuQ/U5EcjshPkacFvlPM7CU68aZFpGDGSX6+QHaHMY6WsJRsJSM5LvQKfptarbaibmM3qjWvzq+vdVVypHFuQv2d3ap9jxw5vyLybI3f3k96c3T8UUDVjBV1fo9d8OStS/hiB6UxYOeXqXZf97FwQCgdhVZDS1TfQP/Do6RVXW54Lx0abAoBPXU/FqJYOKr7UQVGPjrSweN7tV6HINvBlfLEZRV0TPpRKNAQtkNonTOTteT7LYN8V0WmMKYCk6aQEr3tCpWNycRkqQc/F2UeJ1TbPMiZCTBJ9JoPGTqHD6HNyc4yywZVvb+NlxaOMWlQ45OiBdk1q1T
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Dec 2019 12:12:47.6706 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a99d3d9-fb6b-45f2-2e72-08d789fcebed
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_041252_263324_23895CA9 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 drivers/gpio/gpio-zynq.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index 9c8b8a397a26..8b913b39f5fa 100644
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
