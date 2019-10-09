Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A419DD12C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DElWf7UNAKSMA/HL0uOcJqIXD5+rxrllhgch2PKAZg0=; b=soBFSOTX5dit9C
	qku3CtKX2Uo5JoCkR5AIJNQ4wJcRakQAuR6/HhrdpHPEWeapH8tt75rDXVHwOJ6QcYn8eIygRfDMY
	QdRY7i26uWJfxAGPRH6zmGABFo7gplNEEBlRbkk1RcWJU25K9OLpZYG4YtGM01yMz/93efp2x9+Dh
	OFmlkvfAEX3p8ubjUs5rf/c1kBqe9jYddf6VULSG2GS1ufIGJRtzpF8qvUg6Vc8yeR5iDj4sb+QVB
	90/T0/l0M9IjvKxpgXiViHEW6VeDsTpHazVuteDf412HRjxFx8GcD7B1oDo48ko+zAmCcVIj/v/rr
	ZJbRENtwTiZAbxWR6bUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDv9-0005ED-19; Wed, 09 Oct 2019 15:30:35 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDsW-0001hn-6I
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:27:53 +0000
Received: by mail-yb1-xb41.google.com with SMTP id m1so873902ybm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 08:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mBleGApOd9DY5AB30uyK9JEv+41JBB1+F0GtLYOX3MQ=;
 b=GAaw4kQJZ1t/twSnzYGj1Ye+b2rWZfgSQigTMAkCGXs7faRp9kbxzc+viRchH0iOUw
 jLQduPFHhg85mw9CZKGs3ZHhhcP9FaLFjY7wCSatMrfXGPdGXT9se2sj+/BL99Q2YvBc
 eyDG9o7N4Ton97yqY0ikl+XbQCOVNJW1GjnMWMNz+ysIw1dfIuCgoRxG5vWC6TmUuqjA
 on7aOT8hdds8tMqafPa8Np3qYdKvVkxrARA6ZLjvfnUqUMdn7xzUcrMz8yEoVs6EQA2x
 SbfDGVkowS8BcodygfJLou5vUSTzh7Ua2TWnGZSWh9VyAFMnVaTfPX2A90XPh5J0yFAF
 /rpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mBleGApOd9DY5AB30uyK9JEv+41JBB1+F0GtLYOX3MQ=;
 b=DUtlrXjxXJjg8Xa9HuUWYYy0AGCdpUQC7jmedtUPnAtV90LYQZV3m070u+TNWgOFAY
 5ASUqdGQjjlGB69EtLv1o+55m5gU7wS5+R3CwXAq+sgDwBNDNiWuj7NmolcD1GMHp6bU
 Dtft0LgkcFB4SitEO57K98i6GIJLQWqY/Nyrgyopn2s8Sk9WMmMkvc9Dn8URQ9F2Za26
 cKwuHOuR1/B8groo4JlvXqM69AjM+WL2wgMtAN7wYgnvVcjwKbLjf3HKd0mmHMb4f++e
 tAbdO6ri2alRdiyJU8r34ZTZfGEXB+T6wOpNzt9fHsbsppYWnIKxORmmwTNe/NGz1mYD
 hfyw==
X-Gm-Message-State: APjAAAV6+X78Te5rYo4eA0iPF7Z5yRRXgC5bgzaAmD2K7qqMmMwI2jR9
 eoyV2QQ4ohGSi7v6YJBZOSU=
X-Google-Smtp-Source: APXvYqwYZQffEOxLcR2DnXodNBQuIf2G4FM0ZYog/FMeKsA3x5ZeM6hVk9B5ifb9KwyjltXl8dzmPA==
X-Received: by 2002:a25:ba84:: with SMTP id s4mr2426092ybg.343.1570634870310; 
 Wed, 09 Oct 2019 08:27:50 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g40sm611863ywk.14.2019.10.09.08.27.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 08:27:49 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v17 10/14] gpio: 74x164: Utilize the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:27:08 -0400
Message-Id: <ca28331339e17b7c7e3d802ce68d87ca955be7c5.1570633189.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_082752_286523_3AAE1C12 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
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
 Geert Uytterhoeven <geert+renesas@glider.be>, yamada.masahiro@socionext.com,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, morten.tiljeset@prevas.dk,
 sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org, lukas@wunner.de,
 geert@linux-m68k.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace verbose implementation in set_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity.

Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Phil Reid <preid@electromag.com.au>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-74x164.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpio/gpio-74x164.c b/drivers/gpio/gpio-74x164.c
index e81307f9754e..05637d585152 100644
--- a/drivers/gpio/gpio-74x164.c
+++ b/drivers/gpio/gpio-74x164.c
@@ -6,6 +6,7 @@
  *  Copyright (C) 2010 Miguel Gaio <miguel.gaio@efixo.com>
  */
 
+#include <linux/bitops.h>
 #include <linux/gpio/consumer.h>
 #include <linux/gpio/driver.h>
 #include <linux/module.h>
@@ -72,20 +73,18 @@ static void gen_74x164_set_multiple(struct gpio_chip *gc, unsigned long *mask,
 				    unsigned long *bits)
 {
 	struct gen_74x164_chip *chip = gpiochip_get_data(gc);
-	unsigned int i, idx, shift;
-	u8 bank, bankmask;
+	unsigned long offset;
+	unsigned long bankmask;
+	size_t bank;
+	unsigned long bitmask;
 
 	mutex_lock(&chip->lock);
-	for (i = 0, bank = chip->registers - 1; i < chip->registers;
-	     i++, bank--) {
-		idx = i / sizeof(*mask);
-		shift = i % sizeof(*mask) * BITS_PER_BYTE;
-		bankmask = mask[idx] >> shift;
-		if (!bankmask)
-			continue;
+	for_each_set_clump8(offset, bankmask, mask, chip->registers * 8) {
+		bank = chip->registers - 1 - offset / 8;
+		bitmask = bitmap_get_value8(bits, offset) & bankmask;
 
 		chip->buffer[bank] &= ~bankmask;
-		chip->buffer[bank] |= bankmask & (bits[idx] >> shift);
+		chip->buffer[bank] |= bitmask;
 	}
 	__gen_74x164_write_config(chip);
 	mutex_unlock(&chip->lock);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
