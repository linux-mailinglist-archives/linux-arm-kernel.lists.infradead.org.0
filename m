Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5ECCD2B0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKfbJ+u9YPDziib3xH+oCHAw82COpnFOKqo5mB/LBXY=; b=DiBy8Sn9ecNwPn
	l3ldZauKgOry3lsi9D6iGoZlMaVHaKhnKw7fP8CXH2jBg/hNs3jfYM7PO6r6LU4zAFh71ODrKcARf
	gIvkmfU1l+0LuGb7xkF6zlaVy+pE40Cv2RTjvvdvTE8Jt/7HjwYczPjdAFdRhwaDGsCVxGllGaQOj
	ghqS1+J3DwIpsiV/kaa1GIJvThUMDFLDnFQTTPmJQrTwXdzVxSgMrrkZr+yv1qP7IvzojrlyPsO+W
	wlbyTJQ9DSbqY50hWMEg8mfT5upw9ddHf75biFvevhSO4aG1Xnoe43f90+T1asJTK4/OjRGAxImHm
	geIIjxnbWJUphFN1jXxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8Ei-0001Rp-UR; Sun, 06 Oct 2019 15:14:16 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8CI-0007vN-SW
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:11:48 +0000
Received: by mail-yb1-xb42.google.com with SMTP id v37so3808611ybi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 08:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GAGfzyUV4XhvgurCxyCR2EqX3tIH+KR8HXshRAb1W4M=;
 b=GtS6gs70VznAEpE2zLW1HedOyrDMpLzJ6UeoorAujopSa+qhwD4xHWRXDvRRAag8ec
 BIBJF6kT8KUbQj6YnDOh5lhx5NXR/lmeOmS7WUiYvEQnZveYblSgpxEcmTDrO3FVRjGV
 evXGitZJ/SL52CNaHwt7OoxAWvFw7FcX2QJgUQznma4XmqSeVJSETalBItQb8XU2qKhq
 QVlxodWNhRAUek3TjPVeE7Ta7nq4MzvQB0cd4Efu+un9Z2Seu30mePZj61R5PrGuHvvE
 uooT9HKxO52RzljoGFGHw3IWoJeQNI05NkX7fLoccXAaiJm4V+rkbW/rmaumdbUWGjqh
 cY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GAGfzyUV4XhvgurCxyCR2EqX3tIH+KR8HXshRAb1W4M=;
 b=Bni0/CAejlwA09TfQBphRlwxnXiIzQLEkKbN3RVr4zZhddEXbM78Aiwcjjh9ZTXH34
 TvdDzbXohuNsYmgxCJkwQv3GvB0VNbN+fxPfKqA+G0Qp2ns8/++Gr/TZE32602BkxHho
 UjTFLK+Kk1cwEfDADQJMGs03iZYyU3SeByhw3/naAF8opLo/F/mqMmrqdZNiCKl9M5iZ
 vWTA9FaRBpuJ/mov2djvwJG1dyGHM6zlTQI4uM2HrCEn/oc8XH2RgIO6T4G+3wXTXahg
 Hl8icp7AxY5KWBxHv4QggVLMerk1drtFvR9+m2mWPelMzbGnG/ErWBVjmm7MV+oRTGmk
 0BIA==
X-Gm-Message-State: APjAAAWB1D1NJfX8Kk1mmjru48JEEVMm841k7aJplEOuosmGSoBmHrdV
 bTWs4nlNDC+RHrSFlh+aAeM=
X-Google-Smtp-Source: APXvYqyq3uVVL9kPfmFGH4SOWTus7M7n/0M7rzZEKBUlMww+5mkAvPmWOzPbLiX69cClqOpDe2/zkg==
X-Received: by 2002:a25:76ce:: with SMTP id r197mr7978156ybc.158.1570374705731; 
 Sun, 06 Oct 2019 08:11:45 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id e82sm2662434ywc.43.2019.10.06.08.11.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 08:11:45 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v16 09/14] gpio: uniphier: Utilize for_each_set_clump8 macro
Date: Sun,  6 Oct 2019 11:11:06 -0400
Message-Id: <158460d4e9cb33a9a29aacf9596ac65227b5f2b1.1570374078.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570374078.git.vilhelm.gray@gmail.com>
References: <cover.1570374078.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_081146_935963_126FFE47 
X-CRM114-Status: GOOD (  10.80  )
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
