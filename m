Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A737C7019A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBIuztMvT9GxDibk8zwvqXgzGfox3c/VK2/UYCgXu30=; b=NdR2nlEto5VRqB
	RPLvuoWd3Q9pVn/uHHU1FfQgPf2Yuh6y+VcU2x5as490WOFI0KQrGgJmz14QNrBbNbdHVJS3yBqKP
	plSI7A7hIS3Eb8Z4ZGaAROWjhIhTZcqW81HE4M7x5g7bdeYq+54jY4AU4NsPm3+U/7m6Bn0c0bRfl
	PAdKKYfbVRK28i9Uh6iiICNGcp0Gfu5ykk1sF/LPGOosQHE1+41pqu3lsn3tOT2a1H2Gt8neG4YgM
	o2vFb7IKqExS28gQalG1TOwE2tVoNpxFrsWwD01DCjIp80fNweqzF+bNQDpLaLLCmS+HlyiG0VNri
	dkxQKA3aewdEBP4aJayA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYel-0004Fv-Ei; Mon, 22 Jul 2019 13:47:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYcN-0001Ru-Ec
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:44:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id x15so35245260wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xwe8A6dusI8g3EU+MAhcchYTHGl9r3ZdFpQ26N/cCWM=;
 b=x1y+r829Kmv8VT1o1u/ml65RFsTDcW6H6q+k8jsc1IUXKtlf4+M9LoIwaGxdwsfBVW
 Maly7KAB6TUaNZNDKKWV+kRUXaWjeWkZboVfA7iRMdtBWECjwEKT712uBvKcbEvioykk
 v4WelV8e3g8+3hPq0saqdrlgmL9usULnfe3K3kxi8tCuqfp4eGGDq399czY+1ZOngK6u
 rrNGU9nUoH/7JXXEgcFVvbBFYZawUqs1hRmS48zFpX7BvADm64dbGx6C6ppPaDNHGl4S
 wwGAX0GfIFRa037mnj6e0VNOg4oaqSr8E0sHYjAvnwB0uMmdm4LcUZEIosdh/rMF38lP
 qE1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xwe8A6dusI8g3EU+MAhcchYTHGl9r3ZdFpQ26N/cCWM=;
 b=bc31o6Y7zgIhCAFjQLcafKd24QlQG8FiJhjK50zNwS8dxvFRq4v5Yz/Lx3WOr/L/lc
 OMsA5ZD9EeY3y660qg/qwUP+JBOm3xG+fj28+PNkMU5/Us7ag4qzQK+OG9OreeN5Fnrv
 Cs6dL9ReAASECTE/UrxY8XGhgks2mY5lJdAhDjigucOiXoV5J3Qq3SePqIpmV+SeZGBg
 nhhdiGNZrdd0wWQrfD7EyaPvR4ha07n5125SvDAxE4OMrLCfMg4o4eBDfZiHpgmejXcw
 n6oMONnlajfjenW0xbjybi20t4HES8j4SPeh9XLoDtnLx3NmIwQ1uIt3vbzUufH8oRl6
 C+Fw==
X-Gm-Message-State: APjAAAXpjLWrQZrWW4ACKXbfLGglOtI/KAZjJ8gjt3BigqELinAhdmt0
 mro0/6TwGOkjEgCpIGsAxyo=
X-Google-Smtp-Source: APXvYqzo/YYqTVi5D8NUKu0A6bOHmsiYuaGRepo2J0qmuAZjjv4mu5dWS7KsdCNQdsEJsW5c/D2z1Q==
X-Received: by 2002:a1c:b604:: with SMTP id g4mr65270937wmf.111.1563803082072; 
 Mon, 22 Jul 2019 06:44:42 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id p6sm40652484wrq.97.2019.07.22.06.44.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:44:41 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 3/9] ARM: davinci: da850-evm: model the backlight GPIO as
 an actual device
Date: Mon, 22 Jul 2019 15:44:17 +0200
Message-Id: <20190722134423.26555-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722134423.26555-1-brgl@bgdev.pl>
References: <20190722134423.26555-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064443_561358_8E3AEA8E 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Instead of enabling the panel backlight in a callback defined in board
file using deprecated legacy GPIO API calls, model the line as a GPIO
backlight device.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/mach-davinci/board-da850-evm.c | 40 +++++++++++++++++--------
 1 file changed, 28 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-davinci/board-da850-evm.c b/arch/arm/mach-davinci/board-da850-evm.c
index 0628e7d7dcf3..ac05d4838f1e 100644
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -36,6 +36,7 @@
 #include <linux/platform_data/ti-aemif.h>
 #include <linux/platform_data/spi-davinci.h>
 #include <linux/platform_data/uio_pruss.h>
+#include <linux/property.h>
 #include <linux/regulator/machine.h>
 #include <linux/regulator/tps6507x.h>
 #include <linux/regulator/fixed.h>
@@ -804,34 +805,49 @@ static const short da850_evm_mmcsd0_pins[] __initconst = {
 
 static void da850_panel_power_ctrl(int val)
 {
-	/* lcd backlight */
-	gpio_set_value(DA850_LCD_BL_PIN, val);
-
 	/* lcd power */
 	gpio_set_value(DA850_LCD_PWR_PIN, val);
 }
 
+static struct property_entry da850_lcd_backlight_props[] = {
+	PROPERTY_ENTRY_BOOL("default-on"),
+	{ }
+};
+
+static struct gpiod_lookup_table da850_lcd_backlight_gpio_table = {
+	.dev_id		= "gpio-backlight",
+	.table = {
+		GPIO_LOOKUP("davinci_gpio", DA850_LCD_BL_PIN, NULL, 0),
+		{ }
+	},
+};
+
+static const struct platform_device_info da850_lcd_backlight_info = {
+	.name		= "gpio-backlight",
+	.id		= PLATFORM_DEVID_NONE,
+	.properties	= da850_lcd_backlight_props,
+};
+
 static int da850_lcd_hw_init(void)
 {
+	struct platform_device *backlight;
 	int status;
 
-	status = gpio_request(DA850_LCD_BL_PIN, "lcd bl");
-	if (status < 0)
-		return status;
+	gpiod_add_lookup_table(&da850_lcd_backlight_gpio_table);
+	backlight = platform_device_register_full(&da850_lcd_backlight_info);
+	if (IS_ERR(backlight))
+		return PTR_ERR(backlight);
 
 	status = gpio_request(DA850_LCD_PWR_PIN, "lcd pwr");
-	if (status < 0) {
-		gpio_free(DA850_LCD_BL_PIN);
+	if (status < 0)
 		return status;
-	}
 
-	gpio_direction_output(DA850_LCD_BL_PIN, 0);
 	gpio_direction_output(DA850_LCD_PWR_PIN, 0);
 
-	/* Switch off panel power and backlight */
+	/* Switch off panel power */
 	da850_panel_power_ctrl(0);
 
-	/* Switch on panel power and backlight */
+	/* Switch on panel power */
 	da850_panel_power_ctrl(1);
 
 	return 0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
