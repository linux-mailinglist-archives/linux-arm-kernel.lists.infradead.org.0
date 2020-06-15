Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D927B1F9033
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RLLs1d2l+bzAUngLW8trXTB9hRShLhs8uCGMceIKhb8=; b=kexbxzx441fyNg
	dBHgw6gjPeSCQrZ/TSZDc3QUA/iLVQEjYET+ujQHyqkY3MRLPUso11Q7Dr7Su6+nui/amPClkL+Lq
	cImGrV1anvmn+v8RR8KDGdXkMhEL4T6cqlzBlNmpQqRV9rQtKraa/ZMCKZyKZlJHyHpiefrilWSU3
	kNmxnJZ5uHOuaQKygIdHbn2Igq5WwvF3ZrFJZNjXKPioykNQAu+w9+6WPEa++GxxRcKMzgnDeCr1x
	CN/DoDLU0g53OxJgH+PTxLGUONTV6iIsW2FRY09hVkKVIDx8RiyI19YK3xMGSJJXMkH8FOwIFc6zL
	PIm5sDpLap7Ioa0dyThQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjo1-0002md-DP; Mon, 15 Jun 2020 07:45:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjnX-0002lk-Fs
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:44:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id j10so15969897wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 00:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wLML/7CffDFBhoqwyzC9IFFqzUtN0PnXKPbU0+WecW8=;
 b=ngWpM4Vd5ByUkX1bUWebKGgG0vYWezYAT7vWvhgdaTo8IBZujJgVraWXo6Ox6Yb/+9
 cR5YyPmPnGK45v6sM/dK+T+hW3FTrjwS10sazaftNflzQNQFOABhYSmVSimImmg7Euyf
 NWVYY4ypkR2JseWN9ChtJP2Zy7FLfsT19Qf0ZhjPbmHYo5yH0kRts0nNcfii4NqLMQfR
 V0ShmXbG7Hr4Fn6EETdOiX0bcZ9x7AHb8xGgXyVHxF7rsg+vYDrbgjynUJQAntcaQYal
 CY/a/rom9ousRJ9Z25dSmcaGbQViMd2DjSbRFsfm6lLnvb+dsVxLdfbwJedlIfVqAzC/
 sDYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wLML/7CffDFBhoqwyzC9IFFqzUtN0PnXKPbU0+WecW8=;
 b=bZDBdPMvotdutAl9AZbkmURQw9blmAG8nda2nNCdyURL+RsvDTxJzJ3DONwi9oovUl
 3JzMX332Yq94yJN1sCsXN9hpuFbtIcnhRznnZBKBrcKZk1mYdKIHSSUPtj4u2UG29h+y
 9Ke3ed6XnI/US1ws5+74iAJ756/ksZAH+8rwfqmrH9oaEowaQSx5Kqo/ygcfbmA4mAl+
 mlB3WE+JWbqeLM7KJFX5mmdyGJ7+5JlVloG0E/n8sxO8YPXlCqHY3bSY4sqGFN0fyCfz
 PY/ECjYhey2t0HalovdDtNs07vOiP57E4hShZHI2Nqp9iUhOFZHquFpXMew4yOYfoXjS
 4iuA==
X-Gm-Message-State: AOAM533/tkuDkk+rbdtdWsKYjTFW/M8HPM9LRom3aFGV3hI0Ge30wVGA
 KHP+N7CCZ/xauB/p+2VpIocrcQ==
X-Google-Smtp-Source: ABdhPJw4+6gHE62n11a4DToU9lNCniCgkvi+x33BOd94wC0+HgPDvk1KRFmpSkPOQNQpytwNGESEAg==
X-Received: by 2002:a5d:6150:: with SMTP id y16mr29528478wrt.219.1592207089789; 
 Mon, 15 Jun 2020 00:44:49 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id z16sm23227610wrm.70.2020.06.15.00.44.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 00:44:49 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [RESEND PATCH] irqchip/irq-mtk-sysirq: replace spinlock with
 raw_spinlock
Date: Mon, 15 Jun 2020 09:44:45 +0200
Message-Id: <20200615074445.3579-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_004451_527228_C5457BA9 
X-CRM114-Status: GOOD (  13.02  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This driver may take a regular spinlock when a raw spinlock
(irq_desc->lock) is already taken which results in the following
lockdep splat:

=============================
[ BUG: Invalid wait context ]
5.7.0-rc7 #1 Not tainted
-----------------------------
swapper/0/0 is trying to lock:
ffffff800303b798 (&chip_data->lock){....}-{3:3}, at: mtk_sysirq_set_type+0x48/0xc0
other info that might help us debug this:
context-{5:5}
2 locks held by swapper/0/0:
 #0: ffffff800302ee68 (&desc->request_mutex){....}-{4:4}, at: __setup_irq+0xc4/0x8a0
 #1: ffffff800302ecf0 (&irq_desc_lock_class){....}-{2:2}, at: __setup_irq+0xe4/0x8a0
stack backtrace:
CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.7.0-rc7 #1
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

Replace the spinlock_t with raw_spinlock_t to avoid this warning.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
Rebased on top of v5.8-rc1.

 drivers/irqchip/irq-mtk-sysirq.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/irqchip/irq-mtk-sysirq.c b/drivers/irqchip/irq-mtk-sysirq.c
index 73eae5966a40..6ff98b87e5c0 100644
--- a/drivers/irqchip/irq-mtk-sysirq.c
+++ b/drivers/irqchip/irq-mtk-sysirq.c
@@ -15,7 +15,7 @@
 #include <linux/spinlock.h>
 
 struct mtk_sysirq_chip_data {
-	spinlock_t lock;
+	raw_spinlock_t lock;
 	u32 nr_intpol_bases;
 	void __iomem **intpol_bases;
 	u32 *intpol_words;
@@ -37,7 +37,7 @@ static int mtk_sysirq_set_type(struct irq_data *data, unsigned int type)
 	reg_index = chip_data->which_word[hwirq];
 	offset = hwirq & 0x1f;
 
-	spin_lock_irqsave(&chip_data->lock, flags);
+	raw_spin_lock_irqsave(&chip_data->lock, flags);
 	value = readl_relaxed(base + reg_index * 4);
 	if (type == IRQ_TYPE_LEVEL_LOW || type == IRQ_TYPE_EDGE_FALLING) {
 		if (type == IRQ_TYPE_LEVEL_LOW)
@@ -53,7 +53,7 @@ static int mtk_sysirq_set_type(struct irq_data *data, unsigned int type)
 
 	data = data->parent_data;
 	ret = data->chip->irq_set_type(data, type);
-	spin_unlock_irqrestore(&chip_data->lock, flags);
+	raw_spin_unlock_irqrestore(&chip_data->lock, flags);
 	return ret;
 }
 
@@ -212,7 +212,7 @@ static int __init mtk_sysirq_of_init(struct device_node *node,
 		ret = -ENOMEM;
 		goto out_free_which_word;
 	}
-	spin_lock_init(&chip_data->lock);
+	raw_spin_lock_init(&chip_data->lock);
 
 	return 0;
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
