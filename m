Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7A712563F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOJK/KxQRda98cDHFamKVaWaqfucR+MK+iagMBCOkRc=; b=Q0CjYlKZd9kleU
	O4D69PxCDN6tD1YNMhorKLm0rnDDj/4anSp19us62j23rUpTzo1axDVQvuu6DRx345w+Hxci4/Zlz
	kDmpT/FX+gt//aP55deDZHZBwOunYjDrsrhNpc2oFwO+T2Yw8rMKwUNdKNzn6h2TdENsAEIxLSvfq
	ANpre1EWe+Wu/F6AIhf8gg1kpmehdFNlvaPHvJ7sNEyAfLpDCNwZPAiEYaeAPH6gn49HJosQ25aSl
	2+RfpAqQgA9Tx3DP0eKqsAa7Epe91B8AxHsCCswxvuNmALWxe40rf9toGpH5LDKUhM3qht06ja2B1
	jO8nceURn/0xFAYajCmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhSW-0008La-JD; Wed, 18 Dec 2019 22:06:20 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIV-0004yN-58
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:56:04 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108144"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:46 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 32/45] KVM: Move initialization of preempt notifier to
 kvm_vcpu_init()
Date: Wed, 18 Dec 2019 13:55:17 -0800
Message-Id: <20191218215530.2280-33-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135559_350532_2533B8D1 
X-CRM114-Status: GOOD (  13.88  )
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

Initialize the preempt notifier immediately in kvm_vcpu_init() to pave
the way for removing kvm_arch_vcpu_setup(), i.e. to allow arch specific
code to call vcpu_load() during kvm_arch_vcpu_create().

Back when preemption support was added, the location of the call to init
the preempt notifier was perfectly sane.  The overall vCPU creation flow
featured a single arch specific hook and the preempt notifer was used
immediately after its initialization (by vcpu_load()).  E.g.:

        vcpu = kvm_arch_ops->vcpu_create(kvm, n);
        if (IS_ERR(vcpu))
                return PTR_ERR(vcpu);

        preempt_notifier_init(&vcpu->preempt_notifier, &kvm_preempt_ops);

        vcpu_load(vcpu);
        r = kvm_mmu_setup(vcpu);
        vcpu_put(vcpu);
        if (r < 0)
                goto free_vcpu;

Today, the call to preempt_notifier_init() is sandwiched between two
arch specific calls, kvm_arch_vcpu_create() and kvm_arch_vcpu_setup(),
which needlessly forces x86 (and possibly others?) to split its vCPU
creation flow.  Init the preempt notifier prior to any arch specific
call so that each arch can independently decide how best to organize
its creation flow.

Acked-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 virt/kvm/kvm_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index fd8168b8c0e4..876cf3dd2c97 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -348,6 +348,7 @@ static int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
 	kvm_vcpu_set_dy_eligible(vcpu, false);
 	vcpu->preempted = false;
 	vcpu->ready = false;
+	preempt_notifier_init(&vcpu->preempt_notifier, &kvm_preempt_ops);
 
 	r = kvm_arch_vcpu_init(vcpu);
 	if (r < 0)
@@ -2752,8 +2753,6 @@ static int kvm_vm_ioctl_create_vcpu(struct kvm *kvm, u32 id)
 	if (r)
 		goto vcpu_uninit;
 
-	preempt_notifier_init(&vcpu->preempt_notifier, &kvm_preempt_ops);
-
 	r = kvm_arch_vcpu_setup(vcpu);
 	if (r)
 		goto vcpu_destroy;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
