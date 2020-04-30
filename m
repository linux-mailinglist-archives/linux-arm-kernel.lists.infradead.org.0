Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED881BFF39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdeyD75dV22ROkMC5GKE665DrLMN0fCjslODoeJdCms=; b=LKN4IgH8JS27Ka
	QVAKSBgVW1kM3ENdlHIwOBg1D9jo3tzMN9IN5k8Qwdk4XnSTwg/JoI7BPNA6HT+HNBNT35VWutUAo
	iUyxRMqvwWhid3u8qNLl/pm0c1P6yRUUd3IMrK9sCit7hJv2o5/ElPdEttRJ1Dd9+x+1K5hBzbeAZ
	HwTpgt1SRZVGUVOoz0ZtbfmQXffVvgTWbOiiepzr/+DXeYNuv20fJg4xWUlQLfBPtMps5rGYrqjgc
	IdkPWGv/mRTr2izCrHMzOCn6NIObQeqSrjWIxUQ7SAyHJZajfMMSqCHMhZ9xNAcwbEaOU2O/ofJ16
	ZBe20PM5bqD4+QXgg8Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAXV-0007xd-QK; Thu, 30 Apr 2020 14:51:49 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAUb-0003le-Vw
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:49:01 +0000
Received: by mail-wm1-f68.google.com with SMTP id z6so2245278wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Et31WmaEF3NVxQ9iRAHtWhBYsTOVasFwLzjZZ8UNgn4=;
 b=bC+mz6GfvrnkOnQEz/hwR9vsyG+MUq+E6dxIarhu6iYRLAXwYKw8e+g6X+D4R8l+IH
 sMOa5WsbPR2Njm/N5hvCsmHXp/J4/8BJatuBqFCFWe/11sj222cqDm5wvQ9XR0qHNVTp
 xKMnub7wYILsLr3ZVeu1u/oCCj2JcM5eNtGB9cdY4cRE8BBuoQzQA/57yVi+JqWiP8hk
 rvvSkBeHxyV4lQ5NKFuZm+q1W0ypfO7AjdnUek1NcCC7RhCM7G1EuxLxmFxCd20l/UcP
 e9Wu+aLysGBDvEg/WmqNk/ZVA+zl0fTKNaWy25DymyTsz7nJtrx62FMqKsazcbtU+yQg
 z02Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Et31WmaEF3NVxQ9iRAHtWhBYsTOVasFwLzjZZ8UNgn4=;
 b=q1iOuHPKX3cQNCnOpRDVLiN61wxO1nmaLPKbAUtRO/c4K8Bji6s6PbF57mUqTYHJ5v
 iTedWYDt+lIX4NtI2KrMLbtW2WZuhWpK2QAWodsTuPwnq8FDGP4REfV5HlS5d4z9A13o
 /F+D2sz1yJen3rpaegcT0RIElEJ/STpLOFUWb4xKuUy7KDYWdx6xHT0zxMnIvOYf+JLv
 hQaIKa1XEId/jTPGvEZrVPezTWa3dvWqCIKX4i8CYqnx8SVBppE4+IrXgR70n/3cRtRj
 O52/dfY0kBV0YmBsdW3DZYhhV04GbdaYV3Ps5kes45/Qi7RwC+W0ObOjRrVlU2qZES1U
 VWnA==
X-Gm-Message-State: AGi0PuZARXlx+fq5g/ILDja7bJUEC5KYE761CVzyo46cEDiQ/PriNrD4
 tYswnZRgGKH97x9pIgrixk6u+A==
X-Google-Smtp-Source: APiQypLUgdRp550jRZBba6fEHIWQDJiuFtrLkN9twyuprE+II7yxmPIaRskKBXyR0JgZ3TtglMgvqw==
X-Received: by 2002:a1c:9cca:: with SMTP id f193mr3308452wme.71.1588258127525; 
 Thu, 30 Apr 2020 07:48:47 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id v19sm4450674wra.57.2020.04.30.07.48.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:48:46 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 02/15] arm64: kvm: Formalize host-hyp hypcall ABI
Date: Thu, 30 Apr 2020 15:48:18 +0100
Message-Id: <20200430144831.59194-3-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074850_036087_38AF49C3 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Brazdil <dbrazdil@google.com>, Quentin Perret <qperret@google.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Quentin Perret <qperret@google.com>

In preparation for removing the hyp code from the TCB, convert the current
EL1 - EL2 KVM ABI to use hypercall numbers in lieu of direct function pointers.
While this in itself does not provide any isolation, it is a first step towards
having a properly defined EL2 ABI.

The implementation is based on a kvm_hcall_table which holds function pointers
to the hyp_text functions corresponding to each hypercall. This is highly
inspired from the arm64 sys_call_table, the main difference being the lack of
hcall wrappers at this stage.

