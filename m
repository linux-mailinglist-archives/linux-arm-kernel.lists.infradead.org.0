Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ED21B88C2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 21:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1guKCo1yR70A+vOPYmPPogVari1pffNGzo/5g1NLbE=; b=kB4wwTxNvNSRrN
	/dWNKHNcrjdD7x7gE5qbIfKh9y8JtHajWDh9s2RAsRer/rP3dDQkRqNWaJYJOyguD8HhqnRBg71oL
	orcWZREwjy7pW2ODFXWniSS6MRkrYCu7OTmSNBqOob+0NIX8D23lzKdCgwk/C6J7khds+BApstuJD
	Y7ltUIAaqppiHORoBfrwy3YSPn36fXHQFJR9u+bSgk0bTCZ1J3WdeNmB1f4IcxEvg2bXO6aeXm85e
	/eES3lDFMCaPJQ9ojdb2177AcugV3oimwhrxnZw0kVqNz9SYLpe+BcGDymjpI+SktR8cE/qkufz1I
	lz/yAWfIbv4D9ktF3khw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQ8x-0003If-VK; Sat, 25 Apr 2020 19:07:15 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQ8p-0003Hg-4S
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 19:07:08 +0000
Received: by mail-pj1-x1041.google.com with SMTP id hi11so5361837pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Apr 2020 12:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Y/NNmr9bRfvPdNCbd+uL+8dkgb0D73+tD/kL7PyleYU=;
 b=PQK8eKVZ8EJ4dDmmnATuwDz2A8Eai7EHC03u2DFEq0rNUdIYSn+P/lH7e1OMDEUsob
 eOW25mTNthZbCB9AWDVbCf+4w1yyHJu3NGejhhqO1BgFMsIqZjZmBQKNvRmVmDoqbENm
 jX/GVzHEGstGqNH2rEXLNNU5kmpklBeDvcbsNVkgviUG3iuQWnCA9Vv4AV2G5S/5zRUV
 BmK4GBnrxT33O5kkm/YS8tq5dO2iwJkdOxS6JuLuiHPUzhaqd6wq1BmrNvZxulsfkj/8
 YjT+qyL0HW4YUdRgaMHjkkXSlfEDogImNfd+Dfn6VVMbdfjiqHkbWy65b3Atpi0RL+lX
 QXcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y/NNmr9bRfvPdNCbd+uL+8dkgb0D73+tD/kL7PyleYU=;
 b=ueQX+9X81tWYbT7hd1ukTe5gu/8EtIwZyu0Xe257wUAUDETcpPkcR177jR8yI+1OZt
 JwJ1T/8jQRSMeUOW8NCZR5xG/25wOWZY5MGn2akq6vsBc0R/Cfxet0yhNAVReKFku2zJ
 mcHPHJjuBbUi11oixMDmCVq19MPRiQJkeJmMAi8ZtHwx1QkSJSGsuoiyqO5wVdd3clhu
 QkTD6IVsamueLW6ZjBrHrjQwaI07z/YYSQX5TzL24vz9vu5ePRZZigU8/lft5yRsG9bq
 Tu8VFhN9G5FTUmINZaPI+13HqRy0ZTlHvhFMtZCj71t6VCLzhXVRkUw1mGo/b0orJIxM
 TWKQ==
X-Gm-Message-State: AGi0Pub4q3BkHPlqDwiYeLYPwC+z12Gu7vALA3iNZTR4tICoyvXJA9gp
 DkdD8GTjpxpEkQZddQDUG2k=
X-Google-Smtp-Source: APiQypIWyIaIIrEI3kjYuXUwp7teET7laXO2B1al+v5QXj5cr9mxoFyweoEuOleJaRu6bnIGqW5ZAw==
X-Received: by 2002:a17:902:8d91:: with SMTP id
 v17mr14786128plo.53.1587841626457; 
 Sat, 25 Apr 2020 12:07:06 -0700 (PDT)
Received: from syed ([106.223.101.50])
 by smtp.gmail.com with ESMTPSA id q63sm8501398pfb.178.2020.04.25.12.07.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Apr 2020 12:07:06 -0700 (PDT)
