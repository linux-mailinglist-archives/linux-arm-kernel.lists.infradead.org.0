Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11471E82DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJwGdb+tsRklkqhFTMhXr7wfjXHqBcTHhVJ864WzrIw=; b=J1nSvoKneLDXVZ
	S7sdIvBvkfLtbaFsAKpM5UZ0z54YJVPHDy5i9XiqvVNVRTO2DF27cG+BDzTerrSc2EBVH8kQpF1B2
	Yl4Qt05KF166+zsudkzJHK0U5mBQxMJnG4cRgWDZZYKGnEOU9mfg/FlWvwqEabLnoD1jUwx7zvZTc
	2QK9yv+pENFmYMIYqY0KV8zSfGOpB2+lUn4I4AvULxyfPUuKQPD9rODypwj7kUH/4iZZTLUE+f8Vz
	07780eWWWjYsBa0xwWTkqQ5BOlQKiRpX1gs4PnKa65ykh7dAPcQqSdjTJiso+VnUGztrf0/4nnnQa
	Oe0k8mE31Ae7/dcDm5kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehSw-0003ud-Hf; Fri, 29 May 2020 16:02:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehS2-0003TZ-VH
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:01:45 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A1B320814;
 Fri, 29 May 2020 16:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590768102;
 bh=E/PuPpWmiPrQz16kOxC09voxVIFgWpR67AwcFCKj6rQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UylOJdpa2G1BF+AHK7NO2WL2jQiwDyDLUoEmpUqst5UC3OjK9JRO6kL5hSC1pyEns
 SS2IMjCSwOpsHzkf79GE/Nrn36yTdzm2/AE+hI6AslyO+1FcFbIdRBI4O/OWYCKkq1
 rtw26Zo64Px2CpAq+xE6hYEvF94pVpxF8My9c2Tc=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jehS0-00GJKc-WB; Fri, 29 May 2020 17:01:41 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 02/24] KVM: arm64: Kill off CONFIG_KVM_ARM_HOST
Date: Fri, 29 May 2020 17:00:59 +0100
Message-Id: <20200529160121.899083-3-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529160121.899083-1-maz@kernel.org>
References: <20200529160121.899083-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 ascull@google.com, ardb@kernel.org, christoffer.dall@arm.com,
 dbrazdil@google.com, tabba@google.com, james.morse@arm.com, giangyi@amazon.com,
 zhukeqian1@huawei.com, mark.rutland@arm.com, suzuki.poulose@arm.com,
 will@kernel.org, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_090143_052793_7130450D 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Keqian Zhu <zhukeqian1@huawei.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Jiang Yi <giangyi@amazon.com>,
 James Morse <james.morse@arm.com>, Andrew Scull <ascull@google.com>,
 Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 David Brazdil <dbrazdil@google.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Fuad Tabba <tabba@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will@kernel.org>

CONFIG_KVM_ARM_HOST is just a proxy for CONFIG_KVM, so remove it in favour
of the latter.

Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Fuad Tabba <tabba@google.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200505154520.194120-2-tabba@google.com
---
 arch/arm64/kernel/asm-offsets.c |  2 +-
 arch/arm64/kernel/cpu_errata.c  |  2 +-
 arch/arm64/kernel/smp.c         |  2 +-
 arch/arm64/kvm/Kconfig          |  6 ----
 arch/arm64/kvm/Makefile         | 52 ++++++++++++++++-----------------
 arch/arm64/kvm/hyp/Makefile     | 22 +++++++-------
 6 files changed, 40 insertions(+), 46 deletions(-)

diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 9981a0a5a87f..a27e0cd731e9 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -96,7 +96,7 @@ int main(void)
   DEFINE(CPU_BOOT_PTRAUTH_KEY,	offsetof(struct secondary_data, ptrauth_key));
 #endif
   BLANK();
