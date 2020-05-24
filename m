Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08E01DFD4B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 07:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vGqiNROltAYchvkvBYXsJBdRhm24UrJBVogvbo7eFU=; b=udnBRNN8Pa3uQy
	XdU6hq4ZIa2xZCG6nqmXmn+uiLuhqcFPLw+ECfg+SUNaNgyXkJI45vNSgthQ2VEVA0ojJPWTFC1rN
	+jrzfNDyWUOjlv5u7hmT8YV0T2Ix8a89pVTJBBbtWia5ixw1KrKxI5QDlb4fGgQOfuJIZ41emMG42
	t3weCzXgun8B7HYPkDS7eSvQ2FTeaWWV+ahT73zmYLBDGXeEXAoDUB8vsDOer3b2yu9THlr1xVVo9
	OJwdOOpuzhoeI7gZq/s2nj9o4hXyUA7k8qJk4svtgnKGZhEBe3rTPkL85Fv7majAszvnJvVfVVyGf
	rWUeHGcRwtrOH1UtAFeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcir9-0003Fy-HN; Sun, 24 May 2020 05:07:27 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jciqx-0003FB-K0
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 05:07:17 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t8so4822717pju.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 22:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mvYhtqV1U4qqhDVOWFjEaTG959+IGNH15YQtyFmwOMk=;
 b=NK9MXfpY/j07O5SEzOIz6vmM8uitKXAVhNCl78GoFuyoMSl3Ju3Y1LOp1r5n3k3Uti
 qAId0zGO/uQmZoPLTK2fv0F9VJR1JCG87zsD5AEGCEfaTUXH+F+9JQORk//ZvioDaf21
 I7cN4ryMBsN/FZ/Vdh0c0WnC58sJ8tvFzyYFjAXB9ADZC1b0z6eZ6L4KITmyNJ5OycL6
 VIAHI0Wl8TQ36rlBEuAg1n4nd+7Lly0BD/+0N3YIBYJLHrKIm330hRmVWPDYdhCBm2V9
 U/g8lqbwi0Z1/UpEj3tslj9qgTX0lGCrnbYsRh3DmqfjEKT9ZGC5OVymv6Mmt/N2HCsW
 z0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mvYhtqV1U4qqhDVOWFjEaTG959+IGNH15YQtyFmwOMk=;
 b=eW0VWjfFqUhIlb038Xt6eZFPL9PVANjXpOS+kIku3fY01fjhMgFEaGISCU9BCtTHJg
 645K8JwSEwdq9Q6dyGzyzYZAOXpVJvUsaUsiJU9xOmYRWP4WYIki/G80LAh1AcMRRmJv
 j0wq9XFLNkhe4iPZkMNG90Gnk+7YagIkKmbZzkC2dffz/c9s/K+wdGyvQ50YLZ6DVYNt
 OSe26SoI0kRiOHZnKkUYAkJvMDPRo8cL6b3XIPJU1dcl1spbjOlq3ZyQhUOfNgFCSFhj
 meX78BpICzuXSi+p7/Hg3qt7HhuhPS4RU4hDaFQRKaw6T8esgU+Dhn9eYXcWu9pj4kvy
 3yCw==
X-Gm-Message-State: AOAM530DKIjTzt3ljPvdts/erqpzYUSA4+QPvvRCiaenOYmeG+7PZ5YM
 dwHtrCgvDp3L90CbnEGola+lraTG
X-Google-Smtp-Source: ABdhPJwu4ENvd3yDcG8988brVGHraIQrJeOh4O49kmpFQr7sJeqeLJebPf41K5Zy9eSurQOaa2czwQ==
X-Received: by 2002:a17:902:6b09:: with SMTP id
 o9mr21058970plk.100.1590296834091; 
 Sat, 23 May 2020 22:07:14 -0700 (PDT)
Received: from syed ([106.223.122.111])
 by smtp.gmail.com with ESMTPSA id h7sm8985165pgn.60.2020.05.23.22.07.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 23 May 2020 22:07:13 -0700 (PDT)
Date: Sun, 24 May 2020 10:36:56 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: linus.walleij@linaro.org, akpm@linux-foundation.org
Subject: [PATCH v7 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <c0c47f777522aa16c31248e9b8c75d2b96c7b652.1590017578.git.syednwaris@gmail.com>
References: <cover.1590017578.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1590017578.git.syednwaris@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_220715_659360_98893833 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
