Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9ADB12AC28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 13:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+z9IVs0T3khQfGqLd2s+wSZpFMHX2LGcutGNq924tA=; b=Bhuef4L9vUi8LP
	98avzWXZdbuWRt7Tbmyrnfm2sYnyL+GqIp9SNRNCggC6AfdYmI8GYFlLcdeywNeluW9AIY6qACPyz
	77Ty1VzpAu+3+5184r7VBCtwapKiilGUAArWmnASs8Gift80kkE71CsBAhbjdiaCfGGdMajDniWr1
	IHsBRod1nx3md+wfZCRQEUuwQl4D9C7e9YtDhwHXCH0sJMSYIRa5CNnZt+ro6cJp7d1HqyO2Zh+nm
	D1F2B9xKt+J4e3Lnd1sxCFvZ1OJcXLbMZgHKrcBCNeiB5Auc2PJFGCFVTzdeSQlY+bWjfLRBDP/qw
	c+8OKB7D+koye4g5zrJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikS1c-0005g7-9F; Thu, 26 Dec 2019 12:13:56 +0000
Received: from mail-dm6nam10on2049.outbound.protection.outlook.com
 ([40.107.93.49] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikS0Q-0004wR-5p
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 12:12:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ShyIz+cJRl4mbIZWDhOQmL4HrDZvRnE79m3RxlVzCZQA8lTUxSTJQaWEytibI2Gy5Fe/9qAzD5RpNNH6LaSmKEtrNz/KIe1HsNxB2vbrW2nxglHap+bm2XQAQ9DT27qvVhYJcqaZ4UACRVp80eyYzcSb8gZEKVFkDVoHY1LgbFXwnUA+WhilfADVrLtjygkaND+MBNAWBB9+twsG28Si5DQKiiyKBBvuQyaW33RhejLDRLk4MpC1HugJFBY7WMox9BaQ6CTF0dGroq9qbJkW2rOv4aavkMCjk0D4udiS2ZXKmnDHedV/hb9wunf8JaQ465xTaJo1XaKXXirlzotmFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1fyYbeD7xkDdqJGMSDyInYDzwHTHRUCsJpqN5Zx6nqM=;
 b=KEPXzLJyBONixNYKZPlUmBPQblk+mcxzxbuDs+JpSKbmgpAA1/DFwOdpvrwutS4kESP2axAWNXBKT2aV9QwAEmA5tu07K4iMJy5sZqW2iPoO8NR8m7erDfsORLQjm5Yx4o1CUd+JOotfD3rW9a+OWZZnKXCylk9uU+55y1Ax4o0yGskE/7VRgTE18UfwNsCfC1SP27p3pxSPdvZ84fXN4v+LM9KKOrdRF4akT6KMbr2Ht+RHZ7VtY9QuwJbUvNGDrVlRG2gi7NwpdNO9bzUvxRwmrZ7+gbMsJX+zXNdvafknuanKjOPZ3YDduj2SM1BgX/Fb4t4ITDXeeEIRkWNz6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1fyYbeD7xkDdqJGMSDyInYDzwHTHRUCsJpqN5Zx6nqM=;
 b=tBAiD52Dj8+AyWmDIgQPebG19lswLHYlKsElYE7nNW7UHHgKI4YgYwKZYW6g7f0WMx0GCBIDQWZ78FQPoZPrc9PQpoiTPt7Re3XtTQ7GIJWU3HVQLJ8gAxOWLUwzt/BgV+ce8CP8ejg/vQ/vwW5y5PK53BMbUQ2NDv3FGtRT6vM=
Received: from SN4PR0201CA0026.namprd02.prod.outlook.com
 (2603:10b6:803:2e::12) by BYAPR02MB5527.namprd02.prod.outlook.com
 (2603:10b6:a03:a3::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11; Thu, 26 Dec
 2019 12:12:37 +0000
Received: from SN1NAM02FT050.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::209) by SN4PR0201CA0026.outlook.office365.com
 (2603:10b6:803:2e::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11 via Frontend
 Transport; Thu, 26 Dec 2019 12:12:37 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT050.mail.protection.outlook.com (10.152.72.128) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Thu, 26 Dec 2019 12:12:36 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0K-0003JR-Af; Thu, 26 Dec 2019 04:12:36 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0F-0007wQ-6y; Thu, 26 Dec 2019 04:12:31 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBQCCQ58023019; 
 Thu, 26 Dec 2019 04:12:26 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0A-0007v9-0x; Thu, 26 Dec 2019 04:12:26 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH 2/8] gpio: zynq: protect direction in/out with a spinlock
Date: Thu, 26 Dec 2019 17:42:12 +0530
Message-Id: <1577362338-28744-3-git-send-email-srinivas.neeli@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(199004)(189003)(81156014)(4326008)(44832011)(2616005)(9786002)(186003)(336012)(8936002)(426003)(478600001)(6636002)(2906002)(8676002)(81166006)(5660300002)(7696005)(107886003)(70586007)(36756003)(26005)(6666004)(70206006)(316002)(356004)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5527; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4f47e128-54ec-42f0-9b51-08d789fce588
X-MS-TrafficTypeDiagnostic: BYAPR02MB5527:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5527C4B794121B87237A6794AF2B0@BYAPR02MB5527.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 02638D901B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NVB8339yRNb5Ot1cZnBUh3gdyYg0CLeKuU4X56M81vDSnodJblrPgFswpiRc5wID67V0I24wzQ6mskzeODErWOXRA1/dhQCWT4vY6pe0isa+O7K1RUMTj7JKppGXpSuMkE/iJiwIRrT8FBiY9T464fM8n5o8mhrcTyI8m8/0n1+/I7ZIsUKIvH6htQ7/cE6Qiaeg9O2m9amEAMTMV4OJGmOiofuE5hM8IEPXLSDORC6c8DiN54aQeszmFNRFtr5lAAONaxH/q6UeT/+aOQXyCMQZPNoar7U+r6cbvVr+Egu9VmLGRqgZAJ/fHKotjM3PfNEB1uBeRWjT+R9rff5fmmXdiay1O7xHEUOGj7Ns5HFogNOQXb0+sWlp2oItnGYAgGpdDxL09KAboRYflqiMJjUAzsEpQriKOkJa8zgR4rvMmDPNaSBvtar67MQvpKJpkV3cWCDG69kxA5D+YMuYHoEhWAwZJsrjShM2KF7b7zs=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Dec 2019 12:12:36.9711 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f47e128-54ec-42f0-9b51-08d789fce588
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5527
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_041242_217199_627B6253 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.49 listed in list.dnswl.org]
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

