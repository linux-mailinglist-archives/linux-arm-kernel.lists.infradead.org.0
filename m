Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EA3163461
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dndenIrRQlhReCw7dfm31U3pKRO74108x9znDXcw3s=; b=ILKYafRV5tSwCp
	uicuwVcqT4pw9B/n+s4IXI97sOcyLJoBwsiBLK8nlkxzY+BYKvTYPM5oaxgX6fahL55sgDCthgYB0
	QzU8pANssTJZfgy9PGCEbzp/D6ifkJWcRCy2IPa9TyasJ4ZRSjO1FP61UnbnmTW4TTfBsi2i67atD
	kwNnmItwGyz5wkp6lDLbWM/O0Hcra0tU7I9/soT37YTfJLRAgmteeDUQI6ivT7r50ldKcH8Sa0kfb
	pQEzG6oo1ZEeOD45Knxd78B1n3OzeEta6QBRewIBZQvOZAluLyHBmpa7r1RrBipsb3Y3pFeie5jRZ
	D2BpG5WtIFsOzd1juO/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4A8M-0003cF-23; Tue, 18 Feb 2020 21:10:22 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4A5t-0000zb-Ei
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:07:55 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 13:07:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,457,1574150400"; d="scan'208";a="253856446"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 18 Feb 2020 13:07:46 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v6 15/22] KVM: Provide common implementation for generic dirty
 log functions
Date: Tue, 18 Feb 2020 13:07:29 -0800
Message-Id: <20200218210736.16432-16-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218210736.16432-1-sean.j.christopherson@intel.com>
References: <20200218210736.16432-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_130749_576703_2A2ACF34 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the implementations of KVM_GET_DIRTY_LOG and KVM_CLEAR_DIRTY_LOG
for CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT into common KVM code.
The arch specific implemenations are extremely similar, differing
only in whether the dirty log needs to be sync'd from hardware (x86)
and how the TLBs are flushed.  Add new arch hooks to handle sync
and TLB flush; the sync will also be used for non-generic dirty log
support in a future patch (s390).

The ulterior motive for providing a common implementation is to
eliminate the dependency between arch and common code with respect to
the memslot referenced by the dirty log, i.e. to make it obvious in the
code that the validity of the memslot is guaranteed, as a future patch
will rework memslot handling such that id_to_memslot() can return NULL.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/mips/kvm/mips.c      | 63 +++--------------------------
 arch/powerpc/kvm/book3s.c |  5 +++
 arch/powerpc/kvm/booke.c  |  5 +++
 arch/s390/kvm/kvm-s390.c  |  5 +--
 arch/x86/kvm/x86.c        | 61 ++--------------------------
 include/linux/kvm_host.h  | 21 +++++-----
 virt/kvm/arm/arm.c        | 48 ++--------------------
 virt/kvm/kvm_main.c       | 84 ++++++++++++++++++++++++++++++++-------
 8 files changed, 103 insertions(+), 189 deletions(-)

diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index c7536aa341d2..78507757ba9a 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -978,69 +978,16 @@ long kvm_arch_vcpu_ioctl(struct file *filp, unsigned int ioctl,
 	return r;
 }
 
-/**
- * kvm_vm_ioctl_get_dirty_log - get and clear the log of dirty pages in a slot
- * @kvm: kvm instance
- * @log: slot id and address to which we copy the log
- *
- * Steps 1-4 below provide general overview of dirty page logging. See
- * kvm_get_dirty_log_protect() function description for additional details.
- *
- * We call kvm_get_dirty_log_protect() to handle steps 1-3, upon return we
- * always flush the TLB (step 4) even if previous step failed  and the dirty
- * bitmap may be corrupt. Regardless of previous outcome the KVM logging API
- * does not preclude user space subsequent dirty log read. Flushing TLB ensures
- * writes will be marked dirty for next log read.
- *
- *   1. Take a snapshot of the bit and clear it if needed.
- *   2. Write protect the corresponding page.
- *   3. Copy the snapshot to the userspace.
- *   4. Flush TLB's if needed.
- */
-int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
-	struct kvm_memslots *slots;
-	struct kvm_memory_slot *memslot;
-	bool flush = false;
-	int r;
 
