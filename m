Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C0ED1561
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7em1ddWZOlS/5X9nXfj9m+NFK0UqTYcyU/y27z+PfSg=; b=BQ6HgiXMYCCDuP
	Id/Tr2VYRExr84BwuXIXJs92PVcFRKcF4mJYigcfJq7qc5N1jDS29BLJFePbN3M/HOKVgo/9EVN0O
	AlZkWfnWP+7Tc4FcPGC3QUbTfDPhS2wPjTjHGrZo7WPKTdNmlKK2uvjJd4apusrOomAuyTvJjS9cR
	M6eadQl6tUXPAdsQCsI1st149y5ldVjJqC+y54Z4XQg1aPVYlngK6XdeZgSvPr2ZEBiZmmrITYZnx
	YdhHxr8LnvCda1ro14Dg5KgaOJAoEapHe8WsuJ/+77L+MmSCToPPNuYHW0m0CdYqX629RhycuWdG4
	P8H9x6hqTjv+rkk4Kesg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFbr-0000xm-0M; Wed, 09 Oct 2019 17:18:47 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFYi-0006c3-Ci
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:15:33 +0000
Received: by mail-yb1-xb44.google.com with SMTP id y204so973940yby.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W+SY6yjQG6ah82xj2QYbshpM9aG1FiA4CAoNvKBotSg=;
 b=hrLusYNvJ1DQpbUkoBMHYE55rFTTPsIggEfElG93+9hHsZ4K0HixUYO8YtR8kz6lZm
 CKS/qJQQn0/+amtUVfJ0vE+dvYvR5c5t/9gLdGfh4hY6LdV+mamSJwqSiiNyKf/r0YlX
 7ihURWvZLqe8UCDw5CXC0i8bROqdWCiRbIk4GUNT9Bf7PEQ/4N5hqF1FNhktD49xgzgt
 pOtgirxnIkRfCzZGP8CcQq2RXbDaLSUpyasA+99ihYGzDnt9YooU/GaVzG3pcKX0ue5W
 g0IL9l54W4dw24j79wxLKUL/ma998/vwsxBb/mv+Hj9ORYGfaK77WF3Eb88DEIBqiA3V
 qvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W+SY6yjQG6ah82xj2QYbshpM9aG1FiA4CAoNvKBotSg=;
 b=fWnkezLBMCVBVuSPUkhGIVxPcmFf3R9/GitDVUVZBGuvPDiqwV/+U2YDNCF03PjaFm
 BcVBOkIgj1vldArr9dwS+abaYtszIYiLeIV+3h34CwKJfMl7uJXCpkdDPbrcl+L8m2p4
 +Dkmgyqu3XSbGkw3+e5urZWU8pii6QCrl1XY6Zym4n4AZ6qZONsRofd/iXGm/QEn06l+
 WXwbZU/dDnKePhwov+S3gcUe/nOATawzE+WLEQD4kgtfQj5RdE42coidhu40N26wU2kU
 SgaV+q2Un7a9yMjXRfztzoRas+R/8kueYraDxv7VznQ4oxuOG01c8j2oei7YaEdx0UAt
 3U5A==
X-Gm-Message-State: APjAAAUCoGKx+cP5QXEzLU6QCH3cMplwxBz5lcw3cwPMoYI2hp1L6SkA
 bc9D6JaNwE03TGuwKSb2WlQ=
X-Google-Smtp-Source: APXvYqwBPQgEIz1iAv+shQVmbFfhgFLw7r/9gS+jQhD5Ska0KC6Zn+TlJD16Y2mvIWdm9qJTJwx0pQ==
X-Received: by 2002:a25:55c5:: with SMTP id j188mr2791669ybb.5.1570641331036; 
 Wed, 09 Oct 2019 10:15:31 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id r63sm743292ywg.36.2019.10.09.10.15.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:15:30 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v18 12/14] gpio: pisosr: Utilize the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 13:14:48 -0400
Message-Id: <8a39ee772247d4b7d752b32dbacc06c1cdcb60b5.1570641097.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570641097.git.vilhelm.gray@gmail.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_101532_432119_63333C32 
X-CRM114-Status: GOOD (  10.55  )
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
 Morten Hein Tiljeset <morten.tiljeset@prevas.dk>,
 William Breathitt Gray <vilhelm.gray@gmail.com>, linux-gpio@vger.kernel.org,
 lukas@wunner.de, geert@linux-m68k.org, Sean Nyekjaer <sean.nyekjaer@prevas.dk>,
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
