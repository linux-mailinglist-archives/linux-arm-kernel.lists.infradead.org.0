Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8200DFB4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVEDRAzc2/lEstHuzsYTK2lvce0w639RN9/+WiSChy8=; b=eMXnDyuyOuXMC5
	/fdnvBLLvJrICDKnPhfjt7d+5CSrSkxQt46xdT4/IZzCmcPC+l+mSyZgjHO2ui75XcyRxiZjKc+sK
	5TgDAKqvFh3LaocySDioZ/6yUDMiQo0Z1fbet8v6n0Idqp54/B3zqcbXE55oOAcuWyVjxnL3U7aIx
	qiy2qmXZfwAH0p5jLMa4pPWwp4lVlDJNehODmptjO+mASzEm56tnkp0a6CFrSKW4h7KHzLz2STVK2
	jxr9RzpHKQu4+YVSrGL1SdPOb7M4VFR7kXel9DoEPVt4Jcx61NWsH+Tzu0ABRPOPHlBHOFQkXT96L
	9oiIZ6tAaw3s7c/0GLaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjX0-0000H2-DK; Tue, 22 Oct 2019 02:04:18 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjSW-0003sj-Pq
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 01:59:43 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 18:59:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196293787"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 18:59:38 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 10/45] KVM: x86: Move kvm_vcpu_init() invocation to common code
Date: Mon, 21 Oct 2019 18:58:50 -0700
Message-Id: <20191022015925.31916-11-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022015925.31916-1-sean.j.christopherson@intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_185940_890580_76A267B1 
X-CRM114-Status: GOOD (  15.86  )
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

Move the kvm_cpu_{un}init() calls to common x86 code as an intermediate
step to removing kvm_cpu_{un}init() altogether.

Note, VMX'x alloc_apic_access_page() and init_rmode_identity_map() are
per-VM allocations and are intentionally kept if vCPU creation fails.
They are freed by kvm_arch_destroy_vm().

No functional change intended.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/include/asm/kvm_host.h |  2 +-
 arch/x86/kvm/svm.c              | 13 +++----------
 arch/x86/kvm/vmx/vmx.c          | 19 ++++++-------------
 arch/x86/kvm/x86.c              | 20 +++++++++++++++-----
 4 files changed, 25 insertions(+), 29 deletions(-)

diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
index 77581eeb02e3..89d3ff1d6e4d 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1014,7 +1014,7 @@ struct kvm_x86_ops {
 	void (*vm_destroy)(struct kvm *kvm);
 
 	/* Create, but do not attach this VCPU */
-	int (*vcpu_create)(struct kvm *kvm, struct kvm_vcpu *vcpu, unsigned id);
+	int (*vcpu_create)(struct kvm_vcpu *vcpu);
 	void (*vcpu_free)(struct kvm_vcpu *vcpu);
 	void (*vcpu_reset)(struct kvm_vcpu *vcpu, bool init_event);
 
diff --git a/arch/x86/kvm/svm.c b/arch/x86/kvm/svm.c
index dc4e835f7d46..5d31016d69ee 100644
--- a/arch/x86/kvm/svm.c
+++ b/arch/x86/kvm/svm.c
@@ -2138,8 +2138,7 @@ static int avic_init_vcpu(struct vcpu_svm *svm)
 	return ret;
 }
 
-static int svm_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
-			   unsigned int id)
+static int svm_create_vcpu(struct kvm_vcpu *vcpu)
 {
 	struct vcpu_svm *svm;
 	struct page *page;
@@ -2151,14 +2150,10 @@ static int svm_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	BUILD_BUG_ON(offsetof(struct vcpu_svm, vcpu) != 0);
 	svm = to_svm(vcpu);
 
-	err = kvm_vcpu_init(vcpu, kvm, id);
-	if (err)
-		return err;
-
 	err = -ENOMEM;
 	page = alloc_page(GFP_KERNEL_ACCOUNT);
 	if (!page)
-		goto uninit;
+		goto out;
 
 	msrpm_pages = alloc_pages(GFP_KERNEL_ACCOUNT, MSRPM_ALLOC_ORDER);
 	if (!msrpm_pages)
@@ -2207,8 +2202,7 @@ static int svm_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	__free_pages(msrpm_pages, MSRPM_ALLOC_ORDER);
 free_page1:
 	__free_page(page);
-uninit:
-	kvm_vcpu_uninit(vcpu);
+out:
 	return err;
 }
 
@@ -2235,7 +2229,6 @@ static void svm_free_vcpu(struct kvm_vcpu *vcpu)
 	__free_pages(virt_to_page(svm->msrpm), MSRPM_ALLOC_ORDER);
 	__free_page(virt_to_page(svm->nested.hsave));
 	__free_pages(virt_to_page(svm->nested.msrpm), MSRPM_ALLOC_ORDER);
-	kvm_vcpu_uninit(vcpu);
 }
 
 static void svm_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
