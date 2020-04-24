Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A7A1B74A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 14:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eMNAH9b7fNUizRbEPR3e2ExBDLgFP4hLJAeYIgJcbDQ=; b=gTjUYS/+7d+7Ex
	YhKHhBnMxBF1j47CYzEIFU2Mr/2ditlLDTrriZ4gWdTrqSUYnefNfiU67DgoEE2qoAPyag9vsUXq9
	0fwUgtGL0Ab6sJmKliWfcfA90RnC1zlPsbZf9D2wMCI5XHhIdpnd1DR4cL1AYfMHYXPGSAL1AjvuL
	fVNqfsJlMR/bjSyLVGSejJPOkJRHYUsmv+oj6uerxLJHAQMtHJ2sTMLeJ+JTKhCqgC5Ao1z2neyCk
	rPqN8OPlYdBwZP+vKdO9Ywl6REWY0gpVHQrn/kSCN4HSk6Gzsb4LnAsf1qhSvCXAae4Bnd1v/WNcE
	/dlsnbbTeXzd/KLiI15Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRxQp-0001p0-Cy; Fri, 24 Apr 2020 12:27:47 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRxQb-0001oF-6o
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 12:27:35 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a32so3810153pje.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 05:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=oBScIB2nIuVt01nLQRMxBQxxrBB3VaEfgIrcY5YG1Oc=;
 b=sR6MsjigKLdVj8FUlfOrZX4fIwYVKgjUmWckrREFsmWn9/zgh4cmA82rvjYP5ZQ0GA
 LOiiJEGxkuucNfNWK46Sk+vGTFHl3gXIDbbJLUK6aauKA02ymx2jE2xHnu5dLQAyheeA
 8YCDa7n/eXDFl4ApoKkRolkBN5DjMvRGRxSatqFroi9xJ7lwThOC21Rz32qF4jOnglZ2
 5oYepW9q04PvSX08tJFWk1RhBO5p0V+i65LWC0U+7diUelzcLVukVCLJqh4O9lmlCwIk
 SeKJJI5p4dnTE6BNHPJo9xFAT6b5F2lgyhBdhz5z21zFVWgB+hPvbnwUcwBjmiMA275x
 K3Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=oBScIB2nIuVt01nLQRMxBQxxrBB3VaEfgIrcY5YG1Oc=;
 b=SnBYFGf+gD1rQILZ/IpdN8gbWMoRTi8W7oPlKtZYY1lI1A1MA0NWgvFC36Te9RFpwf
 xZ70RsMYapr/qvno3rlECoo5QxdO1SemRDh0gKKZ33sPlhsquZfJMVCSjowk1c1W2PFN
 b5Vkq8I1wZwgPq4BdnrTmpPeCx0Nkl4yhD7jvlCKCqL9vfye4XbCu7zYj2FQWWzRRh0j
 f9V8DjB7hWKNF0bPz/Oa5qlHTZZ8p/fhfG86GUVW/Le7SS70XS2K6lfEsrBpSoPMj4YM
 kaIlg4HWIPE5OAHwkV9ar7CVV+SMki/NiocMYhRwCgox8v5cXSHqFTBM90YxbuHtwf7J
 wbWg==
X-Gm-Message-State: AGi0PubZ4itzptBWrn7w61pEP/5ch6U9i3a2V50BjGAqH0aVtlAegJFu
 FPDMq/6kKpFZ+huidKjqYrw=
X-Google-Smtp-Source: APiQypLGEg1XvwX/jxckQ2XMmTnwwgzgf4e3deXjgisk+6WfhN2qLosqvvKwg2UDB09gBn4+djvEzA==
X-Received: by 2002:a17:90b:2388:: with SMTP id
 mr8mr5899697pjb.107.1587731252691; 
 Fri, 24 Apr 2020 05:27:32 -0700 (PDT)
Received: from syed ([106.223.101.26])
 by smtp.gmail.com with ESMTPSA id a129sm5648818pfb.102.2020.04.24.05.27.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 05:27:32 -0700 (PDT)
