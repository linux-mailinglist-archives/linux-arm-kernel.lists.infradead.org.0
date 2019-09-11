Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28350B0449
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 20:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SG9LHTYErbftsJig4tsdDH9BLdl448DpunkTcITp9qc=; b=GuO/N3t185W+KX
	sOgMfekSjOVlNKfdYE4e1NI9lLobGHc0rJPFNnQdEpplHGk/YC6G3u+aAwN5d8LH9EZIfcyNlFPDj
	CKrL3usSouBmv5eCOVOUPEW/ps8OleidhONuxyAb3TzzOO5GIXDr/RG9mdH4c7ArudSHOaDok4fpj
	k4moqbhWqfuQ8Y430CSWxDnCdeqvCJiKZ8mOHV+S+Hm0B8/Mj4/hAeuupbA0qNQe/ktymjagoe+br
	xxZ6VWuS63k7t60Dp7zAolB+3bfxvSm6pxG35iq+NIHwoMQWqJH5xPp25vTiZZnhNXjRDivwthCjT
	u2B0uG6tSATa/kNjm4GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87l2-0001XM-En; Wed, 11 Sep 2019 18:54:24 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87hb-0007Ew-Ed
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 18:50:53 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 11:50:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="196980896"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by orsmga002.jf.intel.com with ESMTP; 11 Sep 2019 11:50:41 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 11/13] KVM: Ensure validity of memslot with respect to
 kvm_get_dirty_log()
Date: Wed, 11 Sep 2019 11:50:36 -0700
Message-Id: <20190911185038.24341-12-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190911185038.24341-1-sean.j.christopherson@intel.com>
References: <20190911185038.24341-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_115052_096536_F7DEFDF3 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Julien Thierry <julien.thierry@arm.com>, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 kvm-ppc@vger.kernel.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rework kvm_get_dirty_log() so that it "returns" the associated memslot
on success.  A future patch will rework memslot handling such that
id_to_memslot() can return NULL, returning the memslot makes it more
obvious that the validity of the memslot has been verified, i.e.
precludes the need to add validity checks in the arch code that are
technically unnecessary.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/powerpc/kvm/book3s_pr.c |  6 +-----
 arch/s390/kvm/kvm-s390.c     | 12 ++----------
 include/linux/kvm_host.h     |  2 +-
 virt/kvm/kvm_main.c          | 27 +++++++++++++++++++--------
 4 files changed, 23 insertions(+), 24 deletions(-)

diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
index 5368a5dbac22..f41a136d247f 100644
--- a/arch/powerpc/kvm/book3s_pr.c
+++ b/arch/powerpc/kvm/book3s_pr.c
@@ -1860,7 +1860,6 @@ static int kvmppc_vcpu_run_pr(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
 static int kvm_vm_ioctl_get_dirty_log_pr(struct kvm *kvm,
 					 struct kvm_dirty_log *log)
 {
-	struct kvm_memslots *slots;
 	struct kvm_memory_slot *memslot;
 	struct kvm_vcpu *vcpu;
 	ulong ga, ga_end;
@@ -1870,15 +1869,12 @@ static int kvm_vm_ioctl_get_dirty_log_pr(struct kvm *kvm,
 
 	mutex_lock(&kvm->slots_lock);
 
-	r = kvm_get_dirty_log(kvm, log, &is_dirty);
+	r = kvm_get_dirty_log(kvm, log, &is_dirty, &memslot);
 	if (r)
 		goto out;
 
 	/* If nothing is dirty, don't bother messing with page tables. */
 	if (is_dirty) {
-		slots = kvm_memslots(kvm);
-		memslot = id_to_memslot(slots, log->slot);
-
 		ga = memslot->base_gfn << PAGE_SHIFT;
 		ga_end = ga + (memslot->npages << PAGE_SHIFT);
 
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 36d4de1b1409..074f0d7771b6 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -613,9 +613,8 @@ int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
 {
 	int r;
 	unsigned long n;
-	struct kvm_memslots *slots;
 	struct kvm_memory_slot *memslot;
-	int is_dirty = 0;
+	int is_dirty;
 
 	if (kvm_is_ucontrol(kvm))
 		return -EINVAL;
@@ -626,14 +625,7 @@ int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
 	if (log->slot >= KVM_USER_MEM_SLOTS)
 		goto out;
 
-	slots = kvm_memslots(kvm);
-	memslot = id_to_memslot(slots, log->slot);
-	r = -ENOENT;
-	if (!memslot->dirty_bitmap)
-		goto out;
-
-	kvm_arch_sync_dirty_log(kvm, memslot);
-	r = kvm_get_dirty_log(kvm, log, &is_dirty);
+	r = kvm_get_dirty_log(kvm, log, &is_dirty, &memslot);
 	if (r)
 		goto out;
 
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index feb40a184847..049e20876b8f 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -808,7 +808,7 @@ void kvm_arch_dirty_log_tlb_flush(struct kvm *kvm, struct kvm_memory_slot *slot)
 #else /* !CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT */
 int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log);
 int kvm_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log,
-		      int *is_dirty);
+		      int *is_dirty, struct kvm_memory_slot **memslot);
 #endif
 
 int kvm_vm_ioctl_irq_line(struct kvm *kvm, struct kvm_irq_level *irq_level,
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 85062477be90..11b130e9f223 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -1123,31 +1123,42 @@ static int kvm_vm_ioctl_set_memory_region(struct kvm *kvm,
 }
 
 #ifndef CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT
-int kvm_get_dirty_log(struct kvm *kvm,
-			struct kvm_dirty_log *log, int *is_dirty)
+/**
+ * kvm_get_dirty_log - get a snapshot of dirty pages
+ * @kvm:	pointer to kvm instance
+ * @log:	slot id and address to which we copy the log
+ * @is_dirty:	set to '1' if any dirty pages were found
+ * @memslot:	set to the associated memslot, always valid on success
+ */
+int kvm_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log,
+		      int *is_dirty, struct kvm_memory_slot **memslot)
 {
 	struct kvm_memslots *slots;
-	struct kvm_memory_slot *memslot;
 	int i, as_id, id;
 	unsigned long n;
 	unsigned long any = 0;
 
+	*memslot = NULL;
+	*is_dirty = 0;
+
 	as_id = log->slot >> 16;
 	id = (u16)log->slot;
 	if (as_id >= KVM_ADDRESS_SPACE_NUM || id >= KVM_USER_MEM_SLOTS)
 		return -EINVAL;
 
 	slots = __kvm_memslots(kvm, as_id);
-	memslot = id_to_memslot(slots, id);
-	if (!memslot->dirty_bitmap)
+	*memslot = id_to_memslot(slots, id);
+	if (!(*memslot)->dirty_bitmap)
 		return -ENOENT;
 
-	n = kvm_dirty_bitmap_bytes(memslot);
+	kvm_arch_sync_dirty_log(kvm, *memslot);
+
+	n = kvm_dirty_bitmap_bytes(*memslot);
 
 	for (i = 0; !any && i < n/sizeof(long); ++i)
-		any = memslot->dirty_bitmap[i];
+		any = (*memslot)->dirty_bitmap[i];
 
-	if (copy_to_user(log->dirty_bitmap, memslot->dirty_bitmap, n))
+	if (copy_to_user(log->dirty_bitmap, (*memslot)->dirty_bitmap, n))
 		return -EFAULT;
 
 	if (any)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
