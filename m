Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E39DCCC5A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 20:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKfbJ+u9YPDziib3xH+oCHAw82COpnFOKqo5mB/LBXY=; b=mnrvcetqUHqOcc
	mfRHVV63mcnYkwHXiuwdmQS8pzkApPtds59rVxRWnYm5cVhttoIg5RoqG9oito7HxsUtXXKLWQTeN
	apVrgOljwEGgrkTxg3CbJ85XcFpcVqBlJb472rrgFa2hNtM+89beDMTV+lIINvU9b4GBddwYdf5cY
	7Cg6REAuzddHkpTHBeBa5do3V7++niUd94MF1r/Jz6vYY+HagQvHUT+o7kf3maIuOXrAItRP4zS3j
	W0o0pPnadttqNcbY6/x3uiMu7RhPQX603DYha7B9h+qH/EXzftf8EmusXaG4JoT1ncBdnwFh0A+fu
	ODPjT7wv6D1kus73v1cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGoyv-0006AA-DH; Sat, 05 Oct 2019 18:40:41 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGow2-0002bF-8I
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 18:37:44 +0000
Received: by mail-yw1-xc41.google.com with SMTP id x65so3557101ywf.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 11:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GAGfzyUV4XhvgurCxyCR2EqX3tIH+KR8HXshRAb1W4M=;
 b=meaD6Qb1YIg6hcr2iqLZ8pfoGbUAfBru8ksrO1rw8GydtxqzsuPLF7PwiveLKzbKd6
 pGlTm5zkAteFyRUT9IpSydDfW9bZXcmMdZ51zp0MUETDvKuvROgbIRIxioSCanUuQBfS
 ExQZIAOJfwmH43UZ1ygPayLxPergba7VybdPOGyIRPEjlBJsId28lJEW1sVSyPiKMLvc
 3lfndLlF0urpGzeYeRjZd5JhA7UFq437C/IbV5gj8hugcak0lHH7IMadiPDbhW2k5Mja
 70sSxco3OpA3Pq6YSPEp4gD6F8PmXECwXWsqeiCHYCJUloMuUhInSBeJbwkTF0Bf4a86
 PFRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GAGfzyUV4XhvgurCxyCR2EqX3tIH+KR8HXshRAb1W4M=;
 b=Yjnv2Fz5+c6W7DgTEL5RSvAwn/+9eHJFd/LKZF9is3SwcmqttuXp4nVLUQexnynxvi
 bwpjtiK7E8Q0tGg/ID3WDyUeduW2/IeuHpeEXXlEjge4glMj6hFYFGY5T07L7pZFCa6R
 aJgfNuX5rdPKB+lf7GFVsyG9L1Fi0cLr8Dfnrulk8HBOREWJStAP+kt1RCCKN0Hs/z/R
 fk2RiEdLOJ6ghEl24QnC4oyQhfQgCTPm1xEnf+QLF3aUlfLbGQRylFnlmJajJJIgSrY6
 em6tPgT4+tA0EybJoIRI7S/g1Yz1dtXtMGlc9CRVyyg2m+HdkEOt2tH4PK0A2Bk5eYf/
 YMKQ==
X-Gm-Message-State: APjAAAWF4Zage/v3DJGeMv682vIXCDtTVOQops4ujHgpnzuQP2hShtaL
 TjjJXrjtufsXD2zROh5GIWg=
X-Google-Smtp-Source: APXvYqxEVBh3FLrxHXo5bgbmGdBZLrPOSPrV46xR9LTQFxsuxEXwqFrhKMSdyFzDUUS4tkuYrKJa1g==
X-Received: by 2002:a81:f20a:: with SMTP id i10mr4094745ywm.424.1570300659142; 
 Sat, 05 Oct 2019 11:37:39 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g128sm2376654ywb.13.2019.10.05.11.37.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 11:37:38 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v15 09/14] gpio: uniphier: Utilize for_each_set_clump8 macro
Date: Sat,  5 Oct 2019 14:37:03 -0400
Message-Id: <a1e0c618eefda5b06cc045a94e3794771dac92a0.1570299719.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570299719.git.vilhelm.gray@gmail.com>
References: <cover.1570299719.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_113742_591413_BF15C6C6 
X-CRM114-Status: GOOD (  10.66  )
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

Replace verbose implementation in set_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity. An
improvement in this case is that banks that are not masked will now be
skipped.

Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-uniphier.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpio/gpio-uniphier.c b/drivers/gpio/gpio-uniphier.c
index 93cdcc41e9fb..3e4b15d0231e 100644
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
@@ -147,15 +144,14 @@ static void uniphier_gpio_set(struct gpio_chip *chip,
 static void uniphier_gpio_set_multiple(struct gpio_chip *chip,
 				       unsigned long *mask, unsigned long *bits)
 {
-	unsigned int bank, shift, bank_mask, bank_bits;
-	int i;
+	unsigned long i;
+	unsigned long bank_mask;
+	unsigned long bank;
+	unsigned long bank_bits;
 
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
