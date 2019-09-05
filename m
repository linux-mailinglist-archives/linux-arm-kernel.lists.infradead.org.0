Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32ECA97F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 03:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MrhkBBmQkbuTsnxVHzvNRwrPVJ4sjqGzRd0tWt092EA=; b=FJlq4LNfPbanf5
	DNB6avBBOtQztA2cuBtIZqDAZlfOC1XlWcZkAPcBQzHI/pG81GaHxX9GuoqvdcZqYG+ti8v/QX6EC
	t8ToUjmbxz/fpNCbGjQ90rFGCn+u9UP4tZSY8HT3knzZjAz3yvzFst3vd3z0VNt8C417AqUIvfQIj
	/xJ6ko+jSgKrbwcu+JvWnXyMtJ6lmeFRf6V3tiGSIUhRLha5gHgdXoqsSU+Yf66Cuntv/590oXu1y
	BAex3VRbgdb/iD63vo7jhNUpHGtDiPJxlz1fQIbpACMcTw5negpHmbWqp37+wsOug21oSZYjy/KmX
	baAyuXtC5ixFBxAHFiWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5gPH-0003HV-VY; Thu, 05 Sep 2019 01:17:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5gPA-0003H9-3a
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 01:17:45 +0000
Received: by mail-pf1-x441.google.com with SMTP id y72so553243pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 18:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8b8JTddlNjepQv6Et6Ofu7H5cTa0ZFtL5UnNYenz5Ik=;
 b=ImiaCR4z4YjsLdGPtkli/vpoEyohlGYmidyJCVskHO+y5Lo5ENb+8/5TAAE//R/5W1
 20XhyHodIXgTEnUzmSpYxLUWba+SokhMvK75/lqxqAsf+wsR8dI/IH/D4tl/H0LyNyA+
 VxgWnj9vVBdnzcYwDvjUhHYLp4GqEEXt/TiFb+adAYRg4gZy86qQXpVi37wLSm+wwPbW
 P12hb/5RCmbnjvlOqOzIdZTen13U1sjGG7HJdbgYgt3uOu2GB5BL/kH2rIhCoxMTJYup
 pJoGJEwh+LRZPe3oS7iotltWGaKvNpTXqCasN2kj1Zasnjdq4+/7Y7M1YU+5u5gKr9Tz
 qLJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8b8JTddlNjepQv6Et6Ofu7H5cTa0ZFtL5UnNYenz5Ik=;
 b=MVqDGpkxD7sMm5/3CnQrFs3YO8SkO8SHK300hGCkeqen7ZdAl/16bPwgVbXO466CGT
 cNbcfwdHwavwCi/vLB0TjwWvq04GdEulI9RwfKjo2Nwl/tx6VcyUnyA32zB1PPz7jFC9
 DRJMg3Zqnyfw/x2N/YIwNewSSJSyFHgLYMSu/hNBrn7b/mLjcRot3CxrTsgW2NlpzSIi
 Enf9QNYqmyj/oJKylmbkxYs9jGMg6PaIbnsOKEsG2JP6yc/h9czciCWE8KpNj29MFL5j
 8i2vn2cSW2H/KzyCO8e3fs3Qk9eNDDRE6zpZhhl1I2T+QOa0aJh3vBDF2PIPhsHCcGVw
 eK4Q==
X-Gm-Message-State: APjAAAVDfSeYKSN7yYGYU9QGVyk3xCDWDKcGhrI2NUa+bX8qZNHRxEai
 2m0jVHDQ9FZd0Nl8Sak21yZry26xseU=
X-Google-Smtp-Source: APXvYqwo7QKr0i7hZZv/zgo7jyZpDVEZUvySKhDUw2ropW4zGMZGwYJmQ4tAdDvYAs9+X1JPyH87YQ==
X-Received: by 2002:a62:e910:: with SMTP id j16mr690815pfh.123.1567646263758; 
 Wed, 04 Sep 2019 18:17:43 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id h66sm5434430pjb.0.2019.09.04.18.17.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 18:17:43 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v2 3/4] gpio: Add in ast2600 details to Aspeed driver
Date: Thu,  5 Sep 2019 11:17:32 +1000
Message-Id: <20190905011732.16059-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_181744_145227_42CAEA36 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ast2600 is a new generation of SoC from ASPEED. Similarly to the
ast2400 and ast2500, it has a GPIO controller for it's 3.6V GPIO pins.
Additionally, it has a GPIO controller for 36 1.8V GPIO pins. These
voltages are fixed and cannot be configured via pinconf, so we need two
separate drivers for them.

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 drivers/gpio/gpio-aspeed.c | 30 ++++++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index 16c6eaf70857..4723b8780a8c 100644
--- a/drivers/gpio/gpio-aspeed.c
+++ b/drivers/gpio/gpio-aspeed.c
@@ -662,12 +662,14 @@ static void aspeed_gpio_irq_handler(struct irq_desc *desc)
 	struct gpio_chip *gc = irq_desc_get_handler_data(desc);
 	struct irq_chip *ic = irq_desc_get_chip(desc);
 	struct aspeed_gpio *data = gpiochip_get_data(gc);
-	unsigned int i, p, girq;
+	unsigned int i, p, girq, banks;
 	unsigned long reg;
+	struct aspeed_gpio *gpio = gpiochip_get_data(gc);
 
 	chained_irq_enter(ic, desc);
 
-	for (i = 0; i < ARRAY_SIZE(aspeed_gpio_banks); i++) {
+	banks = DIV_ROUND_UP(gpio->config->nr_gpios, 32);
+	for (i = 0; i < banks; i++) {
 		const struct aspeed_gpio_bank *bank = &aspeed_gpio_banks[i];
 
 		reg = ioread32(bank_reg(data, bank, reg_irq_status));
@@ -1108,9 +1110,33 @@ static const struct aspeed_gpio_config ast2500_config =
 	/* 232 for simplicity, actual number is 228 (4-GPIO hole in GPIOAB) */
 	{ .nr_gpios = 232, .props = ast2500_bank_props, };
 
+static const struct aspeed_bank_props ast2600_bank_props[] = {
+	/*     input	  output   */
+	{5, 0xffffffff,  0x0000ffff}, /* U/V/W/X */
+	{6, 0xffff0000,  0x0fff0000}, /* Y/Z */
+	{ },
+};
+
+static const struct aspeed_gpio_config ast2600_config =
+	/* 208 3.6V GPIOs */
+	{ .nr_gpios = 208, .props = ast2600_bank_props, };
+
+static const struct aspeed_bank_props ast2600_1_8v_bank_props[] = {
+	/*     input	  output   */
+	{1, 0x0000000f,  0x0000000f}, /* E */
+	{ },
+};
+
+static const struct aspeed_gpio_config ast2600_1_8v_config =
+	/* 36 1.8V GPIOs */
+	{ .nr_gpios = 36, .props = ast2600_1_8v_bank_props, };
+
 static const struct of_device_id aspeed_gpio_of_table[] = {
 	{ .compatible = "aspeed,ast2400-gpio", .data = &ast2400_config, },
 	{ .compatible = "aspeed,ast2500-gpio", .data = &ast2500_config, },
+	{ .compatible = "aspeed,ast2600-gpio", .data = &ast2600_config, },
+	{ .compatible = "aspeed,ast2600-1-8v-gpio",
+	  .data = &ast2600_1_8v_config, },
 	{}
 };
 MODULE_DEVICE_TABLE(of, aspeed_gpio_of_table);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
