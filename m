Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D9015A376
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 09:40:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUkzfPGa6tcQyYk/gftoAlg5IEV32AUiAtscdW+7D/w=; b=reK5BpQduRKHAS
	uvEK1eg2BLlI45ZkI0RhUTxP7xtp05x0eJMqsuDm2YDySSfbvOkXjvfGyT/C9wPeTJmLtpmQL9R4b
	cxFrLJeG9pgqXuusy9ib/Hsj2HV68ekq6zp6CpYv/TI50U/Mn21Ro6XiJ+xHnkMzU+0mFfmOL5wCT
	FodMpLHT0KugapOkKitcW5duIaaCeLX2fykRvDt98prHAjCOMCmk1bhY+++8aPjfllbXJM9XvI4/V
	wM+K3IXeKLPFbIrvosMY72wIBNn5tOS1jZRzuZ4DQBUF3Hkfr7jGJxx4LHJC2xzy/liX6B8PQh9H0
	lwHanuPlrO8rFTMc4Ktg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1nZY-00075r-Lt; Wed, 12 Feb 2020 08:40:40 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1nZ2-0005zr-46
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 08:40:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id z7so1090039wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 00:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9DJl9GCcO4mEWyRrTF90UKga2x2vqBOpYU34Ub2CR2M=;
 b=OOx3LgAYagkCcZOvOZgg3jnVlIP+iInKjA/8vzzVtNSD79JwDxv0JtKc6caJJ0mOkN
 1o4XdekgdN3815BeioyAkXqvWsE94aQpaA4SAM+T7fOaY/j1enWukajmAa1tBFq51/C4
 ksoCjUHiQx62twnK2bwXRN2pLOxGETiQUGzZfblDU7y75NSqvwwaOGB6/W0Xz24jFr/V
 M//DPJc4ONqEkBC7QTYrVCNyea9T45dC7Vaoxyi3IJ63QzMG4yXo0jrfMVM5YWJ1r4Sp
 2F9t5RenTsB/TMBjGsfx5g5vNU4qFwwCh2wYive8PRYdnb0Argtjdn/KChsBLJF1cYsj
 eqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=9DJl9GCcO4mEWyRrTF90UKga2x2vqBOpYU34Ub2CR2M=;
 b=WP6MNwIx5sNsc2ptS+0BOUz2JrbOwpN6cJ8JaTnR3tlWr0YmJ8//MyOzgU7MJOCYp6
 NmVf3cCGvQiqf2NU2JQfGhvfm9+CyT/MNkWZ8hG0gCWFTvF4aVhibGy5eVxJMsJ+fn3S
 sV/ZqNmB8biOLAXZHRdA3OwKbgCt09sTyyhUzk83oydEQbpGgzmwTZhpXfCEFsdhQPb/
 UEHP6iVgzbQ2qqDM67KtM01umFC7AAwye5psZyz0VeyxQ+Tmd9fA9ZozgeOjU/eDqkYz
 x5AeoyJaK/6pW25xIXwlqRWGs6+Oc0gSjZBhw72uqr0z3OqlQLPjqvUmDkSXPKdDK3as
 gPkA==
X-Gm-Message-State: APjAAAX198pECxUV++cDgwyP9I+2wHod0TOfsvNAGwWoD0SLCNpNtxKh
 D3qkoXFYKQcjCev9/lcfQNM1LQ==
X-Google-Smtp-Source: APXvYqzp2ys9j1IYE4oAaX1GOLnq/T+bZWI4c4aFjaPILm75tmPRqP+VgxZi6KvFiZ8hLir/kSZqTg==
X-Received: by 2002:adf:aadb:: with SMTP id i27mr14785757wrc.105.1581496805371; 
 Wed, 12 Feb 2020 00:40:05 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id a22sm7414139wmd.20.2020.02.12.00.40.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 00:40:04 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH 3/3] irqchip: xilinx: Use handle_domain_irq()
Date: Wed, 12 Feb 2020 09:39:58 +0100
Message-Id: <49c5a093d7ba1f20930c7433ed632e7c9bc7a2cb.1581496793.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <cover.1581496793.git.michal.simek@xilinx.com>
References: <cover.1581496793.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_004008_218699_5C9099B3 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Call generic domain specific irq handler which does the most of things
self. Also get rid of concurrent_irq counting which hasn't been exported
anywhere.
Based on this loop was also optimized by using do/while loop instead of
goto loop.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Reviewed-by: Stefan Asserhall <stefan.asserhall@xilinx.com>
---

 arch/microblaze/Kconfig           |  1 +
 arch/microblaze/kernel/irq.c      |  5 ----
 drivers/irqchip/irq-xilinx-intc.c | 44 +++++++++++--------------------
 3 files changed, 16 insertions(+), 34 deletions(-)

diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
index 3a314aa2efa1..242f58ec086b 100644
--- a/arch/microblaze/Kconfig
+++ b/arch/microblaze/Kconfig
@@ -48,6 +48,7 @@ config MICROBLAZE
 	select MMU_GATHER_NO_RANGE if MMU
 	select SPARSE_IRQ
 	select GENERIC_IRQ_MULTI_HANDLER
+	select HANDLE_DOMAIN_IRQ
 
 # Endianness selection
 choice
diff --git a/arch/microblaze/kernel/irq.c b/arch/microblaze/kernel/irq.c
index 1f8cb4c4f74f..0b37dde60a1e 100644
--- a/arch/microblaze/kernel/irq.c
+++ b/arch/microblaze/kernel/irq.c
@@ -22,13 +22,8 @@
 
 void __irq_entry do_IRQ(struct pt_regs *regs)
 {
-	struct pt_regs *old_regs = set_irq_regs(regs);
 	trace_hardirqs_off();
-
-	irq_enter();
 	handle_arch_irq(regs);
-	irq_exit();
-	set_irq_regs(old_regs);
 	trace_hardirqs_on();
 }
 
diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index ad9e678c24ac..fa468e618762 100644
--- a/drivers/irqchip/irq-xilinx-intc.c
+++ b/drivers/irqchip/irq-xilinx-intc.c
@@ -125,20 +125,6 @@ static unsigned int xintc_get_irq_local(struct xintc_irq_chip *irqc)
 	return irq;
 }
 
-static unsigned int xintc_get_irq(void)
-{
-	u32 hwirq;
-	unsigned int irq = -1;
-
-	hwirq = xintc_read(primary_intc, IVR);
-	if (hwirq != -1U)
-		irq = irq_find_mapping(primary_intc->root_domain, hwirq);
-
-	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
-
-	return irq;
-}
-
 static int xintc_map(struct irq_domain *d, unsigned int irq, irq_hw_number_t hw)
 {
 	struct xintc_irq_chip *irqc = d->host_data;
@@ -178,23 +164,23 @@ static void xil_intc_irq_handler(struct irq_desc *desc)
 	chained_irq_exit(chip, desc);
 }
 
-static u32 concurrent_irq;
-
 static void xil_intc_handle_irq(struct pt_regs *regs)
 {
-	unsigned int irq;
-
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
+	u32 hwirq;
+	struct xintc_irq_chip *irqc = primary_intc;
+
+	do {
+		hwirq = xintc_read(irqc, IVR);
+		if (hwirq != -1U) {
+			int ret;
+
+			ret = handle_domain_irq(irqc->root_domain, hwirq, regs);
+			WARN_ONCE(ret, "Unhandled HWIRQ %d\n", hwirq);
+			continue;
+		}
+
+		break;
+	} while (1);
 }
 
 static int __init xilinx_intc_of_init(struct device_node *intc,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
