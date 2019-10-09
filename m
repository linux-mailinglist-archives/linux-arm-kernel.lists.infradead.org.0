Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC99D12CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7em1ddWZOlS/5X9nXfj9m+NFK0UqTYcyU/y27z+PfSg=; b=NwSm4z2lA+mR8w
	lvVRvNUW/cESlNxSgjPfAHt0SmOQW46LPEGZCC21TKkhXxsEr6qu9eJrLP0ca9mNvDK66cnwoUXHj
	F6uprG1Nf+hlLwM5A6Vzzmj541KTKsR3RbeRZlL7sRv4obNEDOm5U+ZHaSLvYZ5g/0mRlY4vvGgx/
	ShGGCC5e+kJbQFn2nr3YlYpZk3kzi0kWRPDfzhcMxzyji91IXfEyuLjqMNIjjqBnLGf379TkX/dv2
	a4RftDLTYQdF0xY6cq1xEzMth8Itbz7KhS48N1nYifopRsxHRT8fuGWyG2L+z83Zy7m1hbAGho8Hb
	AWOdEPwXYlnMDZXyDa/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDvS-0005T3-J9; Wed, 09 Oct 2019 15:30:54 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDsY-0001lN-M9
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:27:56 +0000
Received: by mail-yw1-xc44.google.com with SMTP id s6so959623ywe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 08:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W+SY6yjQG6ah82xj2QYbshpM9aG1FiA4CAoNvKBotSg=;
 b=YytU7O4Mr0gz7kyPQD4eZtBeA5dJSUNfBOhztctdYxmLpl7HVtMLdxEx20d9wYV02I
 T7NN/5qhMHUYYJfhzJKA3JVtpElQDrumt6yQPI2mja+XbTCSpl2V8kCJ7DXU20Q7S6NJ
 hIzCoosqtECV+MMvbIyPyjs7dsKOgCuOlwL+wCOInPovvX5/0/A1aQGBI6vGS0FA2Vy2
 UcA1uSnuRf7hgNzuaRIpr9Kh9NEIF34qHnRASpyn8OrRGC4EXuEwGBpYr4jB8Vjm9MfE
 Fg9IIDFjgDMapqezD9Nz+n/lDgAKFhZxNfbRoRZY7miIbYS/CP7zTCTN3gOlk3d53I99
 liDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W+SY6yjQG6ah82xj2QYbshpM9aG1FiA4CAoNvKBotSg=;
 b=tSDqF5NvS54xsYjK39cBUxfW+ijJodkoVdnarnHA12VFO/YMDKoTGomUNbGTSGubEE
 xUun6EISNXSqrUMyyStooRr8XGwPZo2bqPHGN/WxIQdBHEhmivLOQyB22SNAr0FU/VUb
 79z2SXWBvYlE8mmgTuKAjkcbtM6RDvWqPI+jexliohQUdEuhkctaV9nfm/SMkdA6yX3O
 SpPafImdzAmK69dBMvPFoyJDvGSSVdkg5URsKSpxpyjJSBK8KQ6CsoqRdVl0vDnP2LJp
 HYKGcOdo/1YGqPntWRcHNEVCU5pcZnCm8YNFDVrPcao3822bx1yfy4tBat+ixfRihAAU
 ujPA==
X-Gm-Message-State: APjAAAVE1tSJevk11TbKt2ZWFEME1lAKXPw0h+4+Xn0T9IKgSnoHV+yM
 rSMS1435RY3dzJlaXom9Pkg=
X-Google-Smtp-Source: APXvYqz+pLjuNWlBOfyulbj8EF+i7KB1FzRSxzXYbcY2yuK76RkXlB0ER4nJL58X2PbinSF8InFkgA==
X-Received: by 2002:a0d:d7c2:: with SMTP id z185mr3088421ywd.156.1570634873928; 
 Wed, 09 Oct 2019 08:27:53 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g40sm611863ywk.14.2019.10.09.08.27.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 08:27:53 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v17 12/14] gpio: pisosr: Utilize the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:27:10 -0400
Message-Id: <7a6080c8fb003ae0fb6a40da103faeabcadb0204.1570633189.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_082754_732745_84967548 
X-CRM114-Status: GOOD (  10.58  )
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 yamada.masahiro@socionext.com, linux-pm@vger.kernel.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org,
 lukas@wunner.de, geert@linux-m68k.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
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
