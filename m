Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68570F3416
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 17:05:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Enbdh1vYJH0qLMbLTWFeuEdh+UE6P7fd8cxGXJ3pvfs=; b=fRkbNNgYmU5TXW
	Cjp6b5ncmtUi1UejKQzPT0KgRyIinGHLp2twzadZpk1ZOoG6O1gv1alMYz8fu+Xn6TGX8dV3gb+hE
	/Z/9+D9RJdEpVZVfMftJVAQChafQbgtc8hhTnwrbPCtv/u+5ohh1/RSgA4VgRxiYLcq6TNJGF5pL3
	XwnEszsiX9KmsjkuJD/fPAYYseJxq1lgtOjS9iNIxEDbcmPtv8ydKgzejxsRI3mkzXWrQabBXD4j4
	Zn247wRzuoM4RFsz2G5Lbqz2tw0kUtZZz0u39t49/oxjBcqOnWEg/WHGKgr/F/G06zotMVI8eJlW7
	prGCHTFgZ2NPog5ClN8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkHK-0005sY-A6; Thu, 07 Nov 2019 16:04:58 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkGo-0005iD-BK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 16:04:27 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iSkGk-0008Bm-Vh; Thu, 07 Nov 2019 17:04:23 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] KVM: arm64: Opportunistically turn off WFI trapping when
 using direct LPI injection
Date: Thu,  7 Nov 2019 16:04:12 +0000
Message-Id: <20191107160412.30301-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191107160412.30301-1-maz@kernel.org>
References: <20191107160412.30301-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_080426_539534_BF0943ED 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
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
---
 arch/arm/include/asm/kvm_emulate.h   | 4 ++--
 arch/arm64/include/asm/kvm_emulate.h | 9 +++++++--
 virt/kvm/arm/arm.c                   | 4 ++--
 3 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/kvm_emulate.h b/arch/arm/include/asm/kvm_emulate.h
index e8ef349c04b4..9b118516d2db 100644
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
index 7b835337f78b..5efe5ca8fecf 100644
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
index 4d07c968467a..12e0280291ce 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -416,9 +416,9 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 		kvm_make_request(KVM_REQ_RECORD_STEAL, vcpu);
 
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
