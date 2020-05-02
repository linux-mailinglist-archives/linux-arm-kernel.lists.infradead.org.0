Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465921C28DF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 01:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWgYrEqNS65Z4QrddlDr/z4zZaUTZpqJotgJKCcmFjI=; b=DnpMx+2VcuPQf4
	tuXH2dPIj/xU2cW4Gj7w+v+Ti2fDBdB7WtOm49FhFDmtlre1d9yqAlbiFovmCtQcltlmge8IL16en
	S5l9AIxHYQROd0PJ3k5wsjetoue4EBlDkhkVXfsA+KF1+mQF0v5WGCF2bHfNzFJVObbBU0Z3XL5wQ
	tUq2k4q7IIZPVj5ENwTBVNwpp7cTV20vU3DULz6J1nfLLy6/PEEcR+cLvREDQDKjtyQKkugSC3Paj
	NqU7jEKjJiUAWNcp9dWUFFOk9Gb7yFe8Yuydoop6ywiEXHmPLK2EWLZEEWqApTFHX6Odt+iDnyorn
	s4pbfV36fFlmhAnFubyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV1Q5-0005fm-52; Sat, 02 May 2020 23:19:41 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV1Pz-0005eQ-8k
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 23:19:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id a21so1646876pls.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 16:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LkAUCqfc1AV7hZWhs6felQHhU8fMekbk83Bpx1s0KEU=;
 b=f+WZNtGa3YeYtBRjhQ77UH7ZGElu/KmspIqrc5nJwDqyuA+9q7R0Dxx6HkLwtKcyaR
 gS2VT4m+KfkCmc9tbJdyVovOmbbVWRxCU9PXKic9hU0llJsJ/XtO54BYGh/5C0Ms3M0K
 1mJeaLT48FljzQ/G52/LNUS4qC9yFWl2VxMsq4hkuzyG9zZRwqCoVMVi9tXOs2HLCWqX
 aalf8N2VrWdaCJm9VJAZQE0CevJH4jy8OFT/sf1NcR1tCY6RgyQNcHw8OOqIANQKj0ts
 64loHZwvE70U40ouW256IJsUpjq+IAlJWs7Ou5SyXH2P1Zk9XKeR2nrHbcGC6tjXi0F3
 89jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LkAUCqfc1AV7hZWhs6felQHhU8fMekbk83Bpx1s0KEU=;
 b=G+ISlWPfk/NHkjbC1qTpohlxaTZJXCHfgmyF128H13dvQZAiCZdjoaWqxVWiLG3Sd7
 rYvq4mRMOEqZRIhGvA0hxlBaU1wQ8H+39kN32ZWdSe03Ep1LSxDKm5vNF43V6gzV85Ik
 mV/ZVDsIOVcvF3vQaE2vX51mFX1KvTtwrm1/7lsyaD95bVtrFbGaRCxIPaW9COfxj9/l
 QxXN2QEvlpOBbWekHSQXva0o2SEMGo2uTHIbXzWmsq7GD37/y3pu34bosWQcAtlJFw71
 VGY3t/v/te5P/+aYe2s69SGKapAeV7nZ7v3zHjK1IoE9Q/4cSJbC86pb1R3WeTCgmEn3
 g56g==
X-Gm-Message-State: AGi0PuZonNQGHKCdcKCeMnU/prjqEXpiQT/4/m9A5mDLtA8sdvu22ngG
 zDgVU47027z9L9z2heHwwjo=
X-Google-Smtp-Source: APiQypLbAdZkvvAER5wkKxIbPAjube5ny05BxvAvGWofwDrkzsNksazMKG5sRuovdKEwZgNigqwxdA==
X-Received: by 2002:a17:90a:7349:: with SMTP id
 j9mr8218530pjs.196.1588461574397; 
 Sat, 02 May 2020 16:19:34 -0700 (PDT)
Received: from syed ([106.210.101.167])
 by smtp.gmail.com with ESMTPSA id w75sm5237106pfc.156.2020.05.02.16.19.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 02 May 2020 16:19:34 -0700 (PDT)
Date: Sun, 3 May 2020 04:49:15 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: akpm@linux-foundation.org
Subject: [PATCH v5 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <c523c2b865434cde4f11e6c6611431ad4485892e.1588460322.git.syednwaris@gmail.com>
References: <cover.1588460322.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1588460322.git.syednwaris@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_161935_311789_04455FC8 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
