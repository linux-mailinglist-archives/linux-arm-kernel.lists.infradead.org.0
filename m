Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AF8104167
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EoaeB3E8bnbi9J6Pq9YUqUFr84X8+yULwtJU8Cevd8=; b=Yu4BQswhLZUGgT
	2KamyOOx0dzCatKllREftgZNbqJ3tpJl8hg0NokaZz5RHVfZN7ItT6OqBmiVwNA6fhqLNO4+ve+RC
	kVfMq3LEA3I7xhZYmZGFr4C5leNKvJDBu06thEbRkHh16PYhvfuQcL+k2p+bgSxwTK7h5V1+ECphc
	fvSyegw8vG8iXr4qZNsyyQO7yvnLbX+zWm+JLkLgizdM5KtZC38j8IW5v3w47rG0EKEAw++XJRdM/
	nI8QGJ4sqrUD4r74A0ezo16A6BptUdueI+zAqQOp5S6YflTygI0ewK08OZoys8GEBWE4PccuOUmnF
	2b6CtLSDCFOAv9RQbdIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXTCC-0000PN-VK; Wed, 20 Nov 2019 16:51:12 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXTBK-0008Ij-35
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:50:21 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXT4M-0007RI-IG; Wed, 20 Nov 2019 17:43:06 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 15/22] KVM: arm64: Don't set HCR_EL2.TVM when S2FWB is
 supported
Date: Wed, 20 Nov 2019 16:42:29 +0000
Message-Id: <20191120164236.29359-16-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191120164236.29359-1-maz@kernel.org>
References: <20191120164236.29359-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com, graf@amazon.com,
 drjones@redhat.com, borntraeger@de.ibm.com, christoffer.dall@arm.com,
 eric.auger@redhat.com, xypron.glpk@gmx.de, julien.grall@arm.com,
 mark.rutland@arm.com, bigeasy@linutronix.de, steven.price@arm.com,
 tglx@linutronix.de, will@kernel.org, yuzenghui@huawei.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_085018_311061_92B5FA2C 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Grall <julien.grall@arm.com>, Alexander Graf <graf@amazon.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoffer Dall <christoffer.dall@arm.com>

On CPUs that support S2FWB (Armv8.4+), KVM configures the stage 2 page
tables to override the memory attributes of memory accesses, regardless
of the stage 1 page table configurations, and also when the stage 1 MMU
is turned off.  This results in all memory accesses to RAM being
cacheable, including during early boot of the guest.

On CPUs without this feature, memory accesses were non-cacheable during
boot until the guest turned on the stage 1 MMU, and we had to detect
when the guest turned on the MMU, such that we could invalidate all cache
entries and ensure a consistent view of memory with the MMU turned on.
When the guest turned on the caches, we would call stage2_flush_vm()
from kvm_toggle_cache().

However, stage2_flush_vm() walks all the stage 2 tables, and calls
__kvm_flush-dcache_pte, which on a system with S2FWB does ... absolutely
nothing.

We can avoid that whole song and dance, and simply not set TVM when
creating a VM on a system that has S2FWB.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Link: https://lore.kernel.org/r/20191028130541.30536-1-christoffer.dall@arm.com
---
 arch/arm64/include/asm/kvm_arm.h     |  3 +--
 arch/arm64/include/asm/kvm_emulate.h | 12 +++++++++++-
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index ddf9d762ac62..6e5d839f42b5 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -61,7 +61,6 @@
  * RW:		64bit by default, can be overridden for 32bit VMs
  * TAC:		Trap ACTLR
  * TSC:		Trap SMC
- * TVM:		Trap VM ops (until M+C set in SCTLR_EL1)
  * TSW:		Trap cache operations by set/way
  * TWE:		Trap WFE
  * TWI:		Trap WFI
@@ -74,7 +73,7 @@
  * SWIO:	Turn set/way invalidates into set/way clean+invalidate
  */
 #define HCR_GUEST_FLAGS (HCR_TSC | HCR_TSW | HCR_TWE | HCR_TWI | HCR_VM | \
-			 HCR_TVM | HCR_BSU_IS | HCR_FB | HCR_TAC | \
+			 HCR_BSU_IS | HCR_FB | HCR_TAC | \
 			 HCR_AMO | HCR_SWIO | HCR_TIDCP | HCR_RW | HCR_TLOR | \
 			 HCR_FMO | HCR_IMO)
 #define HCR_VIRT_EXCP_MASK (HCR_VSE | HCR_VI | HCR_VF)
diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index d69c1efc63e7..6e92f6c7b1e4 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -53,8 +53,18 @@ static inline void vcpu_reset_hcr(struct kvm_vcpu *vcpu)
 		/* trap error record accesses */
 		vcpu->arch.hcr_el2 |= HCR_TERR;
 	}
-	if (cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
+
+	if (cpus_have_const_cap(ARM64_HAS_STAGE2_FWB)) {
 		vcpu->arch.hcr_el2 |= HCR_FWB;
+	} else {
+		/*
+		 * For non-FWB CPUs, we trap VM ops (HCR_EL2.TVM) until M+C
+		 * get set in SCTLR_EL1 such that we can detect when the guest
+		 * MMU gets turned on and do the necessary cache maintenance
+		 * then.
+		 */
+		vcpu->arch.hcr_el2 |= HCR_TVM;
+	}
 
 	if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features))
 		vcpu->arch.hcr_el2 &= ~HCR_RW;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
