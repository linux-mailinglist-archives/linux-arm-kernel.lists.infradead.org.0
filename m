Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6214A1FF1CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shLbJ2AttNlH7ULdacrIdPNlGrl055TJm2jaXjJ+tbw=; b=Yhb/kU6I6vkPnd
	w3nLFXwlQ0CBCVw9K+VSPxuEtX3S4CsS218O6KzFM7bs5655fI6gK5YeHbcPQlCRgVE9R66MTRyPh
	WiOLqNAc6U0sr5tgdjU3NRKe8rSK9fl7W/fZ2jCxt0f+FegfUWTWPBgC+LPVYDvR1C96c0kF42wyx
	S9GqiOsE//gYUKeNRxP24W+sA76vrZw+wyn9KGwRRZOCndWUkYbPNb8lrICUfqOOcaygp1ZgJ472b
	ipA2xnXGO3vqLIziHe/ElJ/kGHZrlrBBhGNvOQtJuUA68PRzSiNqh3Kh2G+rKeY+EVk+dW0Zn5+Mo
	aDh+Q3oay7uSyIqISt6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltgf-0007xu-Pw; Thu, 18 Jun 2020 12:30:33 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltcR-0004gc-Sn
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:26:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id l11so5871349wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E1RONziHkaXcIbp8EZDtcBXhqYuNXkWrxwk7rGyJjWU=;
 b=GEbrZUYqxyO+kyfPLW1XsrO90u8JIgVJkPp7Ozi4c+c3BAL1hjqsyehMHSraKA9IaF
 iFVKkO6pAzNc1X4cQYOdnMRyAve1mAXOGX3kykmGwsSwV+kD4Hn9EFHcUWruCoVxe/0A
 ErGcs1QOOt7cihX/KUvc0I8ouOORh83beB6KQULWl9r+55Bx85RVg7KTcC6iQVbWmDLP
 EfRtkUPnPFfKS4Y4Llfn2K9nMlRZz2NLNE/KAtkfHAxw9DyALzAC5UGBgYPZezEMj04A
 rHOw1Hu4XAuXLvJTUjAXN5H15zJP+Fo8dwD3GYdAzLaJktcA2MMwG13bVp1Vh6Baku0o
 JxNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E1RONziHkaXcIbp8EZDtcBXhqYuNXkWrxwk7rGyJjWU=;
 b=LnkCrsLUfzltYzhTcCt5DyIG/MxqgKF/PcP9WumjSjZfgOOgMCVwIB2M+fe6CPpE1X
 v29Krzg1mzeU5w1TeQZLT9BDeEKkakzjr+OKRJPk9GcHJar9pe9stuxnYqrH1vfLdPNl
 iSYaISrRcqUNtk1QE4s4CXRSYoz1DWfQYf9K6m93+VeolrfsE/+Fg9XZXhOUuipH55h+
 6kkoleLj/a9m8uDVPvOMICArX8PTPIIHdgRMCAI2Qst6Sf8AE5M0jvvdWLUYqDq/H0xc
 h6mmIRaUc5xL69CDeLaFOlr7hrqPedeXBQUHw3HfnPBlrUDf4joLHm+sg6HcDbM3U6/A
 5f1A==
X-Gm-Message-State: AOAM5325DGCw4b6xmsVUkNKplinBIad5PN5qlpigOjhd02emlu7Nw+gZ
 +5DpZX3Hgv2MaM1elYRc7aq2Vw==
X-Google-Smtp-Source: ABdhPJxtj4KuEKVAUVM/ayFvRfAHHTsgx+xpEM7sEoPG8ylQ3t5pkgRZ9BQ6Ls0lNwmXJ9BWTKycUA==
X-Received: by 2002:a5d:6a4b:: with SMTP id t11mr4289837wrw.404.1592483170221; 
 Thu, 18 Jun 2020 05:26:10 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:c1af:c724:158a:e200])
 by smtp.gmail.com with ESMTPSA id j5sm3377432wrm.57.2020.06.18.05.26.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:26:09 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v3 12/15] arm64: kvm: Compile remaining hyp/ files for both
 VHE/nVHE
Date: Thu, 18 Jun 2020 13:25:34 +0100
Message-Id: <20200618122537.9625-13-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618122537.9625-1-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_052612_037516_3254E07A 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The following files in hyp/ contain only code shared by VHE/nVHE:
  vgic-v3-sr.c, aarch32.c, vgic-v2-cpuif-proxy.c, entry.S, fpsimd.S
