Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18855CCC5B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 20:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7em1ddWZOlS/5X9nXfj9m+NFK0UqTYcyU/y27z+PfSg=; b=EbIFQKl+dDASEh
	ZmHnVREjTWTSoH46ko28dcyaAxOyhr0OpFoyD8jYRxRbNbm5O9T0KK+4R+xc2Gt/cvu9P4UaeH1rZ
	v4Hq3ZRpcB7e2mVJuDIty//0mmaTOEGdz0VxoCy2AX2jEc3ta4nupG+Bqi+Jc813tUJhoqzZmrcyG
	6BFP652Zh1E0ZgT62tHaZLRXXhWKbdb+akipOsyV0KjkMIWO3iU8yMaG2vhAReJjcQ1EC4Wydens8
	AbJZqMGqADpyDYiJgVdYB1QPxNdxohdHrxpFxogd9gb6I7/gGglNxVE5gKkf0h073dH975CfBwTE+
	VSdu9Map6UVRr5E/FosQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGoz6-0006P0-GH; Sat, 05 Oct 2019 18:40:52 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGow5-0002el-Gf
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 18:37:47 +0000
Received: by mail-yb1-xb42.google.com with SMTP id t1so1382783ybo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 11:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W+SY6yjQG6ah82xj2QYbshpM9aG1FiA4CAoNvKBotSg=;
 b=oMsGg3qjUioiVwxhy6HbptGdKpRZ+Vr8ul2+q5EGxqAzzrdugyaLhAkacOufI2pW40
 8synDcEOXknEqQ/HbNH7xsFJhoDA13XDQKN/bpAz/sDES4DQUSo5iueUu4IZlWm9Nz9j
 zT7i11xqojBXXC74ncw0mOKVvq5xMgQ76IlP+wNmzPAWcIJ37shgKGbo5u9DH5/HQZ9U
 mRqOD4l8QybsL4Y/nrrCMW5FxwqgyxE3l8is66umR0mp4RxQUqsKojgxPIHUmONRUAbF
 GhcslhrzQLvB5Nzp6+3R/7tI3EslIHshQZB5lW7EjiH6QoevFTjwwdTc4smVnDreb2ho
 YpVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W+SY6yjQG6ah82xj2QYbshpM9aG1FiA4CAoNvKBotSg=;
 b=mtjULad+qg4Pm4CUUsMshXz+YfWIdzYZudtI2D05p+jbhtvK9XsUP0RyPYvSRl9jnE
 vLxLzsXezkueJ37BKiNrkxXAdq1N7uDu3CRVdCzPNqI3tr5WkKrBBvPI8VO08tBP0/Qh
 GGLsd/WBS0z3jpaZOowqUVAeAnelXLjvgFh7iktqV44Hg3N191zvL41zWoBRllXSiJj5
 2sLFJ3M/Z14ZB6m92irsAa8JYsD/QvxfC8qDN232AbMoLEq21LE0ir9rb6cUwzQ46VT/
 +0RnYrG/GVFF+o9FA4l2kz1tnzZ+3I249dMoh2GjGylw01Oy1r0/4GKFkFp9fiFos8D5
 k1Lg==
X-Gm-Message-State: APjAAAWAXiTnKjNkZ4da7l3pLB8IZgOquVgX8J+r6yYGTSkYRECzPUXZ
 07MsfxdquMpwWFPxtG355RU=
X-Google-Smtp-Source: APXvYqzYIesCmhZv4GojWsrN/gedpRiqzq8cJBUpo5EY6y81pbrI4b8cFzrO5GvtJde6nGM7Tm00Mw==
X-Received: by 2002:a25:8485:: with SMTP id v5mr5805583ybk.460.1570300663165; 
 Sat, 05 Oct 2019 11:37:43 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g128sm2376654ywb.13.2019.10.05.11.37.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 11:37:42 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v15 12/14] gpio: pisosr: Utilize the for_each_set_clump8 macro
Date: Sat,  5 Oct 2019 14:37:06 -0400
Message-Id: <5f1623b622f5f8867cbae4b37d13570f1bfb3945.1570299719.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570299719.git.vilhelm.gray@gmail.com>
References: <cover.1570299719.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_113745_877686_8BBBE537 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
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

Replace verbose implementation in get_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity.

Cc: Morten Hein Tiljeset <morten.tiljeset@prevas.dk>
Cc: Sean Nyekjaer <sean.nyekjaer@prevas.dk>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-pisosr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/gpio-pisosr.c b/drivers/gpio/gpio-pisosr.c
index f809a5a8e9eb..9ab2c044ef52 100644
--- a/drivers/gpio/gpio-pisosr.c
+++ b/drivers/gpio/gpio-pisosr.c
@@ -96,16 +96,16 @@ static int pisosr_gpio_get_multiple(struct gpio_chip *chip,
 				    unsigned long *mask, unsigned long *bits)
 {
 	struct pisosr_gpio *gpio = gpiochip_get_data(chip);
-	unsigned int nbytes = DIV_ROUND_UP(chip->ngpio, 8);
-	unsigned int i, j;
+	unsigned long offset;
+	unsigned long gpio_mask;
+	unsigned long buffer_state;
 
 	pisosr_gpio_refresh(gpio);
 
 	bitmap_zero(bits, chip->ngpio);
-	for (i = 0; i < nbytes; i++) {
-		j = i / sizeof(unsigned long);
-		bits[j] |= ((unsigned long) gpio->buffer[i])
-			   << (8 * (i % sizeof(unsigned long)));
+	for_each_set_clump8(offset, gpio_mask, mask, chip->ngpio) {
+		buffer_state = gpio->buffer[offset / 8] & gpio_mask;
+		bitmap_set_value8(bits, buffer_state, offset);
 	}
 
 	return 0;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
