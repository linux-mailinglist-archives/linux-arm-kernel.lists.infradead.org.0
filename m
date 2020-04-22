Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBEF1B43E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EL4PR6yiTJiayymUng5LRoNZ7PiAdu2LcxIxEAr/FYo=; b=EMF4B3OCDd+Dgs
	VkGgFHr6xjk1IZ6PPHBF+8Ttyp6Ej8V3OlY1WB2iQDbBStvDhN1yw0G6bObkYEaDDguab/8XYo1zb
	gV6HC/9SpmbJ1qfNTu3LIwmT+qnU+RXVK5WpTlSjgnoZfsCN8E6SacdG5gOmTYP4ebs/FYKUH5IGD
	vbdKujSh5006ZWamyVtHNr6a/BN5N7vlSfoOjjt7haCB+I1nezuGxb6CSYF1SWwXgWVR7p6GATHCX
	yxoHDna026GpLkWhheE1EmldCKqxSXDyJo0PXsCeoKLtRv8QkG+M0igCcx3EtpO/78wQ6C+IEl0AE
	nV3sI8zbiuz6FMNrGmdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRE6F-0005kH-S5; Wed, 22 Apr 2020 12:03:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRE3r-0003hg-TJ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:01:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 092E020780;
 Wed, 22 Apr 2020 12:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587556863;
 bh=eou4v9Zcof0qILQGFtY1FJb9P3iiyyGjomnnq+zt3+k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cbbaPbLeBqEbogpndqzVBwlhY5IuYH/bW63CoxvtkBS0hMmYnD7u+g7Tp2gB+d/Sv
 4LhikGWTDcR3TOg9hgtV0m11SRhWqp2NarddCye8FaJJYhlSXkJByjxTRBKHYeZxRJ
 skOJyA/c7R0DSyVW0OU66QIo50FLLMh5jPZdoa2g=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRE3p-005UI7-E9; Wed, 22 Apr 2020 13:01:01 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 07/26] KVM: arm64: Add a level hint to __kvm_tlb_flush_vmid_ipa
Date: Wed, 22 Apr 2020 13:00:31 +0100
Message-Id: <20200422120050.3693593-8-maz@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200422120050.3693593-1-maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, gcherian@marvell.com, prime.zeng@hisilicon.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_050104_025684_77B4FEE3 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>, James Morse <james.morse@arm.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a level hint to __kvm_tlb_flush_vmid_ipa. No functional
change.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_asm.h | 3 ++-
 arch/arm64/kvm/hyp/tlb.c         | 5 +++--
 virt/kvm/arm/mmu.c               | 2 +-
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 5adf4e1a4c2c9..fad03b83f8e41 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -61,7 +61,8 @@ extern char __kvm_hyp_init_end[];
 extern char __kvm_hyp_vector[];
 
 extern void __kvm_flush_vm_context(void);
-extern void __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa);
+extern void __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa,
+				     int level);
 extern void __kvm_tlb_flush_vmid(struct kvm_s2_mmu *mmu);
 extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
 
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index b795891b0d091..6db2f8ad383f0 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -132,7 +132,8 @@ static void __hyp_text __tlb_switch_to_host(struct kvm_s2_mmu *mmu,
 		__tlb_switch_to_host_nvhe(cxt);
 }
 
-void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa)
+void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu,
+					 phys_addr_t ipa, int level)
 {
 	struct tlb_inv_context cxt;
 
@@ -148,7 +149,7 @@ void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa
 	 * whole of Stage-1. Weep...
 	 */
 	ipa >>= 12;
-	__tlbi(ipas2e1is, ipa);
+	__tlbi_level(ipas2e1is, ipa, level);
 
 	/*
 	 * We have to ensure completion of the invalidation at Stage-2,
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 2f99749048285..611234e0aef12 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -60,7 +60,7 @@ void kvm_flush_remote_tlbs(struct kvm *kvm)
 
 static void kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa)
 {
-	kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, mmu, ipa);
+	kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, mmu, ipa, 0);
 }
 
 /*
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
