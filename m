Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9713EE3D0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QmJ/z7UlF6DuMG30Dc7SAgtXyAFXQdG6MxMy4vmrDqM=; b=RcAWNYgQaJNIb3Wn9gI4Vd0R1e
	2jggZ7mWzBslRQjw0bhTSM3JY+pJ4sW3DsSSfxSJBqYpRvfqR67qTudUFW/GkbSIKqVu6jrHCeAis
	DqBMzjlTc98eKI/zqvm9FAk3q2Wm8B+vi6rFS9MWZwDwJwDyGYcfs5dpMn4beN6tWL4JjVeqYHrp5
	kjfAeNeqawLQYtoBTRyQCvIzm5xyZACaH+jOVFOnDknmlKRv961f35cWziQQQ3I+8087Ek0NSfG02
	cUBnYjcaG2p3zQJAw2LkgYKOaWkxwwpYbazau5bEj3jcjFmuhaLB33GcSzYrENP3zNiDAMtu+Yb7k
	5dSK/hiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjXb-0002x2-6M; Thu, 24 Oct 2019 20:17:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjVH-0008FI-Eq
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:14:42 +0000
Received: by mail-wr1-x442.google.com with SMTP id v9so16180159wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5CCYXEJ3KS4BOi54EgFM7QurD64PvAhJciYb1sSHmbI=;
 b=Ou4e8uZhb0MKkl+6TqSr10ochGdvvF9mOd+5R6wpXD/J+IuzS6KzgPFZkI8E8iSISi
 k4HaktQ0/4aAaUurM8dTovI2qUiOvHnRd+zqyp4TgrXysptd5Pif4Vq9YfNt9ldpm1qq
 dh5pBaKy/+jhExczjKSKL4A2PWQ5U748SQ8zBD/uIpa2sTALxfEYe5C80HCY+d5be39k
 Wq0/CHglZb8EnUHlTGcCwT+32ThQyF1054Hqt8Q+d4oqUUz5Irvs2kDCazgzC0OEwaKf
 hfTF90sR+OrFV/VFQacFdYYSU383mZcG02loD9yB28x8XQzeJDSCd2jHHdqfp3enKi/T
 GQ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5CCYXEJ3KS4BOi54EgFM7QurD64PvAhJciYb1sSHmbI=;
 b=p9sZFT9ZJhfeEd5PZ1INLiu6A1cv6lzDFU90PH1ptZXrdIemg6h6HEIJU7n6o96m+z
 uB2zDyTZta62t32KUtxMXD5PGTDqZRL7tJhn7qbpQJvsUt/wyWYjhOfv2YpIKmVZidag
 3chmo4TtgnaqyYYC5Dit/Lojkj5oZAcNFmD9NrrpRluf8/hR4QzpCcqmGKhJBtwqdB0M
 3NJh4UV1Way7gqPbPyWE+BbOVM5N0Cqedb39IlN5ELIREre0oODLlsMENf5059pm8ae3
 /2N2/faAr4uG4qIKaL6K9AtfAyuCdiyjakOrrfTvHmixvr+8hhtLXJGviXmXDy736rqC
 1xrw==
X-Gm-Message-State: APjAAAW4o8ewQITBiduA9LbHwwDvQfoFiHxjsO8nNFHTQ9fOFJQZ/bvZ
 oMm8fZD/dNcvJdwQLkW9z3Q=
X-Google-Smtp-Source: APXvYqx80JcncS9iN6IxEENWG5/0ZghTIF3B3mdMMNXvddSGhOqxHC4OV5T7e9Mqfe87OMivYBzU1A==
X-Received: by 2002:adf:9185:: with SMTP id 5mr5725955wri.389.1571948077944;
 Thu, 24 Oct 2019 13:14:37 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u21sm4788536wmu.27.2019.10.24.13.14.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 13:14:37 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/5] irqchip/irq-bcm7038-l1: Support brcm,int-fwd-mask
