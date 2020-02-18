Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55901637C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 00:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLwvLkG8tavLVibJoioZne50upvVIddsadzAjFFBy4g=; b=c7khSYaY/jppPU
	25Nd3dmc5IQ/OmzfPrU4jjuMOFnG/+28S5ZveNUHnoQLM4EGjk7WcV44XvZccfwXGy/MntvwKj8og
	rYeOPnZJjtfyWaGMX60PKu2P6wPPt7wSTf/SmJMyy2RqgJsrTu9jVMrmt9o4dnVOe0TU64amheDQa
	mOARWUH8upLlWyFozRm92sOtXvfuFci52F4dhsVh34RlbNpusOF+VhoMxJbQvbMPTZk1G/6Wrq2pW
	OCP3k/AHHQ5qC5uY1cLzr5noZcoHN/v5H8pPeVkQVLJNUe9T7RzzSxERt2Wj2Yo1N1x3VTQQvz4b4
	+yOxix2wYsryPMqmNaJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4CjM-0002bn-1W; Tue, 18 Feb 2020 23:56:44 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ChS-0008Jk-Gy
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 23:54:50 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 15:54:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="224313165"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 18 Feb 2020 15:54:39 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 4/9] KVM: VMX: Configure runtime hooks using vmx_x86_ops
Date: Tue, 18 Feb 2020 15:54:32 -0800
Message-Id: <20200218235437.20533-5-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218235437.20533-1-sean.j.christopherson@intel.com>
References: <20200218235437.20533-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_155446_728055_42B894F5 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Configure VMX's runtime hooks by modifying vmx_x86_ops directly instead
of using on the global kvm_x86_ops.  This sets the stage for waiting
until after ->hardware_setup() to set kvm_x86_ops with the vendor's
implementation.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/vmx/nested.c | 15 ++++++++-------
 arch/x86/kvm/vmx/nested.h |  3 ++-
 arch/x86/kvm/vmx/vmx.c    | 27 ++++++++++++++-------------
 3 files changed, 24 insertions(+), 21 deletions(-)

diff --git a/arch/x86/kvm/vmx/nested.c b/arch/x86/kvm/vmx/nested.c
index 657c2eda357c..07db28f5087d 100644
--- a/arch/x86/kvm/vmx/nested.c
+++ b/arch/x86/kvm/vmx/nested.c
@@ -6160,7 +6160,8 @@ void nested_vmx_hardware_unsetup(void)
 	}
 }
 
-__init int nested_vmx_hardware_setup(int (*exit_handlers[])(struct kvm_vcpu *))
+__init int nested_vmx_hardware_setup(struct kvm_x86_ops *ops,
+				     int (*exit_handlers[])(struct kvm_vcpu *))
 {
 	int i;
 
@@ -6196,12 +6197,12 @@ __init int nested_vmx_hardware_setup(int (*exit_handlers[])(struct kvm_vcpu *))
 	exit_handlers[EXIT_REASON_INVVPID]	= handle_invvpid;
 	exit_handlers[EXIT_REASON_VMFUNC]	= handle_vmfunc;
 
-	kvm_x86_ops->check_nested_events = vmx_check_nested_events;
-	kvm_x86_ops->get_nested_state = vmx_get_nested_state;
-	kvm_x86_ops->set_nested_state = vmx_set_nested_state;
-	kvm_x86_ops->get_vmcs12_pages = nested_get_vmcs12_pages;
-	kvm_x86_ops->nested_enable_evmcs = nested_enable_evmcs;
-	kvm_x86_ops->nested_get_evmcs_version = nested_get_evmcs_version;
+	ops->check_nested_events = vmx_check_nested_events;
+	ops->get_nested_state = vmx_get_nested_state;
+	ops->set_nested_state = vmx_set_nested_state;
+	ops->get_vmcs12_pages = nested_get_vmcs12_pages;
+	ops->nested_enable_evmcs = nested_enable_evmcs;
+	ops->nested_get_evmcs_version = nested_get_evmcs_version;
 
 	return 0;
 }
diff --git a/arch/x86/kvm/vmx/nested.h b/arch/x86/kvm/vmx/nested.h
index fc874d4ead0f..e356871a7cfa 100644
--- a/arch/x86/kvm/vmx/nested.h
+++ b/arch/x86/kvm/vmx/nested.h
@@ -20,7 +20,8 @@ void vmx_leave_nested(struct kvm_vcpu *vcpu);
 void nested_vmx_setup_ctls_msrs(struct nested_vmx_msrs *msrs, u32 ept_caps,
 				bool apicv);
 void nested_vmx_hardware_unsetup(void);
