Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053B912564C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQP4IJefqkGoJ4iiv1uWBkv+kHAYUhOjslNWvMK9D/g=; b=P1+xIEP6wHOGo4
	Nb9DhNgmzXHfXWvhVR/w1HsSCl9U+8a/Yz2T+zD1EIYfE/jYTGl7ErDwSzDFb2OdnJT/4EcMlxEZ3
	DOmKwarVqQknDIrKANAYij5koHGE3nlkhxLOtabzodEwMcG+VYZBBy+H5Pg+o1fQ/jqBDREX0lzhW
	QrbTuRNPzcmkTBlIFo6j91hWvIN1vgG396aHzOw3RuNKoqCXuSM4EXySB0SWaLSSi/f/vE5m1FJmG
	tfuMhxN2HxaufUbq0rlu9cDON4V0cdxHyprKZYA+8wbQYx3p2CxEoq2vsUOXA3JQxEmTL/wd6oE+1
	/Dihng6RZioE6BxFB9hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhUn-0002FA-VY; Wed, 18 Dec 2019 22:08:41 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhId-00059X-2R
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:56:12 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108168"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:49 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 38/45] KVM: x86: Move all vcpu init code into
 kvm_arch_vcpu_create()
Date: Wed, 18 Dec 2019 13:55:23 -0800
Message-Id: <20191218215530.2280-39-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135607_271313_C758B649 
X-CRM114-Status: GOOD (  14.83  )
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

Fold init() into create() now that the two are called back-to-back by
common KVM code (kvm_vcpu_init() calls kvm_arch_vcpu_init() as its last
action, and kvm_vm_ioctl_create_vcpu() calls kvm_arch_vcpu_create()
immediately thereafter).  This paves the way for removing
kvm_arch_vcpu_init() entirely.

No functional change intended.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/x86.c | 198 +++++++++++++++++++++++----------------------
 1 file changed, 100 insertions(+), 98 deletions(-)

diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 20f8ac086824..24671f487645 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9100,11 +9100,78 @@ int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
 
 int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 {
-	int ret;
+	struct page *page;
+	int r;
 
-	ret = kvm_x86_ops->vcpu_create(vcpu);
-	if (ret)
-		return ret;
+	vcpu->arch.emulate_ctxt.ops = &emulate_ops;
+	if (!irqchip_in_kernel(vcpu->kvm) || kvm_vcpu_is_reset_bsp(vcpu))
+		vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
+	else
+		vcpu->arch.mp_state = KVM_MP_STATE_UNINITIALIZED;
+
+	kvm_set_tsc_khz(vcpu, max_tsc_khz);
+
+	r = kvm_mmu_create(vcpu);
+	if (r < 0)
+		return r;
+
+	if (irqchip_in_kernel(vcpu->kvm)) {
+		vcpu->arch.apicv_active = kvm_x86_ops->get_enable_apicv(vcpu->kvm);
+		r = kvm_create_lapic(vcpu, lapic_timer_advance_ns);
+		if (r < 0)
+			goto fail_mmu_destroy;
+	} else
+		static_key_slow_inc(&kvm_no_apic_vcpu);
+
+	r = -ENOMEM;
+
+	page = alloc_page(GFP_KERNEL | __GFP_ZERO);
+	if (!page)
+		goto fail_free_lapic;
+	vcpu->arch.pio_data = page_address(page);
+
+	vcpu->arch.mce_banks = kzalloc(KVM_MAX_MCE_BANKS * sizeof(u64) * 4,
+				       GFP_KERNEL_ACCOUNT);
+	if (!vcpu->arch.mce_banks)
+		goto fail_free_pio_data;
+	vcpu->arch.mcg_cap = KVM_MAX_MCE_BANKS;
+
+	if (!zalloc_cpumask_var(&vcpu->arch.wbinvd_dirty_mask,
+				GFP_KERNEL_ACCOUNT))
+		goto fail_free_mce_banks;
+
+	vcpu->arch.user_fpu = kmem_cache_zalloc(x86_fpu_cache,
+						GFP_KERNEL_ACCOUNT);
+	if (!vcpu->arch.user_fpu) {
+		pr_err("kvm: failed to allocate userspace's fpu\n");
+		goto free_wbinvd_dirty_mask;
+	}
+
+	vcpu->arch.guest_fpu = kmem_cache_zalloc(x86_fpu_cache,
+						 GFP_KERNEL_ACCOUNT);
+	if (!vcpu->arch.guest_fpu) {
+		pr_err("kvm: failed to allocate vcpu's fpu\n");
+		goto free_user_fpu;
+	}
+	fx_init(vcpu);
+
+	vcpu->arch.guest_xstate_size = XSAVE_HDR_SIZE + XSAVE_HDR_OFFSET;
+
+	vcpu->arch.maxphyaddr = cpuid_query_maxphyaddr(vcpu);
+
+	vcpu->arch.pat = MSR_IA32_CR_PAT_DEFAULT;
+
+	kvm_async_pf_hash_reset(vcpu);
+	kvm_pmu_init(vcpu);
+
+	vcpu->arch.pending_external_vector = -1;
+	vcpu->arch.preempted_in_kernel = false;
+
+	kvm_hv_vcpu_init(vcpu);
+
+	r = kvm_x86_ops->vcpu_create(vcpu);
+	if (r)
+		goto free_guest_fpu;
 
 	vcpu->arch.arch_capabilities = kvm_get_arch_capabilities();
 	vcpu->arch.msr_platform_info = MSR_PLATFORM_INFO_CPUID_FAULT;
@@ -9114,6 +9181,22 @@ int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 	kvm_init_mmu(vcpu, false);
 	vcpu_put(vcpu);
 	return 0;
+
+free_guest_fpu:
+	kmem_cache_free(x86_fpu_cache, vcpu->arch.guest_fpu);
+free_user_fpu:
+	kmem_cache_free(x86_fpu_cache, vcpu->arch.user_fpu);
+free_wbinvd_dirty_mask:
+	free_cpumask_var(vcpu->arch.wbinvd_dirty_mask);
+fail_free_mce_banks:
+	kfree(vcpu->arch.mce_banks);
+fail_free_pio_data:
+	free_page((unsigned long)vcpu->arch.pio_data);
+fail_free_lapic:
+	kvm_free_lapic(vcpu);
+fail_mmu_destroy:
+	kvm_mmu_destroy(vcpu);
+	return r;
 }
 
 void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
@@ -9146,6 +9229,8 @@ void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
 
 void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 {
+	int idx;
+
 	kvmclock_reset(vcpu);
 
 	kvm_x86_ops->vcpu_free(vcpu);
@@ -9153,6 +9238,17 @@ void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 	free_cpumask_var(vcpu->arch.wbinvd_dirty_mask);
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.user_fpu);
 	kmem_cache_free(x86_fpu_cache, vcpu->arch.guest_fpu);
+
+	kvm_hv_vcpu_uninit(vcpu);
+	kvm_pmu_destroy(vcpu);
+	kfree(vcpu->arch.mce_banks);
+	kvm_free_lapic(vcpu);
+	idx = srcu_read_lock(&vcpu->kvm->srcu);
+	kvm_mmu_destroy(vcpu);
+	srcu_read_unlock(&vcpu->kvm->srcu, idx);
+	free_page((unsigned long)vcpu->arch.pio_data);
+	if (!lapic_in_kernel(vcpu))
+		static_key_slow_dec(&kvm_no_apic_vcpu);
 }
 
 void kvm_vcpu_reset(struct kvm_vcpu *vcpu, bool init_event)