-	mutex_lock(&kvm->slots_lock);
-
-	r = kvm_get_dirty_log_protect(kvm, log, &flush);
-
-	if (flush) {
-		slots = kvm_memslots(kvm);
-		memslot = id_to_memslot(slots, log->slot);
-
-		/* Let implementation handle TLB/GVA invalidation */
-		kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
-	}
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
 }
 
-int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm, struct kvm_clear_dirty_log *log)
+void kvm_arch_flush_remote_tlbs_memslot(struct kvm *kvm,
+					struct kvm_memory_slot *memslot)
 {
-	struct kvm_memslots *slots;
-	struct kvm_memory_slot *memslot;
-	bool flush = false;
-	int r;
-
-	mutex_lock(&kvm->slots_lock);
-
-	r = kvm_clear_dirty_log_protect(kvm, log, &flush);
-
-	if (flush) {
-		slots = kvm_memslots(kvm);
-		memslot = id_to_memslot(slots, log->slot);
-
-		/* Let implementation handle TLB/GVA invalidation */
-		kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
-	}
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
+	/* Let implementation handle TLB/GVA invalidation */
+	kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
 }
 
 long kvm_arch_vm_ioctl(struct file *filp, unsigned int ioctl, unsigned long arg)
diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
index 97ce6c4f7b48..0adaf4791a6d 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -799,6 +799,11 @@ int kvmppc_core_check_requests(struct kvm_vcpu *vcpu)
 	return vcpu->kvm->arch.kvm_ops->check_requests(vcpu);
 }
 
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
+{
+
+}
+
 int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
 {
 	return kvm->arch.kvm_ops->get_dirty_log(kvm, log);
diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index b0519069892b..c9f4b374dc56 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -1766,6 +1766,11 @@ int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
 	return r;
 }
 
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
+{
+
+}
+
 int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
 {
 	return -ENOTSUPP;
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 78f92c005f93..2adbc2fde382 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -570,8 +570,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 	return r;
 }
 
-static void kvm_s390_sync_dirty_log(struct kvm *kvm,
-				    struct kvm_memory_slot *memslot)
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
 	int i;
 	gfn_t cur_gfn, last_gfn;
@@ -631,7 +630,7 @@ int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
 	if (!memslot->dirty_bitmap)
 		goto out;
 
-	kvm_s390_sync_dirty_log(kvm, memslot);
+	kvm_arch_sync_dirty_log(kvm, memslot);
 	r = kvm_get_dirty_log(kvm, log, &is_dirty);
 	if (r)
 		goto out;
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 419e07246d0d..af11a6af9c05 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -4750,77 +4750,24 @@ static int kvm_vm_ioctl_reinject(struct kvm *kvm,
 	return 0;
 }
 
-/**
- * kvm_vm_ioctl_get_dirty_log - get and clear the log of dirty pages in a slot
- * @kvm: kvm instance
- * @log: slot id and address to which we copy the log
- *
- * Steps 1-4 below provide general overview of dirty page logging. See
- * kvm_get_dirty_log_protect() function description for additional details.
- *
- * We call kvm_get_dirty_log_protect() to handle steps 1-3, upon return we
- * always flush the TLB (step 4) even if previous step failed  and the dirty
- * bitmap may be corrupt. Regardless of previous outcome the KVM logging API
- * does not preclude user space subsequent dirty log read. Flushing TLB ensures
- * writes will be marked dirty for next log read.
- *
- *   1. Take a snapshot of the bit and clear it if needed.
- *   2. Write protect the corresponding page.
- *   3. Copy the snapshot to the userspace.
- *   4. Flush TLB's if needed.
- */
-int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
-	bool flush = false;
-	int r;
-
-	mutex_lock(&kvm->slots_lock);
-
 	/*
 	 * Flush potentially hardware-cached dirty pages to dirty_bitmap.
 	 */
 	if (kvm_x86_ops->flush_log_dirty)
 		kvm_x86_ops->flush_log_dirty(kvm);
