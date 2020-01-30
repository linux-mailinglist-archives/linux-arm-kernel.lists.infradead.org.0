Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E54414DC01
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:33:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UtCkwMolyaatBtQ4EZ95GcimmQeuWwTLjBecWOWmSY=; b=hdzm9XBn1ejO3O
	c3DxzEJg7zuOPsr2UymwAIKzlQuvySxi7xM97Zp0zSflq07sGU+MwpR+EZyaopjg7dKkTp7rbfYPA
	IoCrBaJSCRfSNhbrKg433GD58vhex2gKiEkwl1v0lP3sxm1nmsJwp+kFaROWQKRZDci7rgOqHfaP+
	c7u5xCy1+Pkvj8s0dceCd92Aqoaoge3X8eprCh5DL/5/mEywGr92MQ8bfYIrN1oEFCqkGNFN6V6Qw
	fw0MCKzVaqvjODRfaAMIxjLvAPMggWAHe8WtJr7Ald2y/d70DWC77XRUUT2KV0mljqwbBrfrudhiq
	16XKZ28L5odlRD8JBkVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9wa-0003Cx-Dn; Thu, 30 Jan 2020 13:33:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9t1-0007WJ-LX
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:29:38 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A23D20CC7;
 Thu, 30 Jan 2020 13:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580390975;
 bh=o7G3kM47bUlmvtGkyWDkQWRUlKus1kYJNw4ec+txEpo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c04A+aCnBEU7IBY5ySLtj+5qq+caVh/+xDkZ8cUM5mtjUHW+q76978QBgbs5HoVme
 PBolggohk9SUP3TIf/8WHEvaqYvjwXRpx151JQ0YNN6aRGXT0lKjBVJx9zjEmBjfOv
 rre7cRCKGBYtc96GR5Y5emEDpj/YiRHWB6KxBo0M=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ix9pq-002BmW-Db; Thu, 30 Jan 2020 13:26:18 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 10/23] KVM: arm/arm64: Correct AArch32 SPSR on exception entry
Date: Thu, 30 Jan 2020 13:25:45 +0000
Message-Id: <20200130132558.10201-11-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130132558.10201-1-maz@kernel.org>
References: <20200130132558.10201-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 drjones@redhat.com, andrew.murray@arm.com, beata.michalska@linaro.org,
 christoffer.dall@arm.com, eric.auger@redhat.com, gshan@redhat.com,
 wanghaibin.wang@huawei.com, james.morse@arm.com, broonie@kernel.org,
 mark.rutland@arm.com, rmk+kernel@armlinux.org.uk,
 shannon.zhao@linux.alibaba.com, steven.price@arm.com, will@kernel.org,
 yuehaibing@huawei.com, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_052935_777377_DC9E43DA 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Gavin Shan <gshan@redhat.com>,
 Beata Michalska <beata.michalska@linaro.org>, kvm@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 YueHaibing <yuehaibing@huawei.com>, Steven Price <steven.price@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Haibin Wang <wanghaibin.wang@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Jones <drjones@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 Eric Auger <eric.auger@redhat.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>, stable@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

Confusingly, there are three SPSR layouts that a kernel may need to deal
with:

(1) An AArch64 SPSR_ELx view of an AArch64 pstate
(2) An AArch64 SPSR_ELx view of an AArch32 pstate
(3) An AArch32 SPSR_* view of an AArch32 pstate

When the KVM AArch32 support code deals with SPSR_{EL2,HYP}, it's either
dealing with #2 or #3 consistently. On arm64 the PSR_AA32_* definitions
match the AArch64 SPSR_ELx view, and on arm the PSR_AA32_* definitions
match the AArch32 SPSR_* view.

However, when we inject an exception into an AArch32 guest, we have to
synthesize the AArch32 SPSR_* that the guest will see. Thus, an AArch64
host needs to synthesize layout #3 from layout #2.

This patch adds a new host_spsr_to_spsr32() helper for this, and makes
use of it in the KVM AArch32 support code. For arm64 we need to shuffle
the DIT bit around, and remove the SS bit, while for arm we can use the
value as-is.

