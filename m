Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689A21FF1A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REzTbJYnuDtF4SLwuubXXjPh6LHeuNImB2AebnnKExE=; b=kplp7kC9NvKvAi
	bTMTS0++tsCLrqObEq9b9pB16NlrJgAKfYcpd5dERc60b0aTN2FBX8BXMAqASKK1L2Xplfq3sV91j
	Lt8sw4X4VEvetQt2lzBQI+nBOtHIcX0ehk0q85oWFfJpu7Mqs6lsNoNDlh2juyqMvtPNfQTH4hLY8
	JonpXu6GdZo6ZlY+HR8tKp1AYGUIvc5ddINlEaZwSfTH6zIDnfyXMXK2U6xTYCBwO2yEPNWBWVxUu
	SjxEUv7pbSoE3WSG4uh1WH9RNsZsO2hOBtZ0++Ddr3Dy5a6xE5diVbwTHq7W0xS2Y9DgoV7M4Z+c3
	eD9sXAmd+lCAPMeTG09A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltdx-0005kh-40; Thu, 18 Jun 2020 12:27:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltcG-0004W9-PH
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:26:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id f185so5451247wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SyJVc4e+GoUAEUncaRu7Abitq8XUwuB4SemkCGVL7hU=;
 b=j6rqhLs+9os6IUKzcc97SvmbzHvnm7iqekCNBV594Zz30SPAzzCrDgd66fUViZUI2O
 K8z74PXDmGJBAuIgnxkGg4mCcAmULENp3iY4u++w/w6LgKk9ZACdhRBzvItmpMrPQKF+
 R+/nF1ktCKfoT7htrA46PeHuWXPobMcsq7yu1TnjnM8f2rI+Qasb3LcxvkSwHbwQTsn3
 gKyDSsnPYr2uut1d01KbynGrj2nuWCBCFM/pK3RcJZxQv16IA4IQoySJVSG9PXxkksHe
 QbccuKwjmDkQcSY+6ZwqLpcDDD5yAsnzn6vXNg1M0Ch0YZ/IcuFacuxZ02lQ4Sw+QAwR
 4gSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SyJVc4e+GoUAEUncaRu7Abitq8XUwuB4SemkCGVL7hU=;
 b=gYo6SZ6D63zO3MpdOO0FBGmTHEJ9mQurm4p8PL6Ox8QWa9ZppZ24/DOuQqUIJTRHdJ
 JYOn5oF7I8SpmpdwOqtHU7CtTQj3no8X+CQzZOuBfuB/rII+aAvRyQiCcX8BHZTQvxjK
 cdQS02NeoFtLloMw8It9idvqa6si8pQfc8IiOhrdpnFe+cisnb4UVxJsOC7xZN9nqvKz
 QdjLTdwV8KLCyhR8Ac/5JkxHRQddTcexn3WLM4M9cLb9jlZdcCSjAl+zzCmo8pY+McBd
 N4Jxi/XdXlq0xdleu8MVTqNHC7WQnEmZ0jf/ph1xm+991Av82gO0j1tO4kvM+MPEj7Zk
 M6wQ==
X-Gm-Message-State: AOAM531g52QfU35hTIoq46pTfXbNAIu+vjkIQO9UWSySr0vL8YGGVMlN
 L7pHHBD0r0Xv+g0lchFiZe7bt80dsxFhRG8T
X-Google-Smtp-Source: ABdhPJxpr4HRSO92YDjrRYPnbc5L3TTKiVCvuPbkGpjbaCdfcJuGc2VlZl8Wnwp1JTVFdgXjnGyXRQ==
X-Received: by 2002:a1c:1fc2:: with SMTP id f185mr3791350wmf.4.1592483159389; 
 Thu, 18 Jun 2020 05:25:59 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:c1af:c724:158a:e200])
 by smtp.gmail.com with ESMTPSA id q13sm3400341wrn.84.2020.06.18.05.25.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:25:58 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v3 06/15] arm64: kvm: Move hyp-init.S to nVHE
Date: Thu, 18 Jun 2020 13:25:28 +0100
Message-Id: <20200618122537.9625-7-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618122537.9625-1-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_052600_856869_DAC33698 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 Andrew Scull <ascull@google.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Scull <ascull@google.com>

This patch is part of a series which builds KVM's non-VHE hyp code
separately from VHE and the rest of the kernel.

hyp-init.S contains the identity mapped initialisation code for the
non-VHE code that runs at EL2. It is only used for non-VHE.

Adjust code that calls into this to use the prefixed symbol name.

