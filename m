Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F188125644
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/3RiI+/MP2Yo++U/mSOJ4q0xq1HHmmTH0ZQD8uoQEE=; b=OTEhUYFfp5OG2b
	ID/jlQT2WE9kkW46bu9yQnbQ8JOcpoNtHmSBuMlsBpi6OnOjz2eijuzOL2NTN5rnfHFFlxpIyHU2K
	WIxTKg1YDZ1TkO5IdnAtiTAfrdrjDaVxZ7djylKRchAh6VMYQ3g9/0Fa4Pk07PNEepdruEwTEXOPM
	QuaLHmP2uziqX7tNhoLyHRxywWS0eR5Awpqm71ZuITp18oC7Z19F+UPjyGpx5cUi3cpXkEv4mAhCz
	rXVa/pQ+ThxaMMM/FTck5rRekmczzXF++Ti66iTaVtliLQVdhCJuPUwa06nff2KyYfANw0E+/Erc9
	NNqyHcsMivK7euw7ZJXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhTG-0000bn-22; Wed, 18 Dec 2019 22:07:06 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIU-0004ya-QJ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:56:04 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108138"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:45 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 30/45] KVM: Move vcpu alloc and init invocation to common
 code
Date: Wed, 18 Dec 2019 13:55:15 -0800
Message-Id: <20191218215530.2280-31-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135559_080643_0DB71F6A 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.55.52.93 listed in wl.mailspike.net]
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that all architectures tightly couple vcpu allocation/free with the
mandatory calls to kvm_{un}init_vcpu(), move the sequences verbatim to
common KVM code.

Move both allocation and initialization in a single patch to eliminate
thrash in arch specific code.  The bisection benefits of moving the two
pieces in separate patches is marginal at best, whereas the odds of
introducing a transient arch specific bug are non-zero.

Acked-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/mips/kvm/mips.c       | 33 ++++++---------------------------
 arch/powerpc/kvm/powerpc.c | 27 ++++-----------------------
 arch/s390/kvm/kvm-s390.c   | 31 +++++--------------------------
 arch/x86/kvm/x86.c         | 28 ++--------------------------
 include/linux/kvm_host.h   |  2 +-
 virt/kvm/arm/arm.c         | 29 ++---------------------------
 virt/kvm/kvm_main.c        | 21 ++++++++++++++++++---
 7 files changed, 38 insertions(+), 133 deletions(-)

diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index 8546bc6e09e7..92c9321b3f95 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -285,25 +285,14 @@ int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
 	return 0;
 }
 
-struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
+int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 {
 	int err, size;
 	void *gebase, *p, *handler, *refill_start, *refill_end;
 	int i;
 
-	struct kvm_vcpu *vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
-
-	if (!vcpu) {
-		err = -ENOMEM;
-		goto out;
-	}
-
-	err = kvm_vcpu_init(vcpu, kvm, id);
-
-	if (err)
-		goto out_free_cpu;
-
-	kvm_debug("kvm @ %p: create cpu %d at %p\n", kvm, id, vcpu);
+	kvm_debug("kvm @ %p: create cpu %d at %p\n",
+		  vcpu->kvm, vcpu->vcpu_id, vcpu);
 
 	/*
 	 * Allocate space for host mode exception handlers that handle
@@ -318,7 +307,7 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
 
 	if (!gebase) {
 		err = -ENOMEM;
-		goto out_uninit_cpu;
+		goto out;
 	}
 	kvm_debug("Allocated %d bytes for KVM Exception Handlers @ %p\n",
 		  ALIGN(size, PAGE_SIZE), gebase);
@@ -397,19 +386,12 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
 	vcpu->arch.last_sched_cpu = -1;
 	vcpu->arch.last_exec_cpu = -1;
 
-	return vcpu;
+	return 0;
 
 out_free_gebase:
 	kfree(gebase);
-
-out_uninit_cpu:
-	kvm_vcpu_uninit(vcpu);
-
-out_free_cpu:
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
-
 out:
-	return ERR_PTR(err);
+	return err;
 }
 
 void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
@@ -421,9 +403,6 @@ void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 	kvm_mmu_free_memory_caches(vcpu);
 	kfree(vcpu->arch.guest_ebase);
 	kfree(vcpu->arch.kseg0_commpage);
-
-	kvm_vcpu_uninit(vcpu);
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
 int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index e3e2b88d3d8b..fce1b4776e55 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -725,32 +725,17 @@ int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
 	return 0;
 }
 
-struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
+int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 {
-	struct kvm_vcpu *vcpu;
 	int err;
 
-	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
-	if (!vcpu)
-		return ERR_PTR(-ENOMEM);
-
-	err = kvm_vcpu_init(vcpu, kvm, id);
-	if (err)
-		goto free_vcpu;
-
 	err = kvmppc_core_vcpu_create(vcpu);
 	if (err)
-		goto uninit_vcpu;
+		return err;
 
 	vcpu->arch.wqp = &vcpu->wq;
-	kvmppc_create_vcpu_debugfs(vcpu, id);
-	return vcpu;
-
-uninit_vcpu:
-	kvm_vcpu_uninit(vcpu);
-free_vcpu:
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
-	return ERR_PTR(err);
+	kvmppc_create_vcpu_debugfs(vcpu, vcpu->vcpu_id);
+	return 0;
 }
 
 void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
@@ -780,10 +765,6 @@ void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 	}
 
 	kvmppc_core_vcpu_free(vcpu);
-
-	kvm_vcpu_uninit(vcpu);
-
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
 int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 8543d338a06a..2ed76584ebd9 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -2530,9 +2530,6 @@ void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 	if (vcpu->kvm->arch.use_cmma)
 		kvm_s390_vcpu_unsetup_cmma(vcpu);
 	free_page((unsigned long)(vcpu->arch.sie_block));
-
-	kvm_vcpu_uninit(vcpu);
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
 static void kvm_free_vcpus(struct kvm *kvm)
@@ -3014,29 +3011,15 @@ int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
 	return 0;
 }
 
-struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
-				      unsigned int id)
+int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 {
-	struct kvm_vcpu *vcpu;
 	struct sie_page *sie_page;
 	int rc;
 
-	rc = -ENOMEM;
-
-	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
-	if (!vcpu)
-		goto out;
-
-	rc = kvm_vcpu_init(vcpu, kvm, id);
-	if (rc)
-		goto out_free_cpu;
-
-	rc = -ENOMEM;
-
 	BUILD_BUG_ON(sizeof(struct sie_page) != 4096);
 	sie_page = (struct sie_page *) get_zeroed_page(GFP_KERNEL);
 	if (!sie_page)
-		goto out_uninit_vcpu;
+		return -ENOMEM;
 
 	vcpu->arch.sie_block = &sie_page->sie_block;
 	vcpu->arch.sie_block->itdba = (unsigned long) &sie_page->itdb;
@@ -3087,15 +3070,11 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
 		 vcpu->arch.sie_block);
 	trace_kvm_s390_create_vcpu(id, vcpu, vcpu->arch.sie_block);
 
-	return vcpu;
+	return 0;
+
 out_free_sie_block:
 	free_page((unsigned long)(vcpu->arch.sie_block));
-out_uninit_vcpu:
-	kvm_vcpu_uninit(vcpu);
-out_free_cpu:
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
-out:
-	return ERR_PTR(rc);
+	return rc;
 }
 
 int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index c808329290e1..c04b24719b28 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9098,30 +9098,9 @@ int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
 	return 0;
 }
 
-struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
-						unsigned int id)
+int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 {
-	struct kvm_vcpu *vcpu;
-	int r;
-
-	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL_ACCOUNT);
-	if (!vcpu)
-		return ERR_PTR(-ENOMEM);
-
-	r = kvm_vcpu_init(vcpu, kvm, id);
-	if (r)
-		goto free_vcpu;
-
-	r = kvm_x86_ops->vcpu_create(vcpu);
-	if (r)
-		goto uninit_vcpu;
-	return vcpu;
-
-uninit_vcpu:
-	kvm_vcpu_uninit(vcpu);
-free_vcpu:
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
-	return ERR_PTR(r);
+	return kvm_x86_ops->vcpu_create(vcpu);
 }
 
 int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
@@ -9173,9 +9152,6 @@ void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 	free_cpumask_var(vcpu->arch.wbinvd_dirty_mask);
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.user_fpu);
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.guest_fpu);
-
-	kvm_vcpu_uninit(vcpu);
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
 void kvm_vcpu_reset(struct kvm_vcpu *vcpu, bool init_event)
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 9e3371f9a4cd..a9abd9e9f621 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -876,7 +876,7 @@ void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu);
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu);
 void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu);
 int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id);
-struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id);
+int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu);
 int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu);
 void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu);
 void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index f569cbb2f123..35eab584fb57 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -290,32 +290,9 @@ int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
 	return 0;
 }
 
-struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
+int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 {
-	int err;
-	struct kvm_vcpu *vcpu;
-
-	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
-	if (!vcpu) {
-		err = -ENOMEM;
-		goto out;
-	}
-
-	err = kvm_vcpu_init(vcpu, kvm, id);
-	if (err)
-		goto free_vcpu;
-
-	err = create_hyp_mappings(vcpu, vcpu + 1, PAGE_HYP);
-	if (err)
-		goto vcpu_uninit;
-
-	return vcpu;
-vcpu_uninit:
-	kvm_vcpu_uninit(vcpu);
-free_vcpu:
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
-out:
-	return ERR_PTR(err);
+	return create_hyp_mappings(vcpu, vcpu + 1, PAGE_HYP);
 }
 
 void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
@@ -330,8 +307,6 @@ void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 	kvm_mmu_free_memory_caches(vcpu);
 	kvm_timer_vcpu_terminate(vcpu);
 	kvm_pmu_vcpu_destroy(vcpu);
-	kvm_vcpu_uninit(vcpu);
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
 int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index c2766a1108b9..1afffb0da7cc 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -378,6 +378,9 @@ EXPORT_SYMBOL_GPL(kvm_vcpu_uninit);
 void kvm_vcpu_destroy(struct kvm_vcpu *vcpu)
 {
 	kvm_arch_vcpu_destroy(vcpu);
+
+	kvm_vcpu_uninit(vcpu);
+	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 EXPORT_SYMBOL_GPL(kvm_vcpu_destroy);
 
@@ -2738,12 +2741,20 @@ static int kvm_vm_ioctl_create_vcpu(struct kvm *kvm, u32 id)
 	if (r)
 		goto vcpu_decrement;
 
-	vcpu = kvm_arch_vcpu_create(kvm, id);
-	if (IS_ERR(vcpu)) {
-		r = PTR_ERR(vcpu);
+	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
+	if (!vcpu) {
+		r = -ENOMEM;
 		goto vcpu_decrement;
 	}
 
+	r = kvm_vcpu_init(vcpu, kvm, id);
+	if (r)
+		goto vcpu_free;
+
+	r = kvm_arch_vcpu_create(vcpu);
+	if (r)
+		goto vcpu_uninit;
+
 	preempt_notifier_init(&vcpu->preempt_notifier, &kvm_preempt_ops);
 
 	r = kvm_arch_vcpu_setup(vcpu);
@@ -2787,6 +2798,10 @@ static int kvm_vm_ioctl_create_vcpu(struct kvm *kvm, u32 id)
 	debugfs_remove_recursive(vcpu->debugfs_dentry);
 vcpu_destroy:
 	kvm_arch_vcpu_destroy(vcpu);
+vcpu_uninit:
+	kvm_vcpu_uninit(vcpu);
+vcpu_free:
+	kmem_cache_free(kvm_vcpu_cache, vcpu);
 vcpu_decrement:
 	mutex_lock(&kvm->lock);
 	kvm->created_vcpus--;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
