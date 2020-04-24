Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E2F1B7577
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 14:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=06wigc8klWX2H/5L0hI5jNeMFD1T6yF/SOxbwMOklqo=; b=uB0r1SZz/YDYh0
	bVU+s9NwMC04vlm9fXGrNq/JHfOaBPyZnSpn3XFTEMjRaAYZTpoosFuOk/r62lGr9Dk1s9E5ylo9s
	dhty6LopdZrC+eogryPJ38l9fbxfNKd1te8eya8bhylSVlQY6wpuyEynM4XphUxjxG3N3oXjA3Xtw
	wLLiWkJPhyPG5+ddkL4agQrAz5Y2jaj4PkUAizwnhCXKzR4Epj7qyjVYUBCHe5ncXbQymMuHuTpNm
	9JrwZ3jAaoNVt5Jb/99vqADp+MVwLDdNbluNX/hnXyaBIStz07VLjbCL6dEoCcw1tOIKI/VRBqK9f
	jniM0OxBIPx5WajV9Ceg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRxY6-0006Sr-PI; Fri, 24 Apr 2020 12:35:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRxXn-0006Qj-A7
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 12:35:00 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay1so3694469plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 05:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=IYsx8ReGBE0SZMDMShZd8d3kGF4vInj33KNUOojIGFk=;
 b=Puhfz38A8No47Vs11emtioczpZqvcxI/PrK8TNvQu9KDF5oGG9NMDnZybFfYwgNoc8
 xH7R9QJ5nmcGuoEgeRHeLq20vNKEc57pJNravW0ShDtDejbt5a3qvClLubWtv4UghDnS
 wQqz9K72Y4ooTkMBTDvBM1L6Oo4aKjGI4cPGfkwsGRZvMvDkg94bR6v6hQJ0aJf8SQLx
 RFecgornk5SIVj966SLdvpvFnPA+jVINaUoxlPKrbR7K5JWtAe826dlHgwlE04Jmv1KC
 2azO5BE7feh/B3ju5/cQZzSAPvEOoaaJTe8vLLXBfyFC4jnElUKG76+7XIBPC1PXvlRD
 oJDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=IYsx8ReGBE0SZMDMShZd8d3kGF4vInj33KNUOojIGFk=;
 b=JvGYEtLxU8gAjdUoVOQf53ys1qIlgiIw9ZYM1hw9WEzz5Kov3z5d5UdDuQCPsYqOn7
 pOpdHcoHQoB2hLvkECUomJPFBgG8AwxGI+F/aqFpy14WY4143lCoGOciJVJ7Sc6ZToHc
 +vgYTcUyk+8e7fI9mUKOswYCIx7eeqIXEuvVNGoGRXuo3weYq4sWxCRsmE+RACOz8vE2
 9bFF/xV6sgwR6Z7duughw+zxL5WirBBtpyksv4X13kh0IAIEseJGqV9yblNjx77EKGdK
 DovjpW5Li1DEwk54N7y73f8Y8Mz4yk4u4bP7zia9P9nLzX60dp2/islvySm6oo58Kajx
 dGGw==
X-Gm-Message-State: AGi0Pubi0ugBnhliR3CkupjYOCfeOAcOZGK+HoELRitTc4/UI4/CMX7o
 xhsN7pFK1/W2AevhzKLviNfc7/bl
X-Google-Smtp-Source: APiQypLMHyPCoD0045oHjHegbrwp6gRQSGxOQGJo2oOA+031VO+4YwsEMbDoeFQY6GWxH5CvKbja8Q==
X-Received: by 2002:a17:90a:284e:: with SMTP id
 p14mr5931954pjf.10.1587731697484; 
 Fri, 24 Apr 2020 05:34:57 -0700 (PDT)
Received: from syed ([106.223.101.26])
 by smtp.gmail.com with ESMTPSA id f99sm4787703pjg.22.2020.04.24.05.34.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 05:34:57 -0700 (PDT)
Date: Fri, 24 Apr 2020 18:04:49 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: akpm@linux-foundation.org
Subject: [PATCH 6/6] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <20200424123449.GA5741@syed>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_053459_351741_C9501AAC 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [106.223.101.26 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
