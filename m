Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2C915A375
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 09:40:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5hyHHV64MZsDAy40FiT9S2H68ExefFU/d6TFdQFnfo=; b=YwoC+WdKP6cQLJ
	zFfGatD1ouN1mjEjKBSKCTDeSt07LRg7j0ha4+p8DiuL8q8L4jTGUlonYzwCkfmTA1B/EdnskBE3t
	11WcOoj/cLod4CbrmFj57caVoMayGaDgoCKaXncWc0LQhjFu+Dwi59iSt9+n7h41AuJJLJi2Zl6zZ
	rajLFPZNE3crZYikJe4Fo+8itXiilRA+lSNNi0pBQII1p9jJwlCRzEDmmZL1bqbU/B6zoE4xhRnP8
	3ozJ+pS6fkItTIXdFm0KJNDiwJ5GgHaD+Ce8BNwbP0j6qZ8Bcimp2frCrr3ooe8aQY0NDA95+Sw3s
	21kWdBHUGKl+5FkzocmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1nZL-0006s2-Gt; Wed, 12 Feb 2020 08:40:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1nZ1-0005lP-6A
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 08:40:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so1133701wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 00:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9jZicbKMFy+RIS6pl/MmIhoSGk5p/0+4DIwC/EbIzH0=;
 b=nRwmkoERZHKD5J0eRNErsC0qWHU+FzbYU0vgIsyfoP7Yq59ubCNPkfeypsq2+oj30z
 NRQRm30wf81aaDSqMEj/KYIet+TaG3ovZcIV6M4xngNYju2oQZx4pgIaaWexR1vA4Iif
 cbu+tf3KenFBcaj8F8TVYUGbCNG1p44UbwcD66pg2vCAjRApis4H7pbSlK5coG6UCIsL
 NVDIg7T3voBRYNjlbwHX94QfqzFeEbXCtqE+ECpFHAYOLhh/2CARDT6tiPzUxOhwqIaC
 g1giMe/54wBtaE5QAr282YOnUesamiePZLkFCGHnDU3ijzS4uwOoMuQag98JFwW5lzeW
 MOHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=9jZicbKMFy+RIS6pl/MmIhoSGk5p/0+4DIwC/EbIzH0=;
 b=OB8zuD/0OeOpmphSNOPvUVYix7QEAkhfQr5yxIkm6hRoo+JGiEsduJl2Nb2qR9w1rj
 UxRl8UB8DJ12FWq5ZfMPrlpGzUijx+LmS2rqjAob8X+XuajPE1v/coRlKRyRNRuQHt8Y
 kiTvzosGjxK23qeE+sG7XEur734ZjQTiLOW013DqISRA/FQGsN0walynnQmm0qESUZUq
 Mk28OJoqbRYfoi/ZScxqFJc/LdAzLqMulZoB6TcfeRklPT5nV+B7wyTZWLgsg/XFC/l2
 Eqjgcmb1OmgAW4TynHKNOY1LvSC3V2HfKw+Yywo8zgLU2N7g+ydgvhepbNph2X7VgG39
 6m3Q==
X-Gm-Message-State: APjAAAU06YVXRZjBNIq7Zc1VSNb4faXIRrTGGauRB3aUrkjx04EA/shK
 /HxzQId2ieh1pUvp3pjBGJymkg==
X-Google-Smtp-Source: APXvYqyfmlPZwTZvsJkBok9IupLxCmiaAM77FpRfWZ4v9639Z6veM2fVq7Avk5yeySjlmJjbT6HuQA==
X-Received: by 2002:adf:dd4d:: with SMTP id u13mr14814581wrm.394.1581496803679; 
 Wed, 12 Feb 2020 00:40:03 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id g15sm8928688wro.65.2020.02.12.00.40.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 00:40:03 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH 2/3] irqchip: xilinx: Enable generic irq multi handler
