Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70419554BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdOyws7DBO57A7xnxR/kI+9CIyTlSyh37v9PWTYOzyU=; b=IOZ+hxckYbiwYh
	xYTctDWzReCqARaslkWBBcOscRjYGLRHP0K0Da61kTVCXkuOKX2vTdfUYMEtVLrYYfvzZ989DzYeh
	BOZVsQ67dS4YFAY8DTmt5Antv2O1quWHJ/7MdryzMkpobzgb4OJ7MUiwTG26UA7J+rYI1QAsFHxVu
	pjlq081r6Ksqrw/Aj+5rphV2IythDhRXUOla2IKEmDinqLYJiouLp3yRwRiNSruMtyzXiSCf65sb6
	iVhAngwfOpEbLCTWCCDj0+hSGn0eleMf9hg0OKtXzXiudEBgbR47eRfCt096Gi/Xyv3UdYyXG9+8Q
	TzbNL24L7IAh8ilHV9AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoV0-0006We-Jb; Tue, 25 Jun 2019 16:40:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPQ-0001wq-3V
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:35:05 +0000
Received: by mail-wm1-x343.google.com with SMTP id c6so3660030wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pPfiVDgc5mzijoolmBgAn7nj9hFIGXkNoey2vIeezPw=;
 b=PH6PJoOty745v5HCYWGPCWBeeSNGmb9UwwqkfUOiMl1dAeUCOfW64MYeP65AJk34q9
 QVGkrvI13TaiQUcKO3PAzYhR+SlYTOCGOCEmHOZl8pzZnDrgU3OgL2F4sF4t8Wuu45bI
 O0s/CEA9VySw6B9MT6SnlA85lLwIQMHTWKRdJ5dPWzlthv0Mp9kYKxLDYTI2NT9eAsHs
 9Bzih0UeynmsFxiAwYLqO5DU6VEut6rYd9k7eNOqFJNdg09L0b6P5zp0kJwKKrUMpgTh
 0ABqdJwysPXZFSMGHbolipLeMxh0463L8lROsmZybF2G0ckfGkRbbW/NOxebpA6Ut4Ft
 dJyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pPfiVDgc5mzijoolmBgAn7nj9hFIGXkNoey2vIeezPw=;
 b=kkoirAGEfdF7GnMs5KXMj5uKZDDKzlveN08BXrX+TxWjAEkxQrKmEFuEVcTF2Jfoud
 GOhkhaZwzb3X5X3gxJB3IjI/BgCl5Xe38Z1TpZk318wligyJzLzX9xHtSXl6xmJ83rH3
 /FWyxBu79b7DafRLwXaL4joe9IOKV7SPkQQiWLev/xPtlxTTZHTJ8X985Z+G3EFmeZJE
 tKUBBK/LALZ1sIRA2dpUxsbPRGUN1PXkHhIU8zG6jDyOZDmmiKBRnGgNILcnXkCdScid
 HZ+Ybo9JswhRb7j8r5GAUINow9nVccHqisLc+A49gufIoQm1A/c+n2pE+gyUzyzLfklh
 hIQA==
X-Gm-Message-State: APjAAAX7IHVpHXzeoLrZhvFesrVBvCr2wngY6mzzBNqHg0lPamp8BSW2
 evH28irIyICAnYCkL8P4NqSZqA==
X-Google-Smtp-Source: APXvYqxt8oVzolPe1n9o8Uiv/T6+/noYyCssxvgjcGdkHFXUOpA/NNpR2yPO4gsel41nlJ0REFrQ8Q==
X-Received: by 2002:a1c:a842:: with SMTP id r63mr20223185wme.117.1561480501837; 
 Tue, 25 Jun 2019 09:35:01 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.35.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:35:01 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 08/12] ARM: davinci: da850-evm: switch to using a fixed
 regulator for lcdc