Compile them under both configurations. Deletions in image-vars.h reflect
eliminated dependencies of nVHE code on the rest of the kernel.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kernel/image-vars.h   | 19 -------------------
 arch/arm64/kvm/hyp/nvhe/Makefile |  5 +++--
 2 files changed, 3 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 94bfc61b3f51..2cc3e7673dc2 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -61,27 +61,9 @@ __efistub__ctype		= _ctype;
  * memory mappings.
  */
 
-__kvm_nvhe___fpsimd_restore_state = __fpsimd_restore_state;
-__kvm_nvhe___fpsimd_save_state = __fpsimd_save_state;
-__kvm_nvhe___guest_enter = __guest_enter;
-__kvm_nvhe___guest_exit = __guest_exit;
 __kvm_nvhe___hyp_panic_string = __hyp_panic_string;
 __kvm_nvhe___hyp_stub_vectors = __hyp_stub_vectors;
 __kvm_nvhe___icache_flags = __icache_flags;
-__kvm_nvhe___vgic_v2_perform_cpuif_access = __vgic_v2_perform_cpuif_access;
-__kvm_nvhe___vgic_v3_activate_traps = __vgic_v3_activate_traps;
-__kvm_nvhe___vgic_v3_deactivate_traps = __vgic_v3_deactivate_traps;
-__kvm_nvhe___vgic_v3_get_ich_vtr_el2 = __vgic_v3_get_ich_vtr_el2;
-__kvm_nvhe___vgic_v3_init_lrs = __vgic_v3_init_lrs;
-__kvm_nvhe___vgic_v3_perform_cpuif_access = __vgic_v3_perform_cpuif_access;
-__kvm_nvhe___vgic_v3_read_vmcr = __vgic_v3_read_vmcr;
-__kvm_nvhe___vgic_v3_restore_aprs = __vgic_v3_restore_aprs;
-__kvm_nvhe___vgic_v3_restore_state = __vgic_v3_restore_state;
-__kvm_nvhe___vgic_v3_save_aprs = __vgic_v3_save_aprs;
-__kvm_nvhe___vgic_v3_save_state = __vgic_v3_save_state;
-__kvm_nvhe___vgic_v3_write_vmcr = __vgic_v3_write_vmcr;
-__kvm_nvhe_abort_guest_exit_end = abort_guest_exit_end;
-__kvm_nvhe_abort_guest_exit_start = abort_guest_exit_start;
 __kvm_nvhe_arm64_const_caps_ready = arm64_const_caps_ready;
 __kvm_nvhe_arm64_enable_wa2_handling = arm64_enable_wa2_handling;
 __kvm_nvhe_arm64_ssbd_callback_required = arm64_ssbd_callback_required;
@@ -94,7 +76,6 @@ __kvm_nvhe_idmap_t0sz = idmap_t0sz;
 __kvm_nvhe_kimage_voffset = kimage_voffset;
 __kvm_nvhe_kvm_host_data = kvm_host_data;
 __kvm_nvhe_kvm_patch_vector_branch = kvm_patch_vector_branch;
-__kvm_nvhe_kvm_skip_instr32 = kvm_skip_instr32;
 __kvm_nvhe_kvm_update_va_mask = kvm_update_va_mask;
 __kvm_nvhe_kvm_vgic_global_state = kvm_vgic_global_state;
 __kvm_nvhe_panic = panic;
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 4ec34abce0a9..d51ae163430d 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -7,8 +7,9 @@ asflags-y := -D__KVM_NVHE_HYPERVISOR__
 ccflags-y := -D__KVM_NVHE_HYPERVISOR__ -fno-stack-protector \
 	     -DDISABLE_BRANCH_PROFILING $(DISABLE_STACKLEAK_PLUGIN)
 
-obj-y := ../timer-sr.o timer-sr.o sysreg-sr.o debug-sr.o switch.o tlb.o \
-	 hyp-init.o ../hyp-entry.o
+obj-y := ../vgic-v3-sr.o ../timer-sr.o timer-sr.o ../aarch32.o \
+	 ../vgic-v2-cpuif-proxy.o sysreg-sr.o debug-sr.o ../entry.o switch.o \
+	 ../fpsimd.o tlb.o hyp-init.o ../hyp-entry.o
 
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