Date: Fri, 24 Apr 2020 17:57:19 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: akpm@linux-foundation.org
Subject: [PATCH 3/6] gpio: thermal: Utilize for_each_set_clump macro
Message-ID: <20200424122719.GA5596@syed>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_052733_256877_BE8608E8 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [106.223.101.26 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: amit.kucheria@verdurent.com, yamada.masahiro@socionext.com,
 linus.walleij@linaro.org, daniel.lezcano@linaro.org, vilhelm.gray@gmail.com,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com,
 linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org, rui.zhang@intel.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch replaces all the existing for_each_set_clump8 and related
function calls in the drivers (gpio and thermal) with the equivalent
new generic for_each_set_clump macro.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Amit Kucheria <amit.kucheria@verdurent.com>
Signed-off-by: Syed Nayyar Waris <syednwaris@gmail.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-104-dio-48e.c            | 8 ++++----
 drivers/gpio/gpio-104-idi-48.c             | 4 ++--
 drivers/gpio/gpio-74x164.c                 | 4 ++--
 drivers/gpio/gpio-gpio-mm.c                | 8 ++++----
 drivers/gpio/gpio-max3191x.c               | 4 ++--
 drivers/gpio/gpio-pca953x.c                | 4 ++--
 drivers/gpio/gpio-pci-idio-16.c            | 8 ++++----
 drivers/gpio/gpio-pcie-idio-24.c           | 8 ++++----
 drivers/gpio/gpio-pisosr.c                 | 4 ++--
 drivers/gpio/gpio-uniphier.c               | 4 ++--
 drivers/gpio/gpio-ws16c48.c                | 8 ++++----
 drivers/thermal/intel/intel_soc_dts_iosf.c | 6 +++---
 12 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/gpio/gpio-104-dio-48e.c b/drivers/gpio/gpio-104-dio-48e.c
index 1f7d9bb..60f0383 100644
--- a/drivers/gpio/gpio-104-dio-48e.c
+++ b/drivers/gpio/gpio-104-dio-48e.c
@@ -192,11 +192,11 @@ static int dio48e_gpio_get_multiple(struct gpio_chip *chip, unsigned long *mask,
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+	for_each_set_clump(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8, 8) {
 		port_addr = dio48egpio->base + ports[offset / 8];
 		port_state = inb(port_addr) & gpio_mask;
 
-		bitmap_set_value8(bits, port_state, offset);
+		bitmap_set_value(bits, port_state, offset, 8);
 	}
 
 	return 0;
@@ -233,11 +233,11 @@ static void dio48e_gpio_set_multiple(struct gpio_chip *chip,
 	unsigned long bitmask;
 	unsigned long flags;
 
-	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+	for_each_set_clump(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8, 8) {
 		index = offset / 8;
 		port_addr = dio48egpio->base + ports[index];
 
-		bitmask = bitmap_get_value8(bits, offset) & gpio_mask;
+		bitmask = bitmap_get_value(bits, offset, 8) & gpio_mask;
 
 		raw_spin_lock_irqsave(&dio48egpio->lock, flags);
 
diff --git a/drivers/gpio/gpio-104-idi-48.c b/drivers/gpio/gpio-104-idi-48.c
index d350ac0..03553a31 100644
--- a/drivers/gpio/gpio-104-idi-48.c
+++ b/drivers/gpio/gpio-104-idi-48.c
@@ -94,11 +94,11 @@ static int idi_48_gpio_get_multiple(struct gpio_chip *chip, unsigned long *mask,
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+	for_each_set_clump(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8, 8) {
 		port_addr = idi48gpio->base + ports[offset / 8];
 		port_state = inb(port_addr) & gpio_mask;
 
-		bitmap_set_value8(bits, port_state, offset);
+		bitmap_set_value(bits, port_state, offset, 8);
 	}
 
 	return 0;
diff --git a/drivers/gpio/gpio-74x164.c b/drivers/gpio/gpio-74x164.c
index 05637d5..a836433 100644
--- a/drivers/gpio/gpio-74x164.c
+++ b/drivers/gpio/gpio-74x164.c
@@ -79,9 +79,9 @@ static void gen_74x164_set_multiple(struct gpio_chip *gc, unsigned long *mask,
 	unsigned long bitmask;
 
 	mutex_lock(&chip->lock);
-	for_each_set_clump8(offset, bankmask, mask, chip->registers * 8) {
+	for_each_set_clump(offset, bankmask, mask, chip->registers * 8, 8) {
 		bank = chip->registers - 1 - offset / 8;
-		bitmask = bitmap_get_value8(bits, offset) & bankmask;
+		bitmask = bitmap_get_value(bits, offset, 8) & bankmask;
 
 		chip->buffer[bank] &= ~bankmask;
 		chip->buffer[bank] |= bitmask;
diff --git a/drivers/gpio/gpio-gpio-mm.c b/drivers/gpio/gpio-gpio-mm.c
index b89b8c5..5790bb7 100644
--- a/drivers/gpio/gpio-gpio-mm.c
+++ b/drivers/gpio/gpio-gpio-mm.c
@@ -181,11 +181,11 @@ static int gpiomm_gpio_get_multiple(struct gpio_chip *chip, unsigned long *mask,
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+	for_each_set_clump(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8, 8) {
 		port_addr = gpiommgpio->base + ports[offset / 8];
 		port_state = inb(port_addr) & gpio_mask;
 
-		bitmap_set_value8(bits, port_state, offset);
+		bitmap_set_value(bits, port_state, offset, 8);
 	}
 
 	return 0;
@@ -223,11 +223,11 @@ static void gpiomm_gpio_set_multiple(struct gpio_chip *chip,
 	unsigned long bitmask;
 	unsigned long flags;
 
-	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+	for_each_set_clump(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8, 8) {
 		index = offset / 8;
 		port_addr = gpiommgpio->base + ports[index];
 
-		bitmask = bitmap_get_value8(bits, offset) & gpio_mask;
+		bitmask = bitmap_get_value(bits, offset, 8) & gpio_mask;
 
 		spin_lock_irqsave(&gpiommgpio->lock, flags);
 
diff --git a/drivers/gpio/gpio-max3191x.c b/drivers/gpio/gpio-max3191x.c
index 310d1a2..e59f09b 100644
--- a/drivers/gpio/gpio-max3191x.c
+++ b/drivers/gpio/gpio-max3191x.c
@@ -245,7 +245,7 @@ static int max3191x_get_multiple(struct gpio_chip *gpio, unsigned long *mask,
 		goto out_unlock;
 
 	bitmap_zero(bits, gpio->ngpio);
-	for_each_set_clump8(bit, gpio_mask, mask, gpio->ngpio) {
+	for_each_set_clump(bit, gpio_mask, mask, gpio->ngpio, 8) {
 		unsigned int chipnum = bit / MAX3191X_NGPIO;
 
 		if (max3191x_chip_is_faulting(max3191x, chipnum)) {
@@ -255,7 +255,7 @@ static int max3191x_get_multiple(struct gpio_chip *gpio, unsigned long *mask,
 
 		in = ((u8 *)max3191x->xfer.rx_buf)[chipnum * wordlen];
 		in &= gpio_mask;
-		bitmap_set_value8(bits, in, bit);
+		bitmap_set_value(bits, in, bit, 8);
 	}
 
 out_unlock:
diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index 60ae18e..c1bc8fa 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -343,7 +343,7 @@ static int pca953x_write_regs(struct pca953x_chip *chip, int reg, unsigned long
 	int i, ret;
 
 	for (i = 0; i < NBANK(chip); i++)
-		value[i] = bitmap_get_value8(val, i * BANK_SZ);
+		value[i] = bitmap_get_value(val, i * BANK_SZ, 8);
 
 	ret = regmap_bulk_write(chip->regmap, regaddr, value, NBANK(chip));
 	if (ret < 0) {
@@ -367,7 +367,7 @@ static int pca953x_read_regs(struct pca953x_chip *chip, int reg, unsigned long *
 	}
 
 	for (i = 0; i < NBANK(chip); i++)
-		bitmap_set_value8(val, value[i], i * BANK_SZ);
+		bitmap_set_value(val, value[i], i * BANK_SZ, 8);
 
 	return 0;
 }
diff --git a/drivers/gpio/gpio-pci-idio-16.c b/drivers/gpio/gpio-pci-idio-16.c
index 638d665..f970756 100644
--- a/drivers/gpio/gpio-pci-idio-16.c
+++ b/drivers/gpio/gpio-pci-idio-16.c
@@ -112,11 +112,11 @@ static int idio_16_gpio_get_multiple(struct gpio_chip *chip,
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+	for_each_set_clump(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8, 8) {
 		port_addr = ports[offset / 8];
 		port_state = ioread8(port_addr) & gpio_mask;
 
-		bitmap_set_value8(bits, port_state, offset);
+		bitmap_set_value(bits, port_state, offset, 8);
 	}
 
 	return 0;
@@ -167,11 +167,11 @@ static void idio_16_gpio_set_multiple(struct gpio_chip *chip,
 	unsigned long flags;
 	unsigned long out_state;
 
-	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+	for_each_set_clump(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8, 8) {
 		index = offset / 8;
 		port_addr = ports[index];
 
-		bitmask = bitmap_get_value8(bits, offset) & gpio_mask;
+		bitmask = bitmap_get_value(bits, offset, 8) & gpio_mask;
 
 		raw_spin_lock_irqsave(&idio16gpio->lock, flags);
 
diff --git a/drivers/gpio/gpio-pcie-idio-24.c b/drivers/gpio/gpio-pcie-idio-24.c
index 1d47579..be5cb13 100644
--- a/drivers/gpio/gpio-pcie-idio-24.c
+++ b/drivers/gpio/gpio-pcie-idio-24.c
@@ -215,7 +215,7 @@ static int idio_24_gpio_get_multiple(struct gpio_chip *chip,
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+	for_each_set_clump(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8, 8) {
 		index = offset / 8;
 
 		/* read bits from current gpio port (port 6 is TTL GPIO) */
@@ -228,7 +228,7 @@ static int idio_24_gpio_get_multiple(struct gpio_chip *chip,
 
 		port_state &= gpio_mask;
 
-		bitmap_set_value8(bits, port_state, offset);
+		bitmap_set_value(bits, port_state, offset, 8);
 	}
 
 	return 0;
@@ -291,10 +291,10 @@ static void idio_24_gpio_set_multiple(struct gpio_chip *chip,
 	unsigned long out_state;
 	const unsigned long out_mode_mask = BIT(1);
 
-	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+	for_each_set_clump(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8, 8) {
 		index = offset / 8;
 
-		bitmask = bitmap_get_value8(bits, offset) & gpio_mask;
+		bitmask = bitmap_get_value(bits, offset, 8) & gpio_mask;
 
 		raw_spin_lock_irqsave(&idio24gpio->lock, flags);
 
diff --git a/drivers/gpio/gpio-pisosr.c b/drivers/gpio/gpio-pisosr.c
index 6698fea..5c9c73c 100644
--- a/drivers/gpio/gpio-pisosr.c
+++ b/drivers/gpio/gpio-pisosr.c
@@ -103,9 +103,9 @@ static int pisosr_gpio_get_multiple(struct gpio_chip *chip,
 	pisosr_gpio_refresh(gpio);
 
 	bitmap_zero(bits, chip->ngpio);
-	for_each_set_clump8(offset, gpio_mask, mask, chip->ngpio) {
+	for_each_set_clump(offset, gpio_mask, mask, chip->ngpio, 8) {
 		buffer_state = gpio->buffer[offset / 8] & gpio_mask;
-		bitmap_set_value8(bits, buffer_state, offset);
+		bitmap_set_value(bits, buffer_state, offset, 8);
 	}
 
 	return 0;
diff --git a/drivers/gpio/gpio-uniphier.c b/drivers/gpio/gpio-uniphier.c
index f99f3c1..47738d8 100644
--- a/drivers/gpio/gpio-uniphier.c
+++ b/drivers/gpio/gpio-uniphier.c
@@ -149,9 +149,9 @@ static void uniphier_gpio_set_multiple(struct gpio_chip *chip,
 {
 	unsigned long i, bank, bank_mask, bank_bits;
 
-	for_each_set_clump8(i, bank_mask, mask, chip->ngpio) {
+	for_each_set_clump(i, bank_mask, mask, chip->ngpio, UNIPHIER_GPIO_LINES_PER_BANK) {
 		bank = i / UNIPHIER_GPIO_LINES_PER_BANK;
-		bank_bits = bitmap_get_value8(bits, i);
+		bank_bits = bitmap_get_value(bits, i, UNIPHIER_GPIO_LINES_PER_BANK);
 
 		uniphier_gpio_bank_write(chip, bank, UNIPHIER_GPIO_PORT_DATA,
 					 bank_mask, bank_bits);
diff --git a/drivers/gpio/gpio-ws16c48.c b/drivers/gpio/gpio-ws16c48.c
index cb510df..87b532c 100644
--- a/drivers/gpio/gpio-ws16c48.c
+++ b/drivers/gpio/gpio-ws16c48.c
@@ -137,11 +137,11 @@ static int ws16c48_gpio_get_multiple(struct gpio_chip *chip,
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	for_each_set_clump8(offset, gpio_mask, mask, chip->ngpio) {
+	for_each_set_clump(offset, gpio_mask, mask, chip->ngpio, 8) {
 		port_addr = ws16c48gpio->base + offset / 8;
 		port_state = inb(port_addr) & gpio_mask;
 
-		bitmap_set_value8(bits, port_state, offset);
+		bitmap_set_value(bits, port_state, offset, 8);
 	}
 
 	return 0;
@@ -182,13 +182,13 @@ static void ws16c48_gpio_set_multiple(struct gpio_chip *chip,
 	unsigned long bitmask;
 	unsigned long flags;
 
-	for_each_set_clump8(offset, gpio_mask, mask, chip->ngpio) {
+	for_each_set_clump(offset, gpio_mask, mask, chip->ngpio, 8) {
 		index = offset / 8;
 		port_addr = ws16c48gpio->base + index;
 
 		/* mask out GPIO configured for input */
 		gpio_mask &= ~ws16c48gpio->io_state[index];
-		bitmask = bitmap_get_value8(bits, offset) & gpio_mask;
+		bitmask = bitmap_get_value(bits, offset, 8) & gpio_mask;
 
 		raw_spin_lock_irqsave(&ws16c48gpio->lock, flags);
 
diff --git a/drivers/thermal/intel/intel_soc_dts_iosf.c b/drivers/thermal/intel/intel_soc_dts_iosf.c
index f75271b..39b6305 100644
--- a/drivers/thermal/intel/intel_soc_dts_iosf.c
+++ b/drivers/thermal/intel/intel_soc_dts_iosf.c
@@ -123,7 +123,7 @@ static int update_trip_temp(struct intel_soc_dts_sensor_entry *dts,
 		return status;
 
 	update_ptps = store_ptps;
-	bitmap_set_value8(&update_ptps, temp_out & 0xFF, thres_index * 8);
+	bitmap_set_value(&update_ptps, temp_out & 0xFF, thres_index * 8, 8);
 	out = update_ptps;
 
 	status = iosf_mbi_write(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
@@ -237,7 +237,7 @@ static int sys_get_curr_temp(struct thermal_zone_device *tzd,
 		return status;
 
 	raw = out;
-	out = bitmap_get_value8(&raw, dts->id * 8) - SOC_DTS_TJMAX_ENCODING;
+	out = bitmap_get_value(&raw, dts->id * 8, 8) - SOC_DTS_TJMAX_ENCODING;
 	*temp = sensors->tj_max - out * 1000;
 
 	return 0;
@@ -314,7 +314,7 @@ static int add_dts_thermal_zone(int id, struct intel_soc_dts_sensor_entry *dts,
 		trip_mask = 0;
 	else {
 		ptps = store_ptps;
-		for_each_set_clump8(i, trip, &ptps, writable_trip_cnt * 8)
+		for_each_set_clump(i, trip, &ptps, writable_trip_cnt * 8, 8)
 			trip_mask &= ~BIT(i / 8);
 	}
 	dts->trip_mask = trip_mask;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
