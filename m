Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD26CCD2AB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:13:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOp2WbhoYLOp329TeLeyf1DNnYnNBgiAi+oj5YcmL5w=; b=Z0xv3/hNoROIZ/
	sp4kTTiVeH79U1qfjm6vo/jIE9ooA5Z7yDhtLbTK+0cqo00OvxSg93l/IxH1HYviGt3BO/L34Rgzr
	VQZ1ucENuZ3ZXPGIEmWXkXxSt5c9N5G0plZ0VZP9sMfCyWgj9gwzWGf7ZFiNUwnlglLC3S9rt9FLs
	9oZ9RuvfvGF4zpxaWZlomQgfKWS1dCnnhiy03+ABa+xXvl6N6YpAZsQ9W/tEy+fQ4tsXF2Jb5bN7I
	Kx78wiJYgDNhx/t1a8Cv+FQucJttC+1AhyXj2KsJ7reUMPnyx2NCl3TzbGeEBzl/9o3vstfPp7K38
	mBmYWhns8FpCS5D2YVOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8DZ-0000RC-Lk; Sun, 06 Oct 2019 15:13:05 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8CC-0007ns-5v
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:11:41 +0000
Received: by mail-yb1-xb44.google.com with SMTP id t1so1926670ybo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 08:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kIovLVirYpbsjXR9oN+2msyJPjO/yPvE5mW4qwwn3Bw=;
 b=JF6FEn8EC+3jw8cO/sNWQ4ftB44QNrOYhPVfLhGBH2Hm8IyT3BhzBFDJINusLs6IYD
 H5WOfFWGASmL4yL+gEc6Ayk6v5MKVVE6aEg84+pTF/T5gSBHx4PvoPAgPP0m+3Ly7z36
 4fA7KWN9qfKfbBuQLpqwG8Sk+DxFiMCAPMxJamZ/d7qOW7psAuS1nva2vnkjM0Xbrj3f
 W7Xwf0lYTGdWnHeEK6gZMisfTsji2kwCUL3ng1vYtXSVQFLjO7jZNCYO/Tr40n6Jwg8Z
 dr7RlMucIoWkpmXwmw/8jhpt5lnf5we+d+zDWFpFta+vbjH9wcrIzdVHpN0S0Mhukv+I
 JVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kIovLVirYpbsjXR9oN+2msyJPjO/yPvE5mW4qwwn3Bw=;
 b=Qc8iSCWCkPuqKGQsMkoySHxEfj3idAf2z8tjql01jPEw8np7DhTRR87zrMvdaxx9fu
 qwwjrupNjJwKR5inxMAvZFveYLWELTr02eMnwHbLx0eLvP2fsec1TuqytPdTBNnCX1nn
 dBoT5VYyzH7VyBiGMh2ypB+Ef5UN/P35NFzr1vyTAQnHSsHhN5ErwpZViI+R3DpiL0rI
 q5sl80JTYrgWP2vpC5nlsW4b7kTHFtE1t9xB0sIDOWtSirK9QSfY8K7/xY7Y/dxQOpxW
 yNfGeFPqbd2VJvhDN2Kx632lBi4iRxRr9NdbGs01wbdo1D5w1/cnZVJTWDx4jxm7JGHh
 boCw==
X-Gm-Message-State: APjAAAWsuUx+AmdC063VAPbYXPPBmxOhkhDS6MnZrE7mgnJeoq2eOHz0
 fq+7cXIOUdd66UcPtsaZmLw=
X-Google-Smtp-Source: APXvYqwA8h26SKZkyCP8BNoqhEN1+EtmVC7Ww0aHbL9+MCbnnfB3320tGE4MRWQfxPf5sxw1WoI9Ig==
X-Received: by 2002:a25:570b:: with SMTP id l11mr7918895ybb.323.1570374699171; 
 Sun, 06 Oct 2019 08:11:39 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id e82sm2662434ywc.43.2019.10.06.08.11.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 08:11:38 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v16 04/14] gpio: 104-idi-48: Utilize for_each_set_clump8 macro
Date: Sun,  6 Oct 2019 11:11:01 -0400
Message-Id: <0092df14e087717c0f9675c8747024982800f0fc.1570374078.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570374078.git.vilhelm.gray@gmail.com>
References: <cover.1570374078.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_081140_295123_025E313E 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
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
