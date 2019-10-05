Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83798CCC4C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 20:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOp2WbhoYLOp329TeLeyf1DNnYnNBgiAi+oj5YcmL5w=; b=Jj5QhcDnxCziUJ
	jKYuFOtVC6H+6sj1gLQnwy6sl6G7ouCMr/1Kpd7OgNbPWCyFYJbLxrYLsuMgye0DrB2SB8kReDSgH
	Avo7BvRsusfnTDpvSusGxbWWXwx2FSO+dkd6my4YahW40NuRoP7dc7/SjJOz8v3VUuyLc6/vIBHEO
	iJbzpDYBn1aomx8gOe6yq8+OgxCl7JjIn8Ou66YQPpnUpfv50VC8kZvAFYW8C2NlsST0PRqdHPOCs
	nHQvi0woA33hZIVw2WWzsEnwd96EKjOl1PMzxH3PuKQ3FGd04NMjhskkz3W+5ylp3YLlSDNK2UMb9
	AoZbZ9E/+6///bL5rd5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGowv-0003H5-W4; Sat, 05 Oct 2019 18:38:38 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGovt-0002RZ-BA
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 18:37:34 +0000
Received: by mail-yw1-xc44.google.com with SMTP id x65so3557039ywf.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 11:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kIovLVirYpbsjXR9oN+2msyJPjO/yPvE5mW4qwwn3Bw=;
 b=ctDGbI6dFoR2en11j32vRA1iUbwD9d5FfwePuj/i5n7oJ84HXLixaBJsZBcGvxFTVe
 SvgVPNkzQwvPOCMV4wF3f1ZtZkCNjnkpU6RbYfm/0+EHJjYU3NKd98Ciumuv9oEQ3nYM
 d1eho96eJI+qAlZ4WL0GYv8fM+AXN8qdvinRkolVJ8I/QNiXIle3ChyqM0xsbcls/xBK
 GQFOUpsWYKYM+6QHWDePoYUhHl4WRA4p0W5Kw9+twIQNEece1AQSQ1/Fktznk5aB/o1+
 5v8CxE7+rhHVZ/9MT5p+PiG5v9gvafVDjkdTtL9ZW9BfG3ZKzruQgTxJRbTnbnh/mdza
 fTBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kIovLVirYpbsjXR9oN+2msyJPjO/yPvE5mW4qwwn3Bw=;
 b=OmeEbA4fH99iipq8gIunAOnMqr9I87v8nbunuw+zRI/ByjQJIqC0GEFt7TfaqA9lrq
 wQHYUsuaQ1KP6pfS2swTBpZkJGnsZtLs8Nu+ZrtZlEsuS273RPYR9/DcmorSz7rD5dJL
 +GaBIA8w6GJMG+Edjsx26QpLU4u/87mkLliBoBt7SJyXrZSDQbgDv/x8JIRcdfE7lTLq
 Rb+5RotjuXrcRe4tCDHHm/ghR4BjxYQp/IQ2oanflKJeiixs3UmlqIqsNlhusmQpllwZ
 gaamQGIY7K0IFfzl5hZq25tiR1MJ1REio742ozpfF6iAUNnMe6jLyS9xDqsxxo+JWVzT
 v+sQ==
X-Gm-Message-State: APjAAAVUpWvZ7wt9aZ1OyZPOR3OKswSoCMSaI09Lh1KsliohLcQhqpKG
 nbk+jqiPt5oFNe5oRzM7yYg=
X-Google-Smtp-Source: APXvYqy75Ya2YBsMEbePYyYWW7O5StWzI583/2uSvKzl2W/yDu2iNhXyoq9hJMZwkZNVAnus/0amRw==
X-Received: by 2002:a81:3e1f:: with SMTP id l31mr14315618ywa.331.1570300652647; 
 Sat, 05 Oct 2019 11:37:32 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g128sm2376654ywb.13.2019.10.05.11.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 11:37:31 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v15 04/14] gpio: 104-idi-48: Utilize for_each_set_clump8 macro
Date: Sat,  5 Oct 2019 14:36:58 -0400
Message-Id: <21b2c3af2770a04e768ea2d7688b77493ceb640c.1570299719.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570299719.git.vilhelm.gray@gmail.com>
References: <cover.1570299719.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_113733_386320_C4D694A8 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 William Breathitt Gray <vilhelm.gray@gmail.com>, yamada.masahiro@socionext.com,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, morten.tiljeset@prevas.dk,
 sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org, lukas@wunner.de,
 geert@linux-m68k.org, akpm@linux-foundation.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace verbose implementation in get_multiple/set_multiple callbacks
with for_each_set_clump8 macro to simplify code and improve clarity.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-104-idi-48.c | 36 +++++++---------------------------
 1 file changed, 7 insertions(+), 29 deletions(-)

diff --git a/drivers/gpio/gpio-104-idi-48.c b/drivers/gpio/gpio-104-idi-48.c
index ff53887bdaa8..bf67040cbbbb 100644
--- a/drivers/gpio/gpio-104-idi-48.c
+++ b/drivers/gpio/gpio-104-idi-48.c
@@ -85,42 +85,20 @@ static int idi_48_gpio_get_multiple(struct gpio_chip *chip, unsigned long *mask,
 	unsigned long *bits)
 {
 	struct idi_48_gpio *const idi48gpio = gpiochip_get_data(chip);
-	size_t i;
+	unsigned long offset;
+	unsigned long gpio_mask;
 	static const size_t ports[] = { 0, 1, 2, 4, 5, 6 };
-	const unsigned int gpio_reg_size = 8;
-	unsigned int bits_offset;
-	size_t word_index;
-	unsigned int word_offset;
-	unsigned long word_mask;
-	const unsigned long port_mask = GENMASK(gpio_reg_size - 1, 0);
+	unsigned int port_addr;
 	unsigned long port_state;
 
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	/* get bits are evaluated a gpio port register at a time */
-	for (i = 0; i < ARRAY_SIZE(ports); i++) {
-		/* gpio offset in bits array */
-		bits_offset = i * gpio_reg_size;
+	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+		port_addr = idi48gpio->base + ports[offset / 8];
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
-		port_state = inb(idi48gpio->base + ports[i]);
-
-		/* store acquired bits at respective bits array offset */
-		bits[word_index] |= (port_state << word_offset) & word_mask;
+		bitmap_set_value8(bits, port_state, offset);
 	}
 
 	return 0;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
