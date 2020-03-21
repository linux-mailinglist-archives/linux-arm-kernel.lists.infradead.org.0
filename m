Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FB618E46E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 21:27:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhnwJr0OpL4pMdH1pUD5o5tlDCBtJhScUCmhjqPvuQk=; b=AS30lua2eSAObq
	WC0l7GwTtcttLbWvB5EGyravQMuwyIgPGodEegRjDQRezf1agdDQmZkPgeUxI55fJs268+vyYonfX
	qcJDiOVeWexUcxMhfxCbFo6uZJxKYSURYlKvdH0FajoFe+uSWFJc/vR8Lr6+WnyK3ZNWVrEmuyba+
	pccWqftozHVLZIz2BrLlFdkc1OjiOC/aPOq8/lx4i+nrH5LpeV3cwJ6xbDbe8cK3sFUYTIlsZH59i
	CAzBFrDGWXU/pePeAqSiP1croUEkrwEpFY3woz2FO1OoVNwUoEEgL6oQPnTltF0NnlXoRSiibhMqn
	X2BNXF4kTzTWLpg9BxMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFkiK-0001Mu-C7; Sat, 21 Mar 2020 20:27:24 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFkh9-0000NI-VM
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 20:26:14 +0000
IronPort-SDR: lD6qfD7jfdkZZroEnL99eFYohSiRvfgn/OOdA2vS8vXpYdigOl3kzCbOsJ1+qXomR+qiNcQdtf
 bUsJmEIomeTw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2020 13:26:07 -0700
IronPort-SDR: 7nMX4cW89hRpqE+mVgmdq2zaghIxMCvXFhPSJl7oso41ilTWLax9IiQcvZNCm/H8pfdb85hFW8
 Ogz9Lt2pOqeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,289,1580803200"; d="scan'208";a="280773543"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga002.fm.intel.com with ESMTP; 21 Mar 2020 13:26:06 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v3 3/9] KVM: VMX: Move hardware_setup() definition below
 vmx_x86_ops
Date: Sat, 21 Mar 2020 13:25:57 -0700
Message-Id: <20200321202603.19355-4-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200321202603.19355-1-sean.j.christopherson@intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_132612_050579_3E570B77 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, kvm-ppc@vger.kernel.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move VMX's hardware_setup() below its vmx_x86_ops definition so that a
future patch can refactor hardware_setup() to modify vmx_x86_ops
directly instead of indirectly modifying the ops via the global
kvm_x86_ops.

No functional change intended.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/vmx/vmx.c | 346 ++++++++++++++++++++---------------------
 1 file changed, 173 insertions(+), 173 deletions(-)

diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
index ffcdcc86f5b7..82dab775d520 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -7652,179 +7652,6 @@ static bool vmx_apic_init_signal_blocked(struct kvm_vcpu *vcpu)
 	return to_vmx(vcpu)->nested.vmxon;
 }
 
