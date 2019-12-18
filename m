Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7829125620
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:00:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5oz6zPczsBbbuA6x3d1B+ceE5Wk/zvJUErTUXfl+X30=; b=CoUcCNeM6t/fsQ
	CMNRSSghiSd/NDXkcpm9XR+4a96U/0VeM7HnvP0ckz4ECuo7lMl675/vY+kgqVSNdel4khN1gCTF6
	IYwU0TFVuG7SZVDKyABOojiO6QIglrNdkxX7JZ8Y8H28juaczecWI9o2YOVlfx/hHCgpAbkHIy4k7
	as6AgpNC1lbRJLS1RNN5To5PK0On3nUTFoV2igVqQBzSIvFeg5nv3qdE0Gob5omE5yn1Qt9GJYL/3
	xo2sdy6x7gKfdj3HX+6DU9bG8tMsgqPs/AZ/JtqNN59qnAExkXaPRmMaHej4JEIPZVprvbl+VDqvG
	sAo2TerqIBavWS2W87jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhNE-0001y2-V4; Wed, 18 Dec 2019 22:00:52 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIH-0004ya-Hx
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:55:48 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108057"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:37 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 12/45] KVM: PPC: Allocate vcpu struct in common PPC code
Date: Wed, 18 Dec 2019 13:54:57 -0800
Message-Id: <20191218215530.2280-13-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135545_632295_F06B7A0D 
X-CRM114-Status: GOOD (  16.96  )
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

Move allocation of all flavors of PPC vCPUs to common PPC code.  All
variants either allocate 'struct kvm_vcpu' directly, or require that
the embedded 'struct kvm_vcpu' member be located at offset 0, i.e.
guarantee that the allocation can be directly interpreted as a 'struct
kvm_vcpu' object.

Remove the message from the build-time assertion regarding placement of
the struct, as compatibility with the arch usercopy region is no longer
the sole dependent on 'struct kvm_vcpu' being at offset zero.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/powerpc/include/asm/kvm_ppc.h |  7 ++++---
 arch/powerpc/kvm/book3s.c          |  5 +++--
 arch/powerpc/kvm/book3s_hv.c       | 20 +++++---------------
 arch/powerpc/kvm/book3s_pr.c       | 18 +++++-------------
 arch/powerpc/kvm/booke.c           |  5 +++--
 arch/powerpc/kvm/e500.c            | 24 ++++++------------------
 arch/powerpc/kvm/e500mc.c          | 22 +++++-----------------
 arch/powerpc/kvm/powerpc.c         | 23 ++++++++++++++++++-----
 8 files changed, 49 insertions(+), 75 deletions(-)

diff --git a/arch/powerpc/include/asm/kvm_ppc.h b/arch/powerpc/include/asm/kvm_ppc.h
index 3d2f871241a8..8f77ca5ace6f 100644
--- a/arch/powerpc/include/asm/kvm_ppc.h
+++ b/arch/powerpc/include/asm/kvm_ppc.h
@@ -119,8 +119,8 @@ extern int kvmppc_xlate(struct kvm_vcpu *vcpu, ulong eaddr,
 			enum xlate_instdata xlid, enum xlate_readwrite xlrw,
 			struct kvmppc_pte *pte);
 
-extern struct kvm_vcpu *kvmppc_core_vcpu_create(struct kvm *kvm,
-                                                unsigned int id);
+extern int kvmppc_core_vcpu_create(struct kvm *kvm, struct kvm_vcpu *vcpu,
+				   unsigned int id);
 extern void kvmppc_core_vcpu_free(struct kvm_vcpu *vcpu);
 extern int kvmppc_core_vcpu_setup(struct kvm_vcpu *vcpu);
 extern int kvmppc_core_check_processor_compat(void);
@@ -274,7 +274,8 @@ struct kvmppc_ops {
 	void (*inject_interrupt)(struct kvm_vcpu *vcpu, int vec, u64 srr1_flags);
 	void (*set_msr)(struct kvm_vcpu *vcpu, u64 msr);
 	int (*vcpu_run)(struct kvm_run *run, struct kvm_vcpu *vcpu);
-	struct kvm_vcpu *(*vcpu_create)(struct kvm *kvm, unsigned int id);
+	int (*vcpu_create)(struct kvm *kvm, struct kvm_vcpu *vcpu,
+			   unsigned int id);
 	void (*vcpu_free)(struct kvm_vcpu *vcpu);
 	int (*check_requests)(struct kvm_vcpu *vcpu);
 	int (*get_dirty_log)(struct kvm *kvm, struct kvm_dirty_log *log);
diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
index 58a59ee998e2..13385656b90d 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -789,9 +789,10 @@ void kvmppc_decrementer_func(struct kvm_vcpu *vcpu)
 	kvm_vcpu_kick(vcpu);
 }
 
