Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319081E4A78
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ey8J/p3J4y0qsMNnRKfjzYnTRdGJlDrx/BkiFw/G6yg=; b=J5Pgm04SBvFmjV
	idweOVqDlu/QyMiiu3jCueZNIRq71IXq7dQYUaJquCyGj5npY9rrrAJiJ0bHGPBjcLZAo8DbGbjvt
	Lyw7hix+IAuoAJVi/g6hjgRSXyAquD/09rSFZEzKXQUGmmxXyUUqGVB6WZcgyOjWXI0ebicpZApyq
	65oxJG2mnlbkTbB/yhxnc2fY3UVQtH2cZ5TCWCYSaG2oXXbLJA89JpgFCrrOgJbzA1fZGACK7nOIB
	G2LBpenXeiyBqPaJvceRqOUOPLVJ3Lkh3EJG+pAvTCpdOEB2IQBdgAR2/OfsWCWriJg5G0mGV6Q4O
	e7e4mLiZdJdepxoV1ffw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz6U-0002xt-Kj; Wed, 27 May 2020 16:40:30 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyka-0007ov-Qo
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:18:19 +0000
Received: by mail-wr1-x443.google.com with SMTP id q11so12465695wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 09:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qSgUFPU/lmBJj5c376kcW/aHDA5eHqQfL3OqaeYjnYo=;
 b=ptX7rsY0ZtKBP9iNOKmKbnieslpshoIG/AuK/vjmExfbtz91dlVxapurUhIt8TSL2m
 HToH7PGQncAnPCXVB22Wt5lTZpNNph3feLKP7ck5Hlsc3UkBkIjPa9ik8UcCQqzUbJ+/
 9rLZ+0kpIxzsVKEkFdZGSFY8PWDa0fEm5/nUjbSrO9CCHUYyzjBzFpPrYv4Fedkfg9sf
 p55JFi3GQ9zxbfrNcP0trL1zs+e7Fk5JpTrCGS3yt/tc4gONsA1umQxkFTirQM9YNDg2
 dmgNSyiytQQCRM4GcZhEM+6u74vyWbyZ0VnrSZ8+iN6AJ33YV/9sD8BiZecdK1u1ceNy
 OOCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qSgUFPU/lmBJj5c376kcW/aHDA5eHqQfL3OqaeYjnYo=;
 b=P5yh8DdBmVrl0ZHhX0h15ynEdxK6wySpm6WqvOqi8nYHACoxyV1NMYcxvYjSi3kyHN
 R/JF3s9+h5OgqfesT8egNUg0B0mAQT06VUKCGkdIK9+RZti7GM1b9kHBuCkA8nuLQ+dm
 SGcFTkv81hhKVR0xFqvIzr66R2qgQN4knq+r0xZeXwoCFSu+Inze/WWRMU+Tglv4z0sF
 PeOyd+GGaQykficef3M/J9x7mPyQreXoCIlcj8ToCf3e1VNcLRuP9ZVX3SL+NlQmdgXS
 wvFJubo52HcO2Z5kHnu0/xsZaCbSzr6wcrf4FLLir9vsQt/OXUZlSXppT0pqz3XqjGuB
 Ieyg==
X-Gm-Message-State: AOAM531BWniLs6vryOW9355nfeW/MgJO//F8uCM8CEA34njZ1GrvpqCM
 fXv9jPF+uU8/++ucUvnatHXykg==
X-Google-Smtp-Source: ABdhPJwkfI8vfcy2wHmTP3rC760TSjRdMUEuJibRF0yfB2ObnbADS8LUP77SQMPqRpunP/H6g3ssJg==
X-Received: by 2002:adf:e751:: with SMTP id c17mr10340714wrn.134.1590596271251; 
 Wed, 27 May 2020 09:17:51 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id w12sm3364038wmk.12.2020.05.27.09.17.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 09:17:50 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] irqchip/irq-mtk-sysirq: drop unnecessary spinlock
