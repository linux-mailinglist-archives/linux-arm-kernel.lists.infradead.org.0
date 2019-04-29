Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148BEE722
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wNOpricXehO/8bGIt+opiIKeImQQLKM6ZWAx+KM47zQ=; b=WjFFPoBXEX9EVsJepq6/4QFj4M
	DHvt+8u6LIujiaP7g6ZYuD6Ykj9bP02dqymmQOG6d8lCdMQ92gQ50vwYonGibLaVtG148tvZPlemk
	hPND+w0LTlibbp+S/34t3Y9ordg9JDzyRZUwTQk+0gcU69ns0AwKu2n09TwdmLxxogtmHGItqItrM
	/8TLwOVQ2utt/Rb26eseRYjALtzokO6eofBPkqxHjvqYjH70eIDYOaY7UBK81d6CmkgWuI1+umhSe
	QGhnm7e9JUTC430WF1pg2Dqbv8hnF2tVM31qq6xhZuk45wkRRMAHE3vyTAbU8JWB8hnLA+Flh2CoI
	Jx0Al1QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8hz-000320-93; Mon, 29 Apr 2019 16:00:47 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8hd-0002o6-KR
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:00:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38AB116A3;
 Mon, 29 Apr 2019 09:00:25 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 06D243F5C1;
 Mon, 29 Apr 2019 09:00:22 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/5] arm64: irqflags: Introduce explicit debugging for IRQ
 priorities
Date: Mon, 29 Apr 2019 17:00:06 +0100
Message-Id: <1556553607-46531-5-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
References: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_090025_820822_C0025E47 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using IRQ priority masking to enable/disable interrupts is a bit
sensitive as it requires to deal with both ICC_PMR_EL1 and PSR.I.

Introduce some validity checks to both highlight the states in which
functions dealing with IRQ enabling/disabling can (not) be called, and
bark a warning when called in an unexpected state.

Since these checks are done on hotpaths, introduce a build option to
choose whether to do the checking.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/Kconfig                 | 11 +++++++++++
 arch/arm64/include/asm/daifflags.h |  9 +++++++++
 arch/arm64/include/asm/irqflags.h  | 14 ++++++++++++++
 3 files changed, 34 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 7e34b9e..3fb38f3 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1359,6 +1359,17 @@ config ARM64_PSEUDO_NMI

 	  If unsure, say N

+if ARM64_PSEUDO_NMI
+config ARM64_DEBUG_PRIORITY_MASKING
+	bool "Debug interrupt priority masking"
+	help
+	  This adds runtime checks to functions enabling/disabling
+	  interrupts when using priority masking. The additional checks verify
+	  the validity of ICC_PMR_EL1 when calling concerned functions.
+
+	  If unsure, say N
+endif
+
 config RELOCATABLE
 	bool
 	help
diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
index a32ece9..9512968 100644
--- a/arch/arm64/include/asm/daifflags.h
+++ b/arch/arm64/include/asm/daifflags.h
@@ -28,6 +28,11 @@
 /* mask/save/unmask/restore all exceptions, including interrupts. */
 static inline void local_daif_mask(void)
 {
+	WARN_ON(IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
+		system_uses_irq_prio_masking() &&
+		(read_sysreg_s(SYS_ICC_PMR_EL1) == (GIC_PRIO_IRQOFF |
+						    GIC_PRIO_IGNORE_PMR)));
+
 	asm volatile(
 		"msr	daifset, #0xf		// local_daif_mask\n"
 		:
@@ -62,6 +67,10 @@ static inline void local_daif_restore(unsigned long flags)
 {
 	bool irq_disabled = flags & PSR_I_BIT;

+	WARN_ON(IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
+		system_uses_irq_prio_masking() &&
+		!(read_sysreg(daif) & PSR_I_BIT));
+
 	if (!irq_disabled) {
 		trace_hardirqs_on();

diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
index 516cdfc..a40abc2 100644
--- a/arch/arm64/include/asm/irqflags.h
+++ b/arch/arm64/include/asm/irqflags.h
@@ -40,6 +40,13 @@
  */
 static inline void arch_local_irq_enable(void)
 {
+	if (IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
+	    system_uses_irq_prio_masking()) {
+		u32 pmr = read_sysreg_s(SYS_ICC_PMR_EL1);
+
+		WARN_ON(pmr != GIC_PRIO_IRQON && pmr != GIC_PRIO_IRQOFF);
+	}
+
 	asm volatile(ALTERNATIVE(
 		"msr	daifclr, #2		// arch_local_irq_enable\n"
 		"nop",
@@ -53,6 +60,13 @@ static inline void arch_local_irq_enable(void)

 static inline void arch_local_irq_disable(void)
 {
+	if (IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
+	    system_uses_irq_prio_masking()) {
+		u32 pmr = read_sysreg_s(SYS_ICC_PMR_EL1);
+
+		WARN_ON(pmr != GIC_PRIO_IRQON && pmr != GIC_PRIO_IRQOFF);
+	}
+
 	asm volatile(ALTERNATIVE(
 		"msr	daifset, #2		// arch_local_irq_disable",
 		"msr_s  " __stringify(SYS_ICC_PMR_EL1) ", %0",
--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
