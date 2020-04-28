Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB20A1BD070
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 01:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTMJQIeRb86GbV4RVX7500W6z6+REsKoYfZmmeN0BjE=; b=LswGw5kOJB67Cm
	t03ZULirqd/A+lHuizOLrLW3qwJeqGoAMW0w6pNfqAQcysbKLuj04PsGvetgzo5ZFc3j/VSVrlzsa
	2OHtgIJaogtqjzw117qHGP0GtAZFNYFFbIqt/iLCayEWLaUVMk91SHaSvxpk1ZKiR9cvhJfes7069
	EHE8JP2y+V7HCDn6wpWU7pe1GJi2RRx1rZL9TNQ6tG5D5nm0uWMbbkqLzxavGWwfGenRmHg5T0Jvw
	Thdg5+Mi2n3p55lEbOW9uI1jbiTGH05TKohLRJPDpNBnkZZ4FEg5k7Q2aeDkBq3NxZuGcWFavC/71
	dlUkbMdV0fVthyW3G93A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTZMt-0003nu-Sw; Tue, 28 Apr 2020 23:10:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTZMb-0002tm-0E
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 23:10:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id h69so66241pgc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 16:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6zdBCh/xlVK5PCSYWZXUcjZ7d6eaIl4/naLqN4XoTsQ=;
 b=XjQhU/J/vVFmZufkukdky9ZAfYjHNtQJMoxIRTvq2m2kpaihr5sAGI2VcBL6m4x0iG
 qeRJnHnZFxBzu3PUnUhzp5W0UiJ749XBnZ01JktFSXLSGDMkZ4ISZqJPZ0TTVnYNsXZs
 MySDnyco1HlwbIkkiQB0IykeOKEYW5h/XDgmMYJcCNe5hMKMv9AFMqgQz8tJS8y/D+cy
 CJ2I4vm6PGZLLWgcTfCZHTd1LQIDm0DmnehRRPx7Hben1TjNZ8twflFrSso4BDW/NK9u
 X6quEAzsd1qfesQM8WoP+qmaR/hUkwC9r1fIzztBFbp3Yik2oQDVpymy/SsS8ZnqcyMY
 SvmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6zdBCh/xlVK5PCSYWZXUcjZ7d6eaIl4/naLqN4XoTsQ=;
 b=reuY8WBt8VJX15ov2xiohOylffkDO5B4F/pJzrP+qwnKhw8LdwOau3Nstp2CaCzP0E
 D4ubGSOsgQ+qaMj9PeAMz8LEmIMCTgA7PrR0DfygnIrhRyq9vE+MK1BOU/5h7NsnGTnQ
 24EIW5I4d5Ntg0pqLngFDfiQsK6qObfV/KOcvcYlbm34MJEnACNDtLkMPU3906VguqdL
 C+eJ3poqvwosGPdPqohZL0xwyWZ7pI5Gf8oB4pT+jNAPZV8bCKnYfrBlVQKunlvwK42T
 UUSD3mCQ8Ckb0z6g0ioy4KLFsmu+97MWPRdmyHVNW39CHqHQXe8XWpNRGyWQiL2jr+BR
 MWNg==
X-Gm-Message-State: AGi0PuYT+AijWKO1e19dJUa2/DfyLx5n5onir/DdwYo2baJvFHzXTRFT
 VDX3qr4TcMDs1csntzHzuQk=
X-Google-Smtp-Source: APiQypJzE2hJ/H1IOJtoj3OJHBazjKl15p0BAdZCOJ4C/E1CEkWGc8AvSD7FuWooJHXEdCYLZuVonA==
X-Received: by 2002:a63:4047:: with SMTP id n68mr29781771pga.321.1588115404136; 
 Tue, 28 Apr 2020 16:10:04 -0700 (PDT)
Received: from syed ([106.202.21.137])
 by smtp.gmail.com with ESMTPSA id u188sm16140298pfu.33.2020.04.28.16.10.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 16:10:03 -0700 (PDT)
