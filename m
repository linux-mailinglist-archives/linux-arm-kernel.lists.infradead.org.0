Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6617E14D47D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 01:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iDmcaqaRMrOOYh2NIPtN46WQWs63OTGxJV0mnMiI0Q=; b=Bl1dX8QQd0tm6p
	o69/qHKGoGvR/9pymqrLDeVmmLbQQApZ7/HWigL5gexI4wka2AN7dnAIlL+bW8leLNpbsU+FrU4js
	l4PvVJ5kTkeAi3KE2zXTU+aC8x0g45GJUNyStaiIcnJaZ8kXy5jUY2sXeP/R2KhQiyZVvwwyg/x9c
	DmSTK5+D7pdYVCHfzPELsp2Rs7xr6aEua/mWN8onfyc145BO6s4MPWyTF/qK7kAql3j3LQ/+EeNWV
	/oBq3SfaaWL1ofBSkAYojhks9oxTDE+nKmMrY4yXQ6KNed0ygko4JgsgI+EnwrIwzRb8rBWMZM2Yl
	fgSHt/0WcdF+qotLKmMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwxQw-0003Y6-6A; Thu, 30 Jan 2020 00:11:46 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwxPi-0002Z1-Sd
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 00:10:32 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 16:10:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,379,1574150400"; d="scan'208";a="261990364"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2020 16:10:27 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 4/5] KVM: VMX: Configure runtime hooks using vmx_x86_ops
Date: Wed, 29 Jan 2020 16:10:22 -0800
Message-Id: <20200130001023.24339-5-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200130001023.24339-1-sean.j.christopherson@intel.com>
References: <20200130001023.24339-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_161031_021557_7C00A19B 
X-CRM114-Status: GOOD (  13.58  )
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
index 7608924ee8c1..ebea848b86e9 100644
--- a/arch/x86/kvm/vmx/nested.c
+++ b/arch/x86/kvm/vmx/nested.c
@@ -6157,7 +6157,8 @@ void nested_vmx_hardware_unsetup(void)
 	}
 }
 
-__init int nested_vmx_hardware_setup(int (*exit_handlers[])(struct kvm_vcpu *))
+__init int nested_vmx_hardware_setup(struct kvm_x86_ops *ops,
+				     int (*exit_handlers[])(struct kvm_vcpu *))
 {
 	int i;
 
@@ -6193,12 +6194,12 @@ __init int nested_vmx_hardware_setup(int (*exit_handlers[])(struct kvm_vcpu *))
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
index e32d3b85ddcb..f3bd438b29bc 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -7784,10 +7784,10 @@ static __init int hardware_setup(void)
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
@@ -7795,8 +7795,8 @@ static __init int hardware_setup(void)
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
@@ -7811,7 +7811,7 @@ static __init int hardware_setup(void)
 
 	if (!cpu_has_vmx_apicv()) {
 		enable_apicv = 0;
-		kvm_x86_ops->sync_pir_to_irr = NULL;
+		vmx_x86_ops.sync_pir_to_irr = NULL;
 	}
 
 	if (cpu_has_vmx_tsc_scaling()) {
@@ -7835,10 +7835,10 @@ static __init int hardware_setup(void)
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
@@ -7866,9 +7866,9 @@ static __init int hardware_setup(void)
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
@@ -7884,7 +7884,8 @@ static __init int hardware_setup(void)
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
