Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87802159762
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 18:57:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/Rvf+dm4XmDGei+V++tgB8SCM/UK3Too4ab13O5Wwk=; b=k+1RImSS6v/fDU
	lGWa6tUifbNd50Ztof98Ise9rF1bRo/W3/2q9eIQsrXWrohWkANYYryTKRaCJ6r59EFkrlHq/YkHr
	aQgDHhg3/K8qk415h9/ok60FFgaZYviQ6o1EJSZWKnro+2JQGJ5IRr/p9AF+QjeeEauxY/kBahuOu
	62QHzo4p0RomMT1oUXazKKZVHNRje4ooz3llqQWIm/Hil9wJjLN3Z0bbwCdS+u60Juo/0v5Xpzfpn
	4WUPOlTfUJxJ0gujpY8WWF3PWtTw0iUUy01/ZbfLUqbE31jHIkgE2tmcsmKraWtIQqqQRG342vtjL
	f9WaHu/rEwHfNYELK2ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zmd-0007Ob-20; Tue, 11 Feb 2020 17:57:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zgt-0001VL-E5
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:51:21 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B354D206D7;
 Tue, 11 Feb 2020 17:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443478;
 bh=Ik3s7acYpQRtXUBC0I1kZbtJLduLroBrOt90QzyKh88=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=u9QOzCk14izQ6zcb8aQ0L873AICmdYxrjfivFqIePdpy4XlMhbikv9mY+ViG4XuYM
 Ppi7jTTEEJwscxRBWVFdVzQKZH3Zjv9uPH3O9qDnsh3NpOQqLBMKGFamQ8wqO7vHy8
 H60WbChBHqV9W2Gnj0lfIcghnmEdazX6QjpAv7V4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zg7-004O7k-4o; Tue, 11 Feb 2020 17:50:31 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 64/94] arm64: KVM: nv: Invalidate TLBs based on shadow S2
 TTL-like information
Date: Tue, 11 Feb 2020 17:49:08 +0000
Message-Id: <20200211174938.27809-65-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095119_551174_1CAAA858 
X-CRM114-Status: GOOD (  19.51  )
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

In order to be able to make S2 TLB invalidations more performant on NV,
let's use a scheme derived from the ARMv8.4 TTL extension.

If bits [56:55] in the descriptor are non-zero, they indicate a level
which can be used as an invalidation range.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_nested.h |  4 ++
 arch/arm64/kvm/nested.c             | 98 +++++++++++++++++++++++++++++
 arch/arm64/kvm/sys_regs.c           | 13 ++--
 3 files changed, 110 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
index 620296206483..debae814fdc5 100644
--- a/arch/arm64/include/asm/kvm_nested.h
+++ b/arch/arm64/include/asm/kvm_nested.h
@@ -67,6 +67,8 @@ extern bool __forward_traps(struct kvm_vcpu *vcpu, unsigned int reg,
 			    u64 control_bit);
 extern bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit);
 extern bool forward_nv_traps(struct kvm_vcpu *vcpu);
+u8 get_guest_mapping_ttl(struct kvm_vcpu *vcpu, struct kvm_s2_mmu *mmu,
+			 u64 addr);
 unsigned int ttl_to_size(u8 ttl);
 
 struct sys_reg_params;
@@ -75,4 +77,6 @@ struct sys_reg_desc;
 void access_nested_id_reg(struct kvm_vcpu *v, struct sys_reg_params *p,
 			  const struct sys_reg_desc *r);
 
+#define KVM_NV_GUEST_MAP_SZ	GENMASK_ULL(56, 55)
+
 #endif /* __ARM64_KVM_NESTED_H */
diff --git a/arch/arm64/kvm/nested.c b/arch/arm64/kvm/nested.c
index 4cb4831d4022..6adff9b433e0 100644
--- a/arch/arm64/kvm/nested.c
+++ b/arch/arm64/kvm/nested.c
@@ -16,6 +16,7 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
+#include <linux/bitfield.h>
 #include <linux/kvm.h>
 #include <linux/kvm_host.h>
 
@@ -351,6 +352,29 @@ int kvm_walk_nested_s2(struct kvm_vcpu *vcpu, phys_addr_t gipa,
 	return ret;
 }
 
+static int read_host_s2_desc(phys_addr_t pa, u64 *desc, void *data)
+{
+	u64 *va = phys_to_virt(pa);
+
+	*desc = *va;
+
+	return 0;
+}
+
+static int kvm_walk_shadow_s2(struct kvm_s2_mmu *mmu, phys_addr_t gipa,
+			      struct kvm_s2_trans *result)
+{
+	struct s2_walk_info wi = { };
+
+	wi.read_desc = read_host_s2_desc;
+	wi.baddr = mmu->pgd_phys;
+
+	vtcr_to_walk_info(mmu->kvm->arch.vtcr, &wi);
+
+	wi.be = IS_ENABLED(CONFIG_CPU_BIG_ENDIAN);
+
+	return walk_nested_s2_pgd(gipa, &wi, result);
+}
 
 unsigned int ttl_to_size(u8 ttl)
 {
@@ -407,6 +431,80 @@ unsigned int ttl_to_size(u8 ttl)
 	return max_size;
 }
 
