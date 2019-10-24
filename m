Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEAEE3D02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8+52kVQrIx6E3o4fP452PUyYBrIkYnslywr/AO+xmTY=; b=mTXkFubijqJbY+t6u1invZBZKZ
	PUUrImSVk+/hMB6Gmwhy90QdhOrBHuTRE6D5653SR+XTuovqHgHvPmeEsT4EJwz7N1P8vYQQJU6+U
	h1TTjIuvWUqdTeT1FqZkhC0m4Vkqw1/QfLUjYS7DPkjjX+WgzRyWL4h/IAILEHSnMloN3PyxM5i1I
	xXQjGacip3cr6P6DYfeR6nBwRP+pYYmMYY5DiR103J/1nelFB+sSc29DMo2SdYRX2+EIoI93rrH4E
	FycQOAaQwKLazKR4oBSXtU1uM3X5GrtJOKS/8MTzj/BiRuUeW0hgeQD4wYK4dqscvaRJ52dfVHCF3
	5YkHl4AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjWe-0001ww-NI; Thu, 24 Oct 2019 20:16:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjV6-00085A-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:14:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id z11so4083299wro.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nflyxBy3Fu9U2+RG84t/ZVbeUppgbKt41+dBtuuebF0=;
 b=ek5sPHSzYaao6sAVHC55P2Hkq0ZVt8JMs5x3AUEUJCaVozknLx3ZZ0oC/vOPz8/C6P
 kiad7snMiLIC4Yo9plU/57CdeP+srPqaZEhoNTgD3Y+4IFq7fLFRFM8KuJEmYEnFDeow
 UKgJlcSQvpOsnN12/oCr4w8ejw/5e6UMGcfXO0byRq+4FzJJ9RyyruoBws+zPRiVNz2O
 D0tV/IgdC82+xqgr0Gv6Rxjm6cRyAYMPOThWEEfPt7Tjz2KFfWk9NmT64l8ohDkUyhL7
 6AtCFh5U88eiY+B7pKQ/+/g8h+cbqBnw1Vrz9leVVl0xlHbyfGwgeGLhIrNNGDPxwRAR
 +S7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nflyxBy3Fu9U2+RG84t/ZVbeUppgbKt41+dBtuuebF0=;
 b=RhElJvS6Yzp19WujJyHtvQAMA1l03yWoYJGZ+d94sWL6a6NlQ+m+RWF2kfJy2bCja4
 1HlZE6LZIhyLZcBfX7EyB6kw6d90y/HjtCeOllTOm9+oL2wx3vJrYoz8IXrapJMK3gkD
 v8QCJsVXLbyj+3Zd6m0PATFTst/QV5LfhIw5iBP3es0Ukr0YJLYkHWNWG83VfpcIUdjE
 5NMrN8pUUyB9N6A6Z8C7+UB7cytY/+uyyscWwlkuqxxYAEutdOkr14Mm2Zzrd4tic83d
 pFDLDyJ6jTXomnJ13W67f9YDI8zUEVmOsmGQsIy6ND7MlZGDn9AfLZTsgtu+oZtSUQU+
 8wqw==
X-Gm-Message-State: APjAAAXYtpHCGKAKA96K2JsOL//fbNskH8t4/FxZflWvTs2hnqPoe3M3
 47rb7v3PXLvFEJo9M+h33Zg=
X-Google-Smtp-Source: APXvYqzSzhEeQHn7MNftoxjVTbM10FZaz1/fHauXJ2XapiiqDSTKI909t/xPFEX+gu30UzlJ7AVSzA==
X-Received: by 2002:adf:f7d1:: with SMTP id a17mr4830177wrq.111.1571948066846; 
 Thu, 24 Oct 2019 13:14:26 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u21sm4788536wmu.27.2019.10.24.13.14.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 13:14:26 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/5] irqchip/irq-bcm7038-l1: Add PM support
Date: Thu, 24 Oct 2019 13:14:11 -0700
Message-Id: <20191024201415.23454-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024201415.23454-1-f.fainelli@gmail.com>
References: <20191024201415.23454-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_131428_653162_F46E15A0 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Justin Chen <justinpopo6@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Justin Chen <justinpopo6@gmail.com>

The current L1 controller does not mask any interrupts when dropping
into suspend. This mean we can receive unexpected wake up sources.
Modified the BCM7038 L1 controller to mask the all non-wake interrupts
before dropping into suspend.

Signed-off-by: Justin Chen <justinpopo6@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/irqchip/irq-bcm7038-l1.c | 89 ++++++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/drivers/irqchip/irq-bcm7038-l1.c b/drivers/irqchip/irq-bcm7038-l1.c
index fc75c61233aa..689e487be80c 100644
--- a/drivers/irqchip/irq-bcm7038-l1.c
+++ b/drivers/irqchip/irq-bcm7038-l1.c
@@ -27,6 +27,7 @@
 #include <linux/types.h>
 #include <linux/irqchip.h>
 #include <linux/irqchip/chained_irq.h>