Date: Thu, 24 Oct 2019 13:14:15 -0700
Message-Id: <20191024201415.23454-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024201415.23454-1-f.fainelli@gmail.com>
References: <20191024201415.23454-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_131439_570642_5EECBFE7 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 <bcm-kernel-feedback-list@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On some specific chips like 7211 we need to leave some interrupts
untouched/forwarded to the VPU which is another agent in the system
making use of that interrupt controller hardware (goes to both ARM GIC
and VPU L1 interrupt controller). Make that possible by using the
existing brcm,int-fwd-mask property and take necessary actions to avoid
masking that interrupt as well as not allowing Linux to map them.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/irqchip/irq-bcm7038-l1.c | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/irqchip/irq-bcm7038-l1.c b/drivers/irqchip/irq-bcm7038-l1.c
index 45879e59e58b..cbf01afcd2a6 100644
--- a/drivers/irqchip/irq-bcm7038-l1.c
+++ b/drivers/irqchip/irq-bcm7038-l1.c
@@ -44,6 +44,7 @@ struct bcm7038_l1_chip {
 	struct list_head	list;
 	u32			wake_mask[MAX_WORDS];
 #endif
+	u32			irq_fwd_mask[MAX_WORDS];
 	u8			affinity[MAX_WORDS * IRQS_PER_WORD];
 };
 
@@ -254,6 +255,7 @@ static int __init bcm7038_l1_init_one(struct device_node *dn,
 	resource_size_t sz;
 	struct bcm7038_l1_cpu *cpu;
 	unsigned int i, n_words, parent_irq;
+	int ret;
 
 	if (of_address_to_resource(dn, idx, &res))
 		return -EINVAL;
@@ -267,6 +269,14 @@ static int __init bcm7038_l1_init_one(struct device_node *dn,
 	else if (intc->n_words != n_words)
 		return -EINVAL;
 
+	ret = of_property_read_u32_array(dn , "brcm,int-fwd-mask",
+					 intc->irq_fwd_mask, n_words);
+	if (ret != 0 && ret != -EINVAL) {
+		/* property exists but has the wrong number of words */
+		pr_err("invalid brcm,int-fwd-mask property\n");
+		return -EINVAL;
+	}
+
 	cpu = intc->cpus[idx] = kzalloc(sizeof(*cpu) + n_words * sizeof(u32),
 					GFP_KERNEL);
 	if (!cpu)
@@ -277,8 +287,11 @@ static int __init bcm7038_l1_init_one(struct device_node *dn,
 		return -ENOMEM;
 
 	for (i = 0; i < n_words; i++) {
-		l1_writel(0xffffffff, cpu->map_base + reg_mask_set(intc, i));
-		cpu->mask_cache[i] = 0xffffffff;
+		l1_writel(~intc->irq_fwd_mask[i],
+			  cpu->map_base + reg_mask_set(intc, i));
+		l1_writel(intc->irq_fwd_mask[i],
+			  cpu->map_base + reg_mask_clr(intc, i));
+		cpu->mask_cache[i] = ~intc->irq_fwd_mask[i];
 	}
 
 	parent_irq = irq_of_parse_and_map(dn, idx);
@@ -311,15 +324,17 @@ static int bcm7038_l1_suspend(void)
 {
 	struct bcm7038_l1_chip *intc;
 	int boot_cpu, word;
+	u32 val;
 
 	/* Wakeup interrupt should only come from the boot cpu */
 	boot_cpu = cpu_logical_map(0);
 
 	list_for_each_entry(intc, &bcm7038_l1_intcs_list, list) {
 		for (word = 0; word < intc->n_words; word++) {
-			l1_writel(~intc->wake_mask[word],
+			val = intc->wake_mask[word] | intc->irq_fwd_mask[word];
+			l1_writel(~val,
 				intc->cpus[boot_cpu]->map_base + reg_mask_set(intc, word));
-			l1_writel(intc->wake_mask[word],
+			l1_writel(val,
 				intc->cpus[boot_cpu]->map_base + reg_mask_clr(intc, word));
 		}
 	}
@@ -383,6 +398,13 @@ static struct irq_chip bcm7038_l1_irq_chip = {
 static int bcm7038_l1_map(struct irq_domain *d, unsigned int virq,
 			  irq_hw_number_t hw_irq)
 {
+	struct bcm7038_l1_chip *intc = d->host_data;
+	u32 mask = BIT(hw_irq % IRQS_PER_WORD);
+	u32 word = hw_irq / IRQS_PER_WORD;
+
+	if (intc->irq_fwd_mask[word] & mask)
+		return -EPERM;
+
 	irq_set_chip_and_handler(virq, &bcm7038_l1_irq_chip, handle_level_irq);
 	irq_set_chip_data(virq, d->host_data);
 	irqd_set_single_target(irq_desc_get_irq_data(irq_to_desc(virq)));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
