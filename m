Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A75D159759
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 18:55:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HIgmBCeOH/ZyYCWcWmDk8m497veZNHQ+kMB52Iruc0=; b=t7vZrjo1+CYBWy
	cPtQnIBr5hS8iQiz40DPRtlaPZV0Yq/5bv0IspcoUkB3YlHau2WKuzBV8yI3caS+Uq5nIeiSCE9tx
	SNZbBjbAyCpQ/brgmdHaJ7LnCP3qGxf8zl+aP8DVQEtMq89nBafbO42e6um7zSccYbSgU2zme2yZ3
	xXR3+phLnobGwyKitdbbRCB2mFSltXFYOEoCo7k9TzOKAhJ81ex3sGtvKqZ/VGxvIjPC7zTmiDt9q
	/CSQtA7sCCNfX+q5q/s6C4OTPBQKST9Kg8l4NbixDchfWO4gV+887ydh0wipU0fpWDOjkyclKwSII
	KqEaj2tQ8xNcdPYuER4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zkp-0004Ox-FG; Tue, 11 Feb 2020 17:55:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zgf-0001HN-9q
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:51:08 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3D83206CC;
 Tue, 11 Feb 2020 17:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443465;
 bh=rJBmEKFRZFOWJv/B4wYb9PONOF6F0qnBy4rtT5zDmRA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BqTob0BqhPgzNi5/b9r+TN6JYuiw7rmAanEUHhQiUzVWdVX2DkldPd4AtBiWJvtEf
 Gr8szpPUauAVh73orHzwprtH1y9k1VxkhzMEjzryJu8vg0BaIUHTBQ4Cy5DCqAT4wk
 P8dthgUEXxmXo3EZivUgN6Ty9jLHRkG1TyWIWJVk=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfy-004O7k-8f; Tue, 11 Feb 2020 17:50:22 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 49/94] KVM: arm64: nv: Propagate CNTVOFF_EL2 to the virtual
 EL1 timer
Date: Tue, 11 Feb 2020 17:48:53 +0000
Message-Id: <20200211174938.27809-50-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095105_962439_BD87874D 
X-CRM114-Status: GOOD (  13.70  )
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

We need to allow a guest hypervisor to virtualize the virtual timer.
FOr that, let's propagate CNTVOFF_EL2 to the guest's view of that
timer.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_host.h | 1 -
 arch/arm64/kvm/sys_regs.c         | 7 ++++++-
 include/kvm/arm_arch_timer.h      | 1 +
 virt/kvm/arm/arch_timer.c         | 8 ++++++++
 4 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 36bb463dc16a..e35165de51a2 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -247,7 +247,6 @@ enum vcpu_sysreg {
 	RMR_EL2,	/* Reset Management Register */
 	CONTEXTIDR_EL2,	/* Context ID Register (EL2) */
 	TPIDR_EL2,	/* EL2 Software Thread ID Register */
-	CNTVOFF_EL2,	/* Counter-timer Virtual Offset register */
 	CNTHCTL_EL2,	/* Counter-timer Hypervisor Control register */
 	SP_EL2,		/* EL2 Stack Pointer */
 
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 5d9ca3988745..7e2553480721 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1373,6 +1373,11 @@ static bool access_arch_timer(struct kvm_vcpu *vcpu,
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
@@ -2075,7 +2080,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
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
index c7edefced838..3c88a4c0a296 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -917,6 +917,10 @@ static u64 kvm_arm_timer_read(struct kvm_vcpu *vcpu,
 		val = kvm_phys_timer_read() - timer->cntvoff;
 		break;
 
+	case TIMER_REG_VOFF:
+		val = timer->cntvoff;
+		break;
+
 	default:
 		BUG();
 	}
@@ -959,6 +963,10 @@ static void kvm_arm_timer_write(struct kvm_vcpu *vcpu,
 		timer->cnt_cval = val;
 		break;
 
+	case TIMER_REG_VOFF:
+		timer->cntvoff = val;
+		break;
+
 	default:
 		BUG();
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