index 1973029c5c77..eea03e6fbfa3 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -6690,11 +6690,9 @@ static void vmx_free_vcpu(struct kvm_vcpu *vcpu)
 	nested_vmx_free_vcpu(vcpu);
 	free_loaded_vmcs(vmx->loaded_vmcs);
 	kfree(vmx->guest_msrs);
-	kvm_vcpu_uninit(vcpu);
 }
 
-static int vmx_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
-			   unsigned int id)
+static int vmx_create_vcpu(struct kvm_vcpu *vcpu)
 {
 	struct vcpu_vmx *vmx;
 	unsigned long *msr_bitmap;
@@ -6703,10 +6701,6 @@ static int vmx_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	BUILD_BUG_ON(offsetof(struct vcpu_vmx, vcpu) != 0);
 	vmx = to_vmx(vcpu);
 
-	err = kvm_vcpu_init(vcpu, kvm, id);
-	if (err)
-		return err;
-
 	err = -ENOMEM;
 
 	vmx->vpid = allocate_vpid();
@@ -6720,7 +6714,7 @@ static int vmx_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	if (enable_pml) {
 		vmx->pml_pg = alloc_page(GFP_KERNEL_ACCOUNT | __GFP_ZERO);
 		if (!vmx->pml_pg)
-			goto uninit_vcpu;
+			goto free_vpid;
 	}
 
 	vmx->guest_msrs = kmalloc(PAGE_SIZE, GFP_KERNEL_ACCOUNT);
@@ -6742,7 +6736,7 @@ static int vmx_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	vmx_disable_intercept_for_msr(msr_bitmap, MSR_IA32_SYSENTER_CS, MSR_TYPE_RW);
 	vmx_disable_intercept_for_msr(msr_bitmap, MSR_IA32_SYSENTER_ESP, MSR_TYPE_RW);
 	vmx_disable_intercept_for_msr(msr_bitmap, MSR_IA32_SYSENTER_EIP, MSR_TYPE_RW);
-	if (kvm_cstate_in_guest(kvm)) {
+	if (kvm_cstate_in_guest(vcpu->kvm)) {
 		vmx_disable_intercept_for_msr(msr_bitmap, MSR_CORE_C1_RES, MSR_TYPE_R);
 		vmx_disable_intercept_for_msr(msr_bitmap, MSR_CORE_C3_RESIDENCY, MSR_TYPE_R);
 		vmx_disable_intercept_for_msr(msr_bitmap, MSR_CORE_C6_RESIDENCY, MSR_TYPE_R);
@@ -6758,13 +6752,13 @@ static int vmx_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	vmx_vcpu_put(vcpu);
 	put_cpu();
 	if (cpu_need_virtualize_apic_accesses(vcpu)) {
-		err = alloc_apic_access_page(kvm);
+		err = alloc_apic_access_page(vcpu->kvm);
 		if (err)
 			goto free_vmcs;
 	}
 
 	if (enable_ept && !enable_unrestricted_guest) {
-		err = init_rmode_identity_map(kvm);
+		err = init_rmode_identity_map(vcpu->kvm);
 		if (err)
 			goto free_vmcs;
 	}
@@ -6798,8 +6792,7 @@ static int vmx_create_vcpu(struct kvm *kvm, struct kvm_vcpu *vcpu,
 	kfree(vmx->guest_msrs);
 free_pml:
 	vmx_destroy_pml_buffer(vmx);
-uninit_vcpu:
-	kvm_vcpu_uninit(vcpu);
+free_vpid:
 	free_vpid(vmx->vpid);
 	return err;
 }
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index b33ca472ff4f..3a6d8c4a9758 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9016,6 +9016,8 @@ void kvm_arch_vcpu_free(struct kvm_vcpu *vcpu)
 
 	kvm_x86_ops->vcpu_free(vcpu);
 
+	kvm_vcpu_uninit(vcpu);
+
 	free_cpumask_var(vcpu->arch.wbinvd_dirty_mask);
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.user_fpu);
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.guest_fpu);
@@ -9037,12 +9039,20 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
 	if (!vcpu)
 		return ERR_PTR(-ENOMEM);
 
-	r = kvm_x86_ops->vcpu_create(kvm, vcpu, id);
-	if (r) {
-		kmem_cache_free(kvm_vcpu_cache, vcpu);
-		return ERR_PTR(r);
-	}
+	r = kvm_vcpu_init(vcpu, kvm, id);
+	if (r)
+		goto free_vcpu;
+
+	r = kvm_x86_ops->vcpu_create(vcpu);
+	if (r)
+		goto uninit_vcpu;
 	return vcpu;
+
+uninit_vcpu:
+	kvm_vcpu_uninit(vcpu);
+free_vcpu:
+	kmem_cache_free(kvm_vcpu_cache, vcpu);
+	return ERR_PTR(r);
 }
 
 int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
