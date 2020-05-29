Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87761E813D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSBbqKb+lHh+n7/wYzsPnNoOX4ph+O9oAgrqxw89K6s=; b=X3RPaRaxETRnJV
	vpGfN+V+Q9dRLDCL++9r4xpMdhKCXeo07C6YO/HeEQRsiRuqciHtfGA3cC/ZdUZemzKt2zRx/Z8RG
	Kux3RiC40lR0pHh1fFzjTW1sj4sbOb9vVmEgYNxBaTuKFQgT2KsrwgtejqgqExAh9LybjGiO5gtBt
	bVp8iWlxGXCr2nfeLrCdenWh6wouHXgL8NwqlNyiEN2Jl+A0cFpTtihIXhwyKKFEv+/X6yId+YzPJ
	6I8kJyiWvf4KgHiNZZq+YoGIcZfHklw68udvygDWPvPd2x0cvzWU2scTzacQXp3tlpzkrmwoA+Ynk
	uWlrn8SlFMSINJDgJcqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegc7-0007Od-PB; Fri, 29 May 2020 15:08:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegbT-0006yZ-Rc
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 15:07:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20BBA1045;
 Fri, 29 May 2020 08:07:22 -0700 (PDT)
Received: from merodach.members.linode.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 510CF3F718;
 Fri, 29 May 2020 08:07:21 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] KVM: arm64: Stop save/restoring ACTLR_EL1
Date: Fri, 29 May 2020 15:06:56 +0000
Message-Id: <20200529150656.7339-4-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529150656.7339-1-james.morse@arm.com>
References: <20200529150656.7339-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_080723_996551_C9784129 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KVM sets HCR_EL2.TACR via HCR_GUEST_FLAGS. This means ACTLR* accesses
from the guest are always trapped, and always return the value in the
sys_regs array.

The guest can't change the value of these registers, so we are
save restoring the reset value, which came from the host.

Stop save/restoring this register. Keep the storage for this register
in sys_regs[] as this is how the value is exposed to user-space,
removing it would break migration.

Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kvm/hyp/sysreg-sr.c | 2 --
 arch/arm64/kvm/sys_regs.c      | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 75b1925763f1..57116cf3a1a5 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -44,7 +44,6 @@ static void __hyp_text __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
 {
 	ctxt->sys_regs[CSSELR_EL1]	= read_sysreg(csselr_el1);
 	ctxt->sys_regs[SCTLR_EL1]	= read_sysreg_el1(SYS_SCTLR);
-	ctxt->sys_regs[ACTLR_EL1]	= read_sysreg(actlr_el1);
 	ctxt->sys_regs[CPACR_EL1]	= read_sysreg_el1(SYS_CPACR);
 	ctxt->sys_regs[TTBR0_EL1]	= read_sysreg_el1(SYS_TTBR0);
 	ctxt->sys_regs[TTBR1_EL1]	= read_sysreg_el1(SYS_TTBR1);
@@ -133,7 +132,6 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 		isb();
 	}
 
-	write_sysreg(ctxt->sys_regs[ACTLR_EL1],		actlr_el1);
 	write_sysreg_el1(ctxt->sys_regs[CPACR_EL1],	SYS_CPACR);
 	write_sysreg_el1(ctxt->sys_regs[TTBR0_EL1],	SYS_TTBR0);
 	write_sysreg_el1(ctxt->sys_regs[TTBR1_EL1],	SYS_TTBR1);
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index bfd68cd4fc54..545bc18b9c24 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -81,7 +81,6 @@ u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
 	switch (reg) {
 	case CSSELR_EL1:	return read_sysreg_s(SYS_CSSELR_EL1);
 	case SCTLR_EL1:		return read_sysreg_s(SYS_SCTLR_EL12);
-	case ACTLR_EL1:		return read_sysreg_s(SYS_ACTLR_EL1);
 	case CPACR_EL1:		return read_sysreg_s(SYS_CPACR_EL12);
 	case TTBR0_EL1:		return read_sysreg_s(SYS_TTBR0_EL12);
 	case TTBR1_EL1:		return read_sysreg_s(SYS_TTBR1_EL12);
@@ -124,7 +123,6 @@ void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg)
 	switch (reg) {
 	case CSSELR_EL1:	write_sysreg_s(val, SYS_CSSELR_EL1);	return;
 	case SCTLR_EL1:		write_sysreg_s(val, SYS_SCTLR_EL12);	return;
-	case ACTLR_EL1:		write_sysreg_s(val, SYS_ACTLR_EL1);	return;
 	case CPACR_EL1:		write_sysreg_s(val, SYS_CPACR_EL12);	return;
 	case TTBR0_EL1:		write_sysreg_s(val, SYS_TTBR0_EL12);	return;
 	case TTBR1_EL1:		write_sysreg_s(val, SYS_TTBR1_EL12);	return;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
