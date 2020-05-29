Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD1D1E8321
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsOazRne4sERBiqGwRCtv4eV8kz8q8aPora3lH+4iEQ=; b=BppDGuRWJKwR00
	3TyhThOG3sDNq1rCehOUSLJFrldIGUyVQOa3Rb262Kdvf8QFOERDqp5dbT3VDs4gUxbx3r2iWfwrG
	FZopwYtsrSS9ql0DqyOoeqMi9jz4bkIXp0mdhNYVRPyxSBMwnoOXBdmc8WWjGj8N/rYJGcLutGsWp
	dm0IZEBqLunvYYhnRuSSPniXOvjbnc8OLjtR01rgopCGgC4CNcZH+vTBO+94KzVVS1jSKm0q/opD1
	fEsu92C4o2MqSrhY7ASwgs87k/Hlha0JWv1+JrlJqfA5KKlZMMFne3e/7t3x9UvzbtGGv4seSci0H
	KPDR2K8SmeBTZZKENBOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehWx-00014J-8h; Fri, 29 May 2020 16:06:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehTj-0004jm-AG
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:03:36 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C36BA207F9;
 Fri, 29 May 2020 16:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590768205;
 bh=ox5DskgEilhU7+ZeBhHJcLWnRN2xYIH7FioH/4inlBM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l24fAm13aDBEva2JKA5ZcZjIp5mCQFNMxLz5a+33W+/hAhsXcPNme9U8toWlh3wtA
 Nc5w9dvqCTaczMwZDFa8eits7jEcx5olBG6qXi+E3tkE7+kBREkbM6pifD/mMo0e5u
 /CtpgwwaKh4tf6JQNI+tkNT5hKrSzUZ+pHLz9Z4c=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jehSJ-00GJKc-Me; Fri, 29 May 2020 17:02:00 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 19/24] KVM: arm64: Refactor vcpu_{read,write}_sys_reg
Date: Fri, 29 May 2020 17:01:16 +0100
Message-Id: <20200529160121.899083-20-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200529_090327_468048_FB3EC662 
X-CRM114-Status: GOOD (  13.23  )
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

Extract the direct HW accessors for later reuse.

Reviewed-by: James Morse <james.morse@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/sys_regs.c | 128 +++++++++++++++++++++-----------------
 1 file changed, 71 insertions(+), 57 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 620eaf11e672..50e328ca1419 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -64,11 +64,8 @@ static bool write_to_read_only(struct kvm_vcpu *vcpu,
 	return false;
 }
 