-struct kvm_vcpu *kvmppc_core_vcpu_create(struct kvm *kvm, unsigned int id)
+int kvmppc_core_vcpu_create(struct kvm *kvm, struct kvm_vcpu *vcpu,
+			    unsigned int id)
 {
-	return kvm->arch.kvm_ops->vcpu_create(kvm, id);
+	return kvm->arch.kvm_ops->vcpu_create(kvm, vcpu, id);
 }
 
 void kvmppc_core_vcpu_free(struct kvm_vcpu *vcpu)
diff --git a/arch/powerpc/kvm/book3s_hv.c b/arch/powerpc/kvm/book3s_hv.c
index d07d2f5273e5..3fb41fe24f58 100644
--- a/arch/powerpc/kvm/book3s_hv.c
+++ b/arch/powerpc/kvm/book3s_hv.c
@@ -2271,22 +2271,16 @@ static void debugfs_vcpu_init(struct kvm_vcpu *vcpu, unsigned int id)
 }
 #endif /* CONFIG_KVM_BOOK3S_HV_EXIT_TIMING */
 
-static struct kvm_vcpu *kvmppc_core_vcpu_create_hv(struct kvm *kvm,
-						   unsigned int id)
+static int kvmppc_core_vcpu_create_hv(struct kvm *kvm, struct kvm_vcpu *vcpu,
+				      unsigned int id)
 {
-	struct kvm_vcpu *vcpu;
 	int err;
 	int core;
 	struct kvmppc_vcore *vcore;
 
-	err = -ENOMEM;
-	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
-	if (!vcpu)
-		goto out;
-
 	err = kvm_vcpu_init(vcpu, kvm, id);
 	if (err)
-		goto free_vcpu;
+		return err;
 
 	vcpu->arch.shared = &vcpu->arch.shregs;
 #ifdef CONFIG_KVM_BOOK3S_PR_POSSIBLE
@@ -2383,14 +2377,11 @@ static struct kvm_vcpu *kvmppc_core_vcpu_create_hv(struct kvm *kvm,
 
 	debugfs_vcpu_init(vcpu, id);
 
-	return vcpu;
+	return 0;
 
 uninit_vcpu:
 	kvm_vcpu_uninit(vcpu);
-free_vcpu:
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
-out:
-	return ERR_PTR(err);
+	return err;
 }
 
 static int kvmhv_set_smt_mode(struct kvm *kvm, unsigned long smt_mode,
@@ -2445,7 +2436,6 @@ static void kvmppc_core_vcpu_free_hv(struct kvm_vcpu *vcpu)
 	unpin_vpa(vcpu->kvm, &vcpu->arch.vpa);
 	spin_unlock(&vcpu->arch.vpa_update_lock);
 	kvm_vcpu_uninit(vcpu);
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
 static int kvmppc_core_check_requests_hv(struct kvm_vcpu *vcpu)
diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
index 26ca62b6d773..0d7c8a7bcb7b 100644
--- a/arch/powerpc/kvm/book3s_pr.c
+++ b/arch/powerpc/kvm/book3s_pr.c
@@ -1744,21 +1744,16 @@ static int kvmppc_set_one_reg_pr(struct kvm_vcpu *vcpu, u64 id,
 	return r;
 }
 
-static struct kvm_vcpu *kvmppc_core_vcpu_create_pr(struct kvm *kvm,
-						   unsigned int id)
+static int kvmppc_core_vcpu_create_pr(struct kvm *kvm, struct kvm_vcpu *vcpu,
+				      unsigned int id)
 {
 	struct kvmppc_vcpu_book3s *vcpu_book3s;
-	struct kvm_vcpu *vcpu;
 	int err = -ENOMEM;
 	unsigned long p;
 
-	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
-	if (!vcpu)
-		goto out;
-
 	vcpu_book3s = vzalloc(sizeof(struct kvmppc_vcpu_book3s));
 	if (!vcpu_book3s)
-		goto free_vcpu;
+		goto out;
 	vcpu->arch.book3s = vcpu_book3s;
 
 #ifdef CONFIG_KVM_BOOK3S_32_HANDLER
@@ -1808,7 +1803,7 @@ static struct kvm_vcpu *kvmppc_core_vcpu_create_pr(struct kvm *kvm,
 	if (err < 0)
 		goto free_shared_page;
 
-	return vcpu;
+	return 0;
 
 free_shared_page:
 	free_page((unsigned long)vcpu->arch.shared);
@@ -1820,10 +1815,8 @@ static struct kvm_vcpu *kvmppc_core_vcpu_create_pr(struct kvm *kvm,
 free_vcpu3s:
 #endif
 	vfree(vcpu_book3s);
-free_vcpu:
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
 out:
-	return ERR_PTR(err);
+	return err;
 }
 
 static void kvmppc_core_vcpu_free_pr(struct kvm_vcpu *vcpu)
@@ -1836,7 +1829,6 @@ static void kvmppc_core_vcpu_free_pr(struct kvm_vcpu *vcpu)
 	kfree(vcpu->arch.shadow_vcpu);
 #endif
 	vfree(vcpu_book3s);
-	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
 static int kvmppc_vcpu_run_pr(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index be9a45874194..047c9f707704 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -2114,9 +2114,10 @@ int kvmppc_core_init_vm(struct kvm *kvm)
 	return kvm->arch.kvm_ops->init_vm(kvm);
 }
 
-struct kvm_vcpu *kvmppc_core_vcpu_create(struct kvm *kvm, unsigned int id)
+int kvmppc_core_vcpu_create(struct kvm *kvm, struct kvm_vcpu *vcpu,
+			    unsigned int id)
 {
-	return kvm->arch.kvm_ops->vcpu_create(kvm, id);
+	return kvm->arch.kvm_ops->vcpu_create(kvm, vcpu, id);
 }
 
 void kvmppc_core_vcpu_free(struct kvm_vcpu *vcpu)
diff --git a/arch/powerpc/kvm/e500.c b/arch/powerpc/kvm/e500.c
index 00649ca5fa9a..96d9cde3d2e3 100644
--- a/arch/powerpc/kvm/e500.c
+++ b/arch/powerpc/kvm/e500.c
@@ -433,26 +433,18 @@ static int kvmppc_set_one_reg_e500(struct kvm_vcpu *vcpu, u64 id,
 	return r;
 }
 
-static struct kvm_vcpu *kvmppc_core_vcpu_create_e500(struct kvm *kvm,
-						     unsigned int id)
+static int kvmppc_core_vcpu_create_e500(struct kvm *kvm, struct kvm_vcpu *vcpu,
+					unsigned int id)
 {
 	struct kvmppc_vcpu_e500 *vcpu_e500;
-	struct kvm_vcpu *vcpu;
 	int err;
 
-	BUILD_BUG_ON_MSG(offsetof(struct kvmppc_vcpu_e500, vcpu) != 0,
-		"struct kvm_vcpu must be at offset 0 for arch usercopy region");
+	BUILD_BUG_ON(offsetof(struct kvmppc_vcpu_e500, vcpu) != 0);
+	vcpu_e500 = to_e500(vcpu);
 
-	vcpu_e500 = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
-	if (!vcpu_e500) {
-		err = -ENOMEM;
-		goto out;
-	}
-
-	vcpu = &vcpu_e500->vcpu;
 	err = kvm_vcpu_init(vcpu, kvm, id);
 	if (err)
-		goto free_vcpu;
+		return err;
 
 	if (kvmppc_e500_id_table_alloc(vcpu_e500) == NULL) {
 		err = -ENOMEM;
@@ -477,10 +469,7 @@ static struct kvm_vcpu *kvmppc_core_vcpu_create_e500(struct kvm *kvm,
 	kvmppc_e500_id_table_free(vcpu_e500);
 uninit_vcpu:
 	kvm_vcpu_uninit(vcpu);
-free_vcpu:
-	kmem_cache_free(kvm_vcpu_cache, vcpu_e500);
-out:
-	return ERR_PTR(err);
+	return err;
 }
 
 static void kvmppc_core_vcpu_free_e500(struct kvm_vcpu *vcpu)
@@ -491,7 +480,6 @@ static void kvmppc_core_vcpu_free_e500(struct kvm_vcpu *vcpu)
 	kvmppc_e500_tlb_uninit(vcpu_e500);
 	kvmppc_e500_id_table_free(vcpu_e500);
 	kvm_vcpu_uninit(vcpu);
-	kmem_cache_free(kvm_vcpu_cache, vcpu_e500);
 }
 
 static int kvmppc_core_init_vm_e500(struct kvm *kvm)
diff --git a/arch/powerpc/kvm/e500mc.c b/arch/powerpc/kvm/e500mc.c
index c51f4bb086fd..aea588f73bf7 100644
--- a/arch/powerpc/kvm/e500mc.c
+++ b/arch/powerpc/kvm/e500mc.c
@@ -301,28 +301,21 @@ static int kvmppc_set_one_reg_e500mc(struct kvm_vcpu *vcpu, u64 id,
 	return r;
 }
 
-static struct kvm_vcpu *kvmppc_core_vcpu_create_e500mc(struct kvm *kvm,
-						       unsigned int id)
+static int kvmppc_core_vcpu_create_e500mc(struct kvm *kvm, struct kvm_vcpu *vcpu,
+					  unsigned int id)
 {
 	struct kvmppc_vcpu_e500 *vcpu_e500;
-	struct kvm_vcpu *vcpu;
 	int err;
 
 	BUILD_BUG_ON(offsetof(struct kvmppc_vcpu_e500, vcpu) != 0);
-
-	vcpu_e500 = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
-	if (!vcpu_e500) {
-		err = -ENOMEM;
-		goto out;
-	}
-	vcpu = &vcpu_e500->vcpu;
+	vcpu_e500 = to_e500(vcpu);
 
 	/* Invalid PIR value -- this LPID dosn't have valid state on any cpu */
 	vcpu->arch.oldpir = 0xffffffff;
 
 	err = kvm_vcpu_init(vcpu, kvm, id);
 	if (err)
-		goto free_vcpu;
+		return err;
 
 	err = kvmppc_e500_tlb_init(vcpu_e500);
 	if (err)
@@ -340,11 +333,7 @@ static struct kvm_vcpu *kvmppc_core_vcpu_create_e500mc(struct kvm *kvm,
 	kvmppc_e500_tlb_uninit(vcpu_e500);
 uninit_vcpu:
 	kvm_vcpu_uninit(vcpu);
-
-free_vcpu:
-	kmem_cache_free(kvm_vcpu_cache, vcpu_e500);
-out:
-	return ERR_PTR(err);
+	return err;
 }
 
 static void kvmppc_core_vcpu_free_e500mc(struct kvm_vcpu *vcpu)
@@ -354,7 +343,6 @@ static void kvmppc_core_vcpu_free_e500mc(struct kvm_vcpu *vcpu)
 	free_page((unsigned long)vcpu->arch.shared);
 	kvmppc_e500_tlb_uninit(vcpu_e500);
 	kvm_vcpu_uninit(vcpu);
-	kmem_cache_free(kvm_vcpu_cache, vcpu_e500);
 }
 
 static int kvmppc_core_init_vm_e500mc(struct kvm *kvm)
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index 416fb3d2a1d0..fd978f681b66 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -723,12 +723,23 @@ void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
 {
 	struct kvm_vcpu *vcpu;
-	vcpu = kvmppc_core_vcpu_create(kvm, id);
-	if (!IS_ERR(vcpu)) {
-		vcpu->arch.wqp = &vcpu->wq;
-		kvmppc_create_vcpu_debugfs(vcpu, id);
-	}
+	int err;
+
+	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
+	if (!vcpu)
+		return ERR_PTR(-ENOMEM);
+
+	err = kvmppc_core_vcpu_create(kvm, vcpu, id);
+	if (err)
+		goto free_vcpu;
+
+	vcpu->arch.wqp = &vcpu->wq;
+	kvmppc_create_vcpu_debugfs(vcpu, id);
 	return vcpu;
+
+free_vcpu:
+	kmem_cache_free(kvm_vcpu_cache, vcpu);
+	return ERR_PTR(err);
 }
 
 void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
@@ -758,6 +769,8 @@ void kvm_arch_vcpu_free(struct kvm_vcpu *vcpu)
 	}
 
 	kvmppc_core_vcpu_free(vcpu);
+
+	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
 void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
