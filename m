Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6853174E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 00:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GFEThAotRopp0HVy4AtcVOalasvlPEr9mpIcfgWZPyc=; b=jZyCmkS2ITypWS
	cFM0q3o4uV2cLnaYzUd1fyT60jfFKPeNfSeBIl4+8+lAnX4JeVV2TXtjYbmiZR9o54pQxKf+Q6DrZ
	WE7ynisvVK3tos1qUfrPWR5yjpTwO3Waqy4S61sC1lrkUw22zxi/p7mZR9W1oBUYRiNIByd6Ia1jT
	T3YFNnljPy+/83ImcyWXPoPA1iw0AWhLg8dbinhu7ciIDjek1B678ahWUH7ch1svEX51+Uahk8dwV
	2b3dqs/fd+XnW1Wom+ZBcU5E6ztWD6LgPouKOZ2Ypf/HptpAVYuVui2ba3XVItT0/X+l3szHpjQgh
	7fyAFc+pgviXCWXRQr6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWqFY-0001oh-By; Fri, 31 May 2019 22:43:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWqFQ-0001oG-Eg
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 22:43:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so2213924wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 15:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1xabkKHib5YVNF+FNN9RYllcelJ/yI/1PSg1Js4AYD4=;
 b=HmJw8kJh3KyknWoc9/xEn/HZVl6ILNOA5tjFoXZb9h4OdEovfRGDjtvRVOaweOAmGG
 6vwRXVZzaAd+tCnHeWsi2+w7XKChgrPyE/bP2LvHMTRoW148nHacUy26aU2TSzHlSPWm
 PRBjY+3zvL1zm58kb/Znh3C5mMFHIgbcYfdvb25OetcBQ1oD6TdhTiRyTmjfKaChcufU
 GfFwIgvkKHb6nU2WHX25RnzRi15/wXpUs99xMXfT2/AiCllukHRsOpc7YC8k6IfwOtTg
 qSucpubqZulUzak+OVW0e11hcL8G819VPJnLsex1YqTQGeSqdKH8s6phcOVeJwThPJ2M
 3MLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1xabkKHib5YVNF+FNN9RYllcelJ/yI/1PSg1Js4AYD4=;
 b=hZO4TjjU9dJeyySkqF62bniEMGfFHJlUCzRvqB5300c+QXNeyq38YB3oiZ/aCmhOWH
 sH6AT21ev+O6e04goqCLZ7324pJxobQnm0OJ3bFBVwbF0PcrqQcER5BDUspjZMXDSxbq
 ub+M0EvZsatJwQdXrMt0Nylk3e0xUuOhe8aF9IrupOCFPSAfUFW6WexVURvtkyGUL5mx
 QL5Mm2apNEl+szYXCXvKaCJ3KpVMAm10aW8uc/SA8V80QMH5lHAsJVNJsVsAwHSYF8PA
 Vv7YZ9ShM9Q1hANFgOH41QyyoFqaYRRSqvrbj5peePzeU7yyOIXMCrffHg4wthOpMsY4
 uk0w==
X-Gm-Message-State: APjAAAWnJvzSApLu02NINVjy82r6T7+G4NH5p+vu+RH3dRRFY2XeLc1F
 GEMleySvc7kxUamodxKzSaWwgg==
X-Google-Smtp-Source: APXvYqzRPYy1UaAPlFDCQE8o1qAZmDtee4C81G+PJavoPpCP2prOjHkVZWq+u029BJbkUgGKH4NMuw==
X-Received: by 2002:a05:6000:1c6:: with SMTP id
 t6mr8347992wrx.236.1559342618005; 
 Fri, 31 May 2019 15:43:38 -0700 (PDT)
Received: from localhost.localdomain (catv-89-135-96-219.catv.broadband.hu.
 [89.135.96.219])
 by smtp.gmail.com with ESMTPSA id x6sm11288263wru.36.2019.05.31.15.43.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 31 May 2019 15:43:36 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Sekhar Nori <nsekhar@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH] ARM: davinci: Use GPIO lookup table for DA850 LEDs