-u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
+static bool __vcpu_read_sys_reg_from_cpu(int reg, u64 *val)
 {
-	if (!vcpu->arch.sysregs_loaded_on_cpu)
-		goto immediate_read;
-
 	/*
 	 * System registers listed in the switch are not saved on every
 	 * exit from the guest but are only saved on vcpu_put.
@@ -79,40 +76,37 @@ u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
 	 * thread when emulating cross-VCPU communication.
 	 */
 	switch (reg) {
-	case CSSELR_EL1:	return read_sysreg_s(SYS_CSSELR_EL1);
-	case SCTLR_EL1:		return read_sysreg_s(SYS_SCTLR_EL12);
-	case ACTLR_EL1:		return read_sysreg_s(SYS_ACTLR_EL1);
-	case CPACR_EL1:		return read_sysreg_s(SYS_CPACR_EL12);
-	case TTBR0_EL1:		return read_sysreg_s(SYS_TTBR0_EL12);
-	case TTBR1_EL1:		return read_sysreg_s(SYS_TTBR1_EL12);
-	case TCR_EL1:		return read_sysreg_s(SYS_TCR_EL12);
-	case ESR_EL1:		return read_sysreg_s(SYS_ESR_EL12);
-	case AFSR0_EL1:		return read_sysreg_s(SYS_AFSR0_EL12);
-	case AFSR1_EL1:		return read_sysreg_s(SYS_AFSR1_EL12);
-	case FAR_EL1:		return read_sysreg_s(SYS_FAR_EL12);
-	case MAIR_EL1:		return read_sysreg_s(SYS_MAIR_EL12);
-	case VBAR_EL1:		return read_sysreg_s(SYS_VBAR_EL12);
-	case CONTEXTIDR_EL1:	return read_sysreg_s(SYS_CONTEXTIDR_EL12);
-	case TPIDR_EL0:		return read_sysreg_s(SYS_TPIDR_EL0);
-	case TPIDRRO_EL0:	return read_sysreg_s(SYS_TPIDRRO_EL0);
-	case TPIDR_EL1:		return read_sysreg_s(SYS_TPIDR_EL1);
-	case AMAIR_EL1:		return read_sysreg_s(SYS_AMAIR_EL12);
-	case CNTKCTL_EL1:	return read_sysreg_s(SYS_CNTKCTL_EL12);
-	case PAR_EL1:		return read_sysreg_s(SYS_PAR_EL1);
-	case DACR32_EL2:	return read_sysreg_s(SYS_DACR32_EL2);
-	case IFSR32_EL2:	return read_sysreg_s(SYS_IFSR32_EL2);
-	case DBGVCR32_EL2:	return read_sysreg_s(SYS_DBGVCR32_EL2);
+	case CSSELR_EL1:	*val = read_sysreg_s(SYS_CSSELR_EL1);	break;
+	case SCTLR_EL1:		*val = read_sysreg_s(SYS_SCTLR_EL12);	break;
+	case ACTLR_EL1:		*val = read_sysreg_s(SYS_ACTLR_EL1);	break;
+	case CPACR_EL1:		*val = read_sysreg_s(SYS_CPACR_EL12);	break;
+	case TTBR0_EL1:		*val = read_sysreg_s(SYS_TTBR0_EL12);	break;
+	case TTBR1_EL1:		*val = read_sysreg_s(SYS_TTBR1_EL12);	break;
+	case TCR_EL1:		*val = read_sysreg_s(SYS_TCR_EL12);	break;
+	case ESR_EL1:		*val = read_sysreg_s(SYS_ESR_EL12);	break;
+	case AFSR0_EL1:		*val = read_sysreg_s(SYS_AFSR0_EL12);	break;
+	case AFSR1_EL1:		*val = read_sysreg_s(SYS_AFSR1_EL12);	break;
+	case FAR_EL1:		*val = read_sysreg_s(SYS_FAR_EL12);	break;
+	case MAIR_EL1:		*val = read_sysreg_s(SYS_MAIR_EL12);	break;
+	case VBAR_EL1:		*val = read_sysreg_s(SYS_VBAR_EL12);	break;
+	case CONTEXTIDR_EL1:	*val = read_sysreg_s(SYS_CONTEXTIDR_EL12);break;
+	case TPIDR_EL0:		*val = read_sysreg_s(SYS_TPIDR_EL0);	break;
+	case TPIDRRO_EL0:	*val = read_sysreg_s(SYS_TPIDRRO_EL0);	break;
+	case TPIDR_EL1:		*val = read_sysreg_s(SYS_TPIDR_EL1);	break;
+	case AMAIR_EL1:		*val = read_sysreg_s(SYS_AMAIR_EL12);	break;
+	case CNTKCTL_EL1:	*val = read_sysreg_s(SYS_CNTKCTL_EL12);	break;
+	case PAR_EL1:		*val = read_sysreg_s(SYS_PAR_EL1);	break;
+	case DACR32_EL2:	*val = read_sysreg_s(SYS_DACR32_EL2);	break;
+	case IFSR32_EL2:	*val = read_sysreg_s(SYS_IFSR32_EL2);	break;
+	case DBGVCR32_EL2:	*val = read_sysreg_s(SYS_DBGVCR32_EL2);	break;
+	default:		return false;
 	}
 
-immediate_read:
-	return __vcpu_sys_reg(vcpu, reg);
+	return true;
 }
 
