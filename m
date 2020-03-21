Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E160F18E468
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 21:27:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZsNg1hBDCEc4UbH80w4NpMglUA7+uJ0XVo87X4vn0Cc=; b=L/ha9whLJ2ET9j
	qI7WeUtTuMiztQjX9K77AT4e6KiJSs3zB2VZzQ5x5H8+lOZHaNL43w/bRH3rcTlZBK2KPRHHwbGcb
	jbklvYdj7ta6vH4nJUDEu59oZcl1d2qoNBv4oa5AqxeHygmI8oYxXsnY/lJPJt2+PJmj8fv4Jk7N7
	57GxbQHMgPpU+Q52jIPus6RPZsq2VMQAMhW9NKxDlPQ3sULaXBp0J9/J7Ous3i0mEh3R1Q2PWsI/3
	2Xcy1+KhPnuhk4cRvQZc/K6dAtJXGbO0YxtA3axZFmH8Gc9GnHzsEFCiuE4PA3j38xrOU7WEBnSM/
	IZhWU5bHfevvsoMoMUcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFkhs-0000s5-3g; Sat, 21 Mar 2020 20:26:56 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFkh8-0000NO-Ni
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 20:26:13 +0000
IronPort-SDR: 71gvmQ+foltx55RFrCenmF1Q3KYcoFXjQqoZMBP9c2yCoZvQPW+l1QE6OM+/VDaJrNTygqioM+
 pfUH2pq6MLiw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2020 13:26:05 -0700
IronPort-SDR: scn7pZUQDpTF3SQ9rG37pbebi3mtbty3HtYRPENAnoNHIWqdnH+Q8Df4p/ny8v2N2HzwcoFbwe
 7DKC+AlU6sCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,289,1580803200"; d="scan'208";a="280773535"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga002.fm.intel.com with ESMTP; 21 Mar 2020 13:26:04 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v3 1/9] KVM: Pass kvm_init()'s opaque param to additional arch
 funcs
Date: Sat, 21 Mar 2020 13:25:55 -0700
Message-Id: <20200321202603.19355-2-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200321202603.19355-1-sean.j.christopherson@intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_132610_825874_C110D40A 
X-CRM114-Status: GOOD (  14.08  )
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

Pass @opaque to kvm_arch_hardware_setup() and
kvm_arch_check_processor_compat() to allow architecture specific code to
reference @opaque without having to stash it away in a temporary global
variable.  This will enable x86 to separate its vendor specific callback
ops, which are passed via @opaque, into "init" and "runtime" ops without
having to stash away the "init" ops.

No functional change intended.

Reviewed-by: Cornelia Huck <cohuck@redhat.com>
Tested-by: Cornelia Huck <cohuck@redhat.com> #s390
Acked-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/mips/kvm/mips.c       |  4 ++--
 arch/powerpc/kvm/powerpc.c |  4 ++--
 arch/s390/kvm/kvm-s390.c   |  4 ++--
 arch/x86/kvm/x86.c         |  4 ++--
 include/linux/kvm_host.h   |  4 ++--
 virt/kvm/arm/arm.c         |  4 ++--
 virt/kvm/kvm_main.c        | 18 ++++++++++++++----
 7 files changed, 26 insertions(+), 16 deletions(-)

diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index 78507757ba9a..8f05dd0a0f4e 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -118,12 +118,12 @@ void kvm_arch_hardware_disable(void)
 	kvm_mips_callbacks->hardware_disable();
 }
 
-int kvm_arch_hardware_setup(void)
+int kvm_arch_hardware_setup(void *opaque)
 {
 	return 0;
 }
 
-int kvm_arch_check_processor_compat(void)
+int kvm_arch_check_processor_compat(void *opaque)
 {
 	return 0;
 }
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index 62ee66d5eb6f..f54574564f1e 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -415,12 +415,12 @@ int kvm_arch_hardware_enable(void)
 	return 0;
 }
 
-int kvm_arch_hardware_setup(void)
+int kvm_arch_hardware_setup(void *opaque)
 {
 	return 0;
 }
 
