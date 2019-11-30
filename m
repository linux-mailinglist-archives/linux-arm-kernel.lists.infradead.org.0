Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C0210DC3B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 04:16:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b+frAL91y+VOyI6vkq0ZNyMfr4GcBFaDW7QA1puJTLY=; b=Sj7RkHCRliixW9
	i2gyk9xjncNqk1HdM3Ehcv+MKPvVSRIek+gTd9sBcGMIiJ0YYhWStxoOsuJvgr2kXy+En2XcClrWi
	gWcWUmSpF9xYUO1TAjB66wkWJr9bILCvv5s8pCa9XbibeA82BRCi6Kn1nBQC92/NBMRtYeVjNa7Le
	hKYsdkXJj4EophjzHtF03D+sZcBScqHzUFEIL3D8ldf74xC4kZOanFW3lnwgJsXtGNKAfiQzlz297
	8bFwNqclYwvnJht2xXgrZ3SXVMFaddLcvFeyaHE9Fpq8dvB/ALpB/ntX6P5HQ5ocxTjYDAElhRHHh
	z1MXM0hTixDxTljqaOpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iatF5-0003h6-Cw; Sat, 30 Nov 2019 03:16:19 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iatEy-0003g7-3O
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 03:16:14 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4D0FFA083DCA239A0AD2;
 Sat, 30 Nov 2019 11:15:57 +0800 (CST)
Received: from linux-XCyijm.huawei.com (10.175.104.212) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Sat, 30 Nov 2019 11:15:49 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] kvm/arm64: change gicv3_cpuif to static likely branch
Date: Sat, 30 Nov 2019 11:14:43 +0800
Message-ID: <20191130031443.41696-1-guoheyi@huawei.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.212]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_191612_330947_24F41CD3 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>, Heyi Guo <guoheyi@huawei.com>,
 wanghaibin.wang@huawei.com, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Platforms running hypervisor nowadays are normally powerful servers
which at least support GICv3, so it should be better to switch
kvm_vgic_global_state.gicv3_cpuif to static likely branch, which can
reduce two "b" instructions to a single "nop" for GICv3 branches.

We don't update arm32 specific code for they may still only have
GICv2.

Signed-off-by: Heyi Guo <guoheyi@huawei.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kvm/hyp/switch.c   | 4 ++--
 include/kvm/arm_vgic.h        | 2 +-
 virt/kvm/arm/vgic/vgic-init.c | 9 +++++----
 virt/kvm/arm/vgic/vgic.c      | 9 +++++----
 4 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 799e84a40335..57e7d314211a 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -219,7 +219,7 @@ static void __hyp_text __deactivate_vm(struct kvm_vcpu *vcpu)
 /* Save VGICv3 state on non-VHE systems */
 static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
 {
-	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
+	if (static_branch_likely(&kvm_vgic_global_state.gicv3_cpuif)) {
 		__vgic_v3_save_state(vcpu);
 		__vgic_v3_deactivate_traps(vcpu);
 	}
@@ -228,7 +228,7 @@ static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
 /* Restore VGICv3 state on non_VEH systems */
 static void __hyp_text __hyp_vgic_restore_state(struct kvm_vcpu *vcpu)
 {
-	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
+	if (static_branch_likely(&kvm_vgic_global_state.gicv3_cpuif)) {
 		__vgic_v3_activate_traps(vcpu);
 		__vgic_v3_restore_state(vcpu);
 	}
diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index af4f09c02bf1..474e73dd3112 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -72,7 +72,7 @@ struct vgic_global {
 	bool			has_gicv4;
 
 	/* GIC system register CPU interface */
-	struct static_key_false gicv3_cpuif;
+	struct static_key_true gicv3_cpuif;
 
 	u32			ich_vtr_el2;
 };
diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
index 6f50c429196d..b03e5c8e1731 100644
--- a/virt/kvm/arm/vgic/vgic-init.c
+++ b/virt/kvm/arm/vgic/vgic-init.c
@@ -509,13 +509,14 @@ int kvm_vgic_hyp_init(void)
 	switch (gic_kvm_info->type) {
 	case GIC_V2:
 		ret = vgic_v2_probe(gic_kvm_info);
+		if (!ret) {
+			static_branch_disable(
+				&kvm_vgic_global_state.gicv3_cpuif);
+			kvm_info("GIC system register CPU interface disabled\n");
+		}
 		break;
 	case GIC_V3:
 		ret = vgic_v3_probe(gic_kvm_info);
-		if (!ret) {
-			static_branch_enable(&kvm_vgic_global_state.gicv3_cpuif);
-			kvm_info("GIC system register CPU interface enabled\n");
-		}
 		break;
 	default:
 		ret = -ENODEV;
diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 45a870cb63f5..9dafeeb1457b 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -18,7 +18,7 @@
 #include "trace.h"
 
 struct vgic_global kvm_vgic_global_state __ro_after_init = {
-	.gicv3_cpuif = STATIC_KEY_FALSE_INIT,
+	.gicv3_cpuif = STATIC_KEY_TRUE_INIT,
 };
 
 /*
@@ -841,12 +841,13 @@ static inline bool can_access_vgic_from_kernel(void)
 	 * memory-mapped, and VHE systems can access GICv3 EL2 system
 	 * registers.
 	 */
-	return !static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif) || has_vhe();
+	return !static_branch_likely(&kvm_vgic_global_state.gicv3_cpuif) ||
+	       has_vhe();
 }
 
 static inline void vgic_save_state(struct kvm_vcpu *vcpu)
 {
-	if (!static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif))
+	if (!static_branch_likely(&kvm_vgic_global_state.gicv3_cpuif))
 		vgic_v2_save_state(vcpu);
 	else
 		__vgic_v3_save_state(vcpu);
@@ -873,7 +874,7 @@ void kvm_vgic_sync_hwstate(struct kvm_vcpu *vcpu)
 
 static inline void vgic_restore_state(struct kvm_vcpu *vcpu)
 {
-	if (!static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif))
+	if (!static_branch_likely(&kvm_vgic_global_state.gicv3_cpuif))
 		vgic_v2_restore_state(vcpu);
 	else
 		__vgic_v3_restore_state(vcpu);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
