Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AF711B960
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 17:58:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPDPXPMDtXZwSB5+5Va/xMrbwRlOhC1u+1gsrJi6ejQ=; b=f518kfgMkj/92/
	dLQVUESoDoQZLfV/+kD/jB2YNhXD+y5tCwEZjrZeD1yThjDIUvwYwDAzqEbRVJ0dkAvvMMjWk4L8Y
	izQlNI8AhcYxQ/Zz82OnE1wY3CtWCQDdGk4qeU9ArbuwuViq///aQK/55IRx7McFvRxR7qvQgujEK
	iUmtGQlp093wm61W7wCMU+XIj2FrIstySBzKuoM4lw7R8hNc6OSm3uL+5arHvluWzXk03x7MSMxEo
	HT55Wzs/xgYUGr6fEclXj37P30YihrxJWFSe5L50ti00cWHzJI4RntvZr5vBqWV51wlymjZDwCZSe
	oU7m4kuxgZdyaSG1QrDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5JK-0004Mc-Tg; Wed, 11 Dec 2019 16:58:02 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5IS-0003dg-8F
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 16:57:11 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1if5IO-00076q-HF; Wed, 11 Dec 2019 17:57:04 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] KVM: arm/arm64: Properly handle faulting of device
 mappings
Date: Wed, 11 Dec 2019 16:56:48 +0000
Message-Id: <20191211165651.7889-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211165651.7889-1-maz@kernel.org>
References: <20191211165651.7889-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 Christoffer.Dall@arm.com, alexandru.elisei@arm.com, stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_085708_448652_0E8767E6 
X-CRM114-Status: GOOD (  12.65  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, stable@vger.kernel.org,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A device mapping is normally always mapped at Stage-2, since there
is very little gain in having it faulted in.

Nonetheless, it is possible to end-up in a situation where the device
mapping has been removed from Stage-2 (userspace munmaped the VFIO
region, and the MMU notifier did its job), but present in a userspace
mapping (userpace has mapped it back at the same address). In such
a situation, the device mapping will be demand-paged as the guest
performs memory accesses.

This requires to be careful when dealing with mapping size, cache
management, and to handle potential execution of a device mapping.

Cc: stable@vger.kernel.org
Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/mmu.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index a48994af70b8..0b32a904a1bb 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -38,6 +38,11 @@ static unsigned long io_map_base;
 #define KVM_S2PTE_FLAG_IS_IOMAP		(1UL << 0)
 #define KVM_S2_FLAG_LOGGING_ACTIVE	(1UL << 1)
 
+static bool is_iomap(unsigned long flags)
+{
+	return flags & KVM_S2PTE_FLAG_IS_IOMAP;
+}
+
 static bool memslot_is_logging(struct kvm_memory_slot *memslot)
 {
 	return memslot->dirty_bitmap && !(memslot->flags & KVM_MEM_READONLY);
@@ -1698,6 +1703,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 
 	vma_pagesize = vma_kernel_pagesize(vma);
 	if (logging_active ||
+	    (vma->vm_flags & VM_PFNMAP) ||
 	    !fault_supports_stage2_huge_mapping(memslot, hva, vma_pagesize)) {
 		force_pte = true;
 		vma_pagesize = PAGE_SIZE;
@@ -1760,6 +1766,9 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 			writable = false;
 	}
 
+	if (exec_fault && is_iomap(flags))
+		return -ENOEXEC;
+
 	spin_lock(&kvm->mmu_lock);
 	if (mmu_notifier_retry(kvm, mmu_seq))
 		goto out_unlock;
@@ -1781,7 +1790,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 	if (writable)
 		kvm_set_pfn_dirty(pfn);
 
-	if (fault_status != FSC_PERM)
+	if (fault_status != FSC_PERM && !is_iomap(flags))
 		clean_dcache_guest_page(pfn, vma_pagesize);
 
 	if (exec_fault)
@@ -1948,9 +1957,8 @@ int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	if (kvm_is_error_hva(hva) || (write_fault && !writable)) {
 		if (is_iabt) {
 			/* Prefetch Abort on I/O address */
-			kvm_inject_pabt(vcpu, kvm_vcpu_get_hfar(vcpu));
-			ret = 1;
-			goto out_unlock;
+			ret = -ENOEXEC;
+			goto out;
 		}
 
 		/*
@@ -1992,6 +2000,11 @@ int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	ret = user_mem_abort(vcpu, fault_ipa, memslot, hva, fault_status);
 	if (ret == 0)
 		ret = 1;
+out:
+	if (ret == -ENOEXEC) {
+		kvm_inject_pabt(vcpu, kvm_vcpu_get_hfar(vcpu));
+		ret = 1;
+	}
 out_unlock:
 	srcu_read_unlock(&vcpu->kvm->srcu, idx);
 	return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