-static __init int hardware_setup(void)
-{
-	unsigned long host_bndcfgs;
-	struct desc_ptr dt;
-	int r, i, ept_lpage_level;
-
-	store_idt(&dt);
-	host_idt_base = dt.address;
-
-	for (i = 0; i < ARRAY_SIZE(vmx_msr_index); ++i)
-		kvm_define_shared_msr(i, vmx_msr_index[i]);
-
-	if (setup_vmcs_config(&vmcs_config, &vmx_capability) < 0)
-		return -EIO;
-
-	if (boot_cpu_has(X86_FEATURE_NX))
-		kvm_enable_efer_bits(EFER_NX);
-
-	if (boot_cpu_has(X86_FEATURE_MPX)) {
-		rdmsrl(MSR_IA32_BNDCFGS, host_bndcfgs);
-		WARN_ONCE(host_bndcfgs, "KVM: BNDCFGS in host will be lost");
-	}
-
-	if (!cpu_has_vmx_mpx())
-		supported_xcr0 &= ~(XFEATURE_MASK_BNDREGS |
-				    XFEATURE_MASK_BNDCSR);
-
-	if (!cpu_has_vmx_vpid() || !cpu_has_vmx_invvpid() ||
-	    !(cpu_has_vmx_invvpid_single() || cpu_has_vmx_invvpid_global()))
-		enable_vpid = 0;
-
-	if (!cpu_has_vmx_ept() ||
-	    !cpu_has_vmx_ept_4levels() ||
-	    !cpu_has_vmx_ept_mt_wb() ||
-	    !cpu_has_vmx_invept_global())
-		enable_ept = 0;
-
-	if (!cpu_has_vmx_ept_ad_bits() || !enable_ept)
-		enable_ept_ad_bits = 0;
-
-	if (!cpu_has_vmx_unrestricted_guest() || !enable_ept)
-		enable_unrestricted_guest = 0;
-
-	if (!cpu_has_vmx_flexpriority())
-		flexpriority_enabled = 0;
-
-	if (!cpu_has_virtual_nmis())
-		enable_vnmi = 0;
-
-	/*
-	 * set_apic_access_page_addr() is used to reload apic access
-	 * page upon invalidation.  No need to do anything if not
-	 * using the APIC_ACCESS_ADDR VMCS field.
-	 */
-	if (!flexpriority_enabled)
-		kvm_x86_ops->set_apic_access_page_addr = NULL;
-
-	if (!cpu_has_vmx_tpr_shadow())
-		kvm_x86_ops->update_cr8_intercept = NULL;
-
-#if IS_ENABLED(CONFIG_HYPERV)
-	if (ms_hyperv.nested_features & HV_X64_NESTED_GUEST_MAPPING_FLUSH
-	    && enable_ept) {
-		kvm_x86_ops->tlb_remote_flush = hv_remote_flush_tlb;
-		kvm_x86_ops->tlb_remote_flush_with_range =
-				hv_remote_flush_tlb_with_range;
-	}
-#endif
-
-	if (!cpu_has_vmx_ple()) {
-		ple_gap = 0;
-		ple_window = 0;
-		ple_window_grow = 0;
-		ple_window_max = 0;
-		ple_window_shrink = 0;
-	}
-
-	if (!cpu_has_vmx_apicv()) {
-		enable_apicv = 0;
-		kvm_x86_ops->sync_pir_to_irr = NULL;
-	}
-
-	if (cpu_has_vmx_tsc_scaling()) {
-		kvm_has_tsc_control = true;
-		kvm_max_tsc_scaling_ratio = KVM_VMX_TSC_MULTIPLIER_MAX;
-		kvm_tsc_scaling_ratio_frac_bits = 48;
-	}
-
-	set_bit(0, vmx_vpid_bitmap); /* 0 is reserved for host */
-
-	if (enable_ept)
-		vmx_enable_tdp();
-
-	if (!enable_ept)
-		ept_lpage_level = 0;
-	else if (cpu_has_vmx_ept_1g_page())
-		ept_lpage_level = PT_PDPE_LEVEL;
-	else if (cpu_has_vmx_ept_2m_page())
-		ept_lpage_level = PT_DIRECTORY_LEVEL;
-	else
-		ept_lpage_level = PT_PAGE_TABLE_LEVEL;
-	kvm_configure_mmu(enable_ept, ept_lpage_level);
-
-	/*
-	 * Only enable PML when hardware supports PML feature, and both EPT
-	 * and EPT A/D bit features are enabled -- PML depends on them to work.
-	 */
-	if (!enable_ept || !enable_ept_ad_bits || !cpu_has_vmx_pml())
-		enable_pml = 0;
-
-	if (!enable_pml) {
-		kvm_x86_ops->slot_enable_log_dirty = NULL;
-		kvm_x86_ops->slot_disable_log_dirty = NULL;
-		kvm_x86_ops->flush_log_dirty = NULL;
-		kvm_x86_ops->enable_log_dirty_pt_masked = NULL;
-	}
-
-	if (!cpu_has_vmx_preemption_timer())
-		enable_preemption_timer = false;
-
-	if (enable_preemption_timer) {
-		u64 use_timer_freq = 5000ULL * 1000 * 1000;
-		u64 vmx_msr;
-
-		rdmsrl(MSR_IA32_VMX_MISC, vmx_msr);
-		cpu_preemption_timer_multi =
-			vmx_msr & VMX_MISC_PREEMPTION_TIMER_RATE_MASK;
-
-		if (tsc_khz)
-			use_timer_freq = (u64)tsc_khz * 1000;
-		use_timer_freq >>= cpu_preemption_timer_multi;
-
-		/*
-		 * KVM "disables" the preemption timer by setting it to its max
-		 * value.  Don't use the timer if it might cause spurious exits
-		 * at a rate faster than 0.1 Hz (of uninterrupted guest time).
-		 */
-		if (use_timer_freq > 0xffffffffu / 10)
-			enable_preemption_timer = false;
-	}
-
-	if (!enable_preemption_timer) {
-		kvm_x86_ops->set_hv_timer = NULL;
-		kvm_x86_ops->cancel_hv_timer = NULL;
-		kvm_x86_ops->request_immediate_exit = __kvm_request_immediate_exit;
-	}
-
-	kvm_set_posted_intr_wakeup_handler(wakeup_handler);
-
-	kvm_mce_cap_supported |= MCG_LMCE_P;
-
-	if (pt_mode != PT_MODE_SYSTEM && pt_mode != PT_MODE_HOST_GUEST)
-		return -EINVAL;
-	if (!enable_ept || !cpu_has_vmx_intel_pt())
-		pt_mode = PT_MODE_SYSTEM;
-
-	if (nested) {
-		nested_vmx_setup_ctls_msrs(&vmcs_config.nested,
-					   vmx_capability.ept);
-
-		r = nested_vmx_hardware_setup(kvm_vmx_exit_handlers);
-		if (r)
-			return r;
-	}
-
-	vmx_set_cpu_caps();
-
-	r = alloc_kvm_area();
-	if (r)
-		nested_vmx_hardware_unsetup();
-	return r;
-}
-
 static __exit void hardware_unsetup(void)
 {
 	if (nested)
@@ -7978,6 +7805,179 @@ static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
 	.apic_init_signal_blocked = vmx_apic_init_signal_blocked,
 };
 
