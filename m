Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C27B6254
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 13:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OrfYqcbh4oOdmHs9iepXeETJZi/VVsywu45KprglwYI=; b=GA5F/MYMw7bKth
	LVx8p8z48veYoQFgY4QOA3p/4y7VFk/D+WpVpCAyxUL7FLs8AwZgnO71iwWyRWvTqkb8/1hKhEOOb
	f2F/ldy1fNFWTL5MMslmINw6/1kxfGaOYmGSHyajNZe082gHQ2efSvGOoWgyRRq49joXOx4zH1k6S
	HR2QA8F2bXP1cJOE7/1HJrYxo6uq92xV7hfoCOGruhxsn+6y+UhuOYx/6rxvH3ePhWKocwy+e2ajI
	gXsEfHqdfNLnFPUmn38ni9dMq71Ie2FE9n5Ymi2rZ3R/m6Fv31XZRoZlQXJg+1T9i3khuOj/65m6Z
	WI2i98XUDdWDprKYFwfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAYHd-0004L6-U8; Wed, 18 Sep 2019 11:38:06 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYHK-0004Ke-6a
 for linux-arm-kernel@bombadil.infradead.org; Wed, 18 Sep 2019 11:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6AdoLle996d0IpXztvlBxtaxvkOL9vC52W+2GSsKy3s=; b=IhXD5+3lP4cEZfkzCQKJGyJZ30
 pIeiykuwTbGgkldp31QZ4rvp4ud/iLzTgGnPkvwQFaj0QU5y5fXc0dx4C9qNpLyPK9h40PRIp0WHi
 zQjIgWTmusCjZ/emRW1aelqvAeCf7Xq78J83HsmpSRlzJkfrVJLmZHWpTQ8S1px/qb3253d9E6tuZ
 5dEF531+fgUJiAKQGRXCxnaDUN1tAxOoPyT9uZdcNxq4vj4QUL01yz/00fCnWJg1bN31YvYhJldFf
 f7HL/S4JOTwN9hDG9trBFf3LjR3iI+9mcrt8PnSHdCT4DKLLTTPEFN6nHt9XqiCyqStbkTBDurTHJ
 jJqJYcVQ==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYHG-0003En-A6
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 11:37:43 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 98CC920007;
 Wed, 18 Sep 2019 11:37:01 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Date: Wed, 18 Sep 2019 13:36:57 +0200
Message-Id: <20190918113657.25998-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Claudiu.Beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement .get_multiple and .set_multiple to allow reading or setting
multiple pins simultaneously. Pins in the same bank will all be switched at
the same time, improving synchronization and performances.

Keep the driver future proof by allowing its use on 64bits platforms if
they ever appear with this IP and we end up with a mismatch between
ATMEL_PIO_NPINS_PER_BANK and BITS_PER_LONG.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---

Changes in v3:
 - Add ack from ludovic
 - add comment and amend commit message to explain the ifdefd

 drivers/pinctrl/pinctrl-at91-pio4.c | 62 +++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index d6de4d360cd4..e380202eb86a 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -328,6 +328,33 @@ static int atmel_gpio_get(struct gpio_chip *chip, unsigned offset)
 	return !!(reg & BIT(pin->line));
 }
 
+static int atmel_gpio_get_multiple(struct gpio_chip *chip, unsigned long *mask,
+				   unsigned long *bits)
+{
+	struct atmel_pioctrl *atmel_pioctrl = gpiochip_get_data(chip);
+	unsigned int bank;
+
+	bitmap_zero(bits, atmel_pioctrl->npins);
+
+	for (bank = 0; bank < atmel_pioctrl->nbanks; bank++) {
+		unsigned int word = bank;
+		unsigned int offset = 0;
+		unsigned int reg;
+
+#if ATMEL_PIO_NPINS_PER_BANK != BITS_PER_LONG
+		word = BIT_WORD(bank * ATMEL_PIO_NPINS_PER_BANK);
+		offset = bank * ATMEL_PIO_NPINS_PER_BANK % BITS_PER_LONG;
+#endif
+		if (!mask[word])
+			continue;
+
+		reg = atmel_gpio_read(atmel_pioctrl, bank, ATMEL_PIO_PDSR);
+		bits[word] |= mask[word] & (reg << offset);
+	}
+
+	return 0;
+}
+
 static int atmel_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
 				       int value)
 {
@@ -358,11 +385,46 @@ static void atmel_gpio_set(struct gpio_chip *chip, unsigned offset, int val)
 			 BIT(pin->line));
 }
 
+static void atmel_gpio_set_multiple(struct gpio_chip *chip, unsigned long *mask,
+				    unsigned long *bits)
+{
+	struct atmel_pioctrl *atmel_pioctrl = gpiochip_get_data(chip);
+	unsigned int bank;
+
+	for (bank = 0; bank < atmel_pioctrl->nbanks; bank++) {
+		unsigned int bitmask;
+		unsigned int word = bank;
+
+/*
+ * On a 64-bit platform, BITS_PER_LONG is 64 so it is necessary to iterate over
+ * two 32bit words to handle the whole  bitmask
+ */
+#if ATMEL_PIO_NPINS_PER_BANK != BITS_PER_LONG
+		word = BIT_WORD(bank * ATMEL_PIO_NPINS_PER_BANK);
+#endif
+		if (!mask[word])
+			continue;
+
+		bitmask = mask[word] & bits[word];
+		atmel_gpio_write(atmel_pioctrl, bank, ATMEL_PIO_SODR, bitmask);
+
+		bitmask = mask[word] & ~bits[word];
+		atmel_gpio_write(atmel_pioctrl, bank, ATMEL_PIO_CODR, bitmask);
+
+#if ATMEL_PIO_NPINS_PER_BANK != BITS_PER_LONG
+		mask[word] >>= ATMEL_PIO_NPINS_PER_BANK;
+		bits[word] >>= ATMEL_PIO_NPINS_PER_BANK;
+#endif
+	}
+}
+
 static struct gpio_chip atmel_gpio_chip = {
 	.direction_input        = atmel_gpio_direction_input,
 	.get                    = atmel_gpio_get,
+	.get_multiple           = atmel_gpio_get_multiple,
 	.direction_output       = atmel_gpio_direction_output,
 	.set                    = atmel_gpio_set,
+	.set_multiple           = atmel_gpio_set_multiple,
 	.to_irq                 = atmel_gpio_to_irq,
 	.base                   = 0,
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
