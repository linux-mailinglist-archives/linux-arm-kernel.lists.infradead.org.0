Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8E016A5B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vwbx2GYbXC+pEXTjuJe9oW5Sq8iNHa8EaQfjOubbCCs=; b=KJXZN28imG8ED2
	3UuTmd2MoEof7DACaICpnxSn0jlJzxd4aFPAvFL7t5FuoB8+iUrO8MiTc+INX1u26jjxhOt3Iq+zt
	o+6Apk0kPpqinPXLBJMSaHnf/Lq3tMX2HaYM3b07bDZQOGt5XAtkn97iOnexmB2bRcl0PYns74ZnU
	LxfzyStKCmOlxWZcSrQiNygJr+mX8vPC/DJ6oYSww3F29bhkd7hcWfZiaVJMtoo3IovBdJTkrb3iD
	oYzoC0yQ2MFhO0p/15/Sp9jv6Kqa+dIKLfF5euQ9Xiir9LlaGKIdTf/0TAi/rBImxkwwG+PiFwMCa
	0CLdrLGXvzpk5y7TTS4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CUr-00030M-J1; Mon, 24 Feb 2020 12:06:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CUH-0002al-QA
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:05:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id u6so10113126wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 04:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DUkdsoISGF+J5hM2bCbp8OmU4IW6L/hiKVoM76E2NY0=;
 b=nKxeR/3sazX3BebnyihmFvvUyBbUVqRGNzu65qJ2GLwT3iQ5HMzfbl/FAMUqaeOwrb
 SqHqvjkeJuKgBZKemDsqvboUZGBUr1IT+NbomRhjWIv2pqu0NS7L7nDfnpjcBtVHLyhf
 q+Bm0UCoDEZSXemb8n8rB0hu1WwEAB+g0NehiwEY3A9wDMZUweDD+Y+xT1SFkQvWJt9i
 JaP6J8TyY+mkSycywI67JLYiMndwgeKNMmz3EPDBxLGf0/fAjEEBEztj/+io/PH9ewM5
 u0s4xJLR2Xh+pc7UH15BbLxGfjDXrWApIP9mO1j4c5U9Y0dW/F2aobgEY2Pwhqe7Oky8
 WODQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=DUkdsoISGF+J5hM2bCbp8OmU4IW6L/hiKVoM76E2NY0=;
 b=KgsFDsKSrdrPESET3DJMF2lFENj/h8KUy6rtn6L5oQk9hOCWNuPQuD2oIrBSHZlbwI
 P/jQQIaAlM9nHYCu3339PFQtuNjf85IMBRhA5tgj1OCycvePqbcRZcnXEC9VtMpk58tV
 2NXNqFE72yfMRYSHFnF9XnIe5CKiQ2f3fZFhIP8AVFgY4dk4fSyEqc1zKQOZ/QnCFnmc
 UayHINNKhfL2eYaBV/03lN1QOe/1y9tW3ULu9wbF1GP02aLn0wJazVROqh5uG2IiPaHj
 iCo+N4n9LMoLqhcMjATa4BVxSR9rVMWezYjEj1Ap7pF6w22J1FobEOfQ/yxK3TIBkgDJ
 FAJA==
X-Gm-Message-State: APjAAAX/MnYnmADFfOfezBOHRKattVC/Pxzd1BaJ4FZg/B0k5zEGqIja
 iAANhDyACX8jQnPa3aOSp65Hfg==
X-Google-Smtp-Source: APXvYqxPiSKkSwB7S1weGEfQSj4ojhrZnGAfhByqSsMTDzpaQaPWe8GyuFl4RdsVu56FE6LaLDp3Ug==
X-Received: by 2002:adf:a746:: with SMTP id e6mr66189155wrd.329.1582545924570; 
 Mon, 24 Feb 2020 04:05:24 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id p26sm17280894wmc.24.2020.02.24.04.05.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 04:05:23 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, maz@kernel.org
