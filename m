Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA49D12BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOp2WbhoYLOp329TeLeyf1DNnYnNBgiAi+oj5YcmL5w=; b=RNpR3ztIagIrpL
	Ru3qz3oJqX/htDwZatgGO5UZd22UAYc40usOTQofH9iRktyWuCzno5OEvD2s4BmDiCEubd24Sy46X
	sKujMtLEeRjcTjvjrOoC6Ke2mCIgma8TTgg+kGJNxDvFe8d0zlkoTNQFh6yPusPaTaLzmcJBI0KaM
	jBTjyJYf/W6w9UVyaQQhtksljOd6D9fyL8g8oD25RFfX3SDM643wX+6EgHpLp7kzGlkZrkillOjVv
	ehdJWzR93H0o9uOjcy4XCol5mJWTiGTcn1S6sHxFWmmdRHENp9V+bhfy9xz3sgbcZFbR434KK2NYm
	SmGdL/u+0Op2t371r10w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDtX-0002Yd-SI; Wed, 09 Oct 2019 15:28:55 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDsK-0001UI-0Z
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:27:41 +0000
Received: by mail-yw1-xc44.google.com with SMTP id n11so955411ywn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 08:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kIovLVirYpbsjXR9oN+2msyJPjO/yPvE5mW4qwwn3Bw=;
 b=fNvV9MNtNRB2SmMcOwun6o/yv/8rboCkkmmp1LS9cIP+XOAGS/CLBRGWjYiMndh3MZ
 IoIaqluJ7KFSoJe5OT6s+wPfB9CiE5OFVpx8nIHZqW5ochtR6Bws7sXUGToSTRoqXxv9
 hggfw+nZMjBoXQDaIJ1xg5Pn3N2+t+Vx/hlt5xED7zWRGrEkJbti4gbDRvyESJoublv6
 f6D1qXclG7hC0/zLrtY8JDa/MW8GOSBv+8s4H5G/AbN+Pz8T0vPIiXgAk7Vpr2z8/HQf
 JY9nBx0BfnFIHpi0FzjbSJxUhHbZhH/SjiVBjEubz0mzV8AMXXIpsoyoRVge+4PMoHAr
 L7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kIovLVirYpbsjXR9oN+2msyJPjO/yPvE5mW4qwwn3Bw=;
 b=kLGO6k4j5rG+PuR89S41eQL6+HDNn+1ipfgBN+JZryTteFHnLA11rF2mFHyyVC/OAv
 xS8dQ0AFxXfBLlDGbVIRqRSON1a5eYdR2DKbsJmFSkf90Sn17meyBTrd7Lrkn4JhEnux
 SMylfgPfmeKIVihuSzjMRXJth0SDWl/E9IyJK6l0Swyr2ynsk4NZbsry7ggyQKYIdWPG
 66C3Gi7dFRX1doB3kBC5JHDY6MTyPzyTjqel0hBGweTCzUGsHpVZB/Zcehrc7vJtIfuM
 i5k+izL1gLsM+Crm3bw2s1OILGBXOTbNHIESU+oyIurOUafwRK0GIU+JilTZXDyoXV9G
 NUyQ==
X-Gm-Message-State: APjAAAV/W/KIX45V7S24jeI6jDrZ9NKooHFCiZ6Wqmmpqcp4RjqpWvih
 y82SOc6uM8uTfAo/SD12NOI=
X-Google-Smtp-Source: APXvYqyBszE2jXf2bk8hp0wGA9HvtwkClBo3hkRqIDNzmTGUtDiqqjtr7EsHCB00LexEl4Ttme0LUg==
X-Received: by 2002:a0d:ea56:: with SMTP id t83mr2975903ywe.351.1570634858790; 
 Wed, 09 Oct 2019 08:27:38 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g40sm611863ywk.14.2019.10.09.08.27.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 08:27:38 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v17 04/14] gpio: 104-idi-48: Utilize for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:27:02 -0400
Message-Id: <b0631b6d489f85008480399df283ccd33ecfe310.1570633189.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_082740_078547_155F7215 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
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
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org,
 lukas@wunner.de, geert@linux-m68k.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
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