Signed-off-by: Andrew Scull <ascull@google.com>
---
 arch/arm64/include/asm/kvm_asm.h         | 4 +---
 arch/arm64/kernel/image-vars.h           | 3 ++-
 arch/arm64/kvm/Makefile                  | 2 +-
 arch/arm64/kvm/hyp/nvhe/Makefile         | 2 +-
 arch/arm64/kvm/{ => hyp/nvhe}/hyp-init.S | 0
 arch/arm64/kvm/mmu.c                     | 2 +-
 6 files changed, 6 insertions(+), 7 deletions(-)
 rename arch/arm64/kvm/{ => hyp/nvhe}/hyp-init.S (100%)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 2baa69324cc9..bab14b64c4fc 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -73,9 +73,7 @@
 struct kvm;
 struct kvm_vcpu;
 
-extern char __kvm_hyp_init[];
-extern char __kvm_hyp_init_end[];
-
+DECLARE_KVM_NVHE_SYM(__kvm_hyp_init);
 DECLARE_KVM_HYP_SYM(__kvm_hyp_vector);
 
 #ifdef CONFIG_KVM_INDIRECT_VECTORS
diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index dc7ee85531f5..4dc969ccda9e 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -62,10 +62,10 @@ __efistub__ctype		= _ctype;
  */
 
 __kvm_nvhe___guest_exit = __guest_exit;
+__kvm_nvhe___hyp_stub_vectors = __hyp_stub_vectors;
 __kvm_nvhe___kvm_enable_ssbs = __kvm_enable_ssbs;
 __kvm_nvhe___kvm_flush_vm_context = __kvm_flush_vm_context;
 __kvm_nvhe___kvm_get_mdcr_el2 = __kvm_get_mdcr_el2;
-__kvm_nvhe___kvm_handle_stub_hvc = __kvm_handle_stub_hvc;
 __kvm_nvhe___kvm_timer_set_cntvoff = __kvm_timer_set_cntvoff;
 __kvm_nvhe___kvm_tlb_flush_local_vmid = __kvm_tlb_flush_local_vmid;
 __kvm_nvhe___kvm_tlb_flush_vmid = __kvm_tlb_flush_vmid;
@@ -82,6 +82,7 @@ __kvm_nvhe_abort_guest_exit_start = abort_guest_exit_start;
 __kvm_nvhe_arm64_enable_wa2_handling = arm64_enable_wa2_handling;
 __kvm_nvhe_arm64_ssbd_callback_required = arm64_ssbd_callback_required;
 __kvm_nvhe_hyp_panic = hyp_panic;
+__kvm_nvhe_idmap_t0sz = idmap_t0sz;
 __kvm_nvhe_kimage_voffset = kimage_voffset;
 __kvm_nvhe_kvm_host_data = kvm_host_data;
 __kvm_nvhe_kvm_patch_vector_branch = kvm_patch_vector_branch;
diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
index 8d3d9513cbfe..152d8845a1a2 100644
--- a/arch/arm64/kvm/Makefile
+++ b/arch/arm64/kvm/Makefile
@@ -13,7 +13,7 @@ obj-$(CONFIG_KVM) += hyp/
 kvm-y := $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o $(KVM)/eventfd.o \
 	 $(KVM)/vfio.o $(KVM)/irqchip.o \
 	 arm.o mmu.o mmio.o psci.o perf.o hypercalls.o pvtime.o \
-	 inject_fault.o regmap.o va_layout.o hyp.o hyp-init.o handle_exit.o \
+	 inject_fault.o regmap.o va_layout.o hyp.o handle_exit.o \
 	 guest.o debug.o reset.o sys_regs.o sys_regs_generic_v8.o \
 	 vgic-sys-reg-v3.o fpsimd.o pmu.o \
 	 aarch32.o arch_timer.o \
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index c68801e24950..fef6f1881765 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -7,7 +7,7 @@ asflags-y := -D__KVM_NVHE_HYPERVISOR__
 ccflags-y := -D__KVM_NVHE_HYPERVISOR__ -fno-stack-protector \
 	     -DDISABLE_BRANCH_PROFILING $(DISABLE_STACKLEAK_PLUGIN)
 
-obj-y := ../hyp-entry.o
+obj-y := hyp-init.o ../hyp-entry.o
 
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp/nvhe/hyp-init.S
similarity index 100%
rename from arch/arm64/kvm/hyp-init.S
rename to arch/arm64/kvm/hyp/nvhe/hyp-init.S
diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
index 8c0035cab6b6..592afe5e7003 100644
--- a/arch/arm64/kvm/mmu.c
+++ b/arch/arm64/kvm/mmu.c
@@ -2346,7 +2346,7 @@ int kvm_mmu_init(void)
 	hyp_idmap_start = ALIGN_DOWN(hyp_idmap_start, PAGE_SIZE);
 	hyp_idmap_end = __pa_symbol(__hyp_idmap_text_end);
 	hyp_idmap_end = ALIGN(hyp_idmap_end, PAGE_SIZE);
-	hyp_idmap_vector = __pa_symbol(__kvm_hyp_init);
+	hyp_idmap_vector = __pa_symbol(kvm_nvhe_sym(__kvm_hyp_init));
 
 	/*
 	 * We rely on the linker script to ensure at build time that the HYP
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
