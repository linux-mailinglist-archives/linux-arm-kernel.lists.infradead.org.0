Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FA612563C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:06:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZbsijzDMVMrDRbDGXNbDS4Yybs3ZkWr21TuACvt/og=; b=aIyaXGeVCsUWbA
	gosFv7/fyHKzsEopfqKyESW/r/bTeAv7GUgqz36M5IOEQsroHU8v9NMYq8LXcqTGIEgwFl2QNnr3F
	wGK/yvALQy0nSEp7smN6N54F6Dl5DkndNm4OgTi6oR+oQQi8XXE5Cqn0pB0yYEoYK58LIfreEV9QQ
	N5JOIEp4AlOTvxni3ClhGygD7/bUSTzQLAZGgVIyBRxcQDd954hzF3MX86qG4GJWOThY40oDhZu5g
	mPekAnEoAE7UcpX55iBxy6I3zWaVsrlXFfwcCgO5PB+Uy2A4n6H8WkUnoOVpBYz03Y1XPd7bAhTFe
	71f62NZWNGudt6hzOnbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhSC-00089R-2o; Wed, 18 Dec 2019 22:06:00 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIT-0005Ct-EW
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:56:02 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108191"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:51 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 43/45] KVM: Drop kvm_arch_vcpu_init() and
 kvm_arch_vcpu_uninit()
Date: Wed, 18 Dec 2019 13:55:28 -0800
Message-Id: <20191218215530.2280-44-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135557_599541_8813959C 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Remove kvm_arch_vcpu_init() and kvm_arch_vcpu_uninit() now that all
arch specific implementations are nops.

Acked-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/arm/include/asm/kvm_host.h   |  1 -
 arch/arm64/include/asm/kvm_host.h |  1 -
 arch/arm64/kvm/reset.c            |  5 -----
 arch/mips/kvm/mips.c              | 10 ----------
 arch/powerpc/kvm/powerpc.c        | 10 ----------
 arch/s390/include/asm/kvm_host.h  |  1 -
 arch/s390/kvm/kvm-s390.c          |  5 -----
 arch/x86/kvm/x86.c                | 10 ----------
 include/linux/kvm_host.h          |  3 ---
 virt/kvm/arm/arm.c                |  5 -----
 virt/kvm/kvm_main.c               | 16 ++--------------
 11 files changed, 2 insertions(+), 65 deletions(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index de81dd897a30..e26cad6d11b3 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -363,7 +363,6 @@ struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
 static inline bool kvm_arch_requires_vhe(void) { return false; }
 static inline void kvm_arch_hardware_unsetup(void) {}
 static inline void kvm_arch_sync_events(struct kvm *kvm) {}
-static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arm_vcpu_destroy(struct kvm_vcpu *vcpu) {}
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index b1de2b147729..7aef2e4114d8 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -54,7 +54,6 @@ int kvm_arm_init_sve(void);
 int __attribute_const__ kvm_target_cpu(void);
 int kvm_reset_vcpu(struct kvm_vcpu *vcpu);
 void kvm_arm_vcpu_destroy(struct kvm_vcpu *vcpu);
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu);
 int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext);
 void __extended_idmap_trampoline(phys_addr_t boot_pgd, phys_addr_t idmap_start);
 
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index ff3512a0ca97..30b7ea680f66 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -204,11 +204,6 @@ bool kvm_arm_vcpu_is_finalized(struct kvm_vcpu *vcpu)
 	return true;
 }
 
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
-{
-
-}
-
 void kvm_arm_vcpu_destroy(struct kvm_vcpu *vcpu)
 {
 	kfree(vcpu->arch.sve_state);
diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index 879a7cbd5b54..2606f3f02b54 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -1230,16 +1230,6 @@ static enum hrtimer_restart kvm_mips_comparecount_wakeup(struct hrtimer *timer)
 	return kvm_mips_count_timeout(vcpu);
 }
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
-{
-
-}
-
 int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
 				  struct kvm_translation *tr)
 {
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index 91cf94d4191e..80f2d1a3ca63 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -801,16 +801,6 @@ static enum hrtimer_restart kvmppc_decrementer_wakeup(struct hrtimer *timer)
 	return HRTIMER_NORESTART;
 }
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
-{
-
-}
-
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 {
 #ifdef CONFIG_BOOKE
diff --git a/arch/s390/include/asm/kvm_host.h b/arch/s390/include/asm/kvm_host.h
index 02f4c21c57f6..11ecc4071a29 100644
--- a/arch/s390/include/asm/kvm_host.h
+++ b/arch/s390/include/asm/kvm_host.h
@@ -914,7 +914,6 @@ extern int kvm_s390_gisc_unregister(struct kvm *kvm, u32 gisc);
 
 static inline void kvm_arch_hardware_disable(void) {}
 static inline void kvm_arch_sync_events(struct kvm *kvm) {}
-static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_free_memslot(struct kvm *kvm,
 		struct kvm_memory_slot *free, struct kvm_memory_slot *dont) {}
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index bcdd542b96a2..c059b86aacd4 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -2700,11 +2700,6 @@ static int sca_can_add_vcpu(struct kvm *kvm, unsigned int id)
 	return rc == 0 && id < KVM_S390_ESCA_CPU_SLOTS;
 }
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 /* needs disabled preemption to protect from TOD sync and vcpu_load/put */
 static void __start_cpu_timer_accounting(struct kvm_vcpu *vcpu)
 {
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 24671f487645..292f1e53a758 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9485,16 +9485,6 @@ bool kvm_vcpu_is_bsp(struct kvm_vcpu *vcpu)
 struct static_key kvm_no_apic_vcpu __read_mostly;
 EXPORT_SYMBOL_GPL(kvm_no_apic_vcpu);
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
-{
-
-}
-
 void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu)
 {
 	struct kvm_pmu *pmu = vcpu_to_pmu(vcpu);
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 792b122e44fa..aa28646d38be 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -864,9 +864,6 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run);
 int kvm_arch_init(void *opaque);
 void kvm_arch_exit(void);
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu);
-void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu);
-
 void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu);
 
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index f6c641136501..ced72748802f 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -360,11 +360,6 @@ void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
 	preempt_enable();
 }
 
