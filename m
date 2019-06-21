Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6484E567
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAGnPhdODwYOxxBjqW8u8yez9xkfkQXCNKowMY8nx9A=; b=ONG2ES2iwjGRbd
	mm1uqRxyykNKcEWN6XM33aiUf+5Pizz0qtkeRb0eToS5FjaPJP747yC45tSQAutRYd0RZxTClGcCl
	vOigDo6pwk5WvA+KwVSJcGbkXBarLMVqLZTd1+vr0Jqz2VOlwm6Cj3ybR9LYRfde8kv03QSeInJ/j
	R9LXoCHxHvclDQpH4x5HrXG83vP5hOy3pzqhiH2LYdKR5nvrpG2Uu2fbw3Kec6GtS2+46obWuODu5
	4dEa+xY6hmkx8k5xcPhuBTq6cqrgNZpCd/yn2/RHoqRH8Rqyu9OFhdjyqWzJG0CSP+6SyOAx9pv6m
	iTqt2+tHOXheHMPzszdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGSD-0002Py-Q9; Fri, 21 Jun 2019 10:07:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1n-0000Hv-Pj
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D4701509;
 Fri, 21 Jun 2019 02:40:15 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE0CD3F246;
 Fri, 21 Jun 2019 02:40:13 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 40/59] KVM: arm64: nv: Don't always start an S2 MMU search
 from the beginning
Date: Fri, 21 Jun 2019 10:38:24 +0100
Message-Id: <20190621093843.220980-41-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024015_961451_CB608BA2 
X-CRM114-Status: GOOD (  14.55  )
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

Starting a S2 MMU search from the beginning all the time means that
we're potentially nuking a useful context (like we'd potentially
have on a !VHE KVM guest).

Instead, let's always start the search from the point *after* the
last allocated context. This should ensure that alternating between
two EL1 contexts will not result in nuking the whole S2 each time.

lookup_s2_mmu now has a chance to provide a hit.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/kvm_host.h |  1 +
 arch/arm64/kvm/nested.c           | 14 ++++++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index b71a7a237f95..b7c44adcdbf3 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -123,6 +123,7 @@ struct kvm_arch {
 	 */
 	struct kvm_s2_mmu *nested_mmus;
 	size_t nested_mmus_size;
+	int nested_mmus_next;
 
 	/* VTCR_EL2 value for this VM */
 	u64    vtcr;
diff --git a/arch/arm64/kvm/nested.c b/arch/arm64/kvm/nested.c
index 09afafbdc8fe..214d59019935 100644
--- a/arch/arm64/kvm/nested.c
+++ b/arch/arm64/kvm/nested.c
@@ -363,14 +363,24 @@ static struct kvm_s2_mmu *get_s2_mmu_nested(struct kvm_vcpu *vcpu)
 	if (s2_mmu)
 		goto out;
 
-	for (i = 0; i < kvm->arch.nested_mmus_size; i++) {
-		s2_mmu = &kvm->arch.nested_mmus[i];
+	/*
+	 * Make sure we don't always search from the same point, or we
+	 * will always reuse a potentially active context, leaving
+	 * free contexts unused.
+	 */
+	for (i = kvm->arch.nested_mmus_next;
+	     i < (kvm->arch.nested_mmus_size + kvm->arch.nested_mmus_next);
+	     i++) {
+		s2_mmu = &kvm->arch.nested_mmus[i % kvm->arch.nested_mmus_size];
 
 		if (atomic_read(&s2_mmu->refcnt) == 0)
 			break;
 	}
 	BUG_ON(atomic_read(&s2_mmu->refcnt)); /* We have struct MMUs to spare */
 
+	/* Set the scene for the next search */
+	kvm->arch.nested_mmus_next = (i + 1) % kvm->arch.nested_mmus_size;
+
 	if (kvm_s2_mmu_valid(s2_mmu)) {
 		/* Clear the old state */
 		kvm_unmap_stage2_range(s2_mmu, 0, kvm_phys_size(kvm));
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