-__init int nested_vmx_hardware_setup(int (*exit_handlers[])(struct kvm_vcpu *));
+__init int nested_vmx_hardware_setup(struct kvm_x86_ops *ops,
+				     int (*exit_handlers[])(struct kvm_vcpu *));
 void nested_vmx_set_vmcs_shadowing_bitmap(void);
 void nested_vmx_free_vcpu(struct kvm_vcpu *vcpu);
 enum nvmx_vmentry_status nested_vmx_enter_non_root_mode(struct kvm_vcpu *vcpu,
diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
index 168386f8c9da..098203b6508f 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -7767,10 +7767,10 @@ static __init int hardware_setup(void)
 	 * using the APIC_ACCESS_ADDR VMCS field.
 	 */
 	if (!flexpriority_enabled)
-		kvm_x86_ops->set_apic_access_page_addr = NULL;
+		vmx_x86_ops.set_apic_access_page_addr = NULL;
 
 	if (!cpu_has_vmx_tpr_shadow())
-		kvm_x86_ops->update_cr8_intercept = NULL;
+		vmx_x86_ops.update_cr8_intercept = NULL;
 
 	if (enable_ept && !cpu_has_vmx_ept_2m_page())
 		kvm_disable_largepages();
@@ -7778,8 +7778,8 @@ static __init int hardware_setup(void)
 #if IS_ENABLED(CONFIG_HYPERV)
 	if (ms_hyperv.nested_features & HV_X64_NESTED_GUEST_MAPPING_FLUSH
 	    && enable_ept) {
-		kvm_x86_ops->tlb_remote_flush = hv_remote_flush_tlb;
-		kvm_x86_ops->tlb_remote_flush_with_range =
+		vmx_x86_ops.tlb_remote_flush = hv_remote_flush_tlb;
+		vmx_x86_ops.tlb_remote_flush_with_range =
 				hv_remote_flush_tlb_with_range;
 	}
 #endif
@@ -7794,7 +7794,7 @@ static __init int hardware_setup(void)
 
 	if (!cpu_has_vmx_apicv()) {
 		enable_apicv = 0;
-		kvm_x86_ops->sync_pir_to_irr = NULL;
+		vmx_x86_ops.sync_pir_to_irr = NULL;
 	}
 
 	if (cpu_has_vmx_tsc_scaling()) {
@@ -7818,10 +7818,10 @@ static __init int hardware_setup(void)
 		enable_pml = 0;
 
 	if (!enable_pml) {
-		kvm_x86_ops->slot_enable_log_dirty = NULL;
-		kvm_x86_ops->slot_disable_log_dirty = NULL;
-		kvm_x86_ops->flush_log_dirty = NULL;
-		kvm_x86_ops->enable_log_dirty_pt_masked = NULL;
+		vmx_x86_ops.slot_enable_log_dirty = NULL;
+		vmx_x86_ops.slot_disable_log_dirty = NULL;
+		vmx_x86_ops.flush_log_dirty = NULL;
+		vmx_x86_ops.enable_log_dirty_pt_masked = NULL;
 	}
 
 	if (!cpu_has_vmx_preemption_timer())
@@ -7849,9 +7849,9 @@ static __init int hardware_setup(void)
 	}
 
 	if (!enable_preemption_timer) {
-		kvm_x86_ops->set_hv_timer = NULL;
-		kvm_x86_ops->cancel_hv_timer = NULL;
-		kvm_x86_ops->request_immediate_exit = __kvm_request_immediate_exit;
+		vmx_x86_ops.set_hv_timer = NULL;
+		vmx_x86_ops.cancel_hv_timer = NULL;
+		vmx_x86_ops.request_immediate_exit = __kvm_request_immediate_exit;
 	}
 
 	kvm_set_posted_intr_wakeup_handler(wakeup_handler);
@@ -7867,7 +7867,8 @@ static __init int hardware_setup(void)
 		nested_vmx_setup_ctls_msrs(&vmcs_config.nested,
 					   vmx_capability.ept, enable_apicv);
 
-		r = nested_vmx_hardware_setup(kvm_vmx_exit_handlers);
+		r = nested_vmx_hardware_setup(&vmx_x86_ops,
+					      kvm_vmx_exit_handlers);
 		if (r)
 			return r;
 	}
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
