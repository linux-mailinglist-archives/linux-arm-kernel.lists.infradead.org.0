Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E964AAB279
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K/DE4WCvrkT44qkUBE8250m2SXBJEPxpdPiCqEQ2soU=; b=NszKeE+q7wjF2J
	mP3OLhXVnXCrF6By/hhZEkSsvBYM9gnb7nQ1Q5ceHd2NxLG3Yv+EIu4z4rM4QMrmdekdKmjiK6Ipx
	osE9k8fhdcVN8CWxKRqdTrukoupzqLzX+K2dSu+N9Q30NTKc5ravMYwYx8yS9j2zHu0zm3EXwAfEF
	Y16ZlV4J5VXrNCUO86S+6xtryashN6lCLtbjd5psyyU95wXJmr/6TvN5JIdmmZmCUrisF11anfjtF
	eFLa5kchjpNLTpmbgoMR5Kty19yPCCg0SejI0qNZz2xeCVJK4TRO5eJC029a4493b1GqT2BfehR97
	U0qYT4LXGl4AIZpPerYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67ih-0006El-G8; Fri, 06 Sep 2019 06:27:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67iZ-0006Di-VQ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 06:27:37 +0000
Received: by mail-pl1-x641.google.com with SMTP id 4so2616233pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 23:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n30qcH046iWaW71uUfJO57qHyXMN57OJWxHknUR+29c=;
 b=tYI7NDikpxLUXtA/lqOpvKs/cEOU/szl6gmUMcA6n5Wqn7oOYYahU9r0V8AnAf0reF
 4nHQ1YC8+oXk9P+lJMfs0XzzTqyi09hRp9tSP67QUu5MoQSmzCfP9LXuuI7b9K3UuE5b
 mdN50wGfFfRALcDAkydIcx5fNlo6PYSgzXZ9PfXokso3Nqyswhlrapw1UpqxIMK/X767
 DjWdSGMBSz+cXvuh5vOE14GhX5xL26XbLSFsNS2jEX/CbeTssvrLih94s65BfzXQykgB
 xXXX99uB+tDkk2QMc1kyNw4OJPr4PKPFxd2Q7NMMnAWnetg7z9ZcbOcNvEgP28bB/QJP
 R/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n30qcH046iWaW71uUfJO57qHyXMN57OJWxHknUR+29c=;
 b=TSf6uD4GSZDtsRMZMEANhA2yQQxGLvvIvPOIVjxBDJMuv4MPiAcWuipRjLyEVzTOe1
 1eR5cPkEAzgKWv4STbXUKeY88+xvjqFa8StsNaFvxIliuWdyTKeaGLZmWqwJeVTbnk4f
 KpHuXOZFDjKVAkeXwCX+GoGlccT77W/9Qp7lIaOFFWmwZXSOIjTRXRWm/CgFeEahjyM0
 hOfSz8n6FGqNiOP/s3ehDxshklLbf25ZhW1QTzeqvIjYrEA/LVph7Xf0zuF1q2R5cL3g
 hS7QbOzoNLruZ6kmbltGaC1R8zpsusnfGcFBrbWDyyi+4OnhBIDZbo7lRY6Uiofz58jm
 Os6g==
X-Gm-Message-State: APjAAAVvB/7Wllp2obhgk6BqHtTrD0cTrRLqO7YDuw+CrWSL6/eFfALv
 Dc9fiDKakn0/2SVkdegZpIs=
X-Google-Smtp-Source: APXvYqzTYD4UT8lYUo5iEkHosGPzmhfer4sXZbHMDlzxTN6P9Gg1Nm+xU4PDIY7OW2IN4o6EWNWUmg==
X-Received: by 2002:a17:902:4a:: with SMTP id 68mr1975472pla.196.1567751255165; 
 Thu, 05 Sep 2019 23:27:35 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id j2sm4752728pfe.130.2019.09.05.23.27.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 23:27:34 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v3 4/5] gpios: Use ngpio property from device tree if available
Date: Fri,  6 Sep 2019 16:27:26 +1000
Message-Id: <20190906062727.13521-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_232736_020474_8E0363A6 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the ngpio property from the device tree if it exists. If it doesn't
then fallback to the hardcoded value in the config.

This is in preparation for adding ast2600 support. The ast2600 SoC has
two GPIO controllers and so requires two instances of the GPIO driver.
We use the ngpio property to different between them as they have
different numbers of GPIOs.

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 drivers/gpio/gpio-aspeed.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index 16c6eaf70857..c3d5ecba343b 100644
--- a/drivers/gpio/gpio-aspeed.c
+++ b/drivers/gpio/gpio-aspeed.c
@@ -694,7 +694,7 @@ static void set_irq_valid_mask(struct aspeed_gpio *gpio)
 		for_each_clear_bit(offset, &input, 32) {
 			unsigned int i = props->bank * 32 + offset;
 
-			if (i >= gpio->config->nr_gpios)
+			if (i >= gpio->chip.ngpio)
 				break;
 
 			clear_bit(i, gpio->chip.irq.valid_mask);
@@ -1007,10 +1007,10 @@ int aspeed_gpio_copro_grab_gpio(struct gpio_desc *desc,
 	unsigned long flags;
 
 	if (!gpio->cf_copro_bankmap)
-		gpio->cf_copro_bankmap = kzalloc(gpio->config->nr_gpios >> 3, GFP_KERNEL);
+		gpio->cf_copro_bankmap = kzalloc(gpio->chip.ngpio >> 3, GFP_KERNEL);
 	if (!gpio->cf_copro_bankmap)
 		return -ENOMEM;
-	if (offset < 0 || offset > gpio->config->nr_gpios)
+	if (offset < 0 || offset > gpio->chip.ngpio)
 		return -EINVAL;
 	bindex = offset >> 3;
 
@@ -1055,7 +1055,7 @@ int aspeed_gpio_copro_release_gpio(struct gpio_desc *desc)
 	if (!gpio->cf_copro_bankmap)
 		return -ENXIO;
 
-	if (offset < 0 || offset > gpio->config->nr_gpios)
+	if (offset < 0 || offset > gpio->chip.ngpio)
 		return -EINVAL;
 	bindex = offset >> 3;
 
@@ -1119,7 +1119,8 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
 {
 	const struct of_device_id *gpio_id;
 	struct aspeed_gpio *gpio;
-	int rc, i, banks;
+	int rc, i, banks, err;
+	u32 ngpio;
 
 	gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
 	if (!gpio)
@@ -1145,7 +1146,10 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
 	gpio->config = gpio_id->data;
 
 	gpio->chip.parent = &pdev->dev;
-	gpio->chip.ngpio = gpio->config->nr_gpios;
+	err = of_property_read_u32(pdev->dev.of_node, "ngpios", &ngpio);
+	gpio->chip.ngpio = (u16) ngpio;
+	if (err)
+		gpio->chip.ngpio = gpio->config->nr_gpios;
 	gpio->chip.direction_input = aspeed_gpio_dir_in;
 	gpio->chip.direction_output = aspeed_gpio_dir_out;
 	gpio->chip.get_direction = aspeed_gpio_get_direction;
@@ -1158,7 +1162,7 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
 	gpio->chip.base = -1;
 
 	/* Allocate a cache of the output registers */
-	banks = DIV_ROUND_UP(gpio->config->nr_gpios, 32);
+	banks = DIV_ROUND_UP(gpio->chip.ngpio, 32);
 	gpio->dcache = devm_kcalloc(&pdev->dev,
 				    banks, sizeof(u32), GFP_KERNEL);
 	if (!gpio->dcache)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