@@ -9391,106 +9487,12 @@ EXPORT_SYMBOL_GPL(kvm_no_apic_vcpu);
 
 int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 {
-	struct page *page;
-	int r;
-
-	vcpu->arch.emulate_ctxt.ops = &emulate_ops;
-	if (!irqchip_in_kernel(vcpu->kvm) || kvm_vcpu_is_reset_bsp(vcpu))
-		vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
-	else
-		vcpu->arch.mp_state = KVM_MP_STATE_UNINITIALIZED;
-
-	kvm_set_tsc_khz(vcpu, max_tsc_khz);
-
-	r = kvm_mmu_create(vcpu);
-	if (r < 0)
-		return r;
-
-	if (irqchip_in_kernel(vcpu->kvm)) {
-		vcpu->arch.apicv_active = kvm_x86_ops->get_enable_apicv(vcpu->kvm);
-		r = kvm_create_lapic(vcpu, lapic_timer_advance_ns);
-		if (r < 0)
-			goto fail_mmu_destroy;
-	} else
-		static_key_slow_inc(&kvm_no_apic_vcpu);
-
-	r = -ENOMEM;
-
-	page = alloc_page(GFP_KERNEL | __GFP_ZERO);
-	if (!page)
-		goto fail_free_lapic;
-	vcpu->arch.pio_data = page_address(page);
-
-	vcpu->arch.mce_banks = kzalloc(KVM_MAX_MCE_BANKS * sizeof(u64) * 4,
-				       GFP_KERNEL_ACCOUNT);
-	if (!vcpu->arch.mce_banks)
-		goto fail_free_pio_data;
-	vcpu->arch.mcg_cap = KVM_MAX_MCE_BANKS;
-
-	if (!zalloc_cpumask_var(&vcpu->arch.wbinvd_dirty_mask,
-				GFP_KERNEL_ACCOUNT))
-		goto fail_free_mce_banks;
-
-	vcpu->arch.user_fpu = kmem_cache_zalloc(x86_fpu_cache,
-						GFP_KERNEL_ACCOUNT);
-	if (!vcpu->arch.user_fpu) {
-		pr_err("kvm: failed to allocate userspace's fpu\n");
-		goto free_wbinvd_dirty_mask;
-	}
-
-	vcpu->arch.guest_fpu = kmem_cache_zalloc(x86_fpu_cache,
-						 GFP_KERNEL_ACCOUNT);
-	if (!vcpu->arch.guest_fpu) {
-		pr_err("kvm: failed to allocate vcpu's fpu\n");
-		goto free_user_fpu;
-	}
-	fx_init(vcpu);
-
-	vcpu->arch.guest_xstate_size = XSAVE_HDR_SIZE + XSAVE_HDR_OFFSET;
-
-	vcpu->arch.maxphyaddr = cpuid_query_maxphyaddr(vcpu);
-
-	vcpu->arch.pat = MSR_IA32_CR_PAT_DEFAULT;
-
-	kvm_async_pf_hash_reset(vcpu);
-	kvm_pmu_init(vcpu);
-
-	vcpu->arch.pending_external_vector = -1;
-	vcpu->arch.preempted_in_kernel = false;
-
-	kvm_hv_vcpu_init(vcpu);
-
 	return 0;
-
-free_user_fpu:
-	kmem_cache_free(x86_fpu_cache, vcpu->arch.user_fpu);
-free_wbinvd_dirty_mask:
-	free_cpumask_var(vcpu->arch.wbinvd_dirty_mask);
-fail_free_mce_banks:
-	kfree(vcpu->arch.mce_banks);
-fail_free_pio_data:
-	free_page((unsigned long)vcpu->arch.pio_data);
-fail_free_lapic:
-	kvm_free_lapic(vcpu);
-fail_mmu_destroy:
-	kvm_mmu_destroy(vcpu);
-	return r;
 }
 
 void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
 {
-	int idx;
 
-	kvm_hv_vcpu_uninit(vcpu);
-	kvm_pmu_destroy(vcpu);
-	kfree(vcpu->arch.mce_banks);
-	kvm_free_lapic(vcpu);
-	idx = srcu_read_lock(&vcpu->kvm->srcu);
-	kvm_mmu_destroy(vcpu);
-	srcu_read_unlock(&vcpu->kvm->srcu, idx);
-	free_page((unsigned long)vcpu->arch.pio_data);
-	if (!lapic_in_kernel(vcpu))
-		static_key_slow_dec(&kvm_no_apic_vcpu);
 }
 
 void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