Date: Tue, 25 Jun 2019 18:34:30 +0200
Message-Id: <20190625163434.13620-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
References: <20190625163434.13620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093504_489857_D3003EC8 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Now that the da8xx fbdev driver supports power control with an actual
regulator, switch to using a fixed power supply for da850-evm.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/mach-davinci/board-da850-evm.c | 62 ++++++++++++++++++-------
 1 file changed, 44 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-davinci/board-da850-evm.c b/arch/arm/mach-davinci/board-da850-evm.c
index ffda623bb543..d26950f605f4 100644
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -802,12 +802,6 @@ static const short da850_evm_mmcsd0_pins[] __initconst = {
 	-1
 };
 
-static void da850_panel_power_ctrl(int val)
-{
-	/* lcd power */
-	gpio_set_value(DA850_LCD_PWR_PIN, val);
-}
-
 static struct property_entry da850_lcd_backlight_props[] = {
 	PROPERTY_ENTRY_BOOL("default-on"),
 	{ }
@@ -827,28 +821,61 @@ static const struct platform_device_info da850_lcd_backlight_info = {
 	.properties	= da850_lcd_backlight_props,
 };
 
+static struct regulator_consumer_supply da850_lcd_supplies[] = {
+	REGULATOR_SUPPLY("lcd", NULL),
+};
+
+static struct regulator_init_data da850_lcd_supply_data = {
+	.consumer_supplies	= da850_lcd_supplies,
+	.num_consumer_supplies	= ARRAY_SIZE(da850_lcd_supplies),
+	.constraints    = {
+		.valid_ops_mask = REGULATOR_CHANGE_STATUS,
+	},
+};
+
+static struct fixed_voltage_config da850_lcd_supply = {
+	.supply_name		= "lcd",
+	.microvolts		= 33000000,
+	.init_data		= &da850_lcd_supply_data,
+};
+
+static struct platform_device da850_lcd_supply_device = {
+	.name			= "reg-fixed-voltage",
+	.id			= 1, /* Dummy fixed regulator is 0 */
+	.dev			= {
+		.platform_data = &da850_lcd_supply,
+	},
+};
+
+static struct gpiod_lookup_table da850_lcd_supply_gpio_table = {
+	.dev_id			= "reg-fixed-voltage.1",
+	.table = {
+		GPIO_LOOKUP("davinci_gpio", DA850_LCD_PWR_PIN, NULL, 0),
+		{ }
+	},
+};
+
+static struct gpiod_lookup_table *da850_lcd_gpio_lookups[] = {
+	&da850_lcd_backlight_gpio_table,
+	&da850_lcd_supply_gpio_table,
+};
+
 static int da850_lcd_hw_init(void)
 {
 	struct platform_device *backlight;
 	int status;
 
-	gpiod_add_lookup_table(&da850_lcd_backlight_gpio_table);
+	gpiod_add_lookup_tables(da850_lcd_gpio_lookups,
+				ARRAY_SIZE(da850_lcd_gpio_lookups));
+
 	backlight = platform_device_register_full(&da850_lcd_backlight_info);
 	if (IS_ERR(backlight))
 		return PTR_ERR(backlight);
 
-	status = gpio_request(DA850_LCD_PWR_PIN, "lcd pwr");
-	if (status < 0)
+	status = platform_device_register(&da850_lcd_supply_device);
+	if (status)
 		return status;
 
-	gpio_direction_output(DA850_LCD_PWR_PIN, 0);
-
-	/* Switch off panel power */
-	da850_panel_power_ctrl(0);
-
-	/* Switch on panel power */
-	da850_panel_power_ctrl(1);
-
 	return 0;
 }
 
@@ -1458,7 +1485,6 @@ static __init void da850_evm_init(void)
 	if (ret)
 		pr_warn("%s: LCD initialization failed: %d\n", __func__, ret);
 
-	sharp_lk043t1dg01_pdata.panel_power_ctrl = da850_panel_power_ctrl,
 	ret = da8xx_register_lcdc(&sharp_lk043t1dg01_pdata);
 	if (ret)
 		pr_warn("%s: LCDC registration failed: %d\n", __func__, ret);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
