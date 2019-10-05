Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57ABBCCC5C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 20:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DElWf7UNAKSMA/HL0uOcJqIXD5+rxrllhgch2PKAZg0=; b=ftym5RZIKPWHCA
	lrkYZO5m9KrEMS9mJIjhsxQOfmbV+sINP8dwXjlqN31H3J3giIfe8ShZHy0710cHAAAzWmqW9Y/sr
	dGEdmygMZKH+E61CjU+tkARbziUTPb+atWILudTx5l97m3vkcfVrVNBWAJqbG9YmkOcgrv4aqDYnp
	t8oDqOwRqMYxXXSOdUHRduTjPEfrfwyFg3g9QtHl7BCY8WAdxgMrSrkrSTS3QUkB4C958+i8ZpL0c
	pkUKY7ygqhuUwygc1lJ1c716chnf6/mRDwqtuwaLf/SxNt6esvIM74dkxDwSWKrxDpXQjsXDrnG7s
	f0zFUWTDmQsjhaazENCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGozN-0006a7-Fo; Sat, 05 Oct 2019 18:41:09 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGow3-0002cV-9g
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 18:37:45 +0000
Received: by mail-yb1-xb44.google.com with SMTP id y204so3256836yby.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 11:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mBleGApOd9DY5AB30uyK9JEv+41JBB1+F0GtLYOX3MQ=;
 b=egDthNlO5s1umgtiK9FXRVpk0H9GX/8Bk4QnVFd0taoTP2G2W75xKExNc3DItM+yGe
 NT8ZFF86AYwqK8GxzNgtGfExj3BM6LRtJtvXUjQGElwEaOyAUOxa+xIjsiKjl0UXsWfY
 avUDFy9Zwk9UltQSsG5G50UP48SUbiLa4ssfOdxMbzkCKZf/6am2a1pFsXKNZJhvSVeT
 +l8uTf0oeaRTNeMcqeoWD0MmN6ci7lpMf+OdwvQDT6IaR1yLqnP0Begz4bTlAla2unZi
 oB9DRQKVGtvx+m9cgrXsAVAfpdcI5QWz7RxXMWjQVTwYa+m7XO+qHa745Xv3CgjIZ9ir
 nMNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mBleGApOd9DY5AB30uyK9JEv+41JBB1+F0GtLYOX3MQ=;
 b=kRmeoEoWPzeXpEAHZPHm5+qEeoQqi9RQ9ZLwprhopTRz416/glEgleuPdwwi39W0m7
 awSPgHo2mHIpmem2e0ULIcYCar19ADL0fBVhFFlJyjfN0G3txwq1DWH07Zmnd/0l63aW
 gZcWIJCt5w7dfFqlmN9XQHr9f2gStdrCPHd2sv/6S7pIKCa16qk4b8t2vioJtv5WyUF3
 bNLOYmF5YR3jt5FP7xkcK8J0EBqYDFGHzaU8LZgsnGe4Tem1lgSfVdD/GepTNqgxd3VX
 aNi62gb7ml4fHKdJHV7cRmxGa3+cDBHkJySij9zw6Sxx3KulQbxd/4x8bo4DfwJ/RRGy
 6ifg==
X-Gm-Message-State: APjAAAXvuaY8UymtxGtx2QIB4SgpL+2C+sdbWK9BmZ03SIDANmfh25W8
 KICn4ya5NVmKWub64w42s5w=
X-Google-Smtp-Source: APXvYqzKxM5mCQgIjs1RAvEfJcvGiax7iLdf5W+jgMhBy9kkswJ85EPFlrTvT2K6ujGjO9LBRrLhgQ==
X-Received: by 2002:a25:9886:: with SMTP id l6mr3641207ybo.104.1570300660641; 
 Sat, 05 Oct 2019 11:37:40 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g128sm2376654ywb.13.2019.10.05.11.37.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 11:37:39 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v15 10/14] gpio: 74x164: Utilize the for_each_set_clump8 macro
Date: Sat,  5 Oct 2019 14:37:04 -0400
Message-Id: <c22abead64720532d5fb93575fd9e5dfeb573a21.1570299719.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570299719.git.vilhelm.gray@gmail.com>
References: <cover.1570299719.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_113743_529035_830DB27D 
X-CRM114-Status: GOOD (  11.76  )
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
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
