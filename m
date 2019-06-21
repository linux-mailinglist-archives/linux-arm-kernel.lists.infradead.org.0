Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159AA4E571
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIzjGP/vv/gUDVIh/1tY2xximjvaQDP+lavxYyNf5ws=; b=MwweaMBhGQMtk/
	T9/+ru2rwNxUadqeMf6xGJ4njB0ykU+vRAGpEM4PnsiNXCH8kjL9ruLVp96G1vxOS3iEyCj/hftcN
	yQarkgzXqyMHZbw0R7I55Lb4Lf2KoSXwv2m6hTqxDk9gYOUxAp1HFToes5jXgfeLPEoU3q56HyuWf
	IAKxh3vxtHUW8RFmBpRFzYA6/9J2XeVEip92cUNMYPi9yecH9sMLiW5Wvhz7yPd0SKoQL7DvPL94Z
	fDfWtE2gx40J182CoFYM9gyYL6cfJoxX2bNpI2Iv80ZuYrlw2qvlQp4XqYeJHizPk+0YEH7GPL/rw
	INSTxG8BfcMuLFDs7/9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGT4-000389-Cn; Fri, 21 Jun 2019 10:08:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1y-0000Hv-Ex
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 406811478;
 Fri, 21 Jun 2019 02:40:26 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E0F293F246;
 Fri, 21 Jun 2019 02:40:24 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 47/59] KVM: arm64: nv: Propagate CNTVOFF_EL2 to the virtual
 EL1 timer
Date: Fri, 21 Jun 2019 10:38:31 +0100
Message-Id: <20190621093843.220980-48-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024026_699657_8E6F38C7 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to allow a guest hypervisor to virtualize the virtual timer.
FOr that, let's propagate CNTVOFF_EL2 to the guest's view of that
timer.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/kvm_host.h |  1 -
 arch/arm64/kvm/sys_regs.c         |  8 ++++++--
 include/kvm/arm_arch_timer.h      |  1 +
 virt/kvm/arm/arch_timer.c         | 12 ++++++++++++
 4 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index b7c44adcdbf3..e0fe9acb46bf 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -252,7 +252,6 @@ enum vcpu_sysreg {
 	RMR_EL2,	/* Reset Management Register */
 	CONTEXTIDR_EL2,	/* Context ID Register (EL2) */
 	TPIDR_EL2,	/* EL2 Software Thread ID Register */
-	CNTVOFF_EL2,	/* Counter-timer Virtual Offset register */
 	CNTHCTL_EL2,	/* Counter-timer Hypervisor Control register */
 	SP_EL2,		/* EL2 Stack Pointer */
 
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 1b8016330a19..2031a59fcf49 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -150,7 +150,6 @@ struct el2_sysreg_map {
 	PURE_EL2_SYSREG( RVBAR_EL2 ),
 	PURE_EL2_SYSREG( RMR_EL2 ),
 	PURE_EL2_SYSREG( TPIDR_EL2 ),
-	PURE_EL2_SYSREG( CNTVOFF_EL2 ),
 	PURE_EL2_SYSREG( CNTHCTL_EL2 ),
 	PURE_EL2_SYSREG( HPFAR_EL2 ),
 	EL2_SYSREG(      SCTLR_EL2,  SCTLR_EL1,      translate_sctlr ),
@@ -1351,6 +1350,11 @@ static bool access_arch_timer(struct kvm_vcpu *vcpu,
 		tmr = TIMER_PTIMER;
 		treg = TIMER_REG_CVAL;
 		break;
+	case SYS_CNTVOFF_EL2:
+		tmr = TIMER_VTIMER;
+		treg = TIMER_REG_VOFF;
+		break;
+
 	default:
 		BUG();
 	}
@@ -2122,7 +2126,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	{ SYS_DESC(SYS_CONTEXTIDR_EL2), access_rw, reset_val, CONTEXTIDR_EL2, 0 },
 	{ SYS_DESC(SYS_TPIDR_EL2), access_rw, reset_val, TPIDR_EL2, 0 },
 
-	{ SYS_DESC(SYS_CNTVOFF_EL2), access_rw, reset_val, CNTVOFF_EL2, 0 },
+	{ SYS_DESC(SYS_CNTVOFF_EL2), access_arch_timer },
 	{ SYS_DESC(SYS_CNTHCTL_EL2), access_rw, reset_val, CNTHCTL_EL2, 0 },
 
 	{ SYS_DESC(SYS_CNTHP_TVAL_EL2), access_arch_timer },
diff --git a/include/kvm/arm_arch_timer.h b/include/kvm/arm_arch_timer.h
index 3a5d9255120e..3389606f3029 100644
--- a/include/kvm/arm_arch_timer.h
+++ b/include/kvm/arm_arch_timer.h
@@ -23,6 +23,7 @@ enum kvm_arch_timer_regs {
 	TIMER_REG_CVAL,
 	TIMER_REG_TVAL,
 	TIMER_REG_CTL,
+	TIMER_REG_VOFF,
 };
 
 struct arch_timer_context {
diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index 3d84c240071d..1d53352c7d97 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -913,6 +913,10 @@ static u64 kvm_arm_timer_read(struct kvm_vcpu *vcpu,
 		val = kvm_phys_timer_read() - timer->cntvoff;
 		break;
 
+	case TIMER_REG_VOFF:
+		val = timer->cntvoff;
+		break;
+
 	default:
 		BUG();
 	}
@@ -955,6 +959,10 @@ static void kvm_arm_timer_write(struct kvm_vcpu *vcpu,
 		timer->cnt_cval = val;
 		break;
 
+	case TIMER_REG_VOFF:
+		timer->cntvoff = val;
+		break;
+
 	default:
 		BUG();
 	}
@@ -1166,6 +1174,10 @@ int kvm_timer_enable(struct kvm_vcpu *vcpu)
 		return -EINVAL;
 	}
 
+	/* Nested virtualization requires zero offset for virtual EL2 */
+	if (nested_virt_in_use(vcpu))
+		vcpu_vtimer(vcpu)->cntvoff = 0;
+
 	get_timer_map(vcpu, &map);
 
 	ret = kvm_vgic_map_phys_irq(vcpu,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