Signed-off-by: Quentin Perret <qperret@google.com>
Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/include/asm/kvm_host.h            | 20 ++++++-
 arch/arm64/include/asm/kvm_host_hypercalls.h | 62 ++++++++++++++++++++
 arch/arm64/kvm/hyp/Makefile                  |  2 +-
 arch/arm64/kvm/hyp/host_hypercall.c          | 22 +++++++
 arch/arm64/kvm/hyp/hyp-entry.S               | 36 +++++++++++-
 5 files changed, 137 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_host_hypercalls.h
 create mode 100644 arch/arm64/kvm/hyp/host_hypercall.c

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index e61143d6602d..5dec3b06f2b7 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -24,6 +24,7 @@
 #include <asm/fpsimd.h>
 #include <asm/kvm.h>
 #include <asm/kvm_asm.h>
+#include <asm/kvm_host_hypercalls.h>
 #include <asm/thread_info.h>
 #include <asm/virt.h>
 
@@ -447,10 +448,25 @@ int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
 void kvm_arm_halt_guest(struct kvm *kvm);
 void kvm_arm_resume_guest(struct kvm *kvm);
 
-#define kvm_call_hyp_nvhe(hypfn, ...) \
-	__kvm_call_hyp((unsigned long)kvm_ksym_ref(hypfn), ##__VA_ARGS__)
+/*
+ * Call the hypervisor via HVC. The hcall parameter must be the name of
+ * a hypercall as defined in <asm/kvm_host_hypercall.h>.
+ *
+ * Hypercalls take at most 6 parameters.
+ */
+#define kvm_call_hyp_nvhe(hcall, ...) \
+	__kvm_call_hyp(KVM_HOST_HCALL_NR(hcall), ##__VA_ARGS__)
 
 /*
+ * u64 kvm_call_hyp(hcall, ...);
+ *
+ * Call the hypervisor. The hcall parameter must be the name of a hypercall
+ * defined in <asm/kvm_host_hypercall.h>. In the VHE case, this will be
+ * translated into a direct function call.
+ *
+ * A hcall value of less than 0xfff has a special meaning and is used to
+ * implement hyp stubs in the same way as in arch/arm64/kernel/hyp_stub.S.
+ *
  * The couple of isb() below are there to guarantee the same behaviour
  * on VHE as on !VHE, where the eret to EL1 acts as a context
  * synchronization event.
diff --git a/arch/arm64/include/asm/kvm_host_hypercalls.h b/arch/arm64/include/asm/kvm_host_hypercalls.h
new file mode 100644
index 000000000000..af8ad505d816
--- /dev/null
+++ b/arch/arm64/include/asm/kvm_host_hypercalls.h
@@ -0,0 +1,62 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Google, inc
+ */
+
+#ifndef __KVM_HOST_HCALL
+#define __KVM_HOST_HCALL(x)
+#endif
+
+#define __KVM_HOST_HCALL_TABLE_IDX___kvm_enable_ssbs		0
+__KVM_HOST_HCALL(__kvm_enable_ssbs)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___kvm_get_mdcr_el2		1
+__KVM_HOST_HCALL(__kvm_get_mdcr_el2)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___kvm_timer_set_cntvoff	2
+__KVM_HOST_HCALL(__kvm_timer_set_cntvoff)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___kvm_tlb_flush_local_vmid	3
+__KVM_HOST_HCALL(__kvm_tlb_flush_local_vmid)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___kvm_flush_vm_context	4
+__KVM_HOST_HCALL(__kvm_flush_vm_context)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___kvm_vcpu_run_nvhe		5
+__KVM_HOST_HCALL(__kvm_vcpu_run_nvhe)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___kvm_tlb_flush_vmid		6
+__KVM_HOST_HCALL(__kvm_tlb_flush_vmid)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___kvm_tlb_flush_vmid_ipa	7
+__KVM_HOST_HCALL(__kvm_tlb_flush_vmid_ipa)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_init_lrs		8
+__KVM_HOST_HCALL(__vgic_v3_init_lrs)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_get_ich_vtr_el2	9
+__KVM_HOST_HCALL(__vgic_v3_get_ich_vtr_el2)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_write_vmcr		10
+__KVM_HOST_HCALL(__vgic_v3_write_vmcr)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_restore_aprs	11
+__KVM_HOST_HCALL(__vgic_v3_restore_aprs)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_read_vmcr		12
+__KVM_HOST_HCALL(__vgic_v3_read_vmcr)
+
+#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_save_aprs		13
+__KVM_HOST_HCALL(__vgic_v3_save_aprs)
+
+#define __KVM_HOST_HCALL_TABLE_IDX_SIZE				14
+
+/* XXX - Arbitrary offset for KVM-related hypercalls */
+#define __KVM_HOST_HCALL_BASE_SHIFT 8
+#define __KVM_HOST_HCALL_BASE (1ULL << __KVM_HOST_HCALL_BASE_SHIFT)
+#define __KVM_HOST_HCALL_END (__KVM_HOST_HCALL_BASE + \
+			      __KVM_HOST_HCALL_TABLE_IDX_SIZE)
+
+/* Hypercall number = kvm offset + table idx */
+#define KVM_HOST_HCALL_NR(name) (__KVM_HOST_HCALL_TABLE_IDX_##name + \
+				 __KVM_HOST_HCALL_BASE)
diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index 8c9880783839..29e2b2cd2fbc 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -9,7 +9,7 @@ ccflags-y += -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
 obj-$(CONFIG_KVM) += hyp.o
 
 hyp-y := vgic-v3-sr.o timer-sr.o aarch32.o vgic-v2-cpuif-proxy.o sysreg-sr.o \
