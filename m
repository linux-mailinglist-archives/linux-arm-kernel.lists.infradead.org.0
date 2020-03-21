Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B06618E45A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 21:26:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8pTeywveAvxZ12tNzfX97yaHV4OZE1UUm/lmBNpOV4=; b=t1PZUgWZeDDd0h
	aDt8kv/FEJqZcn1Wz0+XOhjdDw20T5QJy1liEEnAUS6+B8QmS+nNuJEI+yxm4e0sRkQH27J7ucSV2
	NrV6N8qZR4BpPXKwaV4W8z8rvPnkL+ba1T77lbMqLcmayaUjM3R/jZ72ad8nYWfP6a9KNdJu+oGLS
	VPlhabQaFOu1r1RB1b9MO89dmOdqBoTdHByYGQB2DCQz776b9vb2YE4AwrsmlqDnxENeXRT0QKItO
	rdQ94SxI2hhugrhHqEOX2yQcq/0Z2H5G2IHUWDtm28HQo8CdjIU8Hoq0G3bdblxgNv7gv9e4mDMTO
	fn7a2NnP+IcO+YJDj+fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFkhd-0000Za-DB; Sat, 21 Mar 2020 20:26:41 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFkh8-0000NZ-Lj
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 20:26:12 +0000
IronPort-SDR: WUKg2fR+NfmzPnYlcj7E4FVJqzSke/PouEZjPCcIZ48oaCSE27uY7HHTaIKi9aI5+Fth3YUN0Q
 2zOc+EKdi4NA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2020 13:26:06 -0700
IronPort-SDR: BUVJNNHlRThKyTU9dFmNUOVLY/obQ3IkbxXUUdftUhdb95lStNwyoKb4weq7HdN7yVr0471LqZ
 HiWHKp178kYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,289,1580803200"; d="scan'208";a="280773539"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga002.fm.intel.com with ESMTP; 21 Mar 2020 13:26:05 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v3 2/9] KVM: x86: Move init-only kvm_x86_ops to separate struct
Date: Sat, 21 Mar 2020 13:25:56 -0700
Message-Id: <20200321202603.19355-3-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200321202603.19355-1-sean.j.christopherson@intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_132610_806527_25FFFE18 
X-CRM114-Status: GOOD (  15.46  )
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

Move the kvm_x86_ops functions that are used only within the scope of
kvm_init() into a separate struct, kvm_x86_init_ops.  In addition to
identifying the init-only functions without restorting to code comments,
this also sets the stage for waiting until after ->hardware_setup() to
set kvm_x86_ops.  Setting kvm_x86_ops after ->hardware_setup() is
desirable as many of the hooks are not usable until ->hardware_setup()
completes.

No functional change intended.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/include/asm/kvm_host.h | 13 +++++++++----
 arch/x86/kvm/svm.c              | 15 ++++++++++-----
 arch/x86/kvm/vmx/vmx.c          | 16 +++++++++++-----
 arch/x86/kvm/x86.c              | 10 ++++++----
 4 files changed, 36 insertions(+), 18 deletions(-)

diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
index 9a183e9d4cb1..f4c5b49299ff 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1054,12 +1054,8 @@ static inline u16 kvm_lapic_irq_dest_mode(bool dest_mode_logical)
 }
 
 struct kvm_x86_ops {
-	int (*cpu_has_kvm_support)(void);          /* __init */
-	int (*disabled_by_bios)(void);             /* __init */
 	int (*hardware_enable)(void);
 	void (*hardware_disable)(void);
-	int (*check_processor_compatibility)(void);/* __init */
-	int (*hardware_setup)(void);               /* __init */
 	void (*hardware_unsetup)(void);            /* __exit */
 	bool (*cpu_has_accelerated_tpr)(void);
 	bool (*has_emulated_msr)(int index);
@@ -1260,6 +1256,15 @@ struct kvm_x86_ops {
 	int (*enable_direct_tlbflush)(struct kvm_vcpu *vcpu);
 };
 
+struct kvm_x86_init_ops {
+	int (*cpu_has_kvm_support)(void);
+	int (*disabled_by_bios)(void);
+	int (*check_processor_compatibility)(void);
+	int (*hardware_setup)(void);
+
+	struct kvm_x86_ops *runtime_ops;
+};
+
 struct kvm_arch_async_pf {
 	u32 token;
 	gfn_t gfn;
diff --git a/arch/x86/kvm/svm.c b/arch/x86/kvm/svm.c
index 2125c6ae5951..33e67c3389c2 100644
--- a/arch/x86/kvm/svm.c
+++ b/arch/x86/kvm/svm.c
@@ -7351,11 +7351,7 @@ static void svm_pre_update_apicv_exec_ctrl(struct kvm *kvm, bool activate)
 }
 
 static struct kvm_x86_ops svm_x86_ops __ro_after_init = {
-	.cpu_has_kvm_support = has_svm,
-	.disabled_by_bios = is_disabled,
-	.hardware_setup = svm_hardware_setup,
 	.hardware_unsetup = svm_hardware_teardown,
-	.check_processor_compatibility = svm_check_processor_compat,
 	.hardware_enable = svm_hardware_enable,
 	.hardware_disable = svm_hardware_disable,
 	.cpu_has_accelerated_tpr = svm_cpu_has_accelerated_tpr,
@@ -7480,9 +7476,18 @@ static struct kvm_x86_ops svm_x86_ops __ro_after_init = {
 	.check_nested_events = svm_check_nested_events,
 };
 
+static struct kvm_x86_init_ops svm_init_ops __initdata = {
+	.cpu_has_kvm_support = has_svm,
+	.disabled_by_bios = is_disabled,
+	.hardware_setup = svm_hardware_setup,
+	.check_processor_compatibility = svm_check_processor_compat,
+
+	.runtime_ops = &svm_x86_ops,
+};
+
 static int __init svm_init(void)
 {
-	return kvm_init(&svm_x86_ops, sizeof(struct vcpu_svm),
+	return kvm_init(&svm_init_ops, sizeof(struct vcpu_svm),
 			__alignof__(struct vcpu_svm), THIS_MODULE);
 }
 
diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
index 07299a957d4a..ffcdcc86f5b7 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -7842,11 +7842,8 @@ static bool vmx_check_apicv_inhibit_reasons(ulong bit)
 }
 
 static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
-	.cpu_has_kvm_support = cpu_has_kvm_support,
-	.disabled_by_bios = vmx_disabled_by_bios,
-	.hardware_setup = hardware_setup,
 	.hardware_unsetup = hardware_unsetup,
-	.check_processor_compatibility = vmx_check_processor_compat,
+
 	.hardware_enable = hardware_enable,
 	.hardware_disable = hardware_disable,
 	.cpu_has_accelerated_tpr = report_flexpriority,
@@ -7981,6 +7978,15 @@ static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
 	.apic_init_signal_blocked = vmx_apic_init_signal_blocked,
 };
 
+static struct kvm_x86_init_ops vmx_init_ops __initdata = {
+	.cpu_has_kvm_support = cpu_has_kvm_support,
+	.disabled_by_bios = vmx_disabled_by_bios,
+	.check_processor_compatibility = vmx_check_processor_compat,
+	.hardware_setup = hardware_setup,
+
+	.runtime_ops = &vmx_x86_ops,
+};
+
 static void vmx_cleanup_l1d_flush(void)
 {
 	if (vmx_l1d_flush_pages) {
@@ -8065,7 +8071,7 @@ static int __init vmx_init(void)
 	}
 #endif
 
-	r = kvm_init(&vmx_x86_ops, sizeof(struct vcpu_vmx),
+	r = kvm_init(&vmx_init_ops, sizeof(struct vcpu_vmx),
 		     __alignof__(struct vcpu_vmx), THIS_MODULE);
 	if (r)
 		return r;
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 0f08e1b4e762..20f989d1bba8 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -7298,8 +7298,8 @@ static struct notifier_block pvclock_gtod_notifier = {
 
 int kvm_arch_init(void *opaque)
 {
+	struct kvm_x86_init_ops *ops = opaque;
 	int r;
-	struct kvm_x86_ops *ops = opaque;
 
 	if (kvm_x86_ops) {
 		printk(KERN_ERR "kvm: already loaded the other module\n");
@@ -7354,7 +7354,7 @@ int kvm_arch_init(void *opaque)
 	if (r)
 		goto out_free_percpu;
 
-	kvm_x86_ops = ops;
+	kvm_x86_ops = ops->runtime_ops;
 
 	kvm_mmu_set_mask_ptes(PT_USER_MASK, PT_ACCESSED_MASK,
 			PT_DIRTY_MASK, PT64_NX_MASK, 0,
@@ -9623,6 +9623,7 @@ void kvm_arch_hardware_disable(void)
 
 int kvm_arch_hardware_setup(void *opaque)
 {
+	struct kvm_x86_init_ops *ops = opaque;
 	int r;
 
 	rdmsrl_safe(MSR_EFER, &host_efer);
@@ -9630,7 +9631,7 @@ int kvm_arch_hardware_setup(void *opaque)
 	if (boot_cpu_has(X86_FEATURE_XSAVES))
 		rdmsrl(MSR_IA32_XSS, host_xss);
 
-	r = kvm_x86_ops->hardware_setup();
+	r = ops->hardware_setup();
 	if (r != 0)
 		return r;
 
@@ -9665,13 +9666,14 @@ void kvm_arch_hardware_unsetup(void)
 int kvm_arch_check_processor_compat(void *opaque)
 {
 	struct cpuinfo_x86 *c = &cpu_data(smp_processor_id());
+	struct kvm_x86_init_ops *ops = opaque;
 
 	WARN_ON(!irqs_disabled());
 
 	if (kvm_host_cr4_reserved_bits(c) != cr4_reserved_bits)
 		return -EIO;
 
-	return kvm_x86_ops->check_processor_compatibility();
+	return ops->check_processor_compatibility();
 }
 
 bool kvm_vcpu_is_reset_bsp(struct kvm_vcpu *vcpu)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
