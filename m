Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9DE1BFF47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+8m4VcE/jNn/atzX3lHrAdI80OLp9GAaTaTycVr/H0=; b=jaCX7hEW5Ri1yp
	76fI0cGURqZePk+VsVkSrPD3uTVB79O+0BE57+sswud5BqFFooYRHJgZ+ZGrFrs8UJR7TjsCzUN4j
	PTb2WqJ7tmUkw3jcA3A2VhgOn+N2nNKB2ownjPRxZSAWegrITQQAcM4uRKYKcv60xP5BOef17B7Er
	IAvepIXOF5qqGzOJiNe2BPnWk4Y2+59HiF3WJ+TO92xfEH6dF0dP4ceU4JIBx+HuwlLBb6Qyu6oSO
	uwuwy8TTmNtll9ACsUDrNl4CEDdx/ssmfXc4o0dRIUQ9JCY8rdbvN7cuf+W8JFTe6Q/Hw/D5LtvsD
	UMwsPDJnmCrRqIEvEtHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAZG-00019W-O8; Thu, 30 Apr 2020 14:53:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAUv-00042A-D3
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:49:21 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so7287716wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=umkbm5KRG1N3np5zJ4HE1sftpuuUyazttPbykboHAm8=;
 b=efC8vkYgvNM1vKeVr2o1KyvheFweWQLdJEpfuO35sBECfVZWnRqYWwF651X3tv7WUl
 y7foAr0R0XqqiZFBrmI42yS1Ovwh7dWqJWSGU7t2oFv+doT6ZnA2r5ymHwPFZD2OBVPT
 pMw0DH9qc39RJ/JvzQIbUxJASJN7ZxUpMhrKoubW3zdb3umhK9O7VKPc1aDoQUlJyVMx
 O+Ei/SA4/M9+HqIx1BrLA84FsSF9Zm4hUlUT/C6/Qx4J7F1lhqzW5VbWxfHgrTX0eWjE
 Nzs6eMyZqIpzGWPgODgpMKn5JoW7WpNAATr3jAtV9DoXK0zChwiEWhVhc5aN3uSgaXwW
 91Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=umkbm5KRG1N3np5zJ4HE1sftpuuUyazttPbykboHAm8=;
 b=CHv/w7v2V+QBIR0aUtem3saC0jiPR4QOfeqhKXGrd1q6kymj8v4Kk/4K1PP3q+oAXZ
 EpeleQip4784Is8Cod4yN1s6s0ZY1dKDH59bDuStvIW5nAAxSrvR7uTuFn7jjNAWaA33
 H5AjHeVDoAJ8yPN3pz03c7xaeGI+ASMji5/oW1H9eFcrlcHtLFNjEB5cHu7nKuu6UAKa
 dLO+n0sj81JmsLe+A/m2Qh7SBSwCN1NTXIY3FY4zT0nabQ81bbV/b4s1EUUSn3GGFGCl
 jpnnezcZt40BGS6dNtM804P1NsUmKIWuiZJE3vL+ltvxLRJD6YWmOwY7iIco4zFdW5X/
 eRNA==
X-Gm-Message-State: AGi0PuYhMIfrLuOY711h5Kxsgam8PS1CgNTm+cymG4zEB0V5VbBHKzY8
 gFB3vE2S+1TOhGc+AGCmEnEEFA==
X-Google-Smtp-Source: APiQypIpmxrWfSEem32pw/VDQBnv+MYBdsOIVLgK9Hym1JocNQpMrPcTj2RTIrgFipnFVqbek+O/ww==
X-Received: by 2002:a5d:6841:: with SMTP id o1mr4321497wrw.412.1588258147736; 
 Thu, 30 Apr 2020 07:49:07 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id s14sm12054954wmh.18.2020.04.30.07.49.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:49:07 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 12/15] arm64: kvm: Compile remaining hyp/ files for both
 VHE/nVHE
Date: Thu, 30 Apr 2020 15:48:28 +0100
Message-Id: <20200430144831.59194-13-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074909_620085_28E26C79 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: David Brazdil <dbrazdil@google.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
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
index b3de24d7ecd1..e272eedfe19a 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -61,26 +61,8 @@ __efistub__ctype		= _ctype;
  * memory mappings.
  */
 
-__hyp_text___fpsimd_restore_state = __fpsimd_restore_state;
-__hyp_text___fpsimd_save_state = __fpsimd_save_state;
-__hyp_text___guest_enter = __guest_enter;
-__hyp_text___guest_exit = __guest_exit;
 __hyp_text___icache_flags = __icache_flags;
 __hyp_text___kvm_handle_stub_hvc = __kvm_handle_stub_hvc;
-__hyp_text___vgic_v2_perform_cpuif_access = __vgic_v2_perform_cpuif_access;
-__hyp_text___vgic_v3_activate_traps = __vgic_v3_activate_traps;
-__hyp_text___vgic_v3_deactivate_traps = __vgic_v3_deactivate_traps;
-__hyp_text___vgic_v3_get_ich_vtr_el2 = __vgic_v3_get_ich_vtr_el2;
-__hyp_text___vgic_v3_init_lrs = __vgic_v3_init_lrs;
-__hyp_text___vgic_v3_perform_cpuif_access = __vgic_v3_perform_cpuif_access;
-__hyp_text___vgic_v3_read_vmcr = __vgic_v3_read_vmcr;
-__hyp_text___vgic_v3_restore_aprs = __vgic_v3_restore_aprs;
-__hyp_text___vgic_v3_restore_state = __vgic_v3_restore_state;
-__hyp_text___vgic_v3_save_aprs = __vgic_v3_save_aprs;
-__hyp_text___vgic_v3_save_state = __vgic_v3_save_state;
-__hyp_text___vgic_v3_write_vmcr = __vgic_v3_write_vmcr;
-__hyp_text_abort_guest_exit_end = abort_guest_exit_end;
-__hyp_text_abort_guest_exit_start = abort_guest_exit_start;
 __hyp_text_arm64_const_caps_ready = arm64_const_caps_ready;
 __hyp_text_arm64_enable_wa2_handling = arm64_enable_wa2_handling;
 __hyp_text_arm64_ssbd_callback_required = arm64_ssbd_callback_required;
@@ -89,7 +71,6 @@ __hyp_text_cpu_hwcaps = cpu_hwcaps;
 __hyp_text_kimage_voffset = kimage_voffset;
 __hyp_text_kvm_host_data = kvm_host_data;
 __hyp_text_kvm_patch_vector_branch = kvm_patch_vector_branch;
-__hyp_text_kvm_skip_instr32 = kvm_skip_instr32;
 __hyp_text_kvm_update_va_mask = kvm_update_va_mask;
 __hyp_text_kvm_vgic_global_state = kvm_vgic_global_state;
 __hyp_text_panic = panic;
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 2b8286ee8138..41018d25118c 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -7,8 +7,9 @@ asflags-y := -D__HYPERVISOR__
 ccflags-y := -D__HYPERVISOR__ -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
 	     $(DISABLE_STACKLEAK_PLUGIN)
 
-obj-y := ../timer-sr.o timer-sr.o sysreg-sr.o debug-sr.o switch.o tlb.o \
-	 host_hypercall.o ../hyp-entry.o
+obj-y := ../vgic-v3-sr.o ../timer-sr.o timer-sr.o ../aarch32.o \
+	 ../vgic-v2-cpuif-proxy.o sysreg-sr.o debug-sr.o ../entry.o switch.o \
+	 ../fpsimd.o tlb.o host_hypercall.o ../hyp-entry.o
 
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
