Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248627019D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nJSCthMkSB7jnwz1IN6W/Ga9VUsCzkpVvcBzsJQaiM=; b=YesDBshxzBlAUE
	IcBuVkEaTCWvjisPZR3l8WdmlgV2G9Ni1T8wIaMtzGKKkgP+ZXRc8lp6DyBqi0MVBz6Iy/HylAy6Q
	aBvE/iYFEk3uias6yHruO/z3z6mcXSsOCZE3Bvxj0mknzs9HeOslsGE/iZhPy5wQVe0WvgQFoqFKM
	FjaUaXlHKCZWa2uwhsMwhpPwSwFZYoE+V19wIltlTAFnT+u1X04vkMRPzlWteScn1+m8GR+AmJsAx
	n3jzIzb5qwlSNgijCF7FIeeVbpgci+1pJiIHODGBw8VW35Rjq5ymkGRhyzitOsL9cyXKAnYlXLSGu
	Xbqnb19C6ebPeRdNcRpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYfM-0004iB-BN; Mon, 22 Jul 2019 13:47:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYcP-0001UW-S0
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:44:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id r1so39479275wrl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5fl6PbtQINJTgpZP0DL3/QcbGxfGTmAVvPv+f3ONzLQ=;
 b=uzNFC9RrjNkUHabQHG9WmUr7OQn69AM0PvDTmxkN6UU3iLj75HPsh6z/G20kHYjCL1
 IN2xx5t/pLvM5Ra7AHrUbHMtKcw7gxkAqWsEwOry13CCxFtypAgZQB9LAOnM/iNEdRLL
 EXx6/m1WT4Pxb4xCZrs8VW2nQEemNswoJFKRnfWV0wpWxsiaXCESakmG56JneLx9E7q5
 4drQgTV5jzPxfWJiLtRgYdVm0S+8wJqsIHHQ3PJSM7G2s9PHYFq98DtY66BJSOmOZCSr
 ZLmTZqObitwllxpxBylZ5HnY7o5w2bK5loW4mGFPZJYH1gTaqllEu6BesuBEkcaX3n2P
 dEQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5fl6PbtQINJTgpZP0DL3/QcbGxfGTmAVvPv+f3ONzLQ=;
 b=tukro6gU1npr5uUOY+7lkyJnOw0x+e2YV7Z3NxzVYgiF8CP9ewzTSfNMx6GE9G7DIG
 mt9+PmN4cL/iVKMD8k3Z8FD0ZnqdBuihLTcyxSjcQ/0UqzY7QoZqmoDJtqHpecc03Aj6
 bW2RvgvhhaqqZEmyilPKtVPujHXqXkOCl2Sx7V1uHyoKGFEq//tjGwVww9dCb19MqAdA
 +edwCTha/IRwxq2vZUR4eahsgZFYOzOzrdmGIhM2pWjj95RSsT1cNo77FJv/K1txTF5+
 XkiEC5Lw8a9yc0LKLia79jfG/uMVI0ojm27Dy5C2AGy68mj/i6/UXnFC65ocGcpRh11t
 27Og==
X-Gm-Message-State: APjAAAX2dbQpqQKi/MzaAFVyZWJlnV2fqZOVuBc0ada5zci/hj9S5Pfk
 cymP9pf1m/nLAhI+2KhLYck=
X-Google-Smtp-Source: APXvYqzB2urAdCfkcFcjTViZIEFF4ByHCqhBxlw/o6zaUTstYzcPFQFxzde+LpDToOCHUOqyK7J9tQ==
X-Received: by 2002:adf:f104:: with SMTP id r4mr78354246wro.140.1563803084525; 
 Mon, 22 Jul 2019 06:44:44 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id p6sm40652484wrq.97.2019.07.22.06.44.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:44:43 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 5/9] ARM: davinci: da850-evm: switch to using a fixed
 regulator for lcdc
Date: Mon, 22 Jul 2019 15:44:19 +0200
Message-Id: <20190722134423.26555-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722134423.26555-1-brgl@bgdev.pl>
References: <20190722134423.26555-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064446_187830_89AAE342 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Now that the da8xx fbdev driver supports power control with an actual
regulator, switch to using a fixed power supply for da850-evm.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/mach-davinci/board-da850-evm.c | 62 ++++++++++++++++++-------
 1 file changed, 44 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-davinci/board-da850-evm.c b/arch/arm/mach-davinci/board-da850-evm.c
index ac05d4838f1e..5b3549f1236c 100644
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -803,12 +803,6 @@ static const short da850_evm_mmcsd0_pins[] __initconst = {
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
@@ -828,28 +822,61 @@ static const struct platform_device_info da850_lcd_backlight_info = {
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
 
@@ -1459,7 +1486,6 @@ static __init void da850_evm_init(void)
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