-void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg)
+static bool __vcpu_write_sys_reg_to_cpu(u64 val, int reg)
 {
-	if (!vcpu->arch.sysregs_loaded_on_cpu)
-		goto immediate_write;
-
 	/*
 	 * System registers listed in the switch are not restored on every
 	 * entry to the guest but are only restored on vcpu_load.
@@ -122,32 +116,52 @@ void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg)
 	 * once, before running the VCPU, and never changed later.
 	 */
 	switch (reg) {
-	case CSSELR_EL1:	write_sysreg_s(val, SYS_CSSELR_EL1);	return;
-	case SCTLR_EL1:		write_sysreg_s(val, SYS_SCTLR_EL12);	return;
-	case ACTLR_EL1:		write_sysreg_s(val, SYS_ACTLR_EL1);	return;
-	case CPACR_EL1:		write_sysreg_s(val, SYS_CPACR_EL12);	return;
-	case TTBR0_EL1:		write_sysreg_s(val, SYS_TTBR0_EL12);	return;
-	case TTBR1_EL1:		write_sysreg_s(val, SYS_TTBR1_EL12);	return;
-	case TCR_EL1:		write_sysreg_s(val, SYS_TCR_EL12);	return;
-	case ESR_EL1:		write_sysreg_s(val, SYS_ESR_EL12);	return;
-	case AFSR0_EL1:		write_sysreg_s(val, SYS_AFSR0_EL12);	return;
-	case AFSR1_EL1:		write_sysreg_s(val, SYS_AFSR1_EL12);	return;
-	case FAR_EL1:		write_sysreg_s(val, SYS_FAR_EL12);	return;
-	case MAIR_EL1:		write_sysreg_s(val, SYS_MAIR_EL12);	return;
-	case VBAR_EL1:		write_sysreg_s(val, SYS_VBAR_EL12);	return;
-	case CONTEXTIDR_EL1:	write_sysreg_s(val, SYS_CONTEXTIDR_EL12); return;
-	case TPIDR_EL0:		write_sysreg_s(val, SYS_TPIDR_EL0);	return;
-	case TPIDRRO_EL0:	write_sysreg_s(val, SYS_TPIDRRO_EL0);	return;
-	case TPIDR_EL1:		write_sysreg_s(val, SYS_TPIDR_EL1);	return;
-	case AMAIR_EL1:		write_sysreg_s(val, SYS_AMAIR_EL12);	return;
-	case CNTKCTL_EL1:	write_sysreg_s(val, SYS_CNTKCTL_EL12);	return;
-	case PAR_EL1:		write_sysreg_s(val, SYS_PAR_EL1);	return;
-	case DACR32_EL2:	write_sysreg_s(val, SYS_DACR32_EL2);	return;
-	case IFSR32_EL2:	write_sysreg_s(val, SYS_IFSR32_EL2);	return;
-	case DBGVCR32_EL2:	write_sysreg_s(val, SYS_DBGVCR32_EL2);	return;
+	case CSSELR_EL1:	write_sysreg_s(val, SYS_CSSELR_EL1);	break;
+	case SCTLR_EL1:		write_sysreg_s(val, SYS_SCTLR_EL12);	break;
+	case ACTLR_EL1:		write_sysreg_s(val, SYS_ACTLR_EL1);	break;
+	case CPACR_EL1:		write_sysreg_s(val, SYS_CPACR_EL12);	break;
+	case TTBR0_EL1:		write_sysreg_s(val, SYS_TTBR0_EL12);	break;
+	case TTBR1_EL1:		write_sysreg_s(val, SYS_TTBR1_EL12);	break;
+	case TCR_EL1:		write_sysreg_s(val, SYS_TCR_EL12);	break;
+	case ESR_EL1:		write_sysreg_s(val, SYS_ESR_EL12);	break;
+	case AFSR0_EL1:		write_sysreg_s(val, SYS_AFSR0_EL12);	break;
+	case AFSR1_EL1:		write_sysreg_s(val, SYS_AFSR1_EL12);	break;
+	case FAR_EL1:		write_sysreg_s(val, SYS_FAR_EL12);	break;
+	case MAIR_EL1:		write_sysreg_s(val, SYS_MAIR_EL12);	break;
+	case VBAR_EL1:		write_sysreg_s(val, SYS_VBAR_EL12);	break;
+	case CONTEXTIDR_EL1:	write_sysreg_s(val, SYS_CONTEXTIDR_EL12);break;
+	case TPIDR_EL0:		write_sysreg_s(val, SYS_TPIDR_EL0);	break;
+	case TPIDRRO_EL0:	write_sysreg_s(val, SYS_TPIDRRO_EL0);	break;
+	case TPIDR_EL1:		write_sysreg_s(val, SYS_TPIDR_EL1);	break;
+	case AMAIR_EL1:		write_sysreg_s(val, SYS_AMAIR_EL12);	break;
+	case CNTKCTL_EL1:	write_sysreg_s(val, SYS_CNTKCTL_EL12);	break;
+	case PAR_EL1:		write_sysreg_s(val, SYS_PAR_EL1);	break;
+	case DACR32_EL2:	write_sysreg_s(val, SYS_DACR32_EL2);	break;
+	case IFSR32_EL2:	write_sysreg_s(val, SYS_IFSR32_EL2);	break;
+	case DBGVCR32_EL2:	write_sysreg_s(val, SYS_DBGVCR32_EL2);	break;
+	default:		return false;
 	}
 
-immediate_write:
+	return true;
+}
+
+u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
+{
+	u64 val = 0x8badf00d8badf00d;
+
+	if (vcpu->arch.sysregs_loaded_on_cpu &&
+	    __vcpu_read_sys_reg_from_cpu(reg, &val))
+		return val;
+
+	return __vcpu_sys_reg(vcpu, reg);
+}
+
+void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg)
+{
+	if (vcpu->arch.sysregs_loaded_on_cpu &&
+	    __vcpu_write_sys_reg_to_cpu(val, reg))
+		return;
+
 	 __vcpu_sys_reg(vcpu, reg) = val;
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