+#include <linux/syscore_ops.h>
 
 #define IRQS_PER_WORD		32
 #define REG_BYTES_PER_IRQ_WORD	(sizeof(u32) * 4)
@@ -39,6 +40,10 @@ struct bcm7038_l1_chip {
 	unsigned int		n_words;
 	struct irq_domain	*domain;
 	struct bcm7038_l1_cpu	*cpus[NR_CPUS];
+#ifdef CONFIG_PM_SLEEP
+	struct list_head	list;
+	u32			wake_mask[MAX_WORDS];
+#endif
 	u8			affinity[MAX_WORDS * IRQS_PER_WORD];
 };
 
@@ -287,6 +292,77 @@ static int __init bcm7038_l1_init_one(struct device_node *dn,
 	return 0;
 }
 
+#ifdef CONFIG_PM_SLEEP
+/*
+ * We keep a list of bcm7038_l1_chip used for suspend/resume. This hack is
+ * used because the struct chip_type suspend/resume hooks are not called
+ * unless chip_type is hooked onto a generic_chip. Since this driver does
+ * not use generic_chip, we need to manually hook our resume/suspend to
+ * syscore_ops.
+ */
+static LIST_HEAD(bcm7038_l1_intcs_list);
+static DEFINE_RAW_SPINLOCK(bcm7038_l1_intcs_lock);
+
+static int bcm7038_l1_suspend(void)
+{
+	struct bcm7038_l1_chip *intc;
+	int boot_cpu, word;
+
+	/* Wakeup interrupt should only come from the boot cpu */
+	boot_cpu = cpu_logical_map(0);
+
+	list_for_each_entry(intc, &bcm7038_l1_intcs_list, list) {
+		for (word = 0; word < intc->n_words; word++) {
+			l1_writel(~intc->wake_mask[word],
+				intc->cpus[boot_cpu]->map_base + reg_mask_set(intc, word));
+			l1_writel(intc->wake_mask[word],
+				intc->cpus[boot_cpu]->map_base + reg_mask_clr(intc, word));
+		}
+	}
+
+	return 0;
+}
+
+static void bcm7038_l1_resume(void)
+{
+	struct bcm7038_l1_chip *intc;
+	int boot_cpu, word;
+
+	boot_cpu = cpu_logical_map(0);
+
+	list_for_each_entry(intc, &bcm7038_l1_intcs_list, list) {
+		for (word = 0; word < intc->n_words; word++) {
+			l1_writel(intc->cpus[boot_cpu]->mask_cache[word],
+				intc->cpus[boot_cpu]->map_base + reg_mask_set(intc, word));
+			l1_writel(~intc->cpus[boot_cpu]->mask_cache[word],
+				intc->cpus[boot_cpu]->map_base + reg_mask_clr(intc, word));
+		}
+	}
+}
+
+static struct syscore_ops bcm7038_l1_syscore_ops = {
+	.suspend	= bcm7038_l1_suspend,
+	.resume		= bcm7038_l1_resume,
+};
+
+static int bcm7038_l1_set_wake(struct irq_data *d, unsigned int on)
+{
+	struct bcm7038_l1_chip *intc = irq_data_get_irq_chip_data(d);
+	unsigned long flags;
+	u32 word = d->hwirq / IRQS_PER_WORD;
+	u32 mask = BIT(d->hwirq % IRQS_PER_WORD);
+
+	raw_spin_lock_irqsave(&intc->lock, flags);
+	if (on)
+		intc->wake_mask[word] |= mask;
+	else
+		intc->wake_mask[word] &= ~mask;
+	raw_spin_unlock_irqrestore(&intc->lock, flags);
+
+	return 0;
+}
+#endif
+
 static struct irq_chip bcm7038_l1_irq_chip = {
 	.name			= "bcm7038-l1",
 	.irq_mask		= bcm7038_l1_mask,
@@ -295,6 +371,9 @@ static struct irq_chip bcm7038_l1_irq_chip = {
 #ifdef CONFIG_SMP
 	.irq_cpu_offline	= bcm7038_l1_cpu_offline,
 #endif
+#ifdef CONFIG_PM_SLEEP
+	.irq_set_wake		= bcm7038_l1_set_wake,
+#endif
 };
 
 static int bcm7038_l1_map(struct irq_domain *d, unsigned int virq,
@@ -340,6 +419,16 @@ int __init bcm7038_l1_of_init(struct device_node *dn,
 		goto out_unmap;
 	}
 
+#ifdef CONFIG_PM_SLEEP
+	/* Add bcm7038_l1_chip into a list */
+	raw_spin_lock(&bcm7038_l1_intcs_lock);
+	list_add_tail(&intc->list, &bcm7038_l1_intcs_list);
+	raw_spin_unlock(&bcm7038_l1_intcs_lock);
+
+	if (list_is_singular(&bcm7038_l1_intcs_list))
+		register_syscore_ops(&bcm7038_l1_syscore_ops);
+#endif
+
 	pr_info("registered BCM7038 L1 intc (%pOF, IRQs: %d)\n",
 		dn, IRQS_PER_WORD * intc->n_words);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