-
-	r = kvm_get_dirty_log_protect(kvm, log, &flush);
-
-	/*
-	 * All the TLBs can be flushed out of mmu lock, see the comments in
-	 * kvm_mmu_slot_remove_write_access().
-	 */
-	lockdep_assert_held(&kvm->slots_lock);
-	if (flush)
-		kvm_flush_remote_tlbs(kvm);
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
 }
 
-int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm, struct kvm_clear_dirty_log *log)
+void kvm_arch_flush_remote_tlbs_memslot(struct kvm *kvm,
+					struct kvm_memory_slot *memslot)
 {
-	bool flush = false;
-	int r;
-
-	mutex_lock(&kvm->slots_lock);
-
-	/*
-	 * Flush potentially hardware-cached dirty pages to dirty_bitmap.
-	 */
-	if (kvm_x86_ops->flush_log_dirty)
-		kvm_x86_ops->flush_log_dirty(kvm);
-
-	r = kvm_clear_dirty_log_protect(kvm, log, &flush);
-
 	/*
 	 * All the TLBs can be flushed out of mmu lock, see the comments in
 	 * kvm_mmu_slot_remove_write_access().
 	 */
 	lockdep_assert_held(&kvm->slots_lock);
-	if (flush)
-		kvm_flush_remote_tlbs(kvm);
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
+	kvm_flush_remote_tlbs(kvm);
 }
 
 int kvm_vm_ioctl_irq_line(struct kvm *kvm, struct kvm_irq_level *irq_event,
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 92ef33ee6431..4588b988ebf1 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -816,23 +816,20 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf);
 
 int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext);
 
-int kvm_get_dirty_log(struct kvm *kvm,
-			struct kvm_dirty_log *log, int *is_dirty);
-
-int kvm_get_dirty_log_protect(struct kvm *kvm,
-			      struct kvm_dirty_log *log, bool *flush);
-int kvm_clear_dirty_log_protect(struct kvm *kvm,
-				struct kvm_clear_dirty_log *log, bool *flush);
-
 void kvm_arch_mmu_enable_log_dirty_pt_masked(struct kvm *kvm,
 					struct kvm_memory_slot *slot,
 					gfn_t gfn_offset,
 					unsigned long mask);
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot);
 
-int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
-				struct kvm_dirty_log *log);
-int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm,
-				  struct kvm_clear_dirty_log *log);
+#ifdef CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT
+void kvm_arch_flush_remote_tlbs_memslot(struct kvm *kvm,
+					struct kvm_memory_slot *memslot);
+#else /* !CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT */
+int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log);
+int kvm_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log,
+		      int *is_dirty);
+#endif
 
 int kvm_vm_ioctl_irq_line(struct kvm *kvm, struct kvm_irq_level *irq_level,
 			bool line_status);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index d65a0faa46d8..bfdba1caf59d 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -1183,55 +1183,15 @@ long kvm_arch_vcpu_ioctl(struct file *filp,
 	return r;
 }
 
-/**
- * kvm_vm_ioctl_get_dirty_log - get and clear the log of dirty pages in a slot
- * @kvm: kvm instance
- * @log: slot id and address to which we copy the log
- *
- * Steps 1-4 below provide general overview of dirty page logging. See
- * kvm_get_dirty_log_protect() function description for additional details.
- *
- * We call kvm_get_dirty_log_protect() to handle steps 1-3, upon return we
- * always flush the TLB (step 4) even if previous step failed  and the dirty
- * bitmap may be corrupt. Regardless of previous outcome the KVM logging API
- * does not preclude user space subsequent dirty log read. Flushing TLB ensures
- * writes will be marked dirty for next log read.
- *
- *   1. Take a snapshot of the bit and clear it if needed.
- *   2. Write protect the corresponding page.
- *   3. Copy the snapshot to the userspace.
- *   4. Flush TLB's if needed.
- */
-int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
-	bool flush = false;
-	int r;
 
