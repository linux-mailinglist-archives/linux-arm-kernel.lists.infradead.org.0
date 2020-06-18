Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2532A1FF1B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5VnT922RR3nC5S4rfmlM95wVSfkk6tq1fKYxG/3uQU=; b=c5yepmd9lxUEyx
	xj25Ptr+aXF3pwId8oWCONSGMrQYtOX5BcBQ6WxHlUx/6HyrZoN8eX6dzHnjIN6iHR1IiClzvt7Xo
	YlhmBnfoMU28pOPbVG7p/c/lOAaXFlepUQ9H5qak1JQ2iZ4I8uSTY1q6cFz65XZygr7vDaTKVEQUS
	KKmhzzYUZczJ+ctID7uBEguFIqKvUN0UL3N08Rq+lV4BflwsbAuLqISe5zezTq/Nenx6kG/27tlGs
	VzMPuOX9t6spmKUiyIjY2y504KpUGMtlv2LGzpquuKkF5pqqotbDYGVfEDyjgqRu6jcMNM0Efv67r
	yd8rCCa9Mj6TFnxPqYrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltfg-0007LY-Aw; Thu, 18 Jun 2020 12:29:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltcQ-0004ec-FH
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:26:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id a6so1622805wmm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZWFc0DVeN94ZorqAG0h9WFrQjJa3oixBCGpefiLhYCk=;
 b=cAT7JpNu8uYVJil5fY5XhY46HnbgEBY79aUy9b0HsXpqe+pJHcIa6qJerEc/bB5+O+
 Gz62x7AgUxwQ/BFtfwrofVT/+c0XxDC9yK3l/Q2W6aS/Y2paBbPxsBBpnGXy4Y8UMGlf
 O0cpju70gmPfxRH5GOekLp67QDsk3bLLxrojuzzpn1EEK5jHe7pqUA8e958AfepvwssZ
 iV0UyEvDvPxyGhBrWue2gtxLQ8aCNq/oLNqKqJyfzd/jlL46F1zSHfFVIZTqNkgexiZx
 fnl/epwDF21x7kEzroS5fiZVhlKLuuaNS0ny2gJd50CDOxx0LED5J+27mYQoUSrS0JFG
 G1pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZWFc0DVeN94ZorqAG0h9WFrQjJa3oixBCGpefiLhYCk=;
 b=BYfcryAxwby9T/mzjKLPchYqUERqxGL2FCmGxcqwtNKFT49G6546ZFqT5brz6p3PgK
 W/rvvoBS2XiKWiuARksTO3q/nescrXwz7IEzLatWRnOXb7KwzK7E/p2HdzI9xUPj2x3y
 kDrNcT9BnuxexCEk/2YlBkENgUCE7ksMIYoCU8ShTldXLz9ClLiEyIvp9uRBBDPDSEqt
 ToFDVKWlmE+NUYDxD7duAnEF695f3Q5QyUoeP8YlUSsteZt0UQzVbrqBSIjSYnJS7zq8
 ba53k5IhyDVaWWQMrwQhgmitVmGQ6m07krEqlJ+MOSPgq/Ce/AzJgLhQDhv0ixwGOy5S
 5bFg==
X-Gm-Message-State: AOAM530mVq6B0OCe6xWyBZxD9euT+JfCjb0fZqp9kpLqQla9Df93Y2NV
 0h4tDIuVbodBGnUhoab+bWJcMQ==
X-Google-Smtp-Source: ABdhPJya5GO8Zl0HV6LSvzozL5C9Dr+dLPC276lCmkiUmdKYLUZWlckw0Wm4xUiI+YGZ54d6YuYw/Q==
X-Received: by 2002:a1c:4804:: with SMTP id v4mr3813586wma.21.1592483168452;
 Thu, 18 Jun 2020 05:26:08 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:c1af:c724:158a:e200])
 by smtp.gmail.com with ESMTPSA id d11sm3502736wrm.64.2020.06.18.05.26.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:26:07 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v3 11/15] arm64: kvm: Split hyp/timer-sr.c to VHE/nVHE
Date: Thu, 18 Jun 2020 13:25:33 +0100
Message-Id: <20200618122537.9625-12-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618122537.9625-1-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_052610_551770_538AC291 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: android-kvm@google.com, linux-kernel@vger.kernel.org,
 David Brazdil <dbrazdil@google.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is part of a series which builds KVM's non-VHE hyp code separately
from VHE and the rest of the kernel.

timer-sr.c contains a HVC handler for setting CNTVOFF_EL2 and two helper
functions for controlling access to physical counter. The former is shared
between VHE/nVHE and is kept in timer-sr.c but compiled under both configs.
The latter are nVHE-specific and are moved to nvhe/timer-sr.c.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/include/asm/kvm_hyp.h   |  2 ++
 arch/arm64/kernel/image-vars.h     |  3 ---
 arch/arm64/kvm/hyp/nvhe/Makefile   |  3 ++-
 arch/arm64/kvm/hyp/nvhe/timer-sr.c | 43 ++++++++++++++++++++++++++++++
 arch/arm64/kvm/hyp/timer-sr.c      | 36 -------------------------
 5 files changed, 47 insertions(+), 40 deletions(-)
 create mode 100644 arch/arm64/kvm/hyp/nvhe/timer-sr.c

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index c8bbd221aac0..8a1510f521fe 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -63,8 +63,10 @@ void __vgic_v3_save_aprs(struct vgic_v3_cpu_if *cpu_if);
 void __vgic_v3_restore_aprs(struct vgic_v3_cpu_if *cpu_if);
 int __vgic_v3_perform_cpuif_access(struct kvm_vcpu *vcpu);
 