+static __init int hardware_setup(void)
+{
+	unsigned long host_bndcfgs;
+	struct desc_ptr dt;
+	int r, i, ept_lpage_level;
+
+	store_idt(&dt);
+	host_idt_base = dt.address;
+
+	for (i = 0; i < ARRAY_SIZE(vmx_msr_index); ++i)
+		kvm_define_shared_msr(i, vmx_msr_index[i]);
+
+	if (setup_vmcs_config(&vmcs_config, &vmx_capability) < 0)
+		return -EIO;
+
+	if (boot_cpu_has(X86_FEATURE_NX))
+		kvm_enable_efer_bits(EFER_NX);
+
+	if (boot_cpu_has(X86_FEATURE_MPX)) {
+		rdmsrl(MSR_IA32_BNDCFGS, host_bndcfgs);
+		WARN_ONCE(host_bndcfgs, "KVM: BNDCFGS in host will be lost");
+	}
+
+	if (!cpu_has_vmx_mpx())
+		supported_xcr0 &= ~(XFEATURE_MASK_BNDREGS |
+				    XFEATURE_MASK_BNDCSR);
+
+	if (!cpu_has_vmx_vpid() || !cpu_has_vmx_invvpid() ||
+	    !(cpu_has_vmx_invvpid_single() || cpu_has_vmx_invvpid_global()))
+		enable_vpid = 0;
+
+	if (!cpu_has_vmx_ept() ||
+	    !cpu_has_vmx_ept_4levels() ||
+	    !cpu_has_vmx_ept_mt_wb() ||
+	    !cpu_has_vmx_invept_global())
+		enable_ept = 0;
+
+	if (!cpu_has_vmx_ept_ad_bits() || !enable_ept)
+		enable_ept_ad_bits = 0;
+
+	if (!cpu_has_vmx_unrestricted_guest() || !enable_ept)
+		enable_unrestricted_guest = 0;
+
+	if (!cpu_has_vmx_flexpriority())
+		flexpriority_enabled = 0;
+
+	if (!cpu_has_virtual_nmis())
+		enable_vnmi = 0;
+
+	/*
+	 * set_apic_access_page_addr() is used to reload apic access
+	 * page upon invalidation.  No need to do anything if not
+	 * using the APIC_ACCESS_ADDR VMCS field.
+	 */
+	if (!flexpriority_enabled)
+		kvm_x86_ops->set_apic_access_page_addr = NULL;
+
+	if (!cpu_has_vmx_tpr_shadow())
+		kvm_x86_ops->update_cr8_intercept = NULL;
+
+#if IS_ENABLED(CONFIG_HYPERV)
+	if (ms_hyperv.nested_features & HV_X64_NESTED_GUEST_MAPPING_FLUSH
+	    && enable_ept) {
+		kvm_x86_ops->tlb_remote_flush = hv_remote_flush_tlb;
+		kvm_x86_ops->tlb_remote_flush_with_range =
+				hv_remote_flush_tlb_with_range;
+	}
+#endif
+
+	if (!cpu_has_vmx_ple()) {
+		ple_gap = 0;
+		ple_window = 0;
+		ple_window_grow = 0;
+		ple_window_max = 0;
+		ple_window_shrink = 0;
+	}
+
+	if (!cpu_has_vmx_apicv()) {
+		enable_apicv = 0;
+		kvm_x86_ops->sync_pir_to_irr = NULL;
+	}
+
+	if (cpu_has_vmx_tsc_scaling()) {
+		kvm_has_tsc_control = true;
+		kvm_max_tsc_scaling_ratio = KVM_VMX_TSC_MULTIPLIER_MAX;
+		kvm_tsc_scaling_ratio_frac_bits = 48;
+	}
+
+	set_bit(0, vmx_vpid_bitmap); /* 0 is reserved for host */
+
+	if (enable_ept)
+		vmx_enable_tdp();
+
+	if (!enable_ept)
+		ept_lpage_level = 0;
+	else if (cpu_has_vmx_ept_1g_page())
+		ept_lpage_level = PT_PDPE_LEVEL;
+	else if (cpu_has_vmx_ept_2m_page())
+		ept_lpage_level = PT_DIRECTORY_LEVEL;
+	else
+		ept_lpage_level = PT_PAGE_TABLE_LEVEL;
+	kvm_configure_mmu(enable_ept, ept_lpage_level);
+
+	/*
+	 * Only enable PML when hardware supports PML feature, and both EPT
+	 * and EPT A/D bit features are enabled -- PML depends on them to work.
+	 */
+	if (!enable_ept || !enable_ept_ad_bits || !cpu_has_vmx_pml())
+		enable_pml = 0;
+
+	if (!enable_pml) {
+		kvm_x86_ops->slot_enable_log_dirty = NULL;
+		kvm_x86_ops->slot_disable_log_dirty = NULL;
+		kvm_x86_ops->flush_log_dirty = NULL;
+		kvm_x86_ops->enable_log_dirty_pt_masked = NULL;
+	}
+
+	if (!cpu_has_vmx_preemption_timer())
+		enable_preemption_timer = false;
+
+	if (enable_preemption_timer) {
+		u64 use_timer_freq = 5000ULL * 1000 * 1000;
+		u64 vmx_msr;
+
+		rdmsrl(MSR_IA32_VMX_MISC, vmx_msr);
+		cpu_preemption_timer_multi =
+			vmx_msr & VMX_MISC_PREEMPTION_TIMER_RATE_MASK;
+
+		if (tsc_khz)
+			use_timer_freq = (u64)tsc_khz * 1000;
+		use_timer_freq >>= cpu_preemption_timer_multi;
+
+		/*
+		 * KVM "disables" the preemption timer by setting it to its max
+		 * value.  Don't use the timer if it might cause spurious exits
+		 * at a rate faster than 0.1 Hz (of uninterrupted guest time).
+		 */
+		if (use_timer_freq > 0xffffffffu / 10)
+			enable_preemption_timer = false;
+	}
+
+	if (!enable_preemption_timer) {
+		kvm_x86_ops->set_hv_timer = NULL;
+		kvm_x86_ops->cancel_hv_timer = NULL;
+		kvm_x86_ops->request_immediate_exit = __kvm_request_immediate_exit;
+	}
+
+	kvm_set_posted_intr_wakeup_handler(wakeup_handler);
+
+	kvm_mce_cap_supported |= MCG_LMCE_P;
+
+	if (pt_mode != PT_MODE_SYSTEM && pt_mode != PT_MODE_HOST_GUEST)
+		return -EINVAL;
+	if (!enable_ept || !cpu_has_vmx_intel_pt())
+		pt_mode = PT_MODE_SYSTEM;
+
+	if (nested) {
+		nested_vmx_setup_ctls_msrs(&vmcs_config.nested,
+					   vmx_capability.ept);
+
+		r = nested_vmx_hardware_setup(kvm_vmx_exit_handlers);
+		if (r)
+			return r;
+	}
+
+	vmx_set_cpu_caps();
+
+	r = alloc_kvm_area();
+	if (r)
+		nested_vmx_hardware_unsetup();
+	return r;
+}
+
 static struct kvm_x86_init_ops vmx_init_ops __initdata = {
 	.cpu_has_kvm_support = cpu_has_kvm_support,
 	.disabled_by_bios = vmx_disabled_by_bios,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
