Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5881237BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 21:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfllzU3eAHB9ZE+d5pirL4IxiDreyOfu1IUJWe9gpL8=; b=XGH7JJ0Fgrtwz9
	MtwdhA8z9MBSSuDo+Fc6pFyUDUokiI9QZlILMA9s6+u/vLoGqEdszOE+BF6A+bjhWjtpKRP9W0kGT
	Zvv4ViaXk6vDDf9hpaSjq1aURwiViV8YN5Z+K0uembHcgyOgGOK2+YoHPoyrWHKmL7i+5iIJ5XJHO
	/bZGAU1lIdFta/BD5fG/tNaxOHrKFNpuIjZmekoXpPh85SwoegObc//IVYAVWrLZvWGD9rS5DEm7o
	puNPgziAIVrGp61wtDXn0WLNlNwZ+WFCya9H3LtiUWc3kRoi6pWQm48jmKL9hRzszq2xv9ECsEP5z
	Ci5d5A6TB6Y2DpJ7fVvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihJgH-0006F1-T0; Tue, 17 Dec 2019 20:42:57 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihJe9-0004mk-DV
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 20:40:47 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 12:40:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="389952584"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga005.jf.intel.com with ESMTP; 17 Dec 2019 12:40:42 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v4 04/19] KVM: PPC: Move memslot memory allocation into
 prepare_memory_region()
Date: Tue, 17 Dec 2019 12:40:26 -0800
Message-Id: <20191217204041.10815-5-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217204041.10815-1-sean.j.christopherson@intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_124045_502410_56B3ECA1 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 kvm-ppc@vger.kernel.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allocate the rmap array during kvm_arch_prepare_memory_region() to pave
the way for removing kvm_arch_create_memslot() altogether.  Moving PPC's
memory allocation only changes the order of kernel memory allocations
between PPC and common KVM code.

No functional change intended.

Acked-by: Paul Mackerras <paulus@ozlabs.org>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/powerpc/include/asm/kvm_ppc.h | 11 ++++-------
 arch/powerpc/kvm/book3s.c          | 12 ++++--------
 arch/powerpc/kvm/book3s_hv.c       | 25 ++++++++++++-------------
 arch/powerpc/kvm/book3s_pr.c       | 11 ++---------
 arch/powerpc/kvm/booke.c           |  9 ++-------
 arch/powerpc/kvm/powerpc.c         |  4 ++--
 6 files changed, 26 insertions(+), 46 deletions(-)

diff --git a/arch/powerpc/include/asm/kvm_ppc.h b/arch/powerpc/include/asm/kvm_ppc.h
index 3d2f871241a8..4df042355356 100644
--- a/arch/powerpc/include/asm/kvm_ppc.h
+++ b/arch/powerpc/include/asm/kvm_ppc.h
@@ -203,12 +203,10 @@ extern void kvmppc_core_destroy_vm(struct kvm *kvm);
 extern void kvmppc_core_free_memslot(struct kvm *kvm,
 				     struct kvm_memory_slot *free,
 				     struct kvm_memory_slot *dont);
-extern int kvmppc_core_create_memslot(struct kvm *kvm,
-				      struct kvm_memory_slot *slot,
-				      unsigned long npages);
 extern int kvmppc_core_prepare_memory_region(struct kvm *kvm,
 				struct kvm_memory_slot *memslot,
-				const struct kvm_userspace_memory_region *mem);
+				const struct kvm_userspace_memory_region *mem,
+				enum kvm_mr_change change);
 extern void kvmppc_core_commit_memory_region(struct kvm *kvm,
 				const struct kvm_userspace_memory_region *mem,
 				const struct kvm_memory_slot *old,
@@ -281,7 +279,8 @@ struct kvmppc_ops {
 	void (*flush_memslot)(struct kvm *kvm, struct kvm_memory_slot *memslot);
 	int (*prepare_memory_region)(struct kvm *kvm,
 				     struct kvm_memory_slot *memslot,
-				     const struct kvm_userspace_memory_region *mem);
+				     const struct kvm_userspace_memory_region *mem,
+				     enum kvm_mr_change change);
 	void (*commit_memory_region)(struct kvm *kvm,
 				     const struct kvm_userspace_memory_region *mem,
 				     const struct kvm_memory_slot *old,
@@ -295,8 +294,6 @@ struct kvmppc_ops {
 	void (*mmu_destroy)(struct kvm_vcpu *vcpu);
 	void (*free_memslot)(struct kvm_memory_slot *free,
 			     struct kvm_memory_slot *dont);
-	int (*create_memslot)(struct kvm_memory_slot *slot,
-			      unsigned long npages);
 	int (*init_vm)(struct kvm *kvm);
 	void (*destroy_vm)(struct kvm *kvm);
 	int (*get_smmu_info)(struct kvm *kvm, struct kvm_ppc_smmu_info *info);
diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
index 58a59ee998e2..2480150646ae 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -815,12 +815,6 @@ void kvmppc_core_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
 	kvm->arch.kvm_ops->free_memslot(free, dont);
 }
 
-int kvmppc_core_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
-			       unsigned long npages)
-{
-	return kvm->arch.kvm_ops->create_memslot(slot, npages);
-}
-
 void kvmppc_core_flush_memslot(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
 	kvm->arch.kvm_ops->flush_memslot(kvm, memslot);
@@ -828,9 +822,11 @@ void kvmppc_core_flush_memslot(struct kvm *kvm, struct kvm_memory_slot *memslot)
 
 int kvmppc_core_prepare_memory_region(struct kvm *kvm,
 				struct kvm_memory_slot *memslot,
-				const struct kvm_userspace_memory_region *mem)
+				const struct kvm_userspace_memory_region *mem,
+				enum kvm_mr_change change)
 {
-	return kvm->arch.kvm_ops->prepare_memory_region(kvm, memslot, mem);
+	return kvm->arch.kvm_ops->prepare_memory_region(kvm, memslot, mem,
+							change);
 }
 
 void kvmppc_core_commit_memory_region(struct kvm *kvm,
diff --git a/arch/powerpc/kvm/book3s_hv.c b/arch/powerpc/kvm/book3s_hv.c
index dc53578193ee..b265d7511f3f 100644
--- a/arch/powerpc/kvm/book3s_hv.c
+++ b/arch/powerpc/kvm/book3s_hv.c
@@ -4466,20 +4466,20 @@ static void kvmppc_core_free_memslot_hv(struct kvm_memory_slot *free,
 	}
 }
 
-static int kvmppc_core_create_memslot_hv(struct kvm_memory_slot *slot,
-					 unsigned long npages)
-{
-	slot->arch.rmap = vzalloc(array_size(npages, sizeof(*slot->arch.rmap)));
-	if (!slot->arch.rmap)
-		return -ENOMEM;
-
-	return 0;
-}
-
 static int kvmppc_core_prepare_memory_region_hv(struct kvm *kvm,
-					struct kvm_memory_slot *memslot,
-					const struct kvm_userspace_memory_region *mem)
+					struct kvm_memory_slot *slot,
+					const struct kvm_userspace_memory_region *mem,
+					enum kvm_mr_change change)
 {
+	unsigned long npages = mem->memory_size >> PAGE_SHIFT;
+
+	if (change == KVM_MR_CREATE) {
+		slot->arch.rmap = vzalloc(array_size(npages,
+					  sizeof(*slot->arch.rmap)));
+		if (!slot->arch.rmap)
+			return -ENOMEM;
+	}
+
 	return 0;
 }
 
