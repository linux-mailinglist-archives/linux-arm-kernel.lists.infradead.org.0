Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182EE14DB9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:27:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LdI2Nhcu3eQOCEoyojBHnm8w2ujbaTY5zK5/FvD7p8=; b=TxzqSeci6rT0AB
	IdW+4tHLdjZ8WbnACNd0/m1cvX60fihPmA9FNV5R25Nt3VzmI9l7u/InM1WRQxQkZRRktwKYXtlLR
	OS0NkrhsCbi98d3kVfwb28PZWOMW7EqOIsw9TJ4xah7+lacGG+POlGG4JZi3jPFuEg81OXT0ecDJP
	ZPpQSge4rPz3kPwNoPqvS9+Xg+Al457QgzZXJaCkElMHZkNbR5Al3Cd28L2RMni+pSjz0y1mCFt8O
	8iM+Vze4nzcgILcufwFGNPua7kgcktQbqwhoeR0Wg7gPT48ywoz9TPhWoW3WMF3ySbcVLatlFM6zi
	M1DYlUMNQbnKY4nlV/Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9ql-0004ro-TX; Thu, 30 Jan 2020 13:27:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9pl-0004AU-KA
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:26:15 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33DC0215A4;
 Thu, 30 Jan 2020 13:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580390773;
 bh=KoCi8zaJy04hTLeylMwFnMqSvPfFzHMcJjbqIc1wrHg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Nu2IM5zALtQwHTlK9dQFEW2EPn8vdM+vIq1cLQPKID/Z50PNYXcacawLF2vh/9Q/+
 mOr5ZcWvQee5P13DROGSroTmHMi41JbqQjEVu3eLWxbDb8LpfemUZGrGsak6QLp/OD
 K38i9pdeIJNJoLx1WwN9kxNz6sF4rQ6YLIKDgPd0=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ix9pj-002BmW-I4; Thu, 30 Jan 2020 13:26:11 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 04/23] arm64: kvm: Fix IDMAP overlap with HYP VA
Date: Thu, 30 Jan 2020 13:25:39 +0000
Message-Id: <20200130132558.10201-5-maz@kernel.org>
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
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_052613_699733_3FF57C71 
X-CRM114-Status: GOOD (  21.39  )
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
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Booting 5.4 on LX2160A reveals that KVM is non-functional:

kvm: Limiting the IPA size due to kernel Virtual Address limit
kvm [1]: IPA Size Limit: 43bits
kvm [1]: IDMAP intersecting with HYP VA, unable to continue
kvm [1]: error initializing Hyp mode: -22

Debugging shows:

kvm [1]: IDMAP page: 81a26000
kvm [1]: HYP VA range: 0:22ffffffff

as RAM is located at:

80000000-fbdfffff : System RAM
2080000000-237fffffff : System RAM

Comparing this with the same kernel on Armada 8040 shows:

kvm: Limiting the IPA size due to kernel Virtual Address limit
kvm [1]: IPA Size Limit: 43bits
kvm [1]: IDMAP page: 2a26000
kvm [1]: HYP VA range: 4800000000:493fffffff
...
kvm [1]: Hyp mode initialized successfully

which indicates that hyp_va_msb is set, and is always set to the
opposite value of the idmap page to avoid the overlap. This does not
happen with the LX2160A.

Further debugging shows vabits_actual = 39, kva_msb = 38 on LX2160A and
kva_msb = 33 on Armada 8040. Looking at the bit layout of the HYP VA,
there is still one bit available for hyp_va_msb. Set this bit
appropriately. This allows KVM to be functional on the LX2160A, but
without any HYP VA randomisation:

kvm: Limiting the IPA size due to kernel Virtual Address limit
kvm [1]: IPA Size Limit: 43bits
kvm [1]: IDMAP page: 81a24000
kvm [1]: HYP VA range: 4000000000:62ffffffff
...
kvm [1]: Hyp mode initialized successfully

Fixes: ed57cac83e05 ("arm64: KVM: Introduce EL2 VA randomisation")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
[maz: small additional cleanups, preserved case where the tag
 is legitimately 0 and we can just use the mask, Fixes tag]
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/E1ilAiY-0000MA-RG@rmk-PC.armlinux.org.uk
---
 arch/arm64/kvm/va_layout.c | 56 +++++++++++++++++---------------------
 1 file changed, 25 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
