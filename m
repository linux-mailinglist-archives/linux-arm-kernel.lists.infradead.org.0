Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5E1104161
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7D3OMwnPVeg9OpRceP2i2fJ8N9W+22LMSg157+AkvZ0=; b=nguy6a8uNbGJ1s
	JbeR25CtkI6SO1i3gfJhFABQG+Nbum8L9iissxgmke5R9cTDWce63l+9rS6/7DnbUEPLqt383IEFh
	tEEpjuWW++aQ6yDb5vXrU1R0J69C8LTwKOd4ZjnF884Pn5RY+8vaBfTJ4j5ZUvnUybHq0iSIPFVD5
	RkNvwME/YhZaNz4QbM/3cZ5zz0HXTENJ0AtHH3IW46sjC6F3gQa9mqCrh2PnK7ZvNGyz7n0VTf/iG
	0ZQinTta2LHKJOOZDVO158dPftHuHDXwxCqqm1DjwQlfgIlaYHqHxxFw2Ijd0Nn+MxO0HgB2AMqmq
	esBwLtk1KRQtK/eu0jiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXTBq-00005I-5m; Wed, 20 Nov 2019 16:50:50 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXTB7-00073b-9V
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:50:08 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXT4S-0007RI-Ee; Wed, 20 Nov 2019 17:43:12 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 22/22] KVM: arm64: Opportunistically turn off WFI trapping
 when using direct LPI injection
Date: Wed, 20 Nov 2019 16:42:36 +0000
Message-Id: <20191120164236.29359-23-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20191120_085005_547616_46936BB0 
X-CRM114-Status: GOOD (  12.11  )
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

Just like we do for WFE trapping, it can be useful to turn off
WFI trapping when the physical CPU is not oversubscribed (that
is, the vcpu is the only runnable process on this CPU) *and*
that we're using direct injection of interrupts.

The conditions are reevaluated on each vcpu_load(), ensuring that
we don't switch to this mode on a busy system.

On a GICv4 system, this has the effect of reducing the generation
of doorbell interrupts to zero when the right conditions are
met, which is a huge improvement over the current situation
(where the doorbells are screaming if the CPU ever hits a
blocking WFI).

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>
Link: https://lore.kernel.org/r/20191107160412.30301-3-maz@kernel.org
---
 arch/arm/include/asm/kvm_emulate.h   | 4 ++--
 arch/arm64/include/asm/kvm_emulate.h | 9 +++++++--
 virt/kvm/arm/arm.c                   | 4 ++--
 3 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/kvm_emulate.h b/arch/arm/include/asm/kvm_emulate.h
index 40002416efec..023c01cad2b1 100644
--- a/arch/arm/include/asm/kvm_emulate.h
+++ b/arch/arm/include/asm/kvm_emulate.h
@@ -95,12 +95,12 @@ static inline unsigned long *vcpu_hcr(const struct kvm_vcpu *vcpu)
 	return (unsigned long *)&vcpu->arch.hcr;
 }
 
-static inline void vcpu_clear_wfe_traps(struct kvm_vcpu *vcpu)
+static inline void vcpu_clear_wfx_traps(struct kvm_vcpu *vcpu)
 {
 	vcpu->arch.hcr &= ~HCR_TWE;
 }
 
-static inline void vcpu_set_wfe_traps(struct kvm_vcpu *vcpu)
+static inline void vcpu_set_wfx_traps(struct kvm_vcpu *vcpu)
 {
 	vcpu->arch.hcr |= HCR_TWE;
 }
diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 6e92f6c7b1e4..5a542d801f07 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -87,14 +87,19 @@ static inline unsigned long *vcpu_hcr(struct kvm_vcpu *vcpu)
 	return (unsigned long *)&vcpu->arch.hcr_el2;
 }
 
-static inline void vcpu_clear_wfe_traps(struct kvm_vcpu *vcpu)
+static inline void vcpu_clear_wfx_traps(struct kvm_vcpu *vcpu)
 {
 	vcpu->arch.hcr_el2 &= ~HCR_TWE;
+	if (atomic_read(&vcpu->arch.vgic_cpu.vgic_v3.its_vpe.vlpi_count))
+		vcpu->arch.hcr_el2 &= ~HCR_TWI;
+	else
+		vcpu->arch.hcr_el2 |= HCR_TWI;
 }
 
-static inline void vcpu_set_wfe_traps(struct kvm_vcpu *vcpu)
+static inline void vcpu_set_wfx_traps(struct kvm_vcpu *vcpu)
 {
 	vcpu->arch.hcr_el2 |= HCR_TWE;
+	vcpu->arch.hcr_el2 |= HCR_TWI;
 }
 
 static inline void vcpu_ptrauth_enable(struct kvm_vcpu *vcpu)
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index bd2afcf9a13f..dac96e355f69 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -386,9 +386,9 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 	kvm_vcpu_pmu_restore_guest(vcpu);
 
 	if (single_task_running())
-		vcpu_clear_wfe_traps(vcpu);
+		vcpu_clear_wfx_traps(vcpu);
 	else
-		vcpu_set_wfe_traps(vcpu);
+		vcpu_set_wfx_traps(vcpu);
 
 	vcpu_ptrauth_setup_lazy(vcpu);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