Date: Sun, 26 Apr 2020 00:36:59 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: akpm@linux-foundation.org
Subject: [PATCH v2 6/6] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <afda24dacfdd33c03acd3371ea02692d8581396c.1587840670.git.syednwaris@gmail.com>
References: <cover.1587840667.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1587840667.git.syednwaris@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_120707_178349_2451BDE9 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, vilhelm.gray@gmail.com, michal.simek@xilinx.com,
 bgolaszewski@baylibre.com, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch reimplements the xgpio_set_multiple function in
drivers/gpio/gpio-xilinx.c to use the new for_each_set_clump macro.
Instead of looping for each bit in xgpio_set_multiple
function, now we can check each channel at a time and save cycles.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Syed Nayyar Waris <syednwaris@gmail.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
Changes in v2:
 - No change.

 drivers/gpio/gpio-xilinx.c | 64 ++++++++++++++++++++++++----------------------
 1 file changed, 34 insertions(+), 30 deletions(-)

diff --git a/drivers/gpio/gpio-xilinx.c b/drivers/gpio/gpio-xilinx.c
index 67f9f82..428207f 100644
--- a/drivers/gpio/gpio-xilinx.c
+++ b/drivers/gpio/gpio-xilinx.c
@@ -136,39 +136,43 @@ static void xgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
 static void xgpio_set_multiple(struct gpio_chip *gc, unsigned long *mask,
 			       unsigned long *bits)
 {
-	unsigned long flags;
+	unsigned long flags[2];
 	struct xgpio_instance *chip = gpiochip_get_data(gc);
-	int index = xgpio_index(chip, 0);
-	int offset, i;
-
-	spin_lock_irqsave(&chip->gpio_lock[index], flags);
-
-	/* Write to GPIO signals */
-	for (i = 0; i < gc->ngpio; i++) {
-		if (*mask == 0)
-			break;
-		/* Once finished with an index write it out to the register */
-		if (index !=  xgpio_index(chip, i)) {
-			xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
-				       index * XGPIO_CHANNEL_OFFSET,
-				       chip->gpio_state[index]);
-			spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
-			index =  xgpio_index(chip, i);
-			spin_lock_irqsave(&chip->gpio_lock[index], flags);
-		}
-		if (__test_and_clear_bit(i, mask)) {
-			offset =  xgpio_offset(chip, i);
-			if (test_bit(i, bits))
-				chip->gpio_state[index] |= BIT(offset);
-			else
-				chip->gpio_state[index] &= ~BIT(offset);
-		}
+	u32 *const state = chip->gpio_state;
+	unsigned int *const width = chip->gpio_width;
+	const unsigned long state_size = BITS_PER_TYPE(*state);
+	unsigned long offset, clump;
+	size_t index;
+
+#define TOTAL_BITS BITS_PER_TYPE(chip->gpio_state)
+	DECLARE_BITMAP(old, TOTAL_BITS);
+	DECLARE_BITMAP(new, TOTAL_BITS);
+	DECLARE_BITMAP(changed, TOTAL_BITS);
+
+	spin_lock_irqsave(&chip->gpio_lock[0], flags[0]);
+	spin_lock_irqsave(&chip->gpio_lock[1], flags[1]);
+
+	bitmap_set_value(old, state[0], 0, width[0]);
+	bitmap_set_value(old, state[1], width[0], width[1]);
+	bitmap_replace(new, old, bits, mask, gc->ngpio);
+
+	bitmap_set_value(old, state[0], 0, state_size);
+	bitmap_set_value(old, state[1], state_size, state_size);
+	state[0] = bitmap_get_value(new, 0, width[0]);
+	state[1] = bitmap_get_value(new, width[0], width[1]);
+	bitmap_set_value(new, state[0], 0, state_size);
+	bitmap_set_value(new, state[1], state_size, state_size);
+	bitmap_xor(changed, old, new, TOTAL_BITS);
+
+	for_each_set_clump(offset, clump, changed, TOTAL_BITS, state_size) {
+		index = offset / state_size;
+		xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
+				index * XGPIO_CHANNEL_OFFSET,
+				state[index]);
 	}
 
-	xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
-		       index * XGPIO_CHANNEL_OFFSET, chip->gpio_state[index]);
-
-	spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
+	spin_unlock_irqrestore(&chip->gpio_lock[1], flags[1]);
+	spin_unlock_irqrestore(&chip->gpio_lock[0], flags[0]);
 }
 
 /**
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