-	mutex_lock(&kvm->slots_lock);
-
-	r = kvm_get_dirty_log_protect(kvm, log, &flush);
-
-	if (flush)
-		kvm_flush_remote_tlbs(kvm);
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
 }
 
-int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm, struct kvm_clear_dirty_log *log)
+void kvm_arch_flush_remote_tlbs_memslot(struct kvm *kvm,
+					struct kvm_memory_slot *memslot)
 {
-	bool flush = false;
-	int r;
-
-	mutex_lock(&kvm->slots_lock);
-
-	r = kvm_clear_dirty_log_protect(kvm, log, &flush);
-
-	if (flush)
-		kvm_flush_remote_tlbs(kvm);
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
+	kvm_flush_remote_tlbs(kvm);
 }
 
 static int kvm_vm_ioctl_set_device_addr(struct kvm *kvm,
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 00ece4a5cdbb..d986168ee8b1 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -856,7 +856,7 @@ static int kvm_vm_release(struct inode *inode, struct file *filp)
 
 /*
  * Allocation size is twice as large as the actual dirty bitmap size.
- * See x86's kvm_vm_ioctl_get_dirty_log() why this is needed.
+ * See kvm_vm_ioctl_get_dirty_log() why this is needed.
  */
 static int kvm_create_dirty_bitmap(struct kvm_memory_slot *memslot)
 {
@@ -1201,6 +1201,7 @@ static int kvm_vm_ioctl_set_memory_region(struct kvm *kvm,
 	return kvm_set_memory_region(kvm, mem);
 }
 
+#ifndef CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT
 int kvm_get_dirty_log(struct kvm *kvm,
 			struct kvm_dirty_log *log, int *is_dirty)
 {
@@ -1234,13 +1235,12 @@ int kvm_get_dirty_log(struct kvm *kvm,
 }
 EXPORT_SYMBOL_GPL(kvm_get_dirty_log);
 
-#ifdef CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT
+#else /* CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT */
 /**
  * kvm_get_dirty_log_protect - get a snapshot of dirty pages
  *	and reenable dirty page tracking for the corresponding pages.
  * @kvm:	pointer to kvm instance
  * @log:	slot id and address to which we copy the log
- * @flush:	true if TLB flush is needed by caller
  *
  * We need to keep it in mind that VCPU threads can write to the bitmap
  * concurrently. So, to avoid losing track of dirty pages we keep the
@@ -1257,8 +1257,7 @@ EXPORT_SYMBOL_GPL(kvm_get_dirty_log);
  * exiting to userspace will be logged for the next call.
  *
  */
-int kvm_get_dirty_log_protect(struct kvm *kvm,
-			struct kvm_dirty_log *log, bool *flush)
+static int kvm_get_dirty_log_protect(struct kvm *kvm, struct kvm_dirty_log *log)
 {
 	struct kvm_memslots *slots;
 	struct kvm_memory_slot *memslot;
@@ -1266,6 +1265,7 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
 	unsigned long n;
 	unsigned long *dirty_bitmap;
 	unsigned long *dirty_bitmap_buffer;
+	bool flush;
 
 	as_id = log->slot >> 16;
 	id = (u16)log->slot;
@@ -1279,8 +1279,10 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
 	if (!dirty_bitmap)
 		return -ENOENT;
 
+	kvm_arch_sync_dirty_log(kvm, memslot);
+
 	n = kvm_dirty_bitmap_bytes(memslot);
-	*flush = false;
+	flush = false;
 	if (kvm->manual_dirty_log_protect) {
 		/*
 		 * Unlike kvm_get_dirty_log, we always return false in *flush,
@@ -1303,7 +1305,7 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
 			if (!dirty_bitmap[i])
 				continue;
 
-			*flush = true;
+			flush = true;
 			mask = xchg(&dirty_bitmap[i], 0);
 			dirty_bitmap_buffer[i] = mask;
 
@@ -1314,21 +1316,55 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
 		spin_unlock(&kvm->mmu_lock);
 	}
 
+	if (flush)
+		kvm_arch_flush_remote_tlbs_memslot(kvm, memslot);
+
 	if (copy_to_user(log->dirty_bitmap, dirty_bitmap_buffer, n))
 		return -EFAULT;
 	return 0;
 }
-EXPORT_SYMBOL_GPL(kvm_get_dirty_log_protect);
+
+
+/**
+ * kvm_vm_ioctl_get_dirty_log - get and clear the log of dirty pages in a slot
+ * @kvm: kvm instance
+ * @log: slot id and address to which we copy the log
+ *
+ * Steps 1-4 below provide general overview of dirty page logging. See
+ * kvm_get_dirty_log_protect() function description for additional details.
+ *
+ * We call kvm_get_dirty_log_protect() to handle steps 1-3, upon return we
+ * always flush the TLB (step 4) even if previous step failed  and the dirty
+ * bitmap may be corrupt. Regardless of previous outcome the KVM logging API
+ * does not preclude user space subsequent dirty log read. Flushing TLB ensures
+ * writes will be marked dirty for next log read.
+ *
+ *   1. Take a snapshot of the bit and clear it if needed.
+ *   2. Write protect the corresponding page.
+ *   3. Copy the snapshot to the userspace.
+ *   4. Flush TLB's if needed.
+ */
+static int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
+				      struct kvm_dirty_log *log)
+{
+	int r;
+
+	mutex_lock(&kvm->slots_lock);
+
+	r = kvm_get_dirty_log_protect(kvm, log);
+
+	mutex_unlock(&kvm->slots_lock);
+	return r;
+}
 
 /**
  * kvm_clear_dirty_log_protect - clear dirty bits in the bitmap
  *	and reenable dirty page tracking for the corresponding pages.
  * @kvm:	pointer to kvm instance
  * @log:	slot id and address from which to fetch the bitmap of dirty pages
- * @flush:	true if TLB flush is needed by caller
  */
-int kvm_clear_dirty_log_protect(struct kvm *kvm,
-				struct kvm_clear_dirty_log *log, bool *flush)
+static int kvm_clear_dirty_log_protect(struct kvm *kvm,
+				       struct kvm_clear_dirty_log *log)
 {
 	struct kvm_memslots *slots;
 	struct kvm_memory_slot *memslot;
@@ -1337,6 +1373,7 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
 	unsigned long i, n;
 	unsigned long *dirty_bitmap;
 	unsigned long *dirty_bitmap_buffer;
+	bool flush;
 
 	as_id = log->slot >> 16;
 	id = (u16)log->slot;
@@ -1360,7 +1397,9 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
 	    (log->num_pages < memslot->npages - log->first_page && (log->num_pages & 63)))
 	    return -EINVAL;
 
-	*flush = false;
+	kvm_arch_sync_dirty_log(kvm, memslot);
+
+	flush = false;
 	dirty_bitmap_buffer = kvm_second_dirty_bitmap(memslot);
 	if (copy_from_user(dirty_bitmap_buffer, log->dirty_bitmap, n))
 		return -EFAULT;
@@ -1383,17 +1422,32 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
 		 * a problem if userspace sets them in log->dirty_bitmap.
 		*/
 		if (mask) {
-			*flush = true;
+			flush = true;
 			kvm_arch_mmu_enable_log_dirty_pt_masked(kvm, memslot,
 								offset, mask);
 		}
 	}
 	spin_unlock(&kvm->mmu_lock);
 
+	if (flush)
+		kvm_arch_flush_remote_tlbs_memslot(kvm, memslot);
+
 	return 0;
 }
-EXPORT_SYMBOL_GPL(kvm_clear_dirty_log_protect);
-#endif
+
+static int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm,
+					struct kvm_clear_dirty_log *log)
+{
+	int r;
+
+	mutex_lock(&kvm->slots_lock);
+
+	r = kvm_clear_dirty_log_protect(kvm, log);
+
+	mutex_unlock(&kvm->slots_lock);
+	return r;
+}
+#endif /* CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT */
 
 bool kvm_largepages_enabled(void)
 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
