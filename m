Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9371D419C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 01:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNMxKu9Hwkl2M+sdQoLzbieXJGlFgYBpqN7joaf2SNg=; b=IbBiA+QeyKc4Z8
	d2nLUJbjf+m/shRaU2k4kZi9w445Vr92dwv/cwS3qBGFwCh/BikNqbYkj+N/rjSYApQYolZo0DyMK
	WCCkPu2GEFwqStSyMvj3IAk9p+iM8wn+IoCkLG3u1NoSZBP6taGfcACAiQzPiLLQvBV011xtPEsxZ
	pnNyhwwyuGPpWH6ZLGVbisy2Ct00+1+tyz0afr5WDIzkWg6THmeb9jGBLS2iyJKnNKMsAqo9q6gKp
	licw9PyAp1r804Ja5ih8OSbs2eiQ0ZAJR1Pxx3JIXoaTS031O8l7ekADTSMPtx0Lx7Go2FycNCJms
	A+ZiugRZTL6v0P8LWY5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZNAW-0006ex-Cc; Thu, 14 May 2020 23:21:36 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZNAO-0006eV-Ne
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 23:21:30 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a5so134251pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 16:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yX3O7KPvQx7S3aIf9BMvwZK2M2uDxHqEk7CIJLVybdc=;
 b=m+vC8ms65164QGKT8M92uWgft0JVZy9Up8/dJoWkdm3C+ZaZaCLjicog1eKV+vfz3o
 OeGx8PZLPWFmgiuH/jCu3nHNzGNAkOt7ll4tKHv3WaroK+ZsahwcOU1sUHLlHvMWTqKX
 w6yEHx4IqZxLn1uVBDwp9axZBIWw79GsV0og4LZFjZZBJ/XWNBv5ANa7kpSkeak36dV6
 +tvZXvQ7J2YqyoOu45AKpYRL+jIq0m1olFQY4h3R7XRNro6EimRJrT15MKxFD79QBzXe
 kB+Pfx3BCyNQ6u2PEq+FrBvtYEbsv3eTwXZnWD8plYaP9kE4oq4CrxO882w7/DAtGfaW
 v+pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yX3O7KPvQx7S3aIf9BMvwZK2M2uDxHqEk7CIJLVybdc=;
 b=DGiKOerKzZHx038RgGXMsVHxHdFrQi0yN94+qHSRIVcTExbMf+EDKhRyCEXJlnE6Fb
 PQxfFOqebQKiaf+PNLN71bFudWokz+0IYc1Gl++WLbQ8gFlUXeydbaQS6O2mWRP0J6gb
 Wo/vWjxVKjqqYA04HB8lfDghpbn31rSs/h4rb6DIoYreWex5qkLRVGwKzmarBx2fhhAN
 rxVwIQxR2UrrTVzoTM5PeTnJLD19eoA+pthrCA522MOWGqZTc9Qq7i1N50j2ASRU/TE0
 4fwg6sZMPwjl7YtNunMqxUdOO13PZIBwniUSPcPWEkyAkKnfeIs/3cabsCOdYp+gk0nV
 W8YA==
X-Gm-Message-State: AOAM533rVogk8uCl/TjL1CbsEaNXgPhF/7IzNquiS+0Q9ySvk8HqS+Hv
 /wPy2knjh6wMa/EWMl0iGmc=
X-Google-Smtp-Source: ABdhPJzvl0m0swNuW52nGaENetWkBeHwUi2whNeJnMhXwrbhscZ+XkUzh3qr6rPdWNUOtDa8aCDNLQ==
X-Received: by 2002:a17:90b:19d2:: with SMTP id
 nm18mr382289pjb.71.1589498487766; 
 Thu, 14 May 2020 16:21:27 -0700 (PDT)
Received: from syed ([106.223.1.212])
 by smtp.gmail.com with ESMTPSA id m9sm239762pgd.1.2020.05.14.16.21.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 May 2020 16:21:27 -0700 (PDT)
Date: Fri, 15 May 2020 04:51:12 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: akpm@linux-foundation.org
Subject: [PATCH v6 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <dc60f9b4ac59eb5e48461d7c6c862c46a2445b8b.1589497312.git.syednwaris@gmail.com>
References: <cover.1589497311.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1589497311.git.syednwaris@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_162128_771925_4DAD73C2 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
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
Changes in v6:
 - No change.

Changes in v5:
 - Minor change: Inline values '32' and '64' in code for better 
   code readability.

Changes in v4:
 - Minor change: Inline values '32' and '64' in code for better 
   code readability.

Changes in v3:
 - No change.

Changes in v2:
 - No change.

 drivers/gpio/gpio-xilinx.c | 62 ++++++++++++++++++++------------------
 1 file changed, 32 insertions(+), 30 deletions(-)

diff --git a/drivers/gpio/gpio-xilinx.c b/drivers/gpio/gpio-xilinx.c
index 67f9f82e0db0..e81092dea27e 100644
--- a/drivers/gpio/gpio-xilinx.c
+++ b/drivers/gpio/gpio-xilinx.c
@@ -136,39 +136,41 @@ static void xgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
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
+	unsigned long offset, clump;
+	size_t index;
+
+	DECLARE_BITMAP(old, 64);
+	DECLARE_BITMAP(new, 64);
+	DECLARE_BITMAP(changed, 64);
+
+	spin_lock_irqsave(&chip->gpio_lock[0], flags[0]);
+	spin_lock_irqsave(&chip->gpio_lock[1], flags[1]);
+
+	bitmap_set_value(old, state[0], 0, width[0]);
+	bitmap_set_value(old, state[1], width[0], width[1]);
+	bitmap_replace(new, old, bits, mask, gc->ngpio);
+
+	bitmap_set_value(old, state[0], 0, 32);
+	bitmap_set_value(old, state[1], 32, 32);
+	state[0] = bitmap_get_value(new, 0, width[0]);
+	state[1] = bitmap_get_value(new, width[0], width[1]);
+	bitmap_set_value(new, state[0], 0, 32);
+	bitmap_set_value(new, state[1], 32, 32);
+	bitmap_xor(changed, old, new, 64);
+
+	for_each_set_clump(offset, clump, changed, 64, 32) {
+		index = offset / 32;
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