+/*
+ * Compute the equivalent of the TTL field by parsing the shadow PT.
+ * The granule size is extracted from VTCR_EL2.TG0 while the level is
+ * retrieved from first entry carrying the level as a tag.
+ */
+u8 get_guest_mapping_ttl(struct kvm_vcpu *vcpu, struct kvm_s2_mmu *mmu,
+			 u64 addr)
+{
+	u64 tmp, sz = 0, vtcr = vcpu_read_sys_reg(vcpu, VTCR_EL2);
+	struct kvm_s2_trans out;
+	u8 ttl, level;
+
+	switch (vtcr & VTCR_EL2_TG0_MASK) {
+	case VTCR_EL2_TG0_4K:
+		ttl = (1 << 2);
+		break;
+	case VTCR_EL2_TG0_16K:
+		ttl = (2 << 2);
+		break;
+	case VTCR_EL2_TG0_64K:
+		ttl = (3 << 2);
+		break;
+	default:
+		BUG();
+	}
+
+	tmp = addr;
+
+again:
+	/* Iteratively compute the block sizes for a particular granule size */
+	switch (vtcr & VTCR_EL2_TG0_MASK) {
+	case VTCR_EL2_TG0_4K:
+		if	(sz < SZ_4K)	sz = SZ_4K;
+		else if (sz < SZ_2M)	sz = SZ_2M;
+		else if (sz < SZ_1G)	sz = SZ_1G;
+		else			sz = 0;
+		break;
+	case VTCR_EL2_TG0_16K:
+		if	(sz < SZ_16K)	sz = SZ_16K;
+		else if (sz < SZ_32M)	sz = SZ_32M;
+		else			sz = 0;
+		break;
+	case VTCR_EL2_TG0_64K:
+		if	(sz < SZ_64K)	sz = SZ_64K;
+		else if (sz < SZ_512M)	sz = SZ_512M;
+		else			sz = 0;
+		break;
+	default:
+		BUG();
+	}
+
+	if (sz == 0)
+		return 0;
+
+	tmp &= ~(sz - 1);
+	out = (struct kvm_s2_trans) { };
+	kvm_walk_shadow_s2(mmu, tmp, &out);
+	level = FIELD_GET(KVM_NV_GUEST_MAP_SZ, out.upper_attr);
+	if (!level)
+		goto again;
+
+	ttl |= level;
+
+	/*
+	 * We now have found some level information in the shadow S2. Check
+	 * that the resulting range is actually including the original IPA.
+	 */
+	sz = ttl_to_size(ttl);
+	if (addr < (tmp + sz))
+		return ttl;
+
+	return 0;
+}
+
 /* Must be called with kvm->lock held */
 struct kvm_s2_mmu *lookup_s2_mmu(struct kvm *kvm, u64 vttbr, u64 hcr)
 {
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 1dcde0230b87..8d4e67594d87 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2589,10 +2589,13 @@ static unsigned long compute_tlb_inval_range(struct kvm_vcpu *vcpu,
 					     u64 val)
 {
 	unsigned long max_size;
-	u8 ttl = 0;
+	u8 ttl;
 
-	if (cpus_have_const_cap(ARM64_HAS_ARMv8_4_TTL)) {
-		ttl = FIELD_GET(GENMASK_ULL(47, 44), val);
+	ttl = FIELD_GET(GENMASK_ULL(47, 44), val);
+
+	if (!(cpus_have_const_cap(ARM64_HAS_ARMv8_4_TTL) && ttl)) {
+		u64 addr = (val & GENMASK_ULL(35, 0)) << 12;
+		ttl = get_guest_mapping_ttl(vcpu, mmu, addr);
 	}
 
 	max_size = ttl_to_size(ttl);
@@ -2633,6 +2636,8 @@ static bool handle_ipas2e1is(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 	u64 base_addr;
 	unsigned long max_size;
 
+	spin_lock(&vcpu->kvm->mmu_lock);
+
 	/*
 	 * We drop a number of things from the supplied value:
 	 *
@@ -2644,8 +2649,6 @@ static bool handle_ipas2e1is(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 	 */
 	base_addr = (p->regval & GENMASK_ULL(35, 0)) << 12;
 
-	spin_lock(&vcpu->kvm->mmu_lock);
-
 	mmu = lookup_s2_mmu(vcpu->kvm, vttbr, HCR_VM);
 	if (mmu) {
 		max_size = compute_tlb_inval_range(vcpu, mmu, p->regval);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