index dab1fea4752a..a4f48c1ac28c 100644
--- a/arch/arm64/kvm/va_layout.c
+++ b/arch/arm64/kvm/va_layout.c
@@ -13,52 +13,46 @@
 #include <asm/kvm_mmu.h>
 
 /*
- * The LSB of the random hyp VA tag or 0 if no randomization is used.
+ * The LSB of the HYP VA tag
  */
 static u8 tag_lsb;
 /*
- * The random hyp VA tag value with the region bit if hyp randomization is used
+ * The HYP VA tag value with the region bit
  */
 static u64 tag_val;
 static u64 va_mask;
 
+/*
+ * We want to generate a hyp VA with the following format (with V ==
+ * vabits_actual):
+ *
+ *  63 ... V |     V-1    | V-2 .. tag_lsb | tag_lsb - 1 .. 0
+ *  ---------------------------------------------------------
+ * | 0000000 | hyp_va_msb |   random tag   |  kern linear VA |
+ *           |--------- tag_val -----------|----- va_mask ---|
+ *
+ * which does not conflict with the idmap regions.
+ */
 __init void kvm_compute_layout(void)
 {
 	phys_addr_t idmap_addr = __pa_symbol(__hyp_idmap_text_start);
 	u64 hyp_va_msb;
-	int kva_msb;
 
 	/* Where is my RAM region? */
 	hyp_va_msb  = idmap_addr & BIT(vabits_actual - 1);
 	hyp_va_msb ^= BIT(vabits_actual - 1);
 
-	kva_msb = fls64((u64)phys_to_virt(memblock_start_of_DRAM()) ^
+	tag_lsb = fls64((u64)phys_to_virt(memblock_start_of_DRAM()) ^
 			(u64)(high_memory - 1));
 
-	if (kva_msb == (vabits_actual - 1)) {
-		/*
-		 * No space in the address, let's compute the mask so
-		 * that it covers (vabits_actual - 1) bits, and the region
-		 * bit. The tag stays set to zero.
-		 */
-		va_mask  = BIT(vabits_actual - 1) - 1;
-		va_mask |= hyp_va_msb;
-	} else {
-		/*
-		 * We do have some free bits to insert a random tag.
-		 * Hyp VAs are now created from kernel linear map VAs
-		 * using the following formula (with V == vabits_actual):
-		 *
-		 *  63 ... V |     V-1    | V-2 .. tag_lsb | tag_lsb - 1 .. 0
-		 *  ---------------------------------------------------------
-		 * | 0000000 | hyp_va_msb |    random tag  |  kern linear VA |
-		 */
-		tag_lsb = kva_msb;
-		va_mask = GENMASK_ULL(tag_lsb - 1, 0);
-		tag_val = get_random_long() & GENMASK_ULL(vabits_actual - 2, tag_lsb);
-		tag_val |= hyp_va_msb;
-		tag_val >>= tag_lsb;
+	va_mask = GENMASK_ULL(tag_lsb - 1, 0);
+	tag_val = hyp_va_msb;
+
+	if (tag_lsb != (vabits_actual - 1)) {
+		/* We have some free bits to insert a random tag. */
+		tag_val |= get_random_long() & GENMASK_ULL(vabits_actual - 2, tag_lsb);
 	}
+	tag_val >>= tag_lsb;
 }
 
 static u32 compute_instruction(int n, u32 rd, u32 rn)
@@ -117,11 +111,11 @@ void __init kvm_update_va_mask(struct alt_instr *alt,
 		 * VHE doesn't need any address translation, let's NOP
 		 * everything.
 		 *
-		 * Alternatively, if we don't have any spare bits in
-		 * the address, NOP everything after masking that
-		 * kernel VA.
+		 * Alternatively, if the tag is zero (because the layout
+		 * dictates it and we don't have any spare bits in the
+		 * address), NOP everything after masking the kernel VA.
 		 */
-		if (has_vhe() || (!tag_lsb && i > 0)) {
+		if (has_vhe() || (!tag_val && i > 0)) {
 			updptr[i] = cpu_to_le32(aarch64_insn_gen_nop());
 			continue;
 		}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