Date: Wed, 29 Apr 2020 04:39:47 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: akpm@linux-foundation.org
Subject: [PATCH v3 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <80745504d15c87aa1da0d4be3c16d1279f48615b.1588112716.git.syednwaris@gmail.com>
References: <cover.1588112714.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1588112714.git.syednwaris@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_161005_057835_33953E06 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, vilhelm.gray@gmail.com, michal.simek@xilinx.com,
 bgolaszewski@baylibre.com, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch reimplements the xgpio_set_multiple function in
drivers/gpio/gpio-xilinx.c to use the new for_each_set_clump macro.
Instead of looping for each bit in xgpio_set_multiple
function, now we can check each channel at a time and save cycles.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Syed Nayyar Waris <syednwaris@gmail.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
Changes in v3:
 - No change.

Changes in v2:
 - No change.

 drivers/gpio/gpio-xilinx.c | 64 ++++++++++++++++++++------------------
 1 file changed, 34 insertions(+), 30 deletions(-)

diff --git a/drivers/gpio/gpio-xilinx.c b/drivers/gpio/gpio-xilinx.c
index 67f9f82e0db0..428207f9ab91 100644
--- a/drivers/gpio/gpio-xilinx.c
+++ b/drivers/gpio/gpio-xilinx.c
@@ -136,39 +136,43 @@ static void xgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
 static void xgpio_set_multiple(struct gpio_chip *gc, unsigned long *mask,
 			       unsigned long *bits)
 {
-	unsigned long flags;
+	unsigned long flags[2];
 	struct xgpio_instance *chip = gpiochip_get_data(gc);
-	int index = xgpio_index(chip, 0);
-	int offset, i;
-
-	spin_lock_irqsave(&chip->gpio_lock[index], flags);
-
-	/* Write to GPIO signals */
-	for (i = 0; i < gc->ngpio; i++) {
-		if (*mask == 0)
-			break;
-		/* Once finished with an index write it out to the register */
-		if (index !=  xgpio_index(chip, i)) {
-			xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
-				       index * XGPIO_CHANNEL_OFFSET,
-				       chip->gpio_state[index]);
-			spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
-			index =  xgpio_index(chip, i);
-			spin_lock_irqsave(&chip->gpio_lock[index], flags);
-		}
-		if (__test_and_clear_bit(i, mask)) {
-			offset =  xgpio_offset(chip, i);
-			if (test_bit(i, bits))
-				chip->gpio_state[index] |= BIT(offset);
-			else
-				chip->gpio_state[index] &= ~BIT(offset);
-		}
+	u32 *const state = chip->gpio_state;
+	unsigned int *const width = chip->gpio_width;
+	const unsigned long state_size = BITS_PER_TYPE(*state);
+	unsigned long offset, clump;
+	size_t index;
+
+#define TOTAL_BITS BITS_PER_TYPE(chip->gpio_state)
+	DECLARE_BITMAP(old, TOTAL_BITS);
+	DECLARE_BITMAP(new, TOTAL_BITS);
+	DECLARE_BITMAP(changed, TOTAL_BITS);
+
+	spin_lock_irqsave(&chip->gpio_lock[0], flags[0]);
+	spin_lock_irqsave(&chip->gpio_lock[1], flags[1]);
+
+	bitmap_set_value(old, state[0], 0, width[0]);
+	bitmap_set_value(old, state[1], width[0], width[1]);
+	bitmap_replace(new, old, bits, mask, gc->ngpio);
+
+	bitmap_set_value(old, state[0], 0, state_size);
+	bitmap_set_value(old, state[1], state_size, state_size);
+	state[0] = bitmap_get_value(new, 0, width[0]);
+	state[1] = bitmap_get_value(new, width[0], width[1]);
+	bitmap_set_value(new, state[0], 0, state_size);
+	bitmap_set_value(new, state[1], state_size, state_size);
+	bitmap_xor(changed, old, new, TOTAL_BITS);
+
+	for_each_set_clump(offset, clump, changed, TOTAL_BITS, state_size) {
+		index = offset / state_size;
+		xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
+				index * XGPIO_CHANNEL_OFFSET,
+				state[index]);
 	}
 
-	xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
-		       index * XGPIO_CHANNEL_OFFSET, chip->gpio_state[index]);
-
-	spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
+	spin_unlock_irqrestore(&chip->gpio_lock[1], flags[1]);
+	spin_unlock_irqrestore(&chip->gpio_lock[0], flags[0]);
 }
 
 /**
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