Date: Wed, 12 Feb 2020 09:39:57 +0100
Message-Id: <5813deafd27acf07b936ef7a2ac029b7a95ee7be.1581496793.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <cover.1581496793.git.michal.simek@xilinx.com>
References: <cover.1581496793.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_004007_249175_5FE1F886 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Mubin Sayyed <mubinusm@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Register default arch handler via driver instead of directly pointing to
xilinx intc controller. This patch makes architecture code more generic.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Reviewed-by: Stefan Asserhall <stefan.asserhall@xilinx.com>
---

 arch/microblaze/Kconfig           |  1 +
 arch/microblaze/include/asm/irq.h |  3 ---
 arch/microblaze/kernel/irq.c      | 16 +---------------
 drivers/irqchip/irq-xilinx-intc.c | 22 +++++++++++++++++++++-
 4 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
index 6a331bd57ea8..3a314aa2efa1 100644
--- a/arch/microblaze/Kconfig
+++ b/arch/microblaze/Kconfig
@@ -47,6 +47,7 @@ config MICROBLAZE
 	select CPU_NO_EFFICIENT_FFS
 	select MMU_GATHER_NO_RANGE if MMU
 	select SPARSE_IRQ
+	select GENERIC_IRQ_MULTI_HANDLER
 
 # Endianness selection
 choice
diff --git a/arch/microblaze/include/asm/irq.h b/arch/microblaze/include/asm/irq.h
index eac2fb4b3fb9..5166f0893e2b 100644
--- a/arch/microblaze/include/asm/irq.h
+++ b/arch/microblaze/include/asm/irq.h
@@ -14,7 +14,4 @@
 struct pt_regs;
 extern void do_IRQ(struct pt_regs *regs);
 
-/* should be defined in each interrupt controller driver */
-extern unsigned int xintc_get_irq(void);
-
 #endif /* _ASM_MICROBLAZE_IRQ_H */
diff --git a/arch/microblaze/kernel/irq.c b/arch/microblaze/kernel/irq.c
index 903dad822fad..1f8cb4c4f74f 100644
--- a/arch/microblaze/kernel/irq.c
+++ b/arch/microblaze/kernel/irq.c
@@ -20,27 +20,13 @@
 #include <linux/irqchip.h>
 #include <linux/of_irq.h>
 
-static u32 concurrent_irq;
-
 void __irq_entry do_IRQ(struct pt_regs *regs)
 {
-	unsigned int irq;
 	struct pt_regs *old_regs = set_irq_regs(regs);
 	trace_hardirqs_off();
 
 	irq_enter();
-	irq = xintc_get_irq();
-next_irq:
-	BUG_ON(!irq);
-	generic_handle_irq(irq);
-
-	irq = xintc_get_irq();
-	if (irq != -1U) {
-		pr_debug("next irq: %d\n", irq);
-		++concurrent_irq;
-		goto next_irq;
-	}
-
+	handle_arch_irq(regs);
 	irq_exit();
 	set_irq_regs(old_regs);
 	trace_hardirqs_on();
diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index cf1bb470d7b5..ad9e678c24ac 100644
--- a/drivers/irqchip/irq-xilinx-intc.c
+++ b/drivers/irqchip/irq-xilinx-intc.c
@@ -125,7 +125,7 @@ static unsigned int xintc_get_irq_local(struct xintc_irq_chip *irqc)
 	return irq;
 }
 
-unsigned int xintc_get_irq(void)
+static unsigned int xintc_get_irq(void)
 {
 	u32 hwirq;
 	unsigned int irq = -1;
@@ -178,6 +178,25 @@ static void xil_intc_irq_handler(struct irq_desc *desc)
 	chained_irq_exit(chip, desc);
 }
 
+static u32 concurrent_irq;
+
+static void xil_intc_handle_irq(struct pt_regs *regs)
+{
+	unsigned int irq;
+
+	irq = xintc_get_irq();
+next_irq:
+	BUG_ON(!irq);
+	generic_handle_irq(irq);
+
+	irq = xintc_get_irq();
+	if (irq != -1U) {
+		pr_debug("next irq: %d\n", irq);
+		++concurrent_irq;
+		goto next_irq;
+	}
+}
+
 static int __init xilinx_intc_of_init(struct device_node *intc,
 					     struct device_node *parent)
 {
@@ -248,6 +267,7 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
 	} else {
 		primary_intc = irqc;
 		irq_set_default_host(primary_intc->root_domain);
+		set_handle_irq(xil_intc_handle_irq);
 	}
 
 	return 0;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
