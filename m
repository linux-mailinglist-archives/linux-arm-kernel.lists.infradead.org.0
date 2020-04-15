Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C841AAEBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SIOnRfQCvLKeN0qwgZEOWqKnhsPmYkynhNnG4mrVwx0=; b=WIdiSYyC3CQtAz
	tQRlObx7OhKP2kYPPdPzmyrN4RtQnuyV7IOAaizpx73hRkDwpprxdgFclcji0REeub2LkUO/lzBR4
	1gCIFXBCNQE5uwW1+ZIiAfYjkc9F9vXVhHa/2qe9KEFz3tx1570x07qOpHJY1bBYI0fUnEED8ECP9
	U/u1sY3vAJORfHMvtcQdKXoeXG1nNXScKSUTGRiSfvtLRc3NAqFadOas1DW69F/ukAApmzLdumXYr
	zGfWrbEJ9oAVc9BL1JC7wjmQnOwzQ2KE9FmJyp07DBOGMeLrOfNDxm1KGnu7NUpbgT7d2xOgVnUxr
	WQA9BjNEegMfK6SGMNWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlHk-0007uh-Mf; Wed, 15 Apr 2020 16:53:12 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOlHZ-0007tn-Rn
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:53:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id j3so4017778ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3n1NbqDTv3TDFJsp8RAhjgCcmdyVmO+DIXy7Ax4C+70=;
 b=yZln0JxF0JkhlYWZDCcx3d5UL9x+yG3efwj80GQxenRq8R8lVn7bnQBt9qjzvR2zo3
 brAZ6h4GlRoiYvAltQo898Ojznxb7IBAXDDui5SDKQ7w09X14tHPzce/0On/NPFV1Qpb
 b642EUOuttE8TL22DZjnkhT5MgSb31fLtlJULb76PTUffnslA5mg0RZVBXt0D/nPhnGB
 ZXTGcoO2iU5yHh8W9wevvAKh9VAFuAWUg3JdnW5QnTUCS40V7RSIEl5FUduh3oz1g6HH
 hR4aTctYYmxHndCm++5yebclcFS/1tvKU9WhFJkc7eZydVbp3oedZCEVfbJx2Mxg1QaY
 DnLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3n1NbqDTv3TDFJsp8RAhjgCcmdyVmO+DIXy7Ax4C+70=;
 b=kAL3eP8Zosrz7qd2JVGkY+Oi2CvZlFRBb3CrIdvttShW+QPNRUcF94UJKmbQp3/TJA
 w0U6o8WvmKvL5y02Y9osyFNqKKTbFw4k95BiMSok6Ahnn+Lg+8gj8ojo1OziLFgQgKbD
 8Yunq8ONn3B2n62vHtaWgIgeNd2rxR5pGr4mM3uxC3/nxkFpzGkRs70PMwaN+nkhb5rG
 3eBa0sQOU7B70Phr/dRHal25f04POE72QK39JGkULypAzPJpTsiYkaZ46chTUFMc/CC0
 LuxVLPJ6FuwJeI7Y0He9E5Iqdt5Qw7xYs4xjvmr1mpNozIdn8v/WX2mPHctJ9qF1+1u7
 QdIQ==
X-Gm-Message-State: AGi0PuagYaC9ZahMYC+b3hqwivFSkbvkvzU9K7ycGeUmARvbEtg5LcsH
 EoXihIfDpLB0X+NbWCVCAg5xIQ==
X-Google-Smtp-Source: APiQypJKPntrSwFLddEDg1hoKUt5edawERaDp4sJ0jqy3+9EG/2i2g3Q+9ybx0fsWo0POvTTADreVQ==
X-Received: by 2002:a2e:4942:: with SMTP id b2mr3974129ljd.135.1586969578959; 
 Wed, 15 Apr 2020 09:52:58 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id e186sm13146959lfd.83.2020.04.15.09.52.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 09:52:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Russell King <linux@armlinux.org.uk>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-fbdev@vger.kernel.org
Subject: [PATCH v2 RESEND] ARM/fbdev: sa11x0: Switch to use GPIO descriptors
Date: Wed, 15 Apr 2020 18:50:55 +0200
Message-Id: <20200415165055.193113-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_095302_427692_B9E5A359 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This converts the SA11x0 frame buffer driver to use
GPIO descriptors. Get the GPIO optional and register
a look-up table specifically for the Shannon machine.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Rename the GPIO line to "shannon-lcden" as this GPIO
  line has semantics that are particular to the Shannon
  platform.
---
 arch/arm/mach-sa1100/shannon.c |  9 +++++++++
 drivers/video/fbdev/sa1100fb.c | 20 +++++++++-----------
 drivers/video/fbdev/sa1100fb.h |  3 +++
 3 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-sa1100/shannon.c b/arch/arm/mach-sa1100/shannon.c