-#ifdef CONFIG_KVM_ARM_HOST
+#ifdef CONFIG_KVM
   DEFINE(VCPU_CONTEXT,		offsetof(struct kvm_vcpu, arch.ctxt));
   DEFINE(VCPU_FAULT_DISR,	offsetof(struct kvm_vcpu, arch.fault.disr_el1));
   DEFINE(VCPU_WORKAROUND_FLAGS,	offsetof(struct kvm_vcpu, arch.workaround_flags));
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index df56d2295d16..a102321fc8a2 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -234,7 +234,7 @@ static int detect_harden_bp_fw(void)
 		smccc_end = NULL;
 		break;
 
-#if IS_ENABLED(CONFIG_KVM_ARM_HOST)
+#if IS_ENABLED(CONFIG_KVM)
 	case SMCCC_CONDUIT_SMC:
 		cb = call_smc_arch_workaround_1;
 		smccc_start = __smccc_workaround_1_smc;
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 061f60fe452f..0a3045d9f33f 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -430,7 +430,7 @@ static void __init hyp_mode_check(void)
 			   "CPU: CPUs started in inconsistent modes");
 	else
 		pr_info("CPU: All CPU(s) started at EL1\n");
-	if (IS_ENABLED(CONFIG_KVM_ARM_HOST))
+	if (IS_ENABLED(CONFIG_KVM))
 		kvm_compute_layout();
 }
 
diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
index 449386d76441..ce724e526689 100644
--- a/arch/arm64/kvm/Kconfig
+++ b/arch/arm64/kvm/Kconfig
@@ -28,7 +28,6 @@ config KVM
 	select HAVE_KVM_CPU_RELAX_INTERCEPT
 	select HAVE_KVM_ARCH_TLB_FLUSH_ALL
 	select KVM_MMIO
-	select KVM_ARM_HOST
 	select KVM_GENERIC_DIRTYLOG_READ_PROTECT
 	select SRCU
 	select KVM_VFIO
@@ -50,11 +49,6 @@ config KVM
 
 	  If unsure, say N.
 
-config KVM_ARM_HOST
-	bool
-	---help---
-	  Provides host support for ARM processors.
-
 config KVM_ARM_PMU
 	bool
 	---help---
diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
index 7a3768538343..419696e615b3 100644
--- a/arch/arm64/kvm/Makefile
+++ b/arch/arm64/kvm/Makefile
@@ -7,33 +7,33 @@ ccflags-y += -I $(srctree)/$(src)
 
 KVM=../../../virt/kvm
 
-obj-$(CONFIG_KVM_ARM_HOST) += kvm.o
-obj-$(CONFIG_KVM_ARM_HOST) += hyp/
+obj-$(CONFIG_KVM) += kvm.o
+obj-$(CONFIG_KVM) += hyp/
 
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/eventfd.o $(KVM)/vfio.o $(KVM)/irqchip.o
-kvm-$(CONFIG_KVM_ARM_HOST) += arm.o mmu.o mmio.o
-kvm-$(CONFIG_KVM_ARM_HOST) += psci.o perf.o
-kvm-$(CONFIG_KVM_ARM_HOST) += hypercalls.o
-kvm-$(CONFIG_KVM_ARM_HOST) += pvtime.o
+kvm-$(CONFIG_KVM) += $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o
+kvm-$(CONFIG_KVM) += $(KVM)/eventfd.o $(KVM)/vfio.o $(KVM)/irqchip.o
+kvm-$(CONFIG_KVM) += arm.o mmu.o mmio.o
+kvm-$(CONFIG_KVM) += psci.o perf.o
+kvm-$(CONFIG_KVM) += hypercalls.o
+kvm-$(CONFIG_KVM) += pvtime.o
 
