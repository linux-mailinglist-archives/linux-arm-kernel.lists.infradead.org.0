Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9826BD1559
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzrH1Wukg86DTGyaE/rGE63KSLok+XZk/81tne5JlbI=; b=Zj7OvGNRS3qXgR
	NK0plo5CCyeJYFr3bq+B83KGF4or1XpoLGMIWysLhBReuQbWyZUBIdq6ZOLo3xGvmu/wFnQ9DX+8a
	bNZcrUSsttAPoLkSx9+1tmF805NpqnCMGOdw4o0M95lRXG2WVUYiiRvFDF1i6ptl6qC4DqnqSn+zF
	ZEjyXGlPjECaQkW9LFo3zfb61YeSnZyZRv4sS8OLTFpY1xzMm2vzO+7q3aT2uEdSjjGSrmnqbj9fY
	wQCeUaguT0D4ULyCCHhieb1ErFqMzcIs8hZxItwU221AYlhh9cjFWW2iLbZ0zFpkkIFk0V87DVa9J
	UnunMhgLwmTGtr46Rbrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFai-0008EY-Mq; Wed, 09 Oct 2019 17:17:36 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFYY-0006IB-Lj
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:15:24 +0000
Received: by mail-yb1-xb42.google.com with SMTP id y204so973789yby.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o+Nx0iwa/JWg8XzaLOzCUa+40QRks91uKc0Q4Z5/tUQ=;
 b=nXiwDvhhqEAXKVGeCncA6xvQyFZ5Ei6BcmfwazIB61I4ZOUrRBQLZOayPecSYiz6Dj
 p4UpNGmwad7s3QwOTk1gmq2fFz7aD+b0Vw0Wwif2G2mCQmh/xuHpHPGAt0kJANN/MzPN
 pmIFX4QzEo5SOn1rQpnSeOuHp8rphnPtyqnIdQ1F1qmY/3Bp7iOmFWeQO512odQ3uBL0
 6ATuODOU9I5Nt3sj+Z/6tIDSF/wlIiZKKjH7ediUss8flDqFRfP+o0vO9IQrc4N2ORms
 RDu0JfR2kUc/28PvYHUHMM8z8vmzGG6BbDYX8DiZdH2dG0T73DX+KCfxg+14B61bBpig
 UEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o+Nx0iwa/JWg8XzaLOzCUa+40QRks91uKc0Q4Z5/tUQ=;
 b=WLSLCaUOte0YxT4UeBGYZtAoPZdyUr0vqOquz0QSxRcF8Qyh0Qblb5k5Bwi3L1O8q1
 hJliCqwEbYzV3ozwd16Vy49jV8XUU+q17C88gKbTPwHT6ZMV5bp0k/AaHFbIO4A62qXz
 uYNhPiZiFTKABx7OGRpnqgeFTFGnbQt+DaeoZ2CXMdj8seTt0ZzEjVXmoIpr8eYyQq5x
 8YSYD3Xgpy8FjakEkOXjFfmt6s4gkn9PjQPrG8eVberMOk2Q+H3NtelvPOfX8QYVxzN5
 oE7QFiC5T9SpTljHVorM4EYNq2sUTLw6IPt9Ph6ya1J1pc4CblOxeTYdbsw3+oumPyMa
 9xKg==
X-Gm-Message-State: APjAAAXkcFJnwd7/2SQV45F/Z11aV7lPdH/J0R0Lx3JKkOrfgp8WUulF
 E0X27+RT7s+ciLjRzjARe3I=
X-Google-Smtp-Source: APXvYqxJ3KxZEvAN+wFctqBObVwCC1ihYv5PZiLvTnD0fuWHNx5lZ1AZ65sD08VyEg7Ck44I2+i7qg==
X-Received: by 2002:a5b:4cd:: with SMTP id u13mr2815907ybp.44.1570641321441;
 Wed, 09 Oct 2019 10:15:21 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id r63sm743292ywg.36.2019.10.09.10.15.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:15:20 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v18 06/14] gpio: ws16c48: Utilize for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 13:14:42 -0400
Message-Id: <7a0d2c964e7f2d289b16c63ff6b06fc1f4c50d4d.1570641097.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570641097.git.vilhelm.gray@gmail.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_101522_873846_9C8877DE 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 yamada.masahiro@socionext.com, linux-pm@vger.kernel.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>, linux-gpio@vger.kernel.org,
 lukas@wunner.de, geert@linux-m68k.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace verbose implementation in get_multiple/set_multiple callbacks
with for_each_set_clump8 macro to simplify code and improve clarity.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-ws16c48.c | 73 ++++++++++---------------------------
 1 file changed, 20 insertions(+), 53 deletions(-)

