Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558FECCC5D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 20:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UyuVydhqHaSzN4tFQidegzr+wiXWzKVvW37Gisimrw=; b=d56s+/LkasGYFx
	wuuMIgNOLTNS8qI0zuBD99e561bZxDkl8393AFriXMjFCmUHg3e9oSAkmE7SxFPAEDKpuyN9D1sYV
	uEQky2+tN5flMmi/xxFdMi3x5Zrl1V+xqBLsCEOZ5hcHYQA0dDC4ax905PhU0SFQPNBlxDtHHP2ir
	Ij7PtfdygnU7APRQ9KZmu/Jw0BHV30Pjbj252+VnJInC7CmKldkWXRm2+QJR3h7ZN4nJ0LCev5FjH
	9hOlfgHJ6Typ/CrH9IRJUBqfFssPcItxUHiX5pUoN3ldAYEz1DY0j5kXXPWyaZtNtNZwB4jBrkyQS
	tI2RVFuqNlQakAPlOTrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGozd-0006sO-EG; Sat, 05 Oct 2019 18:41:25 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGow6-0002g9-RN
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 18:37:48 +0000
Received: by mail-yw1-xc41.google.com with SMTP id r134so3586914ywg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 11:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8x7m/5RR5niKmXD30eK9BE6FJuZuruIF1z3Nwo21nyU=;
 b=mvRHq/HHO4GwcB1HoFMi/wo7FgueXzw5eKqIi0VCj5Hknn8KLncdCqbUBqhHl8erer
 +FI/3+oyVjVmaC2UL7n5fYS2JvrqSte+13DDCqfbyLy5TRbBNaJ9REgEkl1MqMZHAtK0
 1JMYaKTP3QlFopvATShTgW8I+iUra17eqLQAVLi0ziaWtcz1eF05YweLsJ1ixa7/lJ4H
 IAokoM4L6iy+VI3kJpPJ8MdLZ19m2PVNWoz8O4L8jeQuS4Vw6J+2n9NXYj+UIBkhaAe7
 4aJMsRCnhmO+ofDCpSq9gpNgpp+DnFmt7Qz11cbMNGH5YYo17Yo88LeKYk34MGGrJUh8
 d0jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8x7m/5RR5niKmXD30eK9BE6FJuZuruIF1z3Nwo21nyU=;
 b=LnDEcaC5ih+oHO3fl682aXH/dfo783IbLmSaFQQMuFgZ7PstEl0pRhpUA4IZvLp532
 y9t1l3tfOHxKqoPOYhWeROcV/f62ygevbAag12i5rYXq6ik8/yvChi5RSxkP+uDRkbsE
 fjAUOhhRgZQywuil7lxyLF4Kl8/ZP9vz/5DY4foEv50o7J3/sFgmbHTmUKNjFb9kwJgB
 Tt+39yx/RW6zm3dyFsjwQJzIWjn6aFZ8Ik8P8fnfuTVVMperAi8YjKCpy6xivlaVXB2a
 uPKBwrP2TTGC1oIbOx8PiwfjrV32u0KE2WHYX0wz9m+UMdD2u7ujkf3M+mq5uRp1ICMM
 9W2g==
X-Gm-Message-State: APjAAAXn1bxEYQOwsKTJLVRH/ar8YFVojx6+vJYqUvuUb9xeTsb8ALRg
 G9PiEI94uB+4PEXqmejZnYo=
X-Google-Smtp-Source: APXvYqxJqA+8g598YzD00MFUyEN8LQBOm+k91SJoO3klCvDIc3o0YrxJdN4P6a+3u132qXedMXvttA==
X-Received: by 2002:a81:bb42:: with SMTP id a2mr14686782ywl.385.1570300664365; 
 Sat, 05 Oct 2019 11:37:44 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g128sm2376654ywb.13.2019.10.05.11.37.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 11:37:43 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v15 13/14] gpio: max3191x: Utilize the for_each_set_clump8
 macro
Date: Sat,  5 Oct 2019 14:37:07 -0400
Message-Id: <f07b6bb5619ea1365cc58266254a7b5be65a9082.1570299719.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570299719.git.vilhelm.gray@gmail.com>
References: <cover.1570299719.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_113747_041533_69A98F2A 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
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
index 4b4b2ceb82fc..9a98ecf625ac 100644
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
+		bitmap_set_value8(bits, in, offset);
 	}
 
 out_unlock:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