index 5bc82e2671c6..351f891b4842 100644
--- a/arch/arm/mach-sa1100/shannon.c
+++ b/arch/arm/mach-sa1100/shannon.c
@@ -104,6 +104,14 @@ static struct fixed_voltage_config shannon_cf_vcc_pdata __initdata = {
 	.enabled_at_boot = 1,
 };
 
+static struct gpiod_lookup_table shannon_display_gpio_table = {
+	.dev_id = "sa11x0-fb",
+	.table = {
+		GPIO_LOOKUP("gpio", 22, "shannon-lcden", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
 static void __init shannon_init(void)
 {
 	sa11x0_register_fixed_regulator(0, &shannon_cf_vcc_pdata,
@@ -113,6 +121,7 @@ static void __init shannon_init(void)
 	sa11x0_register_pcmcia(0, &shannon_pcmcia0_gpio_table);
 	sa11x0_register_pcmcia(1, &shannon_pcmcia1_gpio_table);
 	sa11x0_ppc_configure_mcp();
+	gpiod_add_lookup_table(&shannon_display_gpio_table);
 	sa11x0_register_lcd(&shannon_lcd_info);
 	sa11x0_register_mtd(&shannon_flash_data, &shannon_flash_resource, 1);
 	sa11x0_register_mcp(&shannon_mcp_data);
diff --git a/drivers/video/fbdev/sa1100fb.c b/drivers/video/fbdev/sa1100fb.c
index 2d285cc384cf..3e6e13f7a831 100644
--- a/drivers/video/fbdev/sa1100fb.c
+++ b/drivers/video/fbdev/sa1100fb.c
@@ -173,7 +173,7 @@
 #include <linux/init.h>
 #include <linux/ioport.h>
 #include <linux/cpufreq.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/dma-mapping.h>
 #include <linux/mutex.h>
@@ -799,8 +799,8 @@ static void sa1100fb_enable_controller(struct sa1100fb_info *fbi)
 	writel_relaxed(fbi->dbar2, fbi->base + DBAR2);
 	writel_relaxed(fbi->reg_lccr0 | LCCR0_LEN, fbi->base + LCCR0);
 
-	if (machine_is_shannon())
-		gpio_set_value(SHANNON_GPIO_DISP_EN, 1);
+	if (fbi->shannon_lcden)
+		gpiod_set_value(fbi->shannon_lcden, 1);
 
 	dev_dbg(fbi->dev, "DBAR1: 0x%08x\n", readl_relaxed(fbi->base + DBAR1));
 	dev_dbg(fbi->dev, "DBAR2: 0x%08x\n", readl_relaxed(fbi->base + DBAR2));
@@ -817,8 +817,8 @@ static void sa1100fb_disable_controller(struct sa1100fb_info *fbi)
 
 	dev_dbg(fbi->dev, "Disabling LCD controller\n");
 
-	if (machine_is_shannon())
-		gpio_set_value(SHANNON_GPIO_DISP_EN, 0);
+	if (fbi->shannon_lcden)
+		gpiod_set_value(fbi->shannon_lcden, 0);
 
 	set_current_state(TASK_UNINTERRUPTIBLE);
 	add_wait_queue(&fbi->ctrlr_wait, &wait);
@@ -1173,12 +1173,10 @@ static int sa1100fb_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	if (machine_is_shannon()) {
-		ret = devm_gpio_request_one(&pdev->dev, SHANNON_GPIO_DISP_EN,
-			GPIOF_OUT_INIT_LOW, "display enable");
-		if (ret)
-			return ret;
-	}
+	fbi->shannon_lcden = gpiod_get_optional(&pdev->dev, "shannon-lcden",
+						GPIOD_OUT_LOW);
+	if (IS_ERR(fbi->shannon_lcden))
+		return PTR_ERR(fbi->shannon_lcden);
 
 	/* Initialize video memory */
 	ret = sa1100fb_map_video_memory(fbi);
diff --git a/drivers/video/fbdev/sa1100fb.h b/drivers/video/fbdev/sa1100fb.h
index d0aa33b0b88a..b4363444fa5d 100644
--- a/drivers/video/fbdev/sa1100fb.h
+++ b/drivers/video/fbdev/sa1100fb.h
@@ -10,6 +10,8 @@
  * for more details.
  */
 
+struct gpio_desc;
+
 #define LCCR0           0x0000          /* LCD Control Reg. 0 */
 #define LCSR            0x0004          /* LCD Status Reg. */
 #define DBAR1           0x0010          /* LCD DMA Base Address Reg. channel 1 */
@@ -33,6 +35,7 @@ struct sa1100fb_info {
 	struct device		*dev;
 	const struct sa1100fb_rgb *rgb[NR_RGB];
 	void __iomem		*base;
+	struct gpio_desc	*shannon_lcden;
 
 	/*
 	 * These are the addresses we mapped
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
