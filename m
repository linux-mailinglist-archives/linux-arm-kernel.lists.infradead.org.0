Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B6FD155B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93jN67N+NumrkkxGxsUvYIVf6DRDdmZ9+kjSrrtm19s=; b=JZz1eVWEJ2nk6u
	WD7AtC544AKokzPjmiyjeUXufapqAbciunItGmEuTNtS2iZvtK6RdkYR5GXl8pPPEiXxgjq+8oQH4
	/As8vVQWbm9y6wKgVksoUKyfiXo+c12ePlfo8yAnoGhkUabWMK5ZkkLmPGOt8U3qTpg5FQrVt+6du
	JWu85EhDqWbDhGmnAcDQgmYweQM2peuM/syRwNXz8Ii8kqm0Ww8xZ4NbHJVK0oIOGPw5huHzXCqzN
	qwdebLR4tp2CHPO8B1fP92oq8sDl8zv8l0j00EvpSGwpEtrsK36/JCROUiGF6jCe4GggnKbrSlDJZ
	QptyZW4amtLKeVnQzypA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFb7-0000JC-40; Wed, 09 Oct 2019 17:18:01 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFYd-0006QA-La
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:15:30 +0000
Received: by mail-yb1-xb44.google.com with SMTP id q143so968603ybg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sDpmcrsOD06XGrRt1a/jJQziXNR25OqwVQScSY5C/BU=;
 b=WL30k9ixHGGt8In7/erRM4QBReuvVT1dbjM4Z0OyJzYaLZ+yVohVHy/wwyVdiVrTzd
 GYBbyy6Reb0J1J9uAB2F2Zz5kopZsJyCPzW9R0TH4I0XEjXjmBOI4Uj4DhBhYmf9tRoU
 zOd9Rd1OS68jPLJkd+CnTEyokvNBvhOk1y1hFmbQc8gRO2gIJGuFBb6ExmD+gLfofmAw
 y0Rb1W/AYTay2Qkrc2rMknbwAWhg/IO6bw5zW6mrmdCy6cyfqlr3utyBexyGA3kNsMAA
 o3OiFFAL+6YXoBquyj7iomzrK7T0tH9mgamUAxHb0fvisZcWwfqh8bmI+lgXPFyVmzZS
 h+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sDpmcrsOD06XGrRt1a/jJQziXNR25OqwVQScSY5C/BU=;
 b=jIGkGlIi5L1WdJ1pO2Ax7ma5I4xKzE8LEF5Ds4F7J7P/fF8aIlZGyDby8R8H9Pj6xU
 cqC9gqgNsdvpnIIFfvTKZzPzPDfkApJJaae5JldAxJY0nhB+W3SYYWLYDsqhh3KISBpW
 wQSFzmTc9uchFtxqQ77xbfTSE/4v5QteMT44HT5GX2WIjdfhI3owwXUCa3t21ZVqWBxu
 totfwNJ1FfJ/+IMKkrdygifmFvwLJCXEHRooC9+Ysw0/OFu97wiEdriqmia/yUi09wvM
 h29eLBc5CN89lEFTzR9aU8kNtrrmCo3YPRN6WAbPleXwYXuUgaZRAP2UFPHBg34C8kGw
 mr3g==
X-Gm-Message-State: APjAAAVLB5BKKz3U5wJ7f95JWbjHMo8FLkg0MHsDGtpLqM5gMU/JIdTU
 P0RWKghGZYAD8ACFclLSL5o=
X-Google-Smtp-Source: APXvYqxaUc72YqJJOgvCdh9BAysNa4HSdJyOk3js9wuxG2zail3AaYZG6cmfZj4x10MtXUR1wfm9OQ==
X-Received: by 2002:a25:30d5:: with SMTP id w204mr2813662ybw.382.1570641326245; 
 Wed, 09 Oct 2019 10:15:26 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id r63sm743292ywg.36.2019.10.09.10.15.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:15:25 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v18 09/14] gpio: uniphier: Utilize for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 13:14:45 -0400
Message-Id: <5b24887e97f3093e4832d7c50a1093f537e91ab4.1570641097.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570641097.git.vilhelm.gray@gmail.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_101528_107796_702C01A8 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
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
 William Breathitt Gray <vilhelm.gray@gmail.com>, linux-gpio@vger.kernel.org,
 lukas@wunner.de, geert@linux-m68k.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace verbose implementation in set_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity. An
improvement in this case is that banks that are not masked will now be
skipped.

Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-uniphier.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/gpio/gpio-uniphier.c b/drivers/gpio/gpio-uniphier.c
index 93cdcc41e9fb..3db9c41b7954 100644
--- a/drivers/gpio/gpio-uniphier.c
+++ b/drivers/gpio/gpio-uniphier.c
@@ -15,9 +15,6 @@
 #include <linux/spinlock.h>
 #include <dt-bindings/gpio/uniphier-gpio.h>
 
-#define UNIPHIER_GPIO_BANK_MASK		\
-				GENMASK((UNIPHIER_GPIO_LINES_PER_BANK) - 1, 0)
-
 #define UNIPHIER_GPIO_IRQ_MAX_NUM	24
 
 #define UNIPHIER_GPIO_PORT_DATA		0x0	/* data */
@@ -147,15 +144,11 @@ static void uniphier_gpio_set(struct gpio_chip *chip,
 static void uniphier_gpio_set_multiple(struct gpio_chip *chip,
 				       unsigned long *mask, unsigned long *bits)
 {
-	unsigned int bank, shift, bank_mask, bank_bits;
-	int i;
+	unsigned long i, bank, bank_mask, bank_bits;
 
-	for (i = 0; i < chip->ngpio; i += UNIPHIER_GPIO_LINES_PER_BANK) {
+	for_each_set_clump8(i, bank_mask, mask, chip->ngpio) {
 		bank = i / UNIPHIER_GPIO_LINES_PER_BANK;
-		shift = i % BITS_PER_LONG;
-		bank_mask = (mask[BIT_WORD(i)] >> shift) &
-						UNIPHIER_GPIO_BANK_MASK;
-		bank_bits = bits[BIT_WORD(i)] >> shift;
+		bank_bits = bitmap_get_value8(bits, i);
 
 		uniphier_gpio_bank_write(chip, bank, UNIPHIER_GPIO_PORT_DATA,
 					 bank_mask, bank_bits);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