diff --git a/drivers/gpio/gpio-ws16c48.c b/drivers/gpio/gpio-ws16c48.c
index e0ef66b6a237..51aaa5c17fce 100644
--- a/drivers/gpio/gpio-ws16c48.c
+++ b/drivers/gpio/gpio-ws16c48.c
@@ -126,42 +126,19 @@ static int ws16c48_gpio_get_multiple(struct gpio_chip *chip,
 	unsigned long *mask, unsigned long *bits)
 {
 	struct ws16c48_gpio *const ws16c48gpio = gpiochip_get_data(chip);
-	const unsigned int gpio_reg_size = 8;
-	size_t i;
-	const size_t num_ports = chip->ngpio / gpio_reg_size;
-	unsigned int bits_offset;
-	size_t word_index;
-	unsigned int word_offset;
-	unsigned long word_mask;
-	const unsigned long port_mask = GENMASK(gpio_reg_size - 1, 0);
+	unsigned long offset;
+	unsigned long gpio_mask;
+	unsigned int port_addr;
 	unsigned long port_state;
 
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	/* get bits are evaluated a gpio port register at a time */
-	for (i = 0; i < num_ports; i++) {
-		/* gpio offset in bits array */
-		bits_offset = i * gpio_reg_size;
+	for_each_set_clump8(offset, gpio_mask, mask, chip->ngpio) {
+		port_addr = ws16c48gpio->base + offset / 8;
+		port_state = inb(port_addr) & gpio_mask;
 
-		/* word index for bits array */
-		word_index = BIT_WORD(bits_offset);
-
-		/* gpio offset within current word of bits array */
-		word_offset = bits_offset % BITS_PER_LONG;
-
-		/* mask of get bits for current gpio within current word */
-		word_mask = mask[word_index] & (port_mask << word_offset);
-		if (!word_mask) {
-			/* no get bits in this port so skip to next one */
-			continue;
-		}
-
-		/* read bits from current gpio port */
-		port_state = inb(ws16c48gpio->base + i);
-
-		/* store acquired bits at respective bits array offset */
-		bits[word_index] |= (port_state << word_offset) & word_mask;
+		bitmap_set_value8(bits, port_state, offset);
 	}
 
 	return 0;
@@ -195,39 +172,29 @@ static void ws16c48_gpio_set_multiple(struct gpio_chip *chip,
 	unsigned long *mask, unsigned long *bits)
 {
 	struct ws16c48_gpio *const ws16c48gpio = gpiochip_get_data(chip);
-	unsigned int i;
-	const unsigned int gpio_reg_size = 8;
-	unsigned int port;
-	unsigned int iomask;
-	unsigned int bitmask;
+	unsigned long offset;
+	unsigned long gpio_mask;
+	size_t index;
+	unsigned int port_addr;
+	unsigned long bitmask;
 	unsigned long flags;
 
-	/* set bits are evaluated a gpio register size at a time */
-	for (i = 0; i < chip->ngpio; i += gpio_reg_size) {
-		/* no more set bits in this mask word; skip to the next word */
-		if (!mask[BIT_WORD(i)]) {
-			i = (BIT_WORD(i) + 1) * BITS_PER_LONG - gpio_reg_size;
-			continue;
-		}
-
-		port = i / gpio_reg_size;
+	for_each_set_clump8(offset, gpio_mask, mask, chip->ngpio) {
+		index = offset / 8;
+		port_addr = ws16c48gpio->base + index;
 
 		/* mask out GPIO configured for input */
-		iomask = mask[BIT_WORD(i)] & ~ws16c48gpio->io_state[port];
-		bitmask = iomask & bits[BIT_WORD(i)];
+		gpio_mask &= ~ws16c48gpio->io_state[index];
+		bitmask = bitmap_get_value8(bits, offset) & gpio_mask;
 
 		raw_spin_lock_irqsave(&ws16c48gpio->lock, flags);
 
 		/* update output state data and set device gpio register */
-		ws16c48gpio->out_state[port] &= ~iomask;
-		ws16c48gpio->out_state[port] |= bitmask;
-		outb(ws16c48gpio->out_state[port], ws16c48gpio->base + port);
+		ws16c48gpio->out_state[index] &= ~gpio_mask;
+		ws16c48gpio->out_state[index] |= bitmask;
+		outb(ws16c48gpio->out_state[index], port_addr);
 
 		raw_spin_unlock_irqrestore(&ws16c48gpio->lock, flags);
-
-		/* prepare for next gpio register set */
-		mask[BIT_WORD(i)] >>= gpio_reg_size;
-		bits[BIT_WORD(i)] >>= gpio_reg_size;
 	}
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
