Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FC3175846
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:25:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ihDU/qpkagv1KKVT9/9jiYawt/GLJtZNQTilzwm+Rwk=; b=Ly09itN+Bust4W
	30gWKyuUNgP25U7TpPTe+TzDxA1xorHQ5zmi5iSa1uOf8zBgwH9TfmvGseVtcMr2uLbqiOd41cP9f
	qJhQvBq6gDsvatshSuQdbZ3o9U1YxFMLEkxTtmTE29h9SCaKSt/8QJTirHecixSnB/te5vKdXKzOd
	F2s4Ulb5IyXmoOI+Pjv0WMtNxKthvQOgah1lNXnIVmYwlg6Ld+NVRj5eKMKEdaMoYE+gLcLmX7b+Z
	zZkRnzlm7RfYsmFgxZktbpBme/tgBlCB6t5fT5mQfjiU0+d/QWIXMHt3/i3fXlH0CHyIRkfslaflL
	vXGMxKh/DSnNGx6DYfhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iGC-0007Ek-AF; Mon, 02 Mar 2020 10:25:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iG2-0007E6-Ou
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:25:08 +0000
Received: by mail-lf1-x141.google.com with SMTP id d27so4432724lfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 02:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=892FcJS8S4Vn2JAxkKJV5fGwZMrhX4YJJCVmMHjxvOs=;
 b=TLT+b5AV5DbyjBjDrxuq+fALZIEdert1enYAHqnWCOYc2T+g9wfbGbZSKABXoOofHZ
 KlbhDpPK5H65TOk3ZCeoUl1wuQ/els8sH82mAm1ZzXnk9NjASq/kspesy11fjhjvFHTM
 l/RQiF/v92Hfvz6o9r/Kq40/wY90NJrQrA2A2hDDV1G/qO3X10o0AclIKiWHIjSguMyo
 g8bSfiq8QPr4yLqPkwhh/xTABC1c3OuPwo7WcD9D0mPt1H5VkEag59yZei/4mFXEkixe
 81z68N/9xwUhbQcDWTSaJPsqs2nvQOkZ7xtOZQCXj/jwVl0R2v86Hic+Sq9zB1RHtUeu
 WSaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=892FcJS8S4Vn2JAxkKJV5fGwZMrhX4YJJCVmMHjxvOs=;
 b=Z+UfHZCmk9+NPmHuC7eisWbomHnXCNktey/6EPkPbkm901KQ6T4WC/ESIqST2DvBsY
 ZhfO1BOs/ri0IuZdxmrug2Bv5CAzst2SdSZgW5sgT4ykxmAsJvixuYsf4CFI5JVnWS1G
 ycgVoF/6eOhYRu+w9Jvh1NZiKSRpziLCrmIiQ8ZUC9FOaKWVGBi4tltmJ13P3wSszHeL
 la7Ms/8APrEfalSxvyBZG0qg3FtgmhtWNaYeR/gwWb2jH/b6gIBmsEuix8fFTuSdFJK0
 0SAwiXld/PhcXt9ZEeoJAL1B7IIHhW9G0iOE2EebQ9h9vNdLINcJh8cBzDd1nGEz7VPi
 2h4w==
X-Gm-Message-State: ANhLgQ1mT0oHy5SfE4pqVr0RMI3EbvtkfMuai6UtpLm5TUS+2NXts7RD
 EUNdX9nIws4DUUPZ1JK7CpPP0Q==
X-Google-Smtp-Source: ADFU+vsm7dEsfShgF48A9yqTp2CguWfdPY2+QNtZA4Pqx/fnp3AdWRMHOCgUaj9Egi+gnnWpeA/AHQ==
X-Received: by 2002:a19:8c12:: with SMTP id o18mr10329324lfd.145.1583144704995; 
 Mon, 02 Mar 2020 02:25:04 -0800 (PST)
Received: from localhost.localdomain
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id s17sm12840320ljo.18.2020.03.02.02.25.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 02:25:04 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: Russell King <linux@armlinux.org.uk>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-fbdev@vger.kernel.org
Subject: [PATCH v2] ARM/fbdev: sa11x0: Switch to use GPIO descriptors
Date: Mon,  2 Mar 2020 11:22:58 +0100
Message-Id: <20200302102258.351197-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_022506_820314_83E68497 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 5bb653db0cec..065cdbfa7aa4 100644
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
