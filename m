Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C57DD12CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ja24rsCutY+DfvRhsWa3ceDPJWsIJLiRY090PGYzKFc=; b=l5Y2dfuxaXpOTp
	3wnRjAv1WlhnHbXRpxfGUxX660nSO3M4J5kBovLOiNPy2AoyIW7B0zkVVANWrvWKGI2kBnTtnfpym
	hKCveYzZpqO55OqBNZi87JNLEiNp4E+KQuNkpi6SM05Ee83Wl9O8huA8RkVnyd2e73B1KeCafkOuW
	op3oRYKUXqGKPon7qomx/T05tSccg2RXNEqEk4gD45f0vlIRXLHz08NQ//0nUaWAl/fmgqN2hITnL
	q2PTebL/XymOpZ7Jt4E/6sogU+Z6NcrpAvcncEyhi8hJkEuj7gXSDePc4J/5u/HZ7st6ryIpTnYTE
	nnF7y2MTzB7zntRxDXjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDvz-0005z9-Qu; Wed, 09 Oct 2019 15:31:27 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDsa-0001nY-Dy
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:27:58 +0000
Received: by mail-yw1-xc44.google.com with SMTP id e205so957812ywc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 08:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OQMsvrMqAN5cYMrSu91Pu66B0Sg+HB0aWPXdvZz2KcA=;
 b=r+SUHFOZ26RdG6VxUf2qcKuuetu4H5Jy71X9gc45BPmyGIWDg+m2ICnyeTlBpzTaYy
 CJkhi1YwtYAxMoW2sb6vh3kuTTCfvBmqCwee3qYMm9xq9sebu8z28QBS9rsm9eXEa51A
 ub0qbTjI1gW3bcXOW4Eyo5fCs+2Re21sEbFuCcGQBVDxubUvTdPwINl476Z4v1Vj9XdB
 H7VyPRNQhG6wbT+vhq1A31C3lYT6kFCpppGlzRPxPly3PC51nS0pThzV8ALxXAWBqubq
 vWhmV++0papriWbPkg1Fa2NPp+EazD8WfSX4yTy8E/IOYfTMd4pKaHju+rZ14PSsS8WY
 qQfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OQMsvrMqAN5cYMrSu91Pu66B0Sg+HB0aWPXdvZz2KcA=;
 b=LMxYYY+yBeY6o7y2dmq+OEi6D4GZLsgm6NbwPSMJStKPtOUG+4UzrZid9ylugLwQnk
 bSFlY9SL0gHiaEC9PErq/oeQCvcucCTnRSheoCCrEixJ3/iI9c7HILXjqlT7KLwlrExi
 Hv2OewIGMT9Bg23tCC+xeuNVL5l5zKX1AKcwnS0GDbOEHGSEAfTt62sB7yPtnZChmGmZ
 gwovdXWxvGspyKuUyhpyM+7J7Va3wB9eTaVtTfB5EXMB3Ztyqr5XP9Q+yuZk4KRdZyuo
 D5NWRH4uh1dU+bkXT4oSlj2/KPXl77AOetvM5JWCRfE1k0zdad7Ww49wEHO8Gxqj6YkH
 kyiA==
X-Gm-Message-State: APjAAAUHBXSFqdKePhNKAzlEAFAZB4NU3ajrifvUJCLzE4m0MbLgeht7
 P3moF1a0vwsIfx62qNdaIds=
X-Google-Smtp-Source: APXvYqwuNhTbWq/PG0RP9JpS27Oz9nkPF9Zk/MVFJHItYQxkkX5GUEHZmZZM8o80I0U9hChw4rzttw==
X-Received: by 2002:a81:5d5:: with SMTP id 204mr2951452ywf.441.1570634875666; 
 Wed, 09 Oct 2019 08:27:55 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g40sm611863ywk.14.2019.10.09.08.27.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 08:27:54 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v17 13/14] gpio: max3191x: Utilize the for_each_set_clump8
 macro
Date: Wed,  9 Oct 2019 11:27:11 -0400
Message-Id: <84b39366ee561aa63214bf3e74716d821157c531.1570633189.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_082756_493566_3BE5F05F 
X-CRM114-Status: GOOD (  11.70  )
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
Cc: linux-arch@vger.kernel.org, Mathias Duckeck <m.duckeck@kunbus.de>,
 preid@electromag.com.au, yamada.masahiro@socionext.com,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, morten.tiljeset@prevas.dk,
 sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org, lukas@wunner.de,
 geert@linux-m68k.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace verbose implementation in get_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity.

Cc: Mathias Duckeck <m.duckeck@kunbus.de>
Cc: Lukas Wunner <lukas@wunner.de>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-max3191x.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpio-max3191x.c b/drivers/gpio/gpio-max3191x.c
index 4b4b2ceb82fc..0242c6187bf5 100644
--- a/drivers/gpio/gpio-max3191x.c
+++ b/drivers/gpio/gpio-max3191x.c
@@ -31,6 +31,7 @@
  */
 
 #include <linux/bitmap.h>
+#include <linux/bitops.h>
 #include <linux/crc8.h>
 #include <linux/gpio/consumer.h>
 #include <linux/gpio/driver.h>
@@ -232,16 +233,20 @@ static int max3191x_get_multiple(struct gpio_chip *gpio, unsigned long *mask,
 				 unsigned long *bits)
 {
 	struct max3191x_chip *max3191x = gpiochip_get_data(gpio);
-	int ret, bit = 0, wordlen = max3191x_wordlen(max3191x);
+	const unsigned int wordlen = max3191x_wordlen(max3191x);
+	int ret;
+	unsigned long bit;
+	unsigned long gpio_mask;
+	unsigned long in;
 
 	mutex_lock(&max3191x->lock);
 	ret = max3191x_readout_locked(max3191x);
 	if (ret)
 		goto out_unlock;
 
-	while ((bit = find_next_bit(mask, gpio->ngpio, bit)) != gpio->ngpio) {
+	bitmap_zero(bits, gpio->ngpio);
+	for_each_set_clump8(bit, gpio_mask, mask, gpio->ngpio) {
 		unsigned int chipnum = bit / MAX3191X_NGPIO;
-		unsigned long in, shift, index;
 
 		if (max3191x_chip_is_faulting(max3191x, chipnum)) {
 			ret = -EIO;
@@ -249,12 +254,8 @@ static int max3191x_get_multiple(struct gpio_chip *gpio, unsigned long *mask,
 		}
 
 		in = ((u8 *)max3191x->xfer.rx_buf)[chipnum * wordlen];
-		shift = round_down(bit % BITS_PER_LONG, MAX3191X_NGPIO);
-		index = bit / BITS_PER_LONG;
-		bits[index] &= ~(mask[index] & (0xff << shift));
-		bits[index] |= mask[index] & (in << shift); /* copy bits */
-
-		bit = (chipnum + 1) * MAX3191X_NGPIO; /* go to next chip */
+		in &= gpio_mask;
+		bitmap_set_value8(bits, in, bit);
 	}
 
 out_unlock:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