-int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
-{
-	return 0;
-}
-
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 {
 	int *last_ran;
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index f76b2155dfee..21533a472ead 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -324,7 +324,6 @@ void kvm_reload_remote_mmus(struct kvm *kvm)
 static int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
 {
 	struct page *page;
-	int r;
 
 	mutex_init(&vcpu->mutex);
 	vcpu->cpu = -1;
@@ -338,10 +337,8 @@ static int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
 	INIT_LIST_HEAD(&vcpu->blocked_vcpu_list);
 
 	page = alloc_page(GFP_KERNEL | __GFP_ZERO);
-	if (!page) {
-		r = -ENOMEM;
-		goto fail;
-	}
+	if (!page)
+		return -ENOMEM;
 	vcpu->run = page_address(page);
 
 	kvm_vcpu_set_in_spin_loop(vcpu, false);
@@ -350,15 +347,7 @@ static int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
 	vcpu->ready = false;
 	preempt_notifier_init(&vcpu->preempt_notifier, &kvm_preempt_ops);
 
-	r = kvm_arch_vcpu_init(vcpu);
-	if (r < 0)
-		goto fail_free_run;
 	return 0;
-
-fail_free_run:
-	free_page((unsigned long)vcpu->run);
-fail:
-	return r;
 }
 
 static void kvm_vcpu_uninit(struct kvm_vcpu *vcpu)
@@ -369,7 +358,6 @@ static void kvm_vcpu_uninit(struct kvm_vcpu *vcpu)
 	 * descriptors are already gone.
 	 */
 	put_pid(rcu_dereference_protected(vcpu->pid, 1));
-	kvm_arch_vcpu_uninit(vcpu);
 	free_page((unsigned long)vcpu->run);
 }
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