+#ifdef __KVM_NVHE_HYPERVISOR__
 void __timer_enable_traps(struct kvm_vcpu *vcpu);
 void __timer_disable_traps(struct kvm_vcpu *vcpu);
+#endif
 
 #ifdef __KVM_NVHE_HYPERVISOR__
 void __sysreg_save_state_nvhe(struct kvm_cpu_context *ctxt);
diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index ddaae7267ab1..94bfc61b3f51 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -68,9 +68,6 @@ __kvm_nvhe___guest_exit = __guest_exit;
 __kvm_nvhe___hyp_panic_string = __hyp_panic_string;
 __kvm_nvhe___hyp_stub_vectors = __hyp_stub_vectors;
 __kvm_nvhe___icache_flags = __icache_flags;
-__kvm_nvhe___kvm_timer_set_cntvoff = __kvm_timer_set_cntvoff;
-__kvm_nvhe___timer_disable_traps = __timer_disable_traps;
-__kvm_nvhe___timer_enable_traps = __timer_enable_traps;
 __kvm_nvhe___vgic_v2_perform_cpuif_access = __vgic_v2_perform_cpuif_access;
 __kvm_nvhe___vgic_v3_activate_traps = __vgic_v3_activate_traps;
 __kvm_nvhe___vgic_v3_deactivate_traps = __vgic_v3_deactivate_traps;
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index d242e437cf89..4ec34abce0a9 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -7,7 +7,8 @@ asflags-y := -D__KVM_NVHE_HYPERVISOR__
 ccflags-y := -D__KVM_NVHE_HYPERVISOR__ -fno-stack-protector \
 	     -DDISABLE_BRANCH_PROFILING $(DISABLE_STACKLEAK_PLUGIN)
 
-obj-y := sysreg-sr.o debug-sr.o switch.o tlb.o hyp-init.o ../hyp-entry.o
+obj-y := ../timer-sr.o timer-sr.o sysreg-sr.o debug-sr.o switch.o tlb.o \
+	 hyp-init.o ../hyp-entry.o
 
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
diff --git a/arch/arm64/kvm/hyp/nvhe/timer-sr.c b/arch/arm64/kvm/hyp/nvhe/timer-sr.c
new file mode 100644
index 000000000000..f0e694743883
--- /dev/null
+++ b/arch/arm64/kvm/hyp/nvhe/timer-sr.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2012-2015 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
+ */
+
+#include <clocksource/arm_arch_timer.h>
+#include <linux/compiler.h>
+#include <linux/kvm_host.h>
+
+#include <asm/kvm_hyp.h>
+
+/*
+ * Should only be called on non-VHE systems.
+ * VHE systems use EL2 timers and configure EL1 timers in kvm_timer_init_vhe().
+ */
+void __hyp_text __timer_disable_traps(struct kvm_vcpu *vcpu)
+{
+	u64 val;
+
+	/* Allow physical timer/counter access for the host */
+	val = read_sysreg(cnthctl_el2);
+	val |= CNTHCTL_EL1PCTEN | CNTHCTL_EL1PCEN;
+	write_sysreg(val, cnthctl_el2);
+}
+
+/*
+ * Should only be called on non-VHE systems.
+ * VHE systems use EL2 timers and configure EL1 timers in kvm_timer_init_vhe().
+ */
+void __hyp_text __timer_enable_traps(struct kvm_vcpu *vcpu)
+{
+	u64 val;
+
+	/*
+	 * Disallow physical timer access for the guest
+	 * Physical counter access is allowed
+	 */
+	val = read_sysreg(cnthctl_el2);
+	val &= ~CNTHCTL_EL1PCEN;
+	val |= CNTHCTL_EL1PCTEN;
+	write_sysreg(val, cnthctl_el2);
+}
diff --git a/arch/arm64/kvm/hyp/timer-sr.c b/arch/arm64/kvm/hyp/timer-sr.c
index fb5c0be33223..6c620d807857 100644
--- a/arch/arm64/kvm/hyp/timer-sr.c
+++ b/arch/arm64/kvm/hyp/timer-sr.c
@@ -4,45 +4,9 @@
  * Author: Marc Zyngier <marc.zyngier@arm.com>
  */
 
-#include <clocksource/arm_arch_timer.h>
-#include <linux/compiler.h>
-#include <linux/kvm_host.h>
-
 #include <asm/kvm_hyp.h>
 
 void __hyp_text __kvm_timer_set_cntvoff(u64 cntvoff)
 {
 	write_sysreg(cntvoff, cntvoff_el2);
 }
-
-/*
- * Should only be called on non-VHE systems.
- * VHE systems use EL2 timers and configure EL1 timers in kvm_timer_init_vhe().
- */
-void __hyp_text __timer_disable_traps(struct kvm_vcpu *vcpu)
-{
-	u64 val;
-
-	/* Allow physical timer/counter access for the host */
-	val = read_sysreg(cnthctl_el2);
-	val |= CNTHCTL_EL1PCTEN | CNTHCTL_EL1PCEN;
-	write_sysreg(val, cnthctl_el2);
-}
-
-/*
- * Should only be called on non-VHE systems.
- * VHE systems use EL2 timers and configure EL1 timers in kvm_timer_init_vhe().
- */
-void __hyp_text __timer_enable_traps(struct kvm_vcpu *vcpu)
-{
-	u64 val;
-
-	/*
-	 * Disallow physical timer access for the guest
-	 * Physical counter access is allowed
-	 */
-	val = read_sysreg(cnthctl_el2);
-	val &= ~CNTHCTL_EL1PCEN;
-	val |= CNTHCTL_EL1PCTEN;
-	write_sysreg(val, cnthctl_el2);
-}
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
