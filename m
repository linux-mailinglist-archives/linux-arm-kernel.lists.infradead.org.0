Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEF41C27DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 20:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OU/pU5+DbX1Z0Yld5DACKL120m2PfGSzRbJRg13B/VI=; b=kxZ9h6J61yYTlZ
	b5IbeFU5IusX29h385Wds+Nb/hZQ+53dPMufGKxib9kXkDCefJH697fW0O5Asn48Lq39ZNdAqDSMa
	QwOrmw/1Say1b8y2S9chBkTrmCf5ElLkXS/X9e/TSQF1JK9KbGgSPo3hAHs5OU/2obfekaq0GMFIW
	Vei7yJjTnCR7yCAtKormN7HaL98A+2Olb/b/2XY5FTuNmga+xJZNCHjq+xfnAuBdyr0vYRgzs/THR
	0eYtdxgy1h9Zy1LNoIZbq45d2g2LEg09XGL4fTMBt32m3hbhM4zl7daieYgnoEeKH10fQ/AOD5dAy
	GCFEisSqtT2reTtT8aVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUxFR-0005ct-Rz; Sat, 02 May 2020 18:52:25 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUxFI-0005br-Hz
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 18:52:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id r14so3335594pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 11:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6y3f1iXR5yiiqAlOPqKiSQLFocKm9SaOEUukgjJZ5oE=;
 b=UA6XrV7kzwqdAm+iEfXiR968ldFj5IymkjpgdGv8QLEJn1FHjLKNkCFmfQpXFAa8WO
 QtNaz6tAiSiEczWEy/cVlPyFjq+hTRaCEwfh01JL+DsnP5zdIB2Fhz19Km/7lP0J0IOP
 0Ji+nLMBHjZtbyLjMLqi924mi/KFx39ZpJ8Hqn2sO8HJ2hAoCTLxY7h2DN+x6luchvh5
 eILsUKsj8ArkyhxC2rXQuyH03+Bk+XmR0DeX2X/yoeDWPhC6krd7Y/3DjM6Izu3WUvTt
 2jf0rjYMc06VRZorzbaMCzCUcn9h7elTSJfX0DpY6qipobUB6l42pnUbsyWFCvDcJ+os
 P5nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6y3f1iXR5yiiqAlOPqKiSQLFocKm9SaOEUukgjJZ5oE=;
 b=khTxUGnNY3FW/xL0lLP+aYaI8R+dJAYgcVLo0JmjbbID949y0lm3O78Dbe9/ZSsgih
 +6Ca4jqALOuXhSXAG8xMuGY5igcZmsTeBmyG9mKP1hWXWbrwkvx8nSt6hjBKAbQthNUP
 Vw4Qj8a+heFVwnft3ntefrz7gyP6QEIYVqpZSSuZxwLd9/+r9hsjOXr24KDbJ44iwqB4
 fTiYf7PmKXhgFXb5UWJy2/5b6m8lArngZ1UDqd0gapSdsM5lga66UObkZLQXLA59Ikbg
 TVYHIngyD2VArRcoNNNaqixuYrzXMOjvItt32o98AcXe+uQCrXNgdLgQfwDZZ43vN8S9
 ETtg==
X-Gm-Message-State: AGi0PuamhfWW+GZKPbI/iCRBUfQ79e2nlGsuYlC5iUeDZAjkPTPAmr+3
 7WGBxz7xjzBera2oTj1MGRQ=
X-Google-Smtp-Source: APiQypJn55cCwUXOFCouPv9af0rzgTb6bSvh3csy57pzpvKdSoe007N9Dxu5tV18PJqf8EEFQSMgpw==
X-Received: by 2002:a63:8d4b:: with SMTP id z72mr9573375pgd.376.1588445535538; 
 Sat, 02 May 2020 11:52:15 -0700 (PDT)
Received: from syed ([106.210.101.167])
 by smtp.gmail.com with ESMTPSA id d203sm4973636pfd.79.2020.05.02.11.52.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 02 May 2020 11:52:15 -0700 (PDT)
Date: Sun, 3 May 2020 00:21:54 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: akpm@linux-foundation.org
Subject: [PATCH v4 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <366a64f80ee9fe1c644ea038ac112ead9766d5c8.1588443578.git.syednwaris@gmail.com>
References: <cover.1588443578.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1588443578.git.syednwaris@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_115216_620564_1B04DDD4 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Changes in v4:
 - Minor change: Hardcode value for better code readability.

Changes in v3:
 - No change.

Changes in v2:
 - No change.

 drivers/gpio/gpio-xilinx.c | 64 ++++++++++++++++++++------------------
 1 file changed, 34 insertions(+), 30 deletions(-)

diff --git a/drivers/gpio/gpio-xilinx.c b/drivers/gpio/gpio-xilinx.c
index 67f9f82e0db0..67c5eeaf1bb9 100644
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
+	const unsigned long state_size = 32;
+	const unsigned long total_state_bits = state_size * 2;
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
+	bitmap_set_value(old, state[0], 0, state_size);
+	bitmap_set_value(old, state[1], state_size, state_size);
+	state[0] = bitmap_get_value(new, 0, width[0]);
+	state[1] = bitmap_get_value(new, width[0], width[1]);
+	bitmap_set_value(new, state[0], 0, state_size);
+	bitmap_set_value(new, state[1], state_size, state_size);
+	bitmap_xor(changed, old, new, total_state_bits);
+
+	for_each_set_clump(offset, clump, changed, total_state_bits, state_size) {
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
