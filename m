Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D2ACD2B5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ja24rsCutY+DfvRhsWa3ceDPJWsIJLiRY090PGYzKFc=; b=XxC/8k4dDn0k8E
	vmk6d7wuvA3DB7AySfRgR2xZpkWRiWmviHcJ6Py7PoBUtH5i3eU7dF5DNfL9PsnAlHLZmlYwllKtf
	LJF2TnldxCove7AumNQIHoWJ963YsWsFCuvNHZX3ITThyhD+XIb9kepWsXSXijpCgoksWdeXQhOcc
	A7YW4TapI+5gmgipt2VyoftSFLL144PpluJLDiXgVLg7brcXkYELUwaVnxJuONOru3rIbqnkXSby9
	QBe4sZdwJJShbZH2ioj23dsM3BBmmne9RAPey1sY1q9U6jURiXLWMfwqw7pjNqnSCpwD4usCOuc/f
	20kyRsex8VzlRyRBZdsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8GI-0003tb-K1; Sun, 06 Oct 2019 15:15:54 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8CO-00080L-Ay
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:11:53 +0000
Received: by mail-yw1-xc42.google.com with SMTP id m7so4184424ywe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 08:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OQMsvrMqAN5cYMrSu91Pu66B0Sg+HB0aWPXdvZz2KcA=;
 b=HdegEL2fpTV5hm7hUSkkzZ4H15/08rNMz0M2X1pafGXHTQhJLsKPHNgwbtw6c6lfg1
 SMO5McnqQP8Ykh3+jU8j9FjTNMKFttnbpN+/DgyhxRLu8di7tag1tcKKHnjrauFAZ1/a
 RgF5TX87i7ZmA8M2LsMwM6qDAp541QBZSnpjTi+o4XszUJDLj5+nMjvMGLtqEqfebny8
 3myOdCVECCqS6vzRlbl/QMtqj0gaooDXwjQOUhZhtP5+8nxHlWw5JrwZgIsHTCwTqm4s
 sMDxDPdORADs9WMTq9N8pDqXpwvAZ8vSUCTDWrQQBMoI1v3HYoMWj5ACxbSPCGOnDOjq
 EBWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OQMsvrMqAN5cYMrSu91Pu66B0Sg+HB0aWPXdvZz2KcA=;
 b=RqQjFuGacezKDm4u8N1LT2ZxWI304bTki/TWnI/2ZyT7vnahID9AnrZHSgMOimNAkS
 0zfdEH1u/B/lhbQBZcWY5KW3fyA6MQPDgN20s3436r9LG32OPjvcv6T8HiHIVw3/l/OL
 KB+Kdv0TxOcWAFJpF0c/J0gXRh3DptgtY1eQ3ecf3Ib/t/GjV/cZYJdRJbDMGuJ0FmFe
 KxE3dON7pQIut6XKkPaC3Y54PFIONaculZs7n0NMVA/II+32AB5RuGPvR8c5qY6JWyUj
 xFmVBctb5Tl7B5EjLU/scacyPrYppB/p5PmOtbv8sfnLLPmo2vPtW8FpUEJHjDNJfiIO
 /eTg==
X-Gm-Message-State: APjAAAV8J/GgQrkHRGUDByfTboDQSsxmhyH5UuVvvBMHwd6QNg4d2IY/
 yKQvdH/8j+eSAtOWVaMKtjA=
X-Google-Smtp-Source: APXvYqxfMNyInhJxsFvLfYNQNh5jJ/+1V+3JSPgN+LhsqCDG6NcJucB+B2+9PrG0NdChfsJ9jp4jIA==
X-Received: by 2002:a0d:df83:: with SMTP id
 i125mr15974641ywe.260.1570374711014; 
 Sun, 06 Oct 2019 08:11:51 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id e82sm2662434ywc.43.2019.10.06.08.11.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 08:11:50 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v16 13/14] gpio: max3191x: Utilize the for_each_set_clump8
 macro
Date: Sun,  6 Oct 2019 11:11:10 -0400
Message-Id: <821e44729c9e561899b9c746b29bcdf56201aca9.1570374078.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570374078.git.vilhelm.gray@gmail.com>
References: <cover.1570374078.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_081152_383500_6FA5D330 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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
Cc: linux-arch@vger.kernel.org, Mathias Duckeck <m.duckeck@kunbus.de>,
 preid@electromag.com.au, William Breathitt Gray <vilhelm.gray@gmail.com>,
 yamada.masahiro@socionext.com, linux-pm@vger.kernel.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org,
 lukas@wunner.de, geert@linux-m68k.org, akpm@linux-foundation.org,
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