Date: Wed, 27 May 2020 18:17:43 +0200
Message-Id: <20200527161743.15972-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_091752_938806_027D7C63 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This driver takes a regular spinlock when a raw spinlock is already
taken which results in the following lockdep splat:

=============================
[ BUG: Invalid wait context ]
5.7.0-rc6-02446-gb9827c0a9fe7-dirty #1 Not tainted
-----------------------------
swapper/0/0 is trying to lock:
ffffff800303b798 (&chip_data->lock){....}-{3:3}, at: mtk_sysirq_set_type+0x48/0xc0
other info that might help us debug this:
context-{5:5}
2 locks held by swapper/0/0:
 #0: ffffff800302ee68 (&desc->request_mutex){....}-{4:4}, at: __setup_irq+0xc4/0x8a0
 #1: ffffff800302ecf0 (&irq_desc_lock_class){....}-{2:2}, at: __setup_irq+0xe4/0x8a0
stack backtrace:
CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.7.0-rc6-02446-gb9827c0a9fe7-dirty #1
Hardware name: Pumpkin MT8516 (DT)
Call trace:
 dump_backtrace+0x0/0x180
 show_stack+0x14/0x20
 dump_stack+0xd0/0x118
 __lock_acquire+0x8c8/0x2270
 lock_acquire+0xf8/0x470
 _raw_spin_lock_irqsave+0x50/0x78
 mtk_sysirq_set_type+0x48/0xc0
 __irq_set_trigger+0x58/0x170
 __setup_irq+0x420/0x8a0
 request_threaded_irq+0xd8/0x190
 timer_of_init+0x1e8/0x2c4
 mtk_gpt_init+0x5c/0x1dc
 timer_probe+0x74/0xf4
 time_init+0x14/0x44
 start_kernel+0x394/0x4f0

We don't need the spinlock here - the irq_set_type() callback is always
called with the irq_desc->lock taken. This removes the spinlock entirely.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/irqchip/irq-mtk-sysirq.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/irqchip/irq-mtk-sysirq.c b/drivers/irqchip/irq-mtk-sysirq.c
index 73eae5966a40..da2fc4809222 100644
--- a/drivers/irqchip/irq-mtk-sysirq.c
+++ b/drivers/irqchip/irq-mtk-sysirq.c
@@ -12,10 +12,8 @@
 #include <linux/of_address.h>
 #include <linux/io.h>
 #include <linux/slab.h>
-#include <linux/spinlock.h>
 
 struct mtk_sysirq_chip_data {
-	spinlock_t lock;
 	u32 nr_intpol_bases;
 	void __iomem **intpol_bases;
 	u32 *intpol_words;
@@ -30,14 +28,12 @@ static int mtk_sysirq_set_type(struct irq_data *data, unsigned int type)
 	u8 intpol_idx = chip_data->intpol_idx[hwirq];
 	void __iomem *base;
 	u32 offset, reg_index, value;
-	unsigned long flags;
 	int ret;
 
 	base = chip_data->intpol_bases[intpol_idx];
 	reg_index = chip_data->which_word[hwirq];
 	offset = hwirq & 0x1f;
 
-	spin_lock_irqsave(&chip_data->lock, flags);
 	value = readl_relaxed(base + reg_index * 4);
 	if (type == IRQ_TYPE_LEVEL_LOW || type == IRQ_TYPE_EDGE_FALLING) {
 		if (type == IRQ_TYPE_LEVEL_LOW)
@@ -53,7 +49,6 @@ static int mtk_sysirq_set_type(struct irq_data *data, unsigned int type)
 
 	data = data->parent_data;
 	ret = data->chip->irq_set_type(data, type);
-	spin_unlock_irqrestore(&chip_data->lock, flags);
 	return ret;
 }
 
@@ -212,7 +207,6 @@ static int __init mtk_sysirq_of_init(struct device_node *node,
 		ret = -ENOMEM;
 		goto out_free_which_word;
 	}
-	spin_lock_init(&chip_data->lock);
 
 	return 0;
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
