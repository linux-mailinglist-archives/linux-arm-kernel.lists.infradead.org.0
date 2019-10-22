Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E989DFB28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fWkYHI/AJgA2c+Ml2I/8bamieQLhs2mGJRZoKMU0nw=; b=swmg8ZLMovnDbU
	nXAhi+0fKSbjameW85PFIXQAmbYaUNQTFJWU5Df4KarQ8nZrJLXbCdOLun9q8mAucY/9pfS03DiAB
	iyemXB9zSGZtzI00OExUFWzEt3bV/nrNxz5TQj/SXxAUSVOkRcr3B8dYJ/ucfo64bPsuD5F2PB5al
	73QHGQtxULup1K3MOJJwQ3Xuq6mo4TsYhEtJvJQobHAFCHBmj1RL0CjLGpUMYTTadKPq81tRejmUx
	cmiQLkDVeFNXUHH7INwuqVtYq69aj0DQSHUEjM7wJInrklWgMSxxP0LdSvcqlq001JnZJhhnCY3Wl
	HXcxiXMcE6w1MC0VtBWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjVy-0007vH-Sk; Tue, 22 Oct 2019 02:03:14 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjST-0003sj-VM
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 01:59:40 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 18:59:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196293766"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 18:59:36 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 07/45] KVM: x86: Allocate vcpu struct in common x86 code
Date: Mon, 21 Oct 2019 18:58:47 -0700
Message-Id: <20191022015925.31916-8-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022015925.31916-1-sean.j.christopherson@intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_185938_062890_FC2D7455 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move allocation of VMX and SVM vcpus to common x86.  Although the struct
being allocated is technically a VMX/SVM struct, it can be interpreted
directly as a 'struct kvm_vcpu' because of the pre-existing requirement
that 'struct kvm_vcpu' be located at offset zero of the arch/vendor vcpu
struct.

Remove the message from the build-time assertions regarding placement of
the struct, as compatibility with the arch usercopy region is no longer
the sole dependent on 'struct kvm_vcpu' being at offset zero.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/include/asm/kvm_host.h |  2 +-
 arch/x86/kvm/svm.c              | 28 +++++++++-------------------
 arch/x86/kvm/vmx/vmx.c          | 24 ++++++++----------------
 arch/x86/kvm/x86.c              | 16 ++++++++++++----
 4 files changed, 30 insertions(+), 40 deletions(-)

diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
index 5d8056ff7390..77581eeb02e3 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1014,7 +1014,7 @@ struct kvm_x86_ops {
 	void (*vm_destroy)(struct kvm *kvm);
 
 	/* Create, but do not attach this VCPU */
-	struct kvm_vcpu *(*vcpu_create)(struct kvm *kvm, unsigned id);
+	int (*vcpu_create)(struct kvm *kvm, struct kvm_vcpu *vcpu, unsigned id);
 	void (*vcpu_free)(struct kvm_vcpu *vcpu);
 	void (*vcpu_reset)(struct kvm_vcpu *vcpu, bool init_event);
 
diff --git a/arch/x86/kvm/svm.c b/arch/x86/kvm/svm.c
index 2f66c52e1b5d..bbc5dac9d400 100644
--- a/arch/x86/kvm/svm.c
+++ b/arch/x86/kvm/svm.c
@@ -2138,9 +2138,9 @@ static int avic_init_vcpu(struct vcpu_svm *svm)
 	return ret;
 }
 
-static struct kvm_vcpu *svm_create_vcpu(struct kvm *kvm, unsigned int id)
+static int svm_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
+			   unsigned int id)
 {
-	struct kvm_vcpu *vcpu;
 	struct vcpu_svm *svm;
 	struct page *page;
 	struct page *msrpm_pages;
@@ -2148,22 +2148,15 @@ static struct kvm_vcpu *svm_create_vcpu(struct kvm *kvm, unsigned int id)
 	struct page *nested_msrpm_pages;
 	int err;
 
-	BUILD_BUG_ON_MSG(offsetof(struct vcpu_svm, vcpu) != 0,
-		"struct kvm_vcpu must be at offset 0 for arch usercopy region");
-
-	svm = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL_ACCOUNT);
-	if (!svm) {
-		err = -ENOMEM;
-		goto out;
-	}
-	vcpu = &svm->vcpu;
+	BUILD_BUG_ON(offsetof(struct vcpu_svm, vcpu) != 0);
+	svm = to_svm(vcpu);
 
 	vcpu->arch.user_fpu = kmem_cache_zalloc(x86_fpu_cache,
 						GFP_KERNEL_ACCOUNT);
 	if (!vcpu->arch.user_fpu) {
 		printk(KERN_ERR "kvm: failed to allocate kvm userspace's fpu\n");
 		err = -ENOMEM;
-		goto free_partial_svm;
+		goto out;
 	}
 
 	vcpu->arch.guest_fpu = kmem_cache_zalloc(x86_fpu_cache,
@@ -2176,7 +2169,7 @@ static struct kvm_vcpu *svm_create_vcpu(struct kvm *kvm, unsigned int id)
 
 	err = kvm_vcpu_init(vcpu, kvm, id);
 	if (err)
-		goto free_svm;
+		goto free_guest_fpu;
 
 	err = -ENOMEM;
 	page = alloc_page(GFP_KERNEL_ACCOUNT);
@@ -2220,7 +2213,7 @@ static struct kvm_vcpu *svm_create_vcpu(struct kvm *kvm, unsigned int id)
 
 	svm_init_osvw(vcpu);
 
-	return vcpu;
+	return 0;
 
 free_page4:
 	__free_page(hsave_page);
@@ -2232,14 +2225,12 @@ static struct kvm_vcpu *svm_create_vcpu(struct kvm *kvm, unsigned int id)
 	__free_page(page);
 uninit:
 	kvm_vcpu_uninit(vcpu);
-free_svm:
+free_guest_fpu:
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.guest_fpu);
 free_user_fpu:
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.user_fpu);
-free_partial_svm:
-	kmem_cache_free(kvm_vcpu_cache, svm);
 out:
