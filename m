Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63A4DFB5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0onsMu4BMutWiHoM0+E3pAnwj5QlhdMBfyFzg0kKWo=; b=fNXGo0BB5X1386
	+jGKhIxAmq9RpGOO7BU1e+63ir+nm+wuRGBq3EoWz7Qv7noDbPwuxrmRdBh9GK10fF9IgDVpA2uLT
	gHiecWfHfUMqNka5irFNQ2h/6vGMt6kvh67+xdNdjojsXSa7Ltd6VUKMt6oqmkTdHKj0imtSGnRHB
	8OUR8OdekjLsvAtrOW0dMhF2UVGj0n9h1vTpslajhNRpN1Ewc1Em1zFxxHYfuv+XOYdwemQUFvIdN
	gOSxI1oiOkc0DcPl2H1U8UuU3eXm9Ga7HeJGecsbXna+8HDdSLQtEeSpYIMXI3SVF9s3tl5mNGthO
	teHNY5yLwbecaSPiTRNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjaH-0004mE-3W; Tue, 22 Oct 2019 02:07:41 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjSh-0003sj-3Q
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 01:59:53 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 18:59:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196293847"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 18:59:48 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 24/45] KVM: Add kvm_arch_vcpu_precreate() to handle
 pre-allocation issues
Date: Mon, 21 Oct 2019 18:59:04 -0700
Message-Id: <20191022015925.31916-25-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022015925.31916-1-sean.j.christopherson@intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_185951_306422_C2A927B5 
X-CRM114-Status: GOOD (  16.15  )
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

Add a pre-allocation arch hook to handle checks that are currently done
by arch specific code prior to allocating the vCPU object.  This paves
the way for moving the allocation to common KVM code.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/mips/kvm/mips.c       |  5 +++++
 arch/powerpc/kvm/powerpc.c |  5 +++++
 arch/s390/kvm/kvm-s390.c   | 12 ++++++++----
 arch/x86/kvm/x86.c         | 14 +++++++++-----
 include/linux/kvm_host.h   |  1 +
 virt/kvm/arm/arm.c         | 21 +++++++++++----------
 virt/kvm/kvm_main.c        |  4 ++++
 7 files changed, 43 insertions(+), 19 deletions(-)

diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index d72bceb10439..2e14455aec4e 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -280,6 +280,11 @@ static inline void dump_handler(const char *symbol, void *start, void *end)
 	pr_debug("\tEND(%s)\n", symbol);
 }
 
+int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
+{
+	return 0;
+}
+
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
 {
 	int err, size;
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index 2cdc443cc09b..fa9ed239c546 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -716,6 +716,11 @@ void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
 	kvmppc_core_flush_memslot(kvm, slot);
 }
 
+int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
+{
+	return 0;
+}
+
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
 {
 	struct kvm_vcpu *vcpu;
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index d047e846e1b9..ddc90fa6abfd 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -3038,15 +3038,19 @@ int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
 	return rc;
 }
 
+int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
+{
+	if (!kvm_is_ucontrol(kvm) && !sca_can_add_vcpu(kvm, id))
+		return -EINVAL;
+	return 0;
+}
+
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
 				      unsigned int id)
 {
 	struct kvm_vcpu *vcpu;
 	struct sie_page *sie_page;
-	int rc = -EINVAL;
-
-	if (!kvm_is_ucontrol(kvm) && !sca_can_add_vcpu(kvm, id))
-		goto out;
+	int rc;
 
 	rc = -ENOMEM;
 
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 10ee982b214d..964b3d0c7bc6 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9010,17 +9010,21 @@ static void fx_init(struct kvm_vcpu *vcpu)
 	vcpu->arch.cr0 |= X86_CR0_ET;
 }
 
+int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
+{
+	if (kvm_check_tsc_unstable() && atomic_read(&kvm->online_vcpus) != 0)
+		pr_warn_once("kvm: SMP vm created on host with unstable TSC; "
+			     "guest TSC will not be reliable\n");
+
+	return 0;
+}
+
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
 						unsigned int id)
 {
 	struct kvm_vcpu *vcpu;
 	int r;
 
-	if (kvm_check_tsc_unstable() && atomic_read(&kvm->online_vcpus) != 0)
-		printk_once(KERN_WARNING
-		"kvm: SMP vm created on host with unstable TSC; "
-		"guest TSC will not be reliable\n");
-
 	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL_ACCOUNT);
 	if (!vcpu)
 		return ERR_PTR(-ENOMEM);
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index ff31470aabd3..8bc03884cf5c 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -855,6 +855,7 @@ void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu);
 
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu);
 void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu);
+int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id);
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id);
 int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu);
 void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 266d78fbc86c..03f6eec1841c 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -253,21 +253,22 @@ void kvm_arch_free_vm(struct kvm *kvm)
 		vfree(kvm);
 }
 
+int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
+{
+	if (irqchip_in_kernel(kvm) && vgic_initialized(kvm))
+		return -EBUSY;
+
+	if (id >= kvm->arch.max_vcpus)
+		return -EINVAL;
+
+	return 0;
+}
+
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
 {
 	int err;
 	struct kvm_vcpu *vcpu;
 
-	if (irqchip_in_kernel(kvm) && vgic_initialized(kvm)) {
-		err = -EBUSY;
-		goto out;
-	}
-
-	if (id >= kvm->arch.max_vcpus) {
-		err = -EINVAL;
-		goto out;
-	}
-
 	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
 	if (!vcpu) {
 		err = -ENOMEM;
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 67ef3f2e19e8..9c6791ad71e5 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -2653,6 +2653,10 @@ static int kvm_vm_ioctl_create_vcpu(struct kvm *kvm, u32 id)
 	kvm->created_vcpus++;
 	mutex_unlock(&kvm->lock);
 
+	r = kvm_arch_vcpu_precreate(kvm, id);
+	if (r)
+		goto vcpu_decrement;
+
 	vcpu = kvm_arch_vcpu_create(kvm, id);
 	if (IS_ERR(vcpu)) {
 		r = PTR_ERR(vcpu);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