From: Glenn Langedock <Glenn.Langedock@barco.com>

Fix race condition when changing the direction (in/out) of the GPIO pin.
The read-modify-write sequence (as coded in the driver) isn't atomic and
requires synchronization (spinlock).

Signed-off-by: Glenn Langedock <Glenn.Langedock@barco.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
---
 drivers/gpio/gpio-zynq.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index 05ba16fffdad..9c8b8a397a26 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -10,6 +10,7 @@
 #include <linux/gpio/driver.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
+#include <linux/spinlock.h>
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
@@ -116,6 +117,7 @@ struct gpio_regs {
  * @irq:	interrupt for the GPIO device
  * @p_data:	pointer to platform data
  * @context:	context registers
+ * @dirlock:	lock used for direction in/out synchronization
  */
 struct zynq_gpio {
 	struct gpio_chip chip;
@@ -124,6 +126,7 @@ struct zynq_gpio {
 	int irq;
 	const struct zynq_platform_data *p_data;
 	struct gpio_regs context;
+	spinlock_t dirlock; /*lock used for direction in/out synchronization */
 };
 
 /**
@@ -297,6 +300,7 @@ static int zynq_gpio_dir_in(struct gpio_chip *chip, unsigned int pin)
 {
 	u32 reg;
 	unsigned int bank_num, bank_pin_num;
+	unsigned long flags;
 	struct zynq_gpio *gpio = gpiochip_get_data(chip);
 
 	zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio);
@@ -310,9 +314,11 @@ static int zynq_gpio_dir_in(struct gpio_chip *chip, unsigned int pin)
 		return -EINVAL;
 
 	/* clear the bit in direction mode reg to set the pin as input */
+	spin_lock_irqsave(&gpio->dirlock, flags);
 	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
 	reg &= ~BIT(bank_pin_num);
 	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+	spin_unlock_irqrestore(&gpio->dirlock, flags);
 
 	return 0;
 }
@@ -334,11 +340,13 @@ static int zynq_gpio_dir_out(struct gpio_chip *chip, unsigned int pin,
 {
 	u32 reg;
 	unsigned int bank_num, bank_pin_num;
+	unsigned long flags;
 	struct zynq_gpio *gpio = gpiochip_get_data(chip);
 
 	zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio);
 
 	/* set the GPIO pin as output */
+	spin_lock_irqsave(&gpio->dirlock, flags);
 	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
 	reg |= BIT(bank_pin_num);
 	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
@@ -347,6 +355,7 @@ static int zynq_gpio_dir_out(struct gpio_chip *chip, unsigned int pin,
 	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_OUTEN_OFFSET(bank_num));
 	reg |= BIT(bank_pin_num);
 	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_OUTEN_OFFSET(bank_num));
+	spin_unlock_irqrestore(&gpio->dirlock, flags);
 
 	/* set the state of the pin */
 	zynq_gpio_set_value(chip, pin, state);
@@ -885,6 +894,8 @@ static int zynq_gpio_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	spin_lock_init(&gpio->dirlock);
+
 	pm_runtime_set_active(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
 	ret = pm_runtime_get_sync(&pdev->dev);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
