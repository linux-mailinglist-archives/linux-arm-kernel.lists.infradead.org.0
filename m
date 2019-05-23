Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AD927AC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3BqZXJnBU2Kf11PamPn7J5LR1VVcsBn01ftaIkmNgjU=; b=F8xrszsRcSMOCELT+6fKEgR+wF
	/7C2ZUacS/RJrsRlMkHoMKxjbZXsvaLuHln5QDpl6PQIUVuI5cGhS/EwIlq7BrJvbEu3jDipeA3mJ
	Z/l+c0RsM9Dvysg7LgQGQNykYoCbGnuLagOinpPbVoWE1QslMx6N+LYyAkOAvmjh6dBdA282s8ZxC
	idowVIWkpwz08p/2I2GWMMTvFFd3dvL8SzR1JhQmPkgPdjJ2+ha9SJhvhLZb3+yTyg75TS4DBAxy2
	Z73MYM5Zg7ay41Wpvw82pMm1vMP3c3aFoyqKENBKJOdPy3sQMvi926xhkDGZdym+cByFjOZ38Ms4T
	8t/QGQmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTl55-0001Oy-5d; Thu, 23 May 2019 10:36:15 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTl4M-0000XX-FH
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:35:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 560BA341;
 Thu, 23 May 2019 03:35:30 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 427FE3F718;
 Thu, 23 May 2019 03:35:28 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 04/15] arm64: KVM: define SPE data structure for each vcpu
Date: Thu, 23 May 2019 11:34:51 +0100
Message-Id: <20190523103502.25925-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523103502.25925-1-sudeep.holla@arm.com>
References: <20190523103502.25925-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_033530_593700_2D138221 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvm@vger.kernel.org, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support virtual SPE for guest, so define some basic structs.
This features depends on host having hardware with SPE support.

Since we can support this only on ARM64, add a separate config symbol
for the same.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/include/asm/kvm_host.h |  2 ++
 arch/arm64/kvm/Kconfig            |  7 +++++++
 include/kvm/arm_spe.h             | 18 ++++++++++++++++++
 3 files changed, 27 insertions(+)
 create mode 100644 include/kvm/arm_spe.h

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 2a8d3f8ca22c..611a4884fb6c 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -46,6 +46,7 @@
 #include <kvm/arm_vgic.h>
 #include <kvm/arm_arch_timer.h>
 #include <kvm/arm_pmu.h>
+#include <kvm/arm_spe.h>
 
 #define KVM_MAX_VCPUS VGIC_V3_MAX_CPUS
 
@@ -304,6 +305,7 @@ struct kvm_vcpu_arch {
 	struct vgic_cpu vgic_cpu;
 	struct arch_timer_cpu timer_cpu;
 	struct kvm_pmu pmu;
+	struct kvm_spe spe;
 
 	/*
 	 * Anything that is not used directly from assembly code goes
diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
index a67121d419a2..3e178894ddd8 100644
--- a/arch/arm64/kvm/Kconfig
+++ b/arch/arm64/kvm/Kconfig
@@ -33,6 +33,7 @@ config KVM
 	select HAVE_KVM_EVENTFD
 	select HAVE_KVM_IRQFD
 	select KVM_ARM_PMU if HW_PERF_EVENTS
+	select KVM_ARM_SPE if (HW_PERF_EVENTS && ARM_SPE_PMU)
 	select HAVE_KVM_MSI
 	select HAVE_KVM_IRQCHIP
 	select HAVE_KVM_IRQ_ROUTING
@@ -57,6 +58,12 @@ config KVM_ARM_PMU
 	  Adds support for a virtual Performance Monitoring Unit (PMU) in
 	  virtual machines.
 
+config KVM_ARM_SPE
+	bool
+	---help---
+	  Adds support for a virtual Statistical Profiling Extension(SPE) in
+	  virtual machines.
+
 config KVM_INDIRECT_VECTORS
        def_bool KVM && (HARDEN_BRANCH_PREDICTOR || HARDEN_EL2_VECTORS)
 
diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
new file mode 100644
index 000000000000..8c96bdfad6ac
--- /dev/null
+++ b/include/kvm/arm_spe.h
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018 ARM Ltd.
+ */
+
+#ifndef __ASM_ARM_KVM_SPE_H
+#define __ASM_ARM_KVM_SPE_H
+
+#include <uapi/linux/kvm.h>
+#include <linux/kvm_host.h>
+
+struct kvm_spe {
+	int irq;
+	bool ready; /* indicates that SPE KVM instance is ready for use */
+	bool created; /* SPE KVM instance is created, may not be ready yet */
+};
+
+#endif /* __ASM_ARM_KVM_SPE_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
