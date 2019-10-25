Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D228AE4CAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 15:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=O0Nmn77vq0hhaqXTICy4Zi9FKsxC8Pc3MtsfCd2GVNQ=; b=Slw
	+a49Md2KDwPydb/eaOVikuQ/v8YXvODfQj+Rn2xtABCZ4Wgmc6omstEDkD0XBF8SCOlPVAt6+zx3Z
	2/Q9iCAVrbMv6akZyl3KyWmjowfGLpm9O2YUyR4rgTwfmzAQjFKmJhGhc5Thwa42jxJdC26tSCJVl
	HhcfHd59yGP4HFhL1eGT6oIK0oiOJUPC1vKODKbR8bolH0c89k2BRF+JYiWoDe0uM9O+DiNN330RG
	eQDbkTpnmE9J4pfYOl3HBJM+aZ9u6bRSDdt6RDzVQKuCxMWtQ5QxjkyMKiqfHXhYy3pO8OHKJJwmo
	yqmf6nKBhd0z1CsGCyPAY6b3kQqAVdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO00V-000073-VB; Fri, 25 Oct 2019 13:51:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO00L-00006b-12
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 13:51:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD06228;
 Fri, 25 Oct 2019 06:51:47 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E7023F71A;
 Fri, 25 Oct 2019 06:51:47 -0700 (PDT)
From: Christoffer Dall <christoffer.dall@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH] KVM: arm64: Don't set HCR_EL2.TVM when S2FWB is supported
Date: Fri, 25 Oct 2019 15:51:44 +0200
Message-Id: <20191025135144.8805-1-christoffer.dall@arm.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_065149_116176_D3434A9C 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
__kvm_flush-dcache_pte, which on a system with S2FWD does ... absolutely
nothing.

We can avoid that whole song and dance, and simply not set TVM when
creating a VM on a systme that has S2FWB.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Alexandru Elisei <alexandru.elisei@arm.com>
---
I was only able to test this on the model with cache modeling enabled,
but even removing TVM from HCR_EL2 without having FWB also worked with
that setup, so the testing of this has been light.  It seems like it
should obviously work, but it would be good if someone with access to
appropriate hardware could give this a spin.

 arch/arm64/include/asm/kvm_emulate.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index d69c1efc63e7..41820c3e70b8 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -53,8 +53,10 @@ static inline void vcpu_reset_hcr(struct kvm_vcpu *vcpu)
 		/* trap error record accesses */
 		vcpu->arch.hcr_el2 |= HCR_TERR;
 	}
-	if (cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
+	if (cpus_have_const_cap(ARM64_HAS_STAGE2_FWB)) {
+		vcpu->arch.hcr_el2 &= ~HCR_TVM;
 		vcpu->arch.hcr_el2 |= HCR_FWB;
+	}
 
 	if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features))
 		vcpu->arch.hcr_el2 &= ~HCR_RW;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
