Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5061B8552
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 11:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+wjeXElb2y9sYUQloLeiqnHVclXl/DHrbmfLiWiMzT0=; b=LrY7VYPuMEZekK
	dPD4/S9PZVFdkhkRe01vNhfyHBIOjf7it+5c+V7Kx3gHmVoMHfqPE6swTpGWB6HFawjTfJ/7Fpo8F
	NhcQV50ZKladnl5GUqS7cTuckcbPDXJZ4s3uPA0LlpBwR17yMyzfzqn5sKtxtQ3oR+cQMfH04j2tW
	qo9A+SO9xeRxGB0g9Jmk67hIcoPmIG3B7alKRwGWwssorrd1srv0KMUNjg15aiRZGLMuYINqpQHk1
	cW5DPvxMNh+AK0+uoSEbTCGhNjWc+yixz6jrTNdzyzIUlcjYrSGQIQuPh08jF52dl9YpzpIOl0o1w
	tjPLAQjBAWM0W2xGlkrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSHLX-0003Cv-Jo; Sat, 25 Apr 2020 09:43:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSHLQ-0003CB-Ir
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 09:43:33 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39A5220704;
 Sat, 25 Apr 2020 09:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587807811;
 bh=zvYrOISsqhXXkpkz+TnXeLEkWvfF6n0Y6JOs4aslC1Y=;
 h=From:To:Cc:Subject:Date:From;
 b=pm7FFlsmPkKp8TRBVHkn7sGO3WZwHKBkL8zyVIh59CSu7eHk0PQR6xoxnHgrJ9R3W
 eBrixxYSdRgIQCGCUKDbX396hH8AFk7mfOL5+aXT8Uzid50aBKXjUcyyeIyLxPzcjk
 yWzPZsttMPHCgUNPvCnNH8FICm+EU7luhE5eU8cY=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jSHLN-006HA5-DN; Sat, 25 Apr 2020 10:43:29 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH] KVM: arm64: Save/restore sp_el0 as part of __guest_enter
Date: Sat, 25 Apr 2020 10:43:21 +0100
Message-Id: <20200425094321.162752-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_024332_664907_B9B19E55 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We currently save/restore sp_el0 in C code. This is a bit unsafe,
as a lot of the C code expects 'current' to be accessible from
there (and the opportunity to run kernel code in HYP is specially
great with VHE).

Instead, let's move the save/restore of sp_el0 to the assembly
code (in __guest_enter), making sure that sp_el0 is correct
very early on when we exit the guest, and is preserved as long
as possible to its host value when we enter the guest.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/hyp/entry.S     | 23 +++++++++++++++++++++++
 arch/arm64/kvm/hyp/sysreg-sr.c | 17 +++--------------
 2 files changed, 26 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index d22d0534dd600..90186cf6473e0 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -18,6 +18,7 @@
 
 #define CPU_GP_REG_OFFSET(x)	(CPU_GP_REGS + x)
 #define CPU_XREG_OFFSET(x)	CPU_GP_REG_OFFSET(CPU_USER_PT_REGS + 8*x)
+#define CPU_SP_EL0_OFFSET	(CPU_XREG_OFFSET(30) + 8)
 
 	.text
 	.pushsection	.hyp.text, "ax"