-	return ERR_PTR(err);
+	return err;
 }
 
 static void svm_clear_current_vmcb(struct vmcb *vmcb)
@@ -2268,7 +2259,6 @@ static void svm_free_vcpu(struct kvm_vcpu *vcpu)
 	kvm_vcpu_uninit(vcpu);
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.user_fpu);
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.guest_fpu);
-	kmem_cache_free(kvm_vcpu_cache, svm);
 }
 
 static void svm_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
index 70b8d15eb2c5..832d8e38acd4 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -6693,31 +6693,24 @@ static void vmx_free_vcpu(struct kvm_vcpu *vcpu)
 	kvm_vcpu_uninit(vcpu);
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.user_fpu);
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.guest_fpu);
-	kmem_cache_free(kvm_vcpu_cache, vmx);
 }
 
-static struct kvm_vcpu *vmx_create_vcpu(struct kvm *kvm, unsigned int id)
+static int vmx_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
+			   unsigned int id)
 {
-	struct kvm_vcpu *vcpu;
 	struct vcpu_vmx *vmx;
 	unsigned long *msr_bitmap;
 	int cpu, err;
 
-	BUILD_BUG_ON_MSG(offsetof(struct vcpu_vmx, vcpu) != 0,
-		"struct kvm_vcpu must be at offset 0 for arch usercopy region");
-
-	vmx = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL_ACCOUNT);
-	if (!vmx)
-		return ERR_PTR(-ENOMEM);
-
-	vcpu = &vmx->vcpu;
+	BUILD_BUG_ON(offsetof(struct vcpu_vmx, vcpu) != 0);
+	vmx = to_vmx(vcpu);
 
 	vcpu->arch.user_fpu = kmem_cache_zalloc(x86_fpu_cache,
 						GFP_KERNEL_ACCOUNT);
 	if (!vcpu->arch.user_fpu) {
 		printk(KERN_ERR "kvm: failed to allocate kvm userspace's fpu\n");
 		err = -ENOMEM;
-		goto free_partial_vcpu;
+		goto out;
 	}
 
 	vcpu->arch.guest_fpu = kmem_cache_zalloc(x86_fpu_cache,
@@ -6815,7 +6808,7 @@ static struct kvm_vcpu *vmx_create_vcpu(struct kvm *kvm, unsigned int id)
 
 	vmx->ept_pointer = INVALID_PAGE;
 
-	return vcpu;
+	return 0;
 
 free_vmcs:
 	free_loaded_vmcs(vmx->loaded_vmcs);
@@ -6830,9 +6823,8 @@ static struct kvm_vcpu *vmx_create_vcpu(struct kvm *kvm, unsigned int id)
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.guest_fpu);
 free_user_fpu:
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.user_fpu);
-free_partial_vcpu:
-	kmem_cache_free(kvm_vcpu_cache, vmx);
-	return ERR_PTR(err);
+out:
+	return err;
 }
 
 #define L1TF_MSG_SMT "L1TF CPU bug present and SMT on, data leak possible. See CVE-2018-3646 and https://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/l1tf.html for details.\n"
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index c9a291693279..45b296a9fdbb 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9012,26 +9012,34 @@ static void fx_init(struct kvm_vcpu *vcpu)
 
 void kvm_arch_vcpu_free(struct kvm_vcpu *vcpu)
 {
-	void *wbinvd_dirty_mask = vcpu->arch.wbinvd_dirty_mask;
-
 	kvmclock_reset(vcpu);
 
 	kvm_x86_ops->vcpu_free(vcpu);
-	free_cpumask_var(wbinvd_dirty_mask);
+
+	free_cpumask_var(vcpu->arch.wbinvd_dirty_mask);
+	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
 						unsigned int id)
 {
 	struct kvm_vcpu *vcpu;
+	int r;
 
 	if (kvm_check_tsc_unstable() && atomic_read(&kvm->online_vcpus) != 0)
 		printk_once(KERN_WARNING
 		"kvm: SMP vm created on host with unstable TSC; "
 		"guest TSC will not be reliable\n");
 
-	vcpu = kvm_x86_ops->vcpu_create(kvm, id);
+	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL_ACCOUNT);
+	if (!vcpu)
+		return ERR_PTR(-ENOMEM);
 
+	r = kvm_x86_ops->vcpu_create(kvm, vcpu, id);
+	if (r) {
+		kmem_cache_free(kvm_vcpu_cache, vcpu);
+		return ERR_PTR(r);
+	}
 	return vcpu;
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