-	 debug-sr.o entry.o switch.o fpsimd.o tlb.o hyp-entry.o
+	 debug-sr.o entry.o switch.o fpsimd.o tlb.o host_hypercall.o hyp-entry.o
 
 # KVM code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
diff --git a/arch/arm64/kvm/hyp/host_hypercall.c b/arch/arm64/kvm/hyp/host_hypercall.c
new file mode 100644
index 000000000000..6b31310f36a8
--- /dev/null
+++ b/arch/arm64/kvm/hyp/host_hypercall.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 Google, inc
+ */
+
+#include <asm/kvm_hyp.h>
+
+typedef long (*kvm_hcall_fn_t)(void);
+
+static long __hyp_text kvm_hc_ni(void)
+{
+       return -ENOSYS;
+}
+
+#undef __KVM_HOST_HCALL
+#define __KVM_HOST_HCALL(name) \
+	[__KVM_HOST_HCALL_TABLE_IDX_##name] = (long (*)(void))name,
+
+const kvm_hcall_fn_t kvm_hcall_table[__KVM_HOST_HCALL_TABLE_IDX_SIZE] = {
+	[0 ... __KVM_HOST_HCALL_TABLE_IDX_SIZE-1] = kvm_hc_ni,
+#include <asm/kvm_host_hypercalls.h>
+};
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index c2a13ab3c471..1a51a0958504 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -13,6 +13,7 @@
 #include <asm/kvm_arm.h>
 #include <asm/kvm_asm.h>
 #include <asm/kvm_mmu.h>
+#include <asm/kvm_host_hypercalls.h>
 #include <asm/mmu.h>
 
 	.text
@@ -21,17 +22,26 @@
 .macro do_el2_call
 	/*
 	 * Shuffle the parameters before calling the function
-	 * pointed to in x0. Assumes parameters in x[1,2,3].
+	 * pointed to in x0. Assumes parameters in x[1,2,3,4,5,6].
 	 */
 	str	lr, [sp, #-16]!
 	mov	lr, x0
 	mov	x0, x1
 	mov	x1, x2
 	mov	x2, x3
+	mov	x3, x4
+	mov	x4, x5
+	mov	x5, x6
 	blr	lr
 	ldr	lr, [sp], #16
 .endm
 
+/* kern_hyp_va(lm_alias(ksym)) */
+.macro ksym_hyp_va ksym, lm_offset
+	sub	\ksym, \ksym, \lm_offset
+	kern_hyp_va	\ksym
+.endm
+
 el1_sync:				// Guest trapped into EL2
 
 	mrs	x0, esr_el2
@@ -66,10 +76,32 @@ el1_sync:				// Guest trapped into EL2
 	br	x5
 
 1:
+	/* Check if the hcall number is valid */
+	cmp	x0, #__KVM_HOST_HCALL_BASE
+	b.lt	2f
+	cmp	x0, #__KVM_HOST_HCALL_END
+	b.lt	3f
+2:
+	mov	x0, -ENOSYS
+	eret
+
+3:
+	/* Compute lm_alias() offset in x9 */
+	ldr_l	x9, kimage_voffset
+	ldr_l	x10, physvirt_offset
+	add	x9, x9, x10
+
+	/* Find hcall function pointer in the table */
+	ldr	x10, =kvm_hcall_table
+	ksym_hyp_va	x10, x9
+	sub	x0, x0, #__KVM_HOST_HCALL_BASE
+	add	x0, x10, x0, lsl 3
+	ldr	x0, [x0]
+	ksym_hyp_va	x0, x9
+
 	/*
 	 * Perform the EL2 call
 	 */
-	kern_hyp_va	x0
 	do_el2_call
 
 	eret
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