Date: Sat,  1 Jun 2019 00:43:33 +0200
Message-Id: <20190531224333.3335-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_154340_560493_FC886336 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

This switches the DA850 board to use a GPIO lookup table to
look up the GPIO LEDs. Thanks to the offset handling when
we define GPIOs as an offset into the chip, we can drop
some complex code.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Sekhar, Bartosz: I had this patch sitting around in my
tree, can any of you test it and/or apply it? The
prerequisite patch naming the GPIO expander properly
after .dev_name was commited a while back.
---
 arch/arm/mach-davinci/board-da850-evm.c | 43 +++++++++++++------------
 1 file changed, 22 insertions(+), 21 deletions(-)

diff --git a/arch/arm/mach-davinci/board-da850-evm.c b/arch/arm/mach-davinci/board-da850-evm.c
index 4ee65a8a3b80..acf3013f4ae5 100644
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -631,13 +631,12 @@ static void da850_evm_bb_keys_init(unsigned gpio)
 	}
 }
 
-#define DA850_N_BB_USER_LED	2
-
 static struct gpio_led da850_evm_bb_leds[] = {
-	[0 ... DA850_N_BB_USER_LED - 1] = {
-		.active_low = 1,
-		.gpio = -1, /* assigned at runtime */
-		.name = NULL, /* assigned at runtime */
+	{
+		.name = "user_led2",
+	},
+	{
+		.name = "user_led1",
 	},
 };
 
@@ -646,6 +645,20 @@ static struct gpio_led_platform_data da850_evm_bb_leds_pdata = {
 	.num_leds = ARRAY_SIZE(da850_evm_bb_leds),
 };
 
+static struct gpiod_lookup_table da850_evm_bb_leds_gpio_table = {
+	.dev_id = "leds-gpio",
+	.table = {
+		GPIO_LOOKUP_IDX("i2c-bb-expander",
+				DA850_EVM_BB_EXP_USER_LED2, NULL,
+				0, GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP_IDX("i2c-bb-expander",
+				DA850_EVM_BB_EXP_USER_LED2 + 1, NULL,
+				1, GPIO_ACTIVE_LOW),
+
+		{ },
+	},
+};
+
 static struct platform_device da850_evm_bb_leds_device = {
 	.name		= "leds-gpio",
 	.id		= -1,
@@ -654,20 +667,6 @@ static struct platform_device da850_evm_bb_leds_device = {
 	}
 };
 
-static void da850_evm_bb_leds_init(unsigned gpio)
-{
-	int i;
-	struct gpio_led *led;
-
-	for (i = 0; i < DA850_N_BB_USER_LED; i++) {
-		led = &da850_evm_bb_leds[i];
-
-		led->gpio = gpio + DA850_EVM_BB_EXP_USER_LED2 + i;
-		led->name =
-			da850_evm_bb_exp[DA850_EVM_BB_EXP_USER_LED2 + i];
-	}
-}
-
 static int da850_evm_bb_expander_setup(struct i2c_client *client,
 						unsigned gpio, unsigned ngpio,
 						void *c)
@@ -685,7 +684,7 @@ static int da850_evm_bb_expander_setup(struct i2c_client *client,
 		goto io_exp_setup_sw_fail;
 	}
 
-	da850_evm_bb_leds_init(gpio);
+	gpiod_add_lookup_table(&da850_evm_bb_leds_gpio_table);
 	ret = platform_device_register(&da850_evm_bb_leds_device);
 	if (ret) {
 		pr_warn("Could not register baseboard GPIO expander LEDs");
@@ -729,10 +728,12 @@ static struct i2c_board_info __initdata da850_evm_i2c_devices[] = {
 	},
 	{
 		I2C_BOARD_INFO("tca6416", 0x20),
+		.dev_name = "ui-expander",
 		.platform_data = &da850_evm_ui_expander_info,
 	},
 	{
 		I2C_BOARD_INFO("tca6416", 0x21),
+		.dev_name = "bb-expander",
 		.platform_data = &da850_evm_bb_expander_info,
 	},
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
