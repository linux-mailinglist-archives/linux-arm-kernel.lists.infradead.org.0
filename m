Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2178812562C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuKFA7kV9HAoO58xqvNz1wu8dT14hJbV8PGmQ3n0Qkk=; b=rBOpH57a4sRZ6j
	6/5cQp/AhcDeMxfVF+kkZ+OhfI2xz/PP2z2uaPbs7bN+eo9Wrfp2wjHOEKukD/Zd7hrY+uVhEM6PI
	zJ5KS2WQaz17zwyelDxsOHbKr8y/XdXldaDrG7gzeuESSYtRkoSWMUUx9Iz9R3GfH+CBtmnL8rW82
	cUhlOAEpncR7XdmgOWgR4N0bnkEEOOivIn87OpAcA7d5+Qt7uMSFfbuJLfjDkGSz59MkMtf3XrN1e
	ZXFRGEzdV7EGHeuY45eL/NWFkElsVPhr4bnuQ2P/451ldDip4zIdYNmkIlib7TzUtJ5/TShTGZM7+
	Vzw/LE7LAvgRva/5791Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhPq-0004Xr-8R; Wed, 18 Dec 2019 22:03:34 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIP-0004yV-5o
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:55:56 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108109"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:43 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 24/45] KVM: Add kvm_arch_vcpu_precreate() to handle
 pre-allocation issues
Date: Wed, 18 Dec 2019 13:55:09 -0800
Message-Id: <20191218215530.2280-25-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135553_300694_00C2B0C9 
X-CRM114-Status: GOOD (  15.74  )
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

Add a pre-allocation arch hook to handle checks that are currently done
by arch specific code prior to allocating the vCPU object.  This paves
the way for moving the allocation to common KVM code.

Acked-by: Christoffer Dall <christoffer.dall@arm.com>
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
index a2ba708f5cec..998ef60ac463 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -720,6 +720,11 @@ void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
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
index d9e6bf3d54f0..57c6838dff37 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -3035,15 +3035,19 @@ int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
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
index cf35169733cd..c8b875aefeee 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9089,17 +9089,21 @@ static void fx_init(struct kvm_vcpu *vcpu)
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
index a3f7ab881846..7c57f1a5d7b3 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -874,6 +874,7 @@ void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu);
 
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu);
 void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu);
+int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id);
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id);
 int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu);
 void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 25b5e4c9b8db..3cdd1c3be2c7 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -279,21 +279,22 @@ void kvm_arch_free_vm(struct kvm *kvm)
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
index 3aa21bec028d..281da692c774 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -2728,6 +2728,10 @@ static int kvm_vm_ioctl_create_vcpu(struct kvm *kvm, u32 id)
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