-kvm-$(CONFIG_KVM_ARM_HOST) += inject_fault.o regmap.o va_layout.o
-kvm-$(CONFIG_KVM_ARM_HOST) += hyp.o hyp-init.o handle_exit.o
-kvm-$(CONFIG_KVM_ARM_HOST) += guest.o debug.o reset.o sys_regs.o sys_regs_generic_v8.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic-sys-reg-v3.o fpsimd.o pmu.o
-kvm-$(CONFIG_KVM_ARM_HOST) += aarch32.o
-kvm-$(CONFIG_KVM_ARM_HOST) += arch_timer.o
+kvm-$(CONFIG_KVM) += inject_fault.o regmap.o va_layout.o
+kvm-$(CONFIG_KVM) += hyp.o hyp-init.o handle_exit.o
+kvm-$(CONFIG_KVM) += guest.o debug.o reset.o sys_regs.o sys_regs_generic_v8.o
+kvm-$(CONFIG_KVM) += vgic-sys-reg-v3.o fpsimd.o pmu.o
+kvm-$(CONFIG_KVM) += aarch32.o
+kvm-$(CONFIG_KVM) += arch_timer.o
 kvm-$(CONFIG_KVM_ARM_PMU)  += pmu-emul.o
 
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-init.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-irqfd.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-v2.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-v3.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-v4.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-mmio.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-mmio-v2.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-mmio-v3.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-kvm-device.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-its.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-debug.o
+kvm-$(CONFIG_KVM) += vgic/vgic.o
+kvm-$(CONFIG_KVM) += vgic/vgic-init.o
+kvm-$(CONFIG_KVM) += vgic/vgic-irqfd.o
+kvm-$(CONFIG_KVM) += vgic/vgic-v2.o
+kvm-$(CONFIG_KVM) += vgic/vgic-v3.o
+kvm-$(CONFIG_KVM) += vgic/vgic-v4.o
+kvm-$(CONFIG_KVM) += vgic/vgic-mmio.o
+kvm-$(CONFIG_KVM) += vgic/vgic-mmio-v2.o
+kvm-$(CONFIG_KVM) += vgic/vgic-mmio-v3.o
+kvm-$(CONFIG_KVM) += vgic/vgic-kvm-device.o
+kvm-$(CONFIG_KVM) += vgic/vgic-its.o
+kvm-$(CONFIG_KVM) += vgic/vgic-debug.o
diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index dc18274a6826..8229e47ba870 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -6,17 +6,17 @@
 ccflags-y += -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
 		$(DISABLE_STACKLEAK_PLUGIN)
 
-obj-$(CONFIG_KVM_ARM_HOST) += vgic-v3-sr.o
-obj-$(CONFIG_KVM_ARM_HOST) += timer-sr.o
-obj-$(CONFIG_KVM_ARM_HOST) += aarch32.o
-obj-$(CONFIG_KVM_ARM_HOST) += vgic-v2-cpuif-proxy.o
-obj-$(CONFIG_KVM_ARM_HOST) += sysreg-sr.o
-obj-$(CONFIG_KVM_ARM_HOST) += debug-sr.o
-obj-$(CONFIG_KVM_ARM_HOST) += entry.o
-obj-$(CONFIG_KVM_ARM_HOST) += switch.o
-obj-$(CONFIG_KVM_ARM_HOST) += fpsimd.o
-obj-$(CONFIG_KVM_ARM_HOST) += tlb.o
-obj-$(CONFIG_KVM_ARM_HOST) += hyp-entry.o
+obj-$(CONFIG_KVM) += vgic-v3-sr.o
+obj-$(CONFIG_KVM) += timer-sr.o
+obj-$(CONFIG_KVM) += aarch32.o
+obj-$(CONFIG_KVM) += vgic-v2-cpuif-proxy.o
+obj-$(CONFIG_KVM) += sysreg-sr.o
+obj-$(CONFIG_KVM) += debug-sr.o
+obj-$(CONFIG_KVM) += entry.o
+obj-$(CONFIG_KVM) += switch.o
+obj-$(CONFIG_KVM) += fpsimd.o
+obj-$(CONFIG_KVM) += tlb.o
+obj-$(CONFIG_KVM) += hyp-entry.o
 
 # KVM code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