Subject: [PATCH v2 2/2] irqchip: xilinx: Enable generic irq multi handler
Date: Mon, 24 Feb 2020 13:05:14 +0100
Message-Id: <a7a2b3c2df5534dd17844472a0a3fbcffb58b133.1582545908.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1582545908.git.michal.simek@xilinx.com>
References: <cover.1582545908.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_040525_850365_C8FFEDD6 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Mubin Sayyed <mubinusm@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Register default arch handler via driver instead of directly pointing to
xilinx intc controller. This patch makes architecture code more generic.

Driver calls generic domain specific irq handler which does the most of
things self. Also get rid of concurrent_irq counting which hasn't been
exported anywhere.
Based on this loop was also optimized by using do/while loop instead of
goto loop.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Reviewed-by: Stefan Asserhall <stefan.asserhall@xilinx.com>

---

Changes in v2:
- Merge generic irq multi handler(v1 2/3) and domain irq patch (v1 3/3) from together
- Add likely() suggested by Marc

 arch/microblaze/Kconfig           |  2 ++
 arch/microblaze/include/asm/irq.h |  3 ---
 arch/microblaze/kernel/irq.c      | 21 +------------------
 drivers/irqchip/irq-xilinx-intc.c | 34 ++++++++++++++++++-------------
 4 files changed, 23 insertions(+), 37 deletions(-)

diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
index 6a331bd57ea8..242f58ec086b 100644
--- a/arch/microblaze/Kconfig
+++ b/arch/microblaze/Kconfig
@@ -47,6 +47,8 @@ config MICROBLAZE
 	select CPU_NO_EFFICIENT_FFS
 	select MMU_GATHER_NO_RANGE if MMU
 	select SPARSE_IRQ
+	select GENERIC_IRQ_MULTI_HANDLER
+	select HANDLE_DOMAIN_IRQ
 
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
index 903dad822fad..0b37dde60a1e 100644
--- a/arch/microblaze/kernel/irq.c
+++ b/arch/microblaze/kernel/irq.c
@@ -20,29 +20,10 @@
 #include <linux/irqchip.h>
 #include <linux/of_irq.h>
 
-static u32 concurrent_irq;
-
 void __irq_entry do_IRQ(struct pt_regs *regs)
 {
-	unsigned int irq;
-	struct pt_regs *old_regs = set_irq_regs(regs);
 	trace_hardirqs_off();
-
-	irq_enter();
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
-	irq_exit();
-	set_irq_regs(old_regs);
+	handle_arch_irq(regs);
 	trace_hardirqs_on();
 }
 
diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index cf1bb470d7b5..2de573ee9764 100644
--- a/drivers/irqchip/irq-xilinx-intc.c
+++ b/drivers/irqchip/irq-xilinx-intc.c
@@ -125,20 +125,6 @@ static unsigned int xintc_get_irq_local(struct xintc_irq_chip *irqc)
 	return irq;
 }
 
-unsigned int xintc_get_irq(void)
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
@@ -178,6 +164,25 @@ static void xil_intc_irq_handler(struct irq_desc *desc)
 	chained_irq_exit(chip, desc);
 }
 
+static void xil_intc_handle_irq(struct pt_regs *regs)
+{
+	u32 hwirq;
+	struct xintc_irq_chip *irqc = primary_intc;
+
+	do {
+		hwirq = xintc_read(irqc, IVR);
+		if (likely(hwirq != -1U)) {
+			int ret;
+
+			ret = handle_domain_irq(irqc->root_domain, hwirq, regs);
+			WARN_ONCE(ret, "Unhandled HWIRQ %d\n", hwirq);
+			continue;
+		}
+
+		break;
+	} while (1);
+}
+
 static int __init xilinx_intc_of_init(struct device_node *intc,
 					     struct device_node *parent)
 {
@@ -248,6 +253,7 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
 	} else {
 		primary_intc = irqc;
 		irq_set_default_host(primary_intc->root_domain);
+		set_handle_irq(xil_intc_handle_irq);
 	}
 
 	return 0;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