@@ -47,6 +48,16 @@
 	ldp	x29, lr,  [\ctxt, #CPU_XREG_OFFSET(29)]
 .endm
 
+.macro save_sp_el0 ctxt, tmp
+	mrs	\tmp,	sp_el0
+	str	\tmp,	[\ctxt, #CPU_SP_EL0_OFFSET]
+.endm
+
+.macro restore_sp_el0 ctxt, tmp
+	ldr	\tmp,	  [\ctxt, #CPU_SP_EL0_OFFSET]
+	msr	sp_el0, \tmp
+.endm
+
 /*
  * u64 __guest_enter(struct kvm_vcpu *vcpu,
  *		     struct kvm_cpu_context *host_ctxt);
@@ -60,6 +71,9 @@ SYM_FUNC_START(__guest_enter)
 	// Store the host regs
 	save_callee_saved_regs x1
 
+	// Save the host's sp_el0
+	save_sp_el0	x1, x2
+
 	// Now the host state is stored if we have a pending RAS SError it must
 	// affect the host. If any asynchronous exception is pending we defer
 	// the guest entry. The DSB isn't necessary before v8.2 as any SError
@@ -83,6 +97,9 @@ alternative_else_nop_endif
 	// when this feature is enabled for kernel code.
 	ptrauth_switch_to_guest x29, x0, x1, x2
 
+	// Restore the guest's sp_el0
+	restore_sp_el0 x29, x0
+
 	// Restore guest regs x0-x17
 	ldp	x0, x1,   [x29, #CPU_XREG_OFFSET(0)]
 	ldp	x2, x3,   [x29, #CPU_XREG_OFFSET(2)]
@@ -130,6 +147,9 @@ SYM_INNER_LABEL(__guest_exit, SYM_L_GLOBAL)
 	// Store the guest regs x18-x29, lr
 	save_callee_saved_regs x1
 
+	// Store the guest's sp_el0
+	save_sp_el0	x1, x2
+
 	get_host_ctxt	x2, x3
 
 	// Macro ptrauth_switch_to_guest format:
@@ -139,6 +159,9 @@ SYM_INNER_LABEL(__guest_exit, SYM_L_GLOBAL)
 	// when this feature is enabled for kernel code.
 	ptrauth_switch_to_host x1, x2, x3, x4, x5
 
+	// Restore the hosts's sp_el0
+	restore_sp_el0 x2, x3
+
 	// Now restore the host regs
 	restore_callee_saved_regs x2
 
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 75b1925763f16..6d2df9fe0b5d2 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -15,8 +15,9 @@
 /*
  * Non-VHE: Both host and guest must save everything.
  *
- * VHE: Host and guest must save mdscr_el1 and sp_el0 (and the PC and pstate,
- * which are handled as part of the el2 return state) on every switch.
+ * VHE: Host and guest must save mdscr_el1 and sp_el0 (and the PC and
+ * pstate, which are handled as part of the el2 return state) on every
+ * switch (sp_el0 is being dealt with in the assembly code).
  * tpidr_el0 and tpidrro_el0 only need to be switched when going
  * to host userspace or a different VCPU.  EL1 registers only need to be
  * switched when potentially going to run a different VCPU.  The latter two
@@ -26,12 +27,6 @@
 static void __hyp_text __sysreg_save_common_state(struct kvm_cpu_context *ctxt)
 {
 	ctxt->sys_regs[MDSCR_EL1]	= read_sysreg(mdscr_el1);
-
-	/*
-	 * The host arm64 Linux uses sp_el0 to point to 'current' and it must
-	 * therefore be saved/restored on every entry/exit to/from the guest.
-	 */
-	ctxt->gp_regs.regs.sp		= read_sysreg(sp_el0);
 }
 
 static void __hyp_text __sysreg_save_user_state(struct kvm_cpu_context *ctxt)
@@ -99,12 +94,6 @@ NOKPROBE_SYMBOL(sysreg_save_guest_state_vhe);
 static void __hyp_text __sysreg_restore_common_state(struct kvm_cpu_context *ctxt)
 {
 	write_sysreg(ctxt->sys_regs[MDSCR_EL1],	  mdscr_el1);
-
-	/*
-	 * The host arm64 Linux uses sp_el0 to point to 'current' and it must
-	 * therefore be saved/restored on every entry/exit to/from the guest.
-	 */
-	write_sysreg(ctxt->gp_regs.regs.sp,	  sp_el0);
 }
 
 static void __hyp_text __sysreg_restore_user_state(struct kvm_cpu_context *ctxt)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
