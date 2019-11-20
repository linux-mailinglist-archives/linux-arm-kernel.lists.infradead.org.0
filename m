Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432B410416C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:51:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTMl55zLodLLJ444eAV6jZv1S6wWKJAPM7Nx5R9+78c=; b=ILWtbrCREjXfrY
	ZAMlvOg5JeSCcXXP2de7npz6e/DrfVCXTQedzQgIF4p0slr63n98DzNzN5t/NjazV0TKQ42B3ylr4
	v3hJCemxeWPFz8igPbTivNxOxjgHrWP3D7CbH6Ytg/qxXL9XNQYWrI8f2Y1dIUAZdr2z2d3zjQ8aS
	K3n2ubxq67cs57Qr7Omrn1WFnEdZPzAefbBzA+KoFhScpf9W8LMEI16NwNSqOy7VPIK4YcAOPMNcT
	//0kHeFcorIGbid4pNqGpGoYnhXC/EK5VhExVZHYZUDFPGdJEsQQBNLoxbx9eWO8dWrck//DtP00P
	VACzP2VshIHPIOo7VAnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXTCg-0000tt-U7; Wed, 20 Nov 2019 16:51:42 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXTBi-0000AP-39
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:50:44 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXT4P-0007RI-2Q; Wed, 20 Nov 2019 17:43:09 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 18/22] KVM: arm/arm64: vgic: Fix some comments typo
Date: Wed, 20 Nov 2019 16:42:32 +0000
Message-Id: <20191120164236.29359-19-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20191120_085042_557617_468B8A05 
X-CRM114-Status: GOOD (  10.53  )
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

From: Zenghui Yu <yuzenghui@huawei.com>

Fix various comments, including wrong function names, grammar mistakes
and specification references.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20191029071919.177-3-yuzenghui@huawei.com
---
 include/kvm/arm_vgic.h      | 2 +-
 virt/kvm/arm/vgic/vgic-v3.c | 2 +-
 virt/kvm/arm/vgic/vgic-v4.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index f66a02dac8b0..9d53f545a3d5 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -240,7 +240,7 @@ struct vgic_dist {
 	 * Contains the attributes and gpa of the LPI configuration table.
 	 * Since we report GICR_TYPER.CommonLPIAff as 0b00, we can share
 	 * one address across all redistributors.
-	 * GICv3 spec: 6.1.2 "LPI Configuration tables"
+	 * GICv3 spec: IHI 0069E 6.1.1 "LPI Configuration tables"
 	 */
 	u64			propbaser;
 
diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
index 48307a9eb1d8..e69c538a24ca 100644
--- a/virt/kvm/arm/vgic/vgic-v3.c
+++ b/virt/kvm/arm/vgic/vgic-v3.c
@@ -357,7 +357,7 @@ int vgic_v3_lpi_sync_pending_status(struct kvm *kvm, struct vgic_irq *irq)
 }
 
 /**
- * vgic_its_save_pending_tables - Save the pending tables into guest RAM
+ * vgic_v3_save_pending_tables - Save the pending tables into guest RAM
  * kvm lock and all vcpu lock must be held
  */
 int vgic_v3_save_pending_tables(struct kvm *kvm)
diff --git a/virt/kvm/arm/vgic/vgic-v4.c b/virt/kvm/arm/vgic/vgic-v4.c
index 7e1f3202968a..0965fb0c427a 100644
--- a/virt/kvm/arm/vgic/vgic-v4.c
+++ b/virt/kvm/arm/vgic/vgic-v4.c
@@ -281,7 +281,7 @@ int kvm_vgic_v4_set_forwarding(struct kvm *kvm, int virq,
 
 	mutex_lock(&its->its_lock);
 
-	/* Perform then actual DevID/EventID -> LPI translation. */
+	/* Perform the actual DevID/EventID -> LPI translation. */
 	ret = vgic_its_resolve_lpi(kvm, its, irq_entry->msi.devid,
 				   irq_entry->msi.data, &irq);
 	if (ret)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
