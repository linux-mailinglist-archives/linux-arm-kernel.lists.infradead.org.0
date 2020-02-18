Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9906F1637C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 00:55:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMcJXXZzBd19LOQnpLuUF4laO+8rT2c4OcdJN3fwBxE=; b=l95p0cFSKV8LKF
	Y8ct9/rrVoYsPkhkQ6EFCMR47m6DTq9B2ZOch+3G8lwOSyK7TAGH1KwSyyMHHRqgabkL2sqA/Jisb
	W17OIQWehWPXx7KhsTIpFNR1bVrfjXI93U3Cht+HDdsqzOjZHbR6l5TqZsyV6hnyFZIs/DXepWfIq
	hGRopHHnrOwLXHIO0G4UutYY/J/6v8Ull+VAyKg9d+yMUB3OJbeBWnZ6AV7CLO49tbVXfqR0iKhq4
	PASVo/WjgtkxGPkG+o0/ts1IlSocBYK0DRpvFhqCBMfzaoYhc3Zwb7mGTlx5pg6X9z4Om+Tm4HPOe
	zh7w5kPgQSgmwzmfDN6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4CiR-0001g4-Nh; Tue, 18 Feb 2020 23:55:47 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ChQ-0008IE-QY
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 23:54:46 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 15:54:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="224313159"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 18 Feb 2020 15:54:38 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 2/9] KVM: x86: Move init-only kvm_x86_ops to separate struct
Date: Tue, 18 Feb 2020 15:54:30 -0800
Message-Id: <20200218235437.20533-3-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218235437.20533-1-sean.j.christopherson@intel.com>
References: <20200218235437.20533-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_155444_947961_310A8D78 
X-CRM114-Status: GOOD (  15.46  )
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
index 4dffbc10d3f8..55e72b0e592b 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1042,12 +1042,8 @@ static inline u16 kvm_lapic_irq_dest_mode(bool dest_mode_logical)
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
@@ -1258,6 +1254,15 @@ struct kvm_x86_ops {
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
index a3e32d61d60c..b1faf6c33541 100644
--- a/arch/x86/kvm/svm.c
+++ b/arch/x86/kvm/svm.c
@@ -7375,11 +7375,7 @@ static void svm_pre_update_apicv_exec_ctrl(struct kvm *kvm, bool activate)
 }
 
 static struct kvm_x86_ops svm_x86_ops __ro_after_init = {
-	.cpu_has_kvm_support = has_svm,
-	.disabled_by_bios = is_disabled,
-	.hardware_setup = svm_hardware_setup,
 	.hardware_unsetup = svm_hardware_unsetup,
-	.check_processor_compatibility = svm_check_processor_compat,
 	.hardware_enable = svm_hardware_enable,
 	.hardware_disable = svm_hardware_disable,
 	.cpu_has_accelerated_tpr = svm_cpu_has_accelerated_tpr,
@@ -7515,9 +7511,18 @@ static struct kvm_x86_ops svm_x86_ops __ro_after_init = {
 	.apic_init_signal_blocked = svm_apic_init_signal_blocked,
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
index 9a6664886f2e..01aed5386ed2 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -7729,11 +7729,8 @@ static bool vmx_check_apicv_inhibit_reasons(ulong bit)
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
@@ -7881,6 +7878,15 @@ static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
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
@@ -7965,7 +7971,7 @@ static int __init vmx_init(void)
 	}
 #endif
 
-	r = kvm_init(&vmx_x86_ops, sizeof(struct vcpu_vmx),
+	r = kvm_init(&vmx_init_ops, sizeof(struct vcpu_vmx),
 		     __alignof__(struct vcpu_vmx), THIS_MODULE);
 	if (r)
 		return r;
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index bdd0a613b374..315297dec85c 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -7285,8 +7285,8 @@ static struct notifier_block pvclock_gtod_notifier = {
 
 int kvm_arch_init(void *opaque)
 {
+	struct kvm_x86_init_ops *ops = opaque;
 	int r;
-	struct kvm_x86_ops *ops = opaque;
 
 	if (kvm_x86_ops) {
 		printk(KERN_ERR "kvm: already loaded the other module\n");
@@ -7335,7 +7335,7 @@ int kvm_arch_init(void *opaque)
 	if (r)
 		goto out_free_percpu;
 
-	kvm_x86_ops = ops;
+	kvm_x86_ops = ops->runtime_ops;
 
 	kvm_mmu_set_mask_ptes(PT_USER_MASK, PT_ACCESSED_MASK,
 			PT_DIRTY_MASK, PT64_NX_MASK, 0,
@@ -9593,9 +9593,10 @@ void kvm_arch_hardware_disable(void)
 
 int kvm_arch_hardware_setup(void *opaque)
 {
+	struct kvm_x86_init_ops *ops = opaque;
 	int r;
 
-	r = kvm_x86_ops->hardware_setup();
+	r = ops->hardware_setup();
 	if (r != 0)
 		return r;
 
@@ -9630,13 +9631,14 @@ void kvm_arch_hardware_unsetup(void)
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