-int kvm_arch_check_processor_compat(void)
+int kvm_arch_check_processor_compat(void *opaque)
 {
 	return kvmppc_core_check_processor_compat();
 }
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 807ed6d722dd..0ac8eb29e5aa 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -235,7 +235,7 @@ int kvm_arch_hardware_enable(void)
 	return 0;
 }
 
-int kvm_arch_check_processor_compat(void)
+int kvm_arch_check_processor_compat(void *opaque)
 {
 	return 0;
 }
@@ -302,7 +302,7 @@ static struct notifier_block kvm_clock_notifier = {
 	.notifier_call = kvm_clock_sync,
 };
 
-int kvm_arch_hardware_setup(void)
+int kvm_arch_hardware_setup(void *opaque)
 {
 	gmap_notifier.notifier_call = kvm_gmap_notifier;
 	gmap_register_pte_notifier(&gmap_notifier);
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index e54c6ad628a8..0f08e1b4e762 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9621,7 +9621,7 @@ void kvm_arch_hardware_disable(void)
 	drop_user_return_notifiers();
 }
 
-int kvm_arch_hardware_setup(void)
+int kvm_arch_hardware_setup(void *opaque)
 {
 	int r;
 
@@ -9662,7 +9662,7 @@ void kvm_arch_hardware_unsetup(void)
 	kvm_x86_ops->hardware_unsetup();
 }
 
-int kvm_arch_check_processor_compat(void)
+int kvm_arch_check_processor_compat(void *opaque)
 {
 	struct cpuinfo_x86 *c = &cpu_data(smp_processor_id());
 
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 35bc52e187a2..bc48d8fef3e1 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -886,9 +886,9 @@ void kvm_arch_create_vcpu_debugfs(struct kvm_vcpu *vcpu);
 
 int kvm_arch_hardware_enable(void);
 void kvm_arch_hardware_disable(void);
-int kvm_arch_hardware_setup(void);
+int kvm_arch_hardware_setup(void *opaque);
 void kvm_arch_hardware_unsetup(void);
-int kvm_arch_check_processor_compat(void);
+int kvm_arch_check_processor_compat(void *opaque);
 int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu);
 bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu);
 int kvm_arch_vcpu_should_kick(struct kvm_vcpu *vcpu);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index bfdba1caf59d..57e5a143b0db 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -64,12 +64,12 @@ int kvm_arch_vcpu_should_kick(struct kvm_vcpu *vcpu)
 	return kvm_vcpu_exiting_guest_mode(vcpu) == IN_GUEST_MODE;
 }
 
-int kvm_arch_hardware_setup(void)
+int kvm_arch_hardware_setup(void *opaque)
 {
 	return 0;
 }
 
-int kvm_arch_check_processor_compat(void)
+int kvm_arch_check_processor_compat(void *opaque)
 {
 	return 0;
 }
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 28eae681859f..f4e79c891c25 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -4645,14 +4645,22 @@ struct kvm_vcpu * __percpu *kvm_get_running_vcpus(void)
         return &kvm_running_vcpu;
 }
 
-static void check_processor_compat(void *rtn)
+struct kvm_cpu_compat_check {
+	void *opaque;
+	int *ret;
+};
+
+static void check_processor_compat(void *data)
 {
-	*(int *)rtn = kvm_arch_check_processor_compat();
+	struct kvm_cpu_compat_check *c = data;
+
+	*c->ret = kvm_arch_check_processor_compat(c->opaque);
 }
 
 int kvm_init(void *opaque, unsigned vcpu_size, unsigned vcpu_align,
 		  struct module *module)
 {
+	struct kvm_cpu_compat_check c;
 	int r;
 	int cpu;
 
@@ -4676,12 +4684,14 @@ int kvm_init(void *opaque, unsigned vcpu_size, unsigned vcpu_align,
 		goto out_free_0;
 	}
 
-	r = kvm_arch_hardware_setup();
+	r = kvm_arch_hardware_setup(opaque);
 	if (r < 0)
 		goto out_free_1;
 
+	c.ret = &r;
+	c.opaque = opaque;
 	for_each_online_cpu(cpu) {
-		smp_call_function_single(cpu, check_processor_compat, &r, 1);
+		smp_call_function_single(cpu, check_processor_compat, &c, 1);
 		if (r < 0)
 			goto out_free_2;
 	}
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