@@ -5537,7 +5537,6 @@ static struct kvmppc_ops kvm_ops_hv = {
 	.set_spte_hva = kvm_set_spte_hva_hv,
 	.mmu_destroy  = kvmppc_mmu_destroy_hv,
 	.free_memslot = kvmppc_core_free_memslot_hv,
-	.create_memslot = kvmppc_core_create_memslot_hv,
 	.init_vm =  kvmppc_core_init_vm_hv,
 	.destroy_vm = kvmppc_core_destroy_vm_hv,
 	.get_smmu_info = kvm_vm_ioctl_get_smmu_info_hv,
diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
index ce4fcf76e53e..fc0d9432013f 100644
--- a/arch/powerpc/kvm/book3s_pr.c
+++ b/arch/powerpc/kvm/book3s_pr.c
@@ -1940,7 +1940,8 @@ static void kvmppc_core_flush_memslot_pr(struct kvm *kvm,
 
 static int kvmppc_core_prepare_memory_region_pr(struct kvm *kvm,
 					struct kvm_memory_slot *memslot,
-					const struct kvm_userspace_memory_region *mem)
+					const struct kvm_userspace_memory_region *mem,
+					enum kvm_mr_change change)
 {
 	return 0;
 }
@@ -1960,13 +1961,6 @@ static void kvmppc_core_free_memslot_pr(struct kvm_memory_slot *free,
 	return;
 }
 
-static int kvmppc_core_create_memslot_pr(struct kvm_memory_slot *slot,
-					 unsigned long npages)
-{
-	return 0;
-}
-
-
 #ifdef CONFIG_PPC64
 static int kvm_vm_ioctl_get_smmu_info_pr(struct kvm *kvm,
 					 struct kvm_ppc_smmu_info *info)
@@ -2111,7 +2105,6 @@ static struct kvmppc_ops kvm_ops_pr = {
 	.set_spte_hva = kvm_set_spte_hva_pr,
 	.mmu_destroy  = kvmppc_mmu_destroy_pr,
 	.free_memslot = kvmppc_core_free_memslot_pr,
-	.create_memslot = kvmppc_core_create_memslot_pr,
 	.init_vm = kvmppc_core_init_vm_pr,
 	.destroy_vm = kvmppc_core_destroy_vm_pr,
 	.get_smmu_info = kvm_vm_ioctl_get_smmu_info_pr,
diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index be9a45874194..cf2845e147c5 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -1806,15 +1806,10 @@ void kvmppc_core_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
 {
 }
 
-int kvmppc_core_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
-			       unsigned long npages)
-{
-	return 0;
-}
-
 int kvmppc_core_prepare_memory_region(struct kvm *kvm,
 				      struct kvm_memory_slot *memslot,
-				      const struct kvm_userspace_memory_region *mem)
+				      const struct kvm_userspace_memory_region *mem,
+				      enum kvm_mr_change change)
 {
 	return 0;
 }
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index 416fb3d2a1d0..b0e6b33b476d 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -694,7 +694,7 @@ void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
 int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
 			    unsigned long npages)
 {
-	return kvmppc_core_create_memslot(kvm, slot, npages);
+	return 0;
 }
 
 int kvm_arch_prepare_memory_region(struct kvm *kvm,
@@ -702,7 +702,7 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 				   const struct kvm_userspace_memory_region *mem,
 				   enum kvm_mr_change change)
 {
-	return kvmppc_core_prepare_memory_region(kvm, memslot, mem);
+	return kvmppc_core_prepare_memory_region(kvm, memslot, mem, change);
 }
 
 void kvm_arch_commit_memory_region(struct kvm *kvm,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