I've open-coded the bit manipulation for now to avoid having to rework
the existing PSR_* definitions into PSR64_AA32_* and PSR32_AA32_*
definitions. I hope to perform a more thorough refactoring in future so
that we can handle pstate view manipulation more consistently across the
kernel tree.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/r/20200108134324.46500-4-mark.rutland@arm.com
---
 arch/arm/include/asm/kvm_emulate.h   |  5 +++++
 arch/arm64/include/asm/kvm_emulate.h | 32 ++++++++++++++++++++++++++++
 virt/kvm/arm/aarch32.c               |  6 +++---
 3 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/kvm_emulate.h b/arch/arm/include/asm/kvm_emulate.h
index c488c629e6c8..08d9805f613b 100644
--- a/arch/arm/include/asm/kvm_emulate.h
+++ b/arch/arm/include/asm/kvm_emulate.h
@@ -53,6 +53,11 @@ static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
 	*__vcpu_spsr(vcpu) = v;
 }
 
+static inline unsigned long host_spsr_to_spsr32(unsigned long spsr)
+{
+	return spsr;
+}
+
 static inline unsigned long vcpu_get_reg(struct kvm_vcpu *vcpu,
 					 u8 reg_num)
 {
diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index f407b6bdad2e..53ea7637b7b2 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -219,6 +219,38 @@ static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
 		vcpu_gp_regs(vcpu)->spsr[KVM_SPSR_EL1] = v;
 }
 
+/*
+ * The layout of SPSR for an AArch32 state is different when observed from an
+ * AArch64 SPSR_ELx or an AArch32 SPSR_*. This function generates the AArch32
+ * view given an AArch64 view.
+ *
+ * In ARM DDI 0487E.a see:
+ *
+ * - The AArch64 view (SPSR_EL2) in section C5.2.18, page C5-426
+ * - The AArch32 view (SPSR_abt) in section G8.2.126, page G8-6256
+ * - The AArch32 view (SPSR_und) in section G8.2.132, page G8-6280
+ *
+ * Which show the following differences:
+ *
+ * | Bit | AA64 | AA32 | Notes                       |
+ * +-----+------+------+-----------------------------|
+ * | 24  | DIT  | J    | J is RES0 in ARMv8          |
+ * | 21  | SS   | DIT  | SS doesn't exist in AArch32 |
+ *
+ * ... and all other bits are (currently) common.
+ */
+static inline unsigned long host_spsr_to_spsr32(unsigned long spsr)
+{
+	const unsigned long overlap = BIT(24) | BIT(21);
+	unsigned long dit = !!(spsr & PSR_AA32_DIT_BIT);
+
+	spsr &= ~overlap;
+
+	spsr |= dit << 21;
+
+	return spsr;
+}
+
 static inline bool vcpu_mode_priv(const struct kvm_vcpu *vcpu)
 {
 	u32 mode;
diff --git a/virt/kvm/arm/aarch32.c b/virt/kvm/arm/aarch32.c
index 773cf1439081..631d397ac81b 100644
--- a/virt/kvm/arm/aarch32.c
+++ b/virt/kvm/arm/aarch32.c
@@ -129,15 +129,15 @@ static unsigned long get_except32_cpsr(struct kvm_vcpu *vcpu, u32 mode)
 
 static void prepare_fault32(struct kvm_vcpu *vcpu, u32 mode, u32 vect_offset)
 {
-	unsigned long new_spsr_value = *vcpu_cpsr(vcpu);
-	bool is_thumb = (new_spsr_value & PSR_AA32_T_BIT);
+	unsigned long spsr = *vcpu_cpsr(vcpu);
+	bool is_thumb = (spsr & PSR_AA32_T_BIT);
 	u32 return_offset = return_offsets[vect_offset >> 2][is_thumb];
 	u32 sctlr = vcpu_cp15(vcpu, c1_SCTLR);
 
 	*vcpu_cpsr(vcpu) = get_except32_cpsr(vcpu, mode);
 
 	/* Note: These now point to the banked copies */
-	vcpu_write_spsr(vcpu, new_spsr_value);
+	vcpu_write_spsr(vcpu, host_spsr_to_spsr32(spsr));
 	*vcpu_reg32(vcpu, 14) = *vcpu_pc(vcpu) + return_offset;
 
 	/* Branch to exception vector */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
