Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEDF1F9748
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 14:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIXd5X/yXx4JvKoNHfUDwdU6VegyH+rkAgHNUQsVRBo=; b=SlOPj1JDwEOnWm
	KGoMKenbxMlJNxAYTxZ20606pgZcGqzVv+XuteX0XdgWwUOXPSM+t11RHxJGJ5CLoaJMxB3ITZDCJ
	rKMQh7HMJ7aUwW7LamA7UdXvbssYGf+q7CMEozvlqQv2kfEsDyFys8jGKRk+L8cZkXXqgB1xFDzxF
	SuK0ttWZn1MEgM/2I6/p1uvrOVJnKiUffvdL88+L1XrgOcIxFwKQir5VL+Sto13bBDcMke4MhWOs3
	DH2tuj1v3LQ4QCnHV0/D550QHi/U/Moj8ZeZDdpiP2aFFYdkDTGaa0eN+L8sZCu3x/wkrnBEukf0q
	xX/xXphts5S+a4QBkn6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkoe0-0003PE-2H; Mon, 15 Jun 2020 12:55:20 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkodo-0002jL-1T
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 12:55:09 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ne5so6787932pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 05:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kXNO5dq1powGbD9BrNfpHM4305IDPaieel0HOsoeAtA=;
 b=qwa3nyNmSq9Ut8ztVt6ZPFhkHUxCbdELvQ2Z0eVmmrOiyB0hvPDbyRgexefM7oClhL
 bUyvSuw4e2zL4FEEY/zzukgwEbKLo6tOK1zp/5w0EGx7M214DXjRBa0jLoctmIdgQ0oD
 Zg2FOrS2zvwUSba1y36iUyT/alCShBdF8M70itq3fPTBwXkRs8oDsUCRWibWJXHiqZ4b
 b/tOXW0YniV4Ll7CLYFFsgKrSHbjicZbQraKhv6CQjxpDnURKIJZFI9Cr3HpI1rN3M79
 8FPAyZb82mc0yeuj0tPHobUyU2XJCEG/hknT2gmo3aS/Msdbb06kxVgqsj0aedaYKU/3
 uDyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kXNO5dq1powGbD9BrNfpHM4305IDPaieel0HOsoeAtA=;
 b=Ou26bxiGx59TBus6D9oPQXsLvZzR1nWgv/jSVhjDWOMnlCknonLib+Rwl1rQxvpYvf
 cR61x0c3FDVgBKgtzvYpgyMcTK5GQhEGBweQBVQr+uXX6AeKoommCx2NxrH42wWFqfi7
 pMMsPDRriIYDIj4/DfV8q8PpS/FJcJejAlM0CyAETLZCtwBGfNE3SQdGds7F8wCCUL73
 NgCMifojBGlsYGBjiuWPZZUJXLY/aIzRv1dElf2ZhUFdM7Id/+jm/jxb6N/Ig1rEn0R8
 EjHQXb9XY/Wv23UKPXghOLEQr/2fpPnj70K1tiyfQDYAcAtyrpnXjCOjv2WoTw2nZwsG
 iEJQ==
X-Gm-Message-State: AOAM532wQO7AfJ7QIIwzL2iMyhaFAaiqrksMJiKDh7stdiygwEB+kLxs
 Sm583VeRPwos8rAxmizXWBE=
X-Google-Smtp-Source: ABdhPJwVaSiNiKt8E7F7y7ozgSGtM/hiMV1bukQeQmHKrRKj8fe7YPK5ptt/y+23UJL0YKdjn19jBw==
X-Received: by 2002:a17:90a:db91:: with SMTP id
 h17mr11898770pjv.6.1592225707605; 
 Mon, 15 Jun 2020 05:55:07 -0700 (PDT)
Received: from syed ([106.198.128.180])
 by smtp.gmail.com with ESMTPSA id g21sm13805054pfh.134.2020.06.15.05.55.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jun 2020 05:55:07 -0700 (PDT)
Date: Mon, 15 Jun 2020 18:24:50 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: linus.walleij@linaro.org, akpm@linux-foundation.org
Subject: [PATCH v8 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <46c05c5deeada60a13ee0de83c68583d578f42fd.1592224129.git.syednwaris@gmail.com>
References: <cover.1592224128.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1592224128.git.syednwaris@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_055508_103974_182E8623 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 vilhelm.gray@gmail.com, michal.simek@xilinx.com, bgolaszewski@baylibre.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch reimplements the xgpio_set_multiple function in
drivers/gpio/gpio-xilinx.c to use the new for_each_set_clump macro.
Instead of looping for each bit in xgpio_set_multiple
function, now we can check each channel at a time and save cycles.

Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Syed Nayyar Waris <syednwaris@gmail.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
Changes in v8:
 - No change.

Changes in v7:
 - No change.

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
