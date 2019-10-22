Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9510CDFB7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HN/Kd4hOonqguC0OrmSxwSX7iCAQlFGQPMRW/vPKuzc=; b=emewea9b3Wpfqt
	MS7qDuHZ7VxiVEtKQRiS8wE/kOYAos0qE5DvpTQQDFbi8x4TouwAFbAeGgG5ugGpRzV89BkjxeUGm
	HJtS50GUUWjRQ9d/3NuKVPi4OCxg1mVFcCnOQNEFL/RI1IZL2Kk2RKvkPYQdr4zw+MlwuNPWjryIw
	EixdT/OFQbbyUkWRwerln9Bg3fqKJ5gm88a7j0twvqPpP66O7a5MUreS+etPJqIM82kFj+m68+GVP
	3jJHtjX1jOxw6ixTzoGyw7u9yKf30UzNfygyP9TTZw/fgoN2SJn1qP8lYBpsBjULsaV/7/WTyINCO
	FWEdRgxRArNu0o73tYEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjf6-0002UP-I8; Tue, 22 Oct 2019 02:12:40 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjT7-0003sH-TQ
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 02:00:20 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 19:00:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196294026"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 19:00:04 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 45/45] KVM: Move vcpu->run page allocation out of
 kvm_vcpu_init()
Date: Mon, 21 Oct 2019 18:59:25 -0700
Message-Id: <20191022015925.31916-46-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022015925.31916-1-sean.j.christopherson@intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_190018_051238_F630BEB5 
X-CRM114-Status: GOOD (  14.06  )
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

Open code the allocation and freeing of the vcpu->run page in
kvm_vm_ioctl_create_vcpu() and kvm_vcpu_destroy() respectively.  Doing
so allows kvm_vcpu_init() to be a pure init function and eliminates
kvm_vcpu_uninit() entirely.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 virt/kvm/kvm_main.c | 34 +++++++++++++---------------------
 1 file changed, 13 insertions(+), 21 deletions(-)

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index c079b22032fa..e532c6e606c0 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -287,10 +287,8 @@ void kvm_reload_remote_mmus(struct kvm *kvm)
 	kvm_make_all_cpus_request(kvm, KVM_REQ_MMU_RELOAD);
 }
 
-static int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
+static void kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
 {
-	struct page *page;
-
 	mutex_init(&vcpu->mutex);
 	vcpu->cpu = -1;
 	vcpu->kvm = kvm;
@@ -302,23 +300,11 @@ static int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
 	vcpu->pre_pcpu = -1;
 	INIT_LIST_HEAD(&vcpu->blocked_vcpu_list);
 
-	page = alloc_page(GFP_KERNEL | __GFP_ZERO);
-	if (!page)
-		return -ENOMEM;
-	vcpu->run = page_address(page);
-
 	kvm_vcpu_set_in_spin_loop(vcpu, false);
 	kvm_vcpu_set_dy_eligible(vcpu, false);
 	vcpu->preempted = false;
 	vcpu->ready = false;
 	preempt_notifier_init(&vcpu->preempt_notifier, &kvm_preempt_ops);
-
-	return 0;
-}
-
-static void kvm_vcpu_uninit(struct kvm_vcpu *vcpu)
-{
-	free_page((unsigned long)vcpu->run);
 }
 
 void kvm_vcpu_destroy(struct kvm_vcpu *vcpu)
@@ -332,7 +318,7 @@ void kvm_vcpu_destroy(struct kvm_vcpu *vcpu)
 	 */
 	put_pid(rcu_dereference_protected(vcpu->pid, 1));
 
-	kvm_vcpu_uninit(vcpu);
+	free_page((unsigned long)vcpu->run);
 	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 EXPORT_SYMBOL_GPL(kvm_vcpu_destroy);
@@ -2636,6 +2622,7 @@ static int kvm_vm_ioctl_create_vcpu(struct kvm *kvm, u32 id)
 {
 	int r;
 	struct kvm_vcpu *vcpu;
+	struct page *page;
 
 	if (id >= KVM_MAX_VCPU_ID)
 		return -EINVAL;
@@ -2659,13 +2646,18 @@ static int kvm_vm_ioctl_create_vcpu(struct kvm *kvm, u32 id)
 		goto vcpu_decrement;
 	}
 
-	r = kvm_vcpu_init(vcpu, kvm, id);
-	if (r)
+	page = alloc_page(GFP_KERNEL | __GFP_ZERO);
+	if (!page) {
+		r = -ENOMEM;
 		goto vcpu_free;
+	}
+	vcpu->run = page_address(page);
+
+	kvm_vcpu_init(vcpu, kvm, id);
 
 	r = kvm_arch_vcpu_create(vcpu);
 	if (r)
-		goto vcpu_uninit;
+		goto vcpu_free_run_page;
 
 	kvm_create_vcpu_debugfs(vcpu);
 
@@ -2702,8 +2694,8 @@ static int kvm_vm_ioctl_create_vcpu(struct kvm *kvm, u32 id)
 	mutex_unlock(&kvm->lock);
 	debugfs_remove_recursive(vcpu->debugfs_dentry);
 	kvm_arch_vcpu_destroy(vcpu);
-vcpu_uninit:
-	kvm_vcpu_uninit(vcpu);
+vcpu_free_run_page:
+	free_page((unsigned long)vcpu->run);
 vcpu_free:
 	kmem_cache_free(kvm_vcpu_cache, vcpu);
 vcpu_decrement:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
