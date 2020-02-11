Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C248159802
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:18:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDh+tTSsGEWCpJaxdjwpYkljDMD13JNjulI4QNvpTZw=; b=hpAqAxm+HayowL
	w+CpyyrM9sWwFeAPsjqj8JAWMwXaRgLgUz/+U+Q18OiGuVnpIfg2LH4WwHGuKidH9cufgGNwC0nlK
	y/EFrECLQTWVgGRDtHnZFfdgW0z+t+NrG8yEFy+cPhhSiIVPRa+fJ1bDtpuhjt1qFJStWxbMGexCx
	88iiSZM1vwfEVj1v7+VExF6HUk85hkZfEqHFnbq3aoownOYzae+iCaAn6YtutF5bRR6tE6O4qSxkG
	yg6qR52kj1eNDtLw3ebtJ1suRZ7CipQ5FsXMNxosT8fLZe1qKpXbaYavDHADtRH1kBKReawjfvosL
	CbddKhOBfZ49wadm4e8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a7N-0005aY-N7; Tue, 11 Feb 2020 18:18:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zj6-0003S8-MD
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:53:38 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E47220870;
 Tue, 11 Feb 2020 17:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443616;
 bh=/d4QEu6KExCVn1Nyc6BoOADlVZV4Bz226l2YxJeUdxQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fDNPjgXdR4X4fmVLG0KXib1sFo/eJ7toCHhIgi7nIdKzE8hMWc7Dp71j+BgEBUpak
 4FPgyg+b7PchSyJiFtqaoCVZX4GQaL3WHWtHWu6rAUNzGevpbof+9qmnI1f9uaicb3
 4X0gm0vDK18sR2RCEdbxvo/dELdcjaM6qyutqOms=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1ZgI-004O7k-Hg; Tue, 11 Feb 2020 17:50:42 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 83/94] KVM: arm64: VNCR-ize ELR_EL1
Date: Tue, 11 Feb 2020 17:49:27 +0000
Message-Id: <20200211174938.27809-84-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095336_782380_BC7C8098 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ELR_EL1 being a VNCR-capable register, let's flag it as such, and
repaint all the accesses

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_emulate.h | 2 +-
 arch/arm64/include/asm/kvm_host.h    | 2 +-
 arch/arm64/kvm/guest.c               | 2 +-
 arch/arm64/kvm/hyp/sysreg-sr.c       | 4 ++--
 arch/arm64/kvm/sys_regs.c            | 4 ++--
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 16cd99ab7170..5718fbc56ba5 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -164,7 +164,7 @@ static inline unsigned long *vcpu_pc(const struct kvm_vcpu *vcpu)
 
 static inline unsigned long *__vcpu_elr_el1(const struct kvm_vcpu *vcpu)
 {
-	return (unsigned long *)&vcpu->arch.ctxt.elr_el1;
+	return (unsigned long *)__ctxt_sys_reg(&vcpu->arch.ctxt, ELR_EL1);
 }
 
 static inline unsigned long vcpu_read_elr_el1(const struct kvm_vcpu *vcpu)
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 29ecd13ab4e2..a497e7970418 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -264,6 +264,7 @@ enum vcpu_sysreg {
 	VNCR(CONTEXTIDR_EL1),	/* Context ID Register */
 	VNCR(AMAIR_EL1),/* Aux Memory Attribute Indirection Register */
 	VNCR(MDSCR_EL1),/* Monitor Debug System Control Register */
+	VNCR(ELR_EL1),
 	VNCR(VPIDR_EL2),/* Virtualization Processor ID Register */
 	VNCR(VMPIDR_EL2),/* Virtualization Multiprocessor ID Register */
 	VNCR(HCR_EL2),	/* Hypervisor Configuration Register */
@@ -335,7 +336,6 @@ struct kvm_cpu_context {
 	struct user_pt_regs regs;	/* sp = sp_el0 */
 
 	u64	sp_el1;
-	u64	elr_el1;
 
 	u64	spsr[KVM_NR_SPSR];
 
diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index fb416f624920..40ef6758266d 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -128,7 +128,7 @@ static void *core_reg_addr(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 		return &vcpu->arch.ctxt.sp_el1;
 
 	case KVM_REG_ARM_CORE_REG(elr_el1):
-		return &vcpu->arch.ctxt.elr_el1;
+		return __vcpu_elr_el1(vcpu);
 
 	case KVM_REG_ARM_CORE_REG(spsr[0]) ...
 	     KVM_REG_ARM_CORE_REG(spsr[KVM_NR_SPSR - 1]):
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 8b07be72f2e7..10ce7a6a0c6c 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -59,7 +59,7 @@ static void __hyp_text __sysreg_save_vel1_state(struct kvm_cpu_context *ctxt)
 	ctxt_sys_reg(ctxt, CNTKCTL_EL1)	= read_sysreg_el1(SYS_CNTKCTL);
 
 	ctxt->sp_el1			= read_sysreg(sp_el1);
-	ctxt->elr_el1			= read_sysreg_el1(SYS_ELR);
+	ctxt_sys_reg(ctxt, ELR_EL1)	= read_sysreg_el1(SYS_ELR);
 	ctxt->spsr[KVM_SPSR_EL1]	= read_sysreg_el1(SYS_SPSR);
 }
 
@@ -324,7 +324,7 @@ static void __hyp_text __sysreg_restore_vel1_state(struct kvm_cpu_context *ctxt)
 	}
 
 	write_sysreg(ctxt->sp_el1,			sp_el1);
-	write_sysreg_el1(ctxt->elr_el1,			SYS_ELR);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, ELR_EL1),	SYS_ELR);
 	write_sysreg_el1(ctxt->spsr[KVM_SPSR_EL1],	SYS_SPSR);
 }
 
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index d59fc246aee3..dc1b75a37f00 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1833,9 +1833,9 @@ static bool access_elr(struct kvm_vcpu *vcpu,
 		return false;
 
 	if (p->is_write)
-		vcpu->arch.ctxt.elr_el1 = p->regval;
+		*__vcpu_elr_el1(vcpu) = p->regval;
 	else
-		p->regval = vcpu->arch.ctxt.elr_el1;
+		p->regval = *__vcpu_elr_el1(vcpu);
 
 	return true;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
