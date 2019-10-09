Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BDBD1562
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ja24rsCutY+DfvRhsWa3ceDPJWsIJLiRY090PGYzKFc=; b=ZvYF41S3F5d56f
	7ZBMQ0MRz6ZtqquzUMVMw6tNEsdwR+aZ4HiptwKf6MwbJs70gAAxq6JumY/+PDb8Klup5uRjMEL/m
	QnUHVEbp9JP7ZkJCOPiGxSFQ1jAfyKpkLp+IKln/cmcRcfnCHezler4t6rixof2bq/FuJ7uLU9vI9
	GXZsV9n5pvmTr5+/f6Iq0pxZSAxiX4fX/TaLdBcCxrV9gPPnXvu/RDEt2fHHdhh55VtowDp0sUhuJ
	ApA4OtnqtukdSgDrSiwBwY9Dshvh+py6vPc2XVNUoI4V8I2YjgQnTzK+XBzD/aCTSg6PhRQf78fm4
	T1/7HgheQeL2uTi4iz0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFc0-0001Co-5a; Wed, 09 Oct 2019 17:18:56 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFYj-0006dW-CH
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:15:35 +0000
Received: by mail-yw1-xc42.google.com with SMTP id d192so1100333ywa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OQMsvrMqAN5cYMrSu91Pu66B0Sg+HB0aWPXdvZz2KcA=;
 b=PGJQlbBDuENA6RKdMPrsxNZh6nst1zCDQfAK+p2cso3insZOWY8FJEwOLv8XenLtXO
 bGBQwd34unyuouDzIG7HmrZIvPHnyWr41NSFvJAL/xOS82fgD1NfhseCwhfw2DikqEu5
 eVmbp/Vn7KgewV0075KN8zTpeX7qMQSNUokumcZaEeZsJG5VO/PfXYDcOLC9JCZ890KW
 y0sQAJpfgG+FsGKD3Iys1Y+e55c+N8gknc5iUoa49tq8VWF2un0vL+D3LELYFnV+GDFv
 gzgYMpXOTFDKPjhHGuCRvpkZSc1A0imSUuHlDqkMGLTgqTAaC53i29PN+CEA9l1XwD0+
 tT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OQMsvrMqAN5cYMrSu91Pu66B0Sg+HB0aWPXdvZz2KcA=;
 b=b/Q29BBBERGo4tpxnX4LExBnxDgkawkBr50+NVAEa/2yfqzY598gY8LAza7zR+pIY1
 4VYNVtkCyPX1Yk4cR3/QnrlKL0NJ5C1YBKRrhnd3/+Tgsm4HgQJTLXqEP9kpz3iJJepN
 wRNPFsJufMuQiVibtl5wZKyiO5SrT1kRycvQpkGSeolLH17F4TuSOU1BJvsEoEGSrY+y
 wdTrXcoLmaoP0CQTNn8nn/5ZhekXEsOGc/S5+mH4ODn/2JxjDjmj8gXIBg0/xx4RGES/
 ETYDeYHl01YCkPbdaKTRu4jjPLVMPGayNjDeO3Q2wKMi2VRHZbn5kK0n1hySJKrMcB/x
 tbww==
X-Gm-Message-State: APjAAAUyw2RZA4ugRcvD210vHrG6+LCmLw44XWnYzYa0OuZvars3OO8H
 aGbGegZmj9ZQMuhuCbp5jck=
X-Google-Smtp-Source: APXvYqxPf397BWAZAXQxl/ej3ydag60BplqntuCWiFdPKrkxGZDZCFC0ugMw5RZO4Kunw4jd93LwwA==
X-Received: by 2002:a0d:d042:: with SMTP id s63mr3399648ywd.356.1570641332590; 
 Wed, 09 Oct 2019 10:15:32 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id r63sm743292ywg.36.2019.10.09.10.15.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:15:31 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v18 13/14] gpio: max3191x: Utilize the for_each_set_clump8
 macro
Date: Wed,  9 Oct 2019 13:14:49 -0400
Message-Id: <c2b1ed62caf6fce6e5681809a50c05ce6acdf2a6.1570641097.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570641097.git.vilhelm.gray@gmail.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_101533_430299_9793E142 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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
 linux-kernel@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 linux-gpio@vger.kernel.org, lukas@wunner.de, geert@linux-m68k.org,
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
