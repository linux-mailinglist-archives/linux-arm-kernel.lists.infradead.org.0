Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D6CAA586
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=euZ84duMeHfWQDlF5xhciLugK/gVq2jadfoNd1CGQrA=; b=RqHOFOnGhre4dn
	dWoU+hzPOdci6dPwJbdV2kMm7ZVJn6xD5yXhZ919T/ka68FNlFwsnweutahF0zrw9++b4NSnslrSu
	dz9my1EDrdSQCUmF0MK6LTBPRaaRYB5ATcH0dYyvWimOQJzyZn9dYDv2D7ShHiGoZQqSE4FrYYP5J
	GZ94PK0gU5uF9x9EBaE2F8CiWkCauVP490tuC2OKoyeox/JpI5QPoKPJ4r7B0Jp+fdVzLmjZpY3A3
	1AxEQ7mSam4Ib3vE/DreMzFpoTY4jKWncWr+UUc2UnZCqDDYUOoKkDQxpW/hwp5aTuVJVoHcAo081
	lOKqTc9Rx/bSfO+ch19g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5sWS-0001VG-AK; Thu, 05 Sep 2019 14:14:04 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sWK-0001V7-UK
 for linux-arm-kernel@bombadil.infradead.org; Thu, 05 Sep 2019 14:13:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0J2eF/GJkYBlAV9bsnnTBObhosClR3AQeu2oGuzNZNA=; b=owLoTCg2OEV1iBW67N0j/SMK4n
 aINszVFMCn3WUAHCIe1qdW0Je5p/nXJuESt6LHRzHaGIyberJg4tNZ3BrmVXjjWFWDIHea1N3PW7W
 OjjISGM44JGpjmWRfcAdivUXJtPlq5zJZrXb2jrpy81hrnhWlXAPsudzeWSQR71PPdw4eoAHP1jqj
 Te5jzGDAT5wUCPukFDw/y2V6l4MF2RtaSmc3BJPNvts04PwwQ4kPEgPFqnvhqMyLznFAhTnHm1MRH
 nCxNNpQZaca5EtLNYO6zVxoUd5HPrWLFsEWbU8LwBnuGNWoXsvXslgvvmz/pnp3M3+xxpQ3o7kYc8
 BDjHRnIQ==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sWH-0008Mu-Vg
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 14:13:55 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id DF4D72002B;
 Thu,  5 Sep 2019 14:13:13 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] pinctrl: at91-pio4: implement .get_multiple and .set_multiple
Date: Thu,  5 Sep 2019 16:13:04 +0200
Message-Id: <20190905141304.22005-1-alexandre.belloni@bootlin.com>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement .get_multiple and .set_multiple to allow reading or setting
multiple pins simultaneously. Pins in the same bank will all be switched at
the same time, improving synchronization and performances.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/pinctrl/pinctrl-at91-pio4.c | 60 +++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index d6de4d360cd4..488a302a60d4 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -328,6 +328,35 @@ static int atmel_gpio_get(struct gpio_chip *chip, unsigned offset)
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
+
+		pr_err("ABE: %d %08x\n", bank, bits[word]);
+	}
+
+	return 0;
+}
+
 static int atmel_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
 				       int value)
 {
@@ -358,11 +387,42 @@ static void atmel_gpio_set(struct gpio_chip *chip, unsigned offset, int val)
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
