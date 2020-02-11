Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FF11597E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18Ro+W6mHkHMIXVePNqaOvkkrrHh93lHb1sdK67Evuk=; b=Lt0fAa+iiIvAvn
	I8Zp0lmj6gtmRhyujvD/CefvPmVYsm1ZbH6JI4VLRCCwxwLeuQn5hFmU+L0U5uFQvdC0P+PV8Zi09
	QcN6NnxPFHulcuA8p6tKLktD0xdPXBhK1Tq84desoEDxFF+NqWB2Tglb07IxQajcujlcvyRTa+mTh
	35vdluSXYUZM8oCTXGey5nJb9YnuGy0xTD+EPTfkoZzTRJ8yTTWbU4boR8TQd+4LTGJEih8PrJcW9
	388KDCWxWL7NLDJJQMTnvnY69Ceivkxbx4BXIC+jwLlyd7EinrcxuIhSR5vaAxcBcqDtVFmIqRcfa
	gXkdi/+n2MNZKhjuDYUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a2y-0000Ka-8A; Tue, 11 Feb 2020 18:14:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zid-00031X-FN
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:53:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A10220578;
 Tue, 11 Feb 2020 17:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443586;
 bh=gtQO6DnA30segjYAYUIYRQkYSFgAx9NxUhck8T27+04=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n/mDxxc3ah/TZ1sf3Rb8hEdp6xg6O/JZIuWhXYpHHhctmkHjf6G86fqdSkCauCkdE
 4g6W/HOAHsO4txgrMfKpwSMQtCyW1zZvVk6ekEM8vcSkdh2qzfg6atWMH7TqEaFn79
 Ee84VAd94Vryh+BEo0nkXfyhxCtgAwNzhpgOT6q0=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfe-004O7k-8B; Tue, 11 Feb 2020 17:50:02 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 15/94] KVM: arm64: nv: Handle SPSR_EL2 specially
Date: Tue, 11 Feb 2020 17:48:19 +0000
Message-Id: <20200211174938.27809-16-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095307_667432_4E43642E 
X-CRM114-Status: GOOD (  17.39  )
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

SPSR_EL2 needs special attention when running nested on ARMv8.3:

If taking an exception while running at vEL2 (actually EL1), the
HW will update the SPSR_EL1 register with the EL1 mode. We need
to track this in order to make sure that accesses to the virtual
view of SPSR_EL2 is correct.

To do so, we place an illegal value in SPSR_EL1.M, and patch it
accordingly if required when accessing it.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_emulate.h | 45 ++++++++++++++++++++++++++++
 arch/arm64/kvm/sys_regs.c            | 23 ++++++++++++--
 2 files changed, 66 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 486978d0346b..26552c8571cb 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -277,11 +277,51 @@ static inline bool is_hyp_ctxt(const struct kvm_vcpu *vcpu)
 	return __is_hyp_ctxt(&vcpu->arch.ctxt);
 }
 
+static inline u64 __fixup_spsr_el2_write(struct kvm_cpu_context *ctxt, u64 val)
+{
+	if (!__vcpu_el2_e2h_is_set(ctxt)) {
+		/*
+		 * Clear the .M field when writing SPSR to the CPU, so that we
+		 * can detect when the CPU clobbered our SPSR copy during a
+		 * local exception.
+		 */
+		val &= ~0xc;
+	}
+
+	return val;
+}
+
+static inline u64 __fixup_spsr_el2_read(const struct kvm_cpu_context *ctxt, u64 val)
+{
+	if (__vcpu_el2_e2h_is_set(ctxt))
+		return val;
+
+	/*
+	 * SPSR.M == 0 means the CPU has not touched the SPSR, so the
+	 * register has still the value we saved on the last write.
+	 */
+	if ((val & 0xc) == 0)
+		return ctxt->sys_regs[SPSR_EL2];
+
+	/*
+	 * Otherwise there was a "local" exception on the CPU,
+	 * which from the guest's point of view was being taken from
+	 * EL2 to EL2, although it actually happened to be from
+	 * EL1 to EL1.
+	 * So we need to fix the .M field in SPSR, to make it look
+	 * like EL2, which is what the guest would expect.
+	 */
+	return (val & ~0x0c) | CurrentEL_EL2;
+}
+
 static inline unsigned long vcpu_read_spsr(const struct kvm_vcpu *vcpu)
 {
 	if (vcpu_mode_is_32bit(vcpu))
 		return vcpu_read_spsr32(vcpu);
 
+	if (unlikely(vcpu_mode_el2(vcpu)))
+		return vcpu_read_sys_reg(vcpu, SPSR_EL2);
+
 	if (vcpu->arch.sysregs_loaded_on_cpu)
 		return read_sysreg_el1(SYS_SPSR);
 	else
@@ -295,6 +335,11 @@ static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
 		return;
 	}
 
+	if (unlikely(vcpu_mode_el2(vcpu))) {
+		vcpu_write_sys_reg(vcpu, v, SPSR_EL2);
+		return;
+	}
+
 	if (vcpu->arch.sysregs_loaded_on_cpu)
 		write_sysreg_el1(v, SYS_SPSR);
 	else
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 64be9f452ad6..8c7d3d410689 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -258,11 +258,14 @@ u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
 			goto memory_read;
 
 		/*
-		 * ELR_EL2 is special cased for now.
+		 * ELR_EL2 and SPSR_EL2 are special cased for now.
 		 */
 		switch (reg) {
 		case ELR_EL2:
 			return read_sysreg_el1(SYS_ELR);
+		case SPSR_EL2:
+			val = read_sysreg_el1(SYS_SPSR);
+			return __fixup_spsr_el2_read(&vcpu->arch.ctxt, val);
 		}
 
 		/*
@@ -319,6 +322,10 @@ void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg)
 		case ELR_EL2:
 			write_sysreg_el1(val, SYS_ELR);
 			return;
+		case SPSR_EL2:
+			val = __fixup_spsr_el2_write(&vcpu->arch.ctxt, val);
+			write_sysreg_el1(val, SYS_SPSR);
+			return;
 		}
 
 		/* No EL1 counterpart? We're done here.? */
@@ -1589,6 +1596,18 @@ static bool access_sp_el1(struct kvm_vcpu *vcpu,
 	return true;
 }
 
+static bool access_spsr_el2(struct kvm_vcpu *vcpu,
+			    struct sys_reg_params *p,
+			    const struct sys_reg_desc *r)
+{
+	if (p->is_write)
+		vcpu_write_sys_reg(vcpu, p->regval, SPSR_EL2);
+	else
+		p->regval = vcpu_read_sys_reg(vcpu, SPSR_EL2);
+
+	return true;
+}
+
 /*
  * Architected system registers.
  * Important: Must be sorted ascending by Op0, Op1, CRn, CRm, Op2
@@ -1899,7 +1918,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	{ SYS_DESC(SYS_VTCR_EL2), access_rw, reset_val, VTCR_EL2, 0 },
 
 	{ SYS_DESC(SYS_DACR32_EL2), NULL, reset_unknown, DACR32_EL2 },
-	{ SYS_DESC(SYS_SPSR_EL2), access_rw, reset_val, SPSR_EL2, 0 },
+	{ SYS_DESC(SYS_SPSR_EL2), access_spsr_el2, reset_val, SPSR_EL2, 0 },
 	{ SYS_DESC(SYS_ELR_EL2), access_rw, reset_val, ELR_EL2, 0 },
 	{ SYS_DESC(SYS_SP_EL1), access_sp_el1},
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
