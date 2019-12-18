Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBC51255FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 22:59:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5wesiwWlVcOMRfUHlfGVIsTXkXPq0ks3qOrLVmbRfU=; b=TIGtPXhpePNcm6
	1yWMUWnZa1fyWIMwXxZHsynDIG/GaCmtL83k+V2EEOEKU6/Xaho44fu/bcWRNm9kQVoCBf3TfowBD
	C4RhgwxSKXe+eWPtYdGeYcQs9FNASu94mXSYu2DOHgRh4Lp05m19PDVICUCZ5tP09HoF7qqNynLfa
	FkeWEeljpr+FBqA+8zzBikro/evUGdJcPiYRRDLHeDcnEwPxgMFHSf4I0xTfbOrelSLmh0FDX6TVr
	0oq1k9F5Vr1IS9q5AA69rLKPsVS3BwR4PW2K5IWXMLOF6OGOdSzCtjAKsz2kqYw6TIOHFRKg0PZot
	DDMj4wj4zRYHiTmzGzbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhLz-0007tW-FH; Wed, 18 Dec 2019 21:59:35 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIF-0004yV-HF
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:55:45 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108043"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:35 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 09/45] KVM: x86: Move allocation of pio_data page down a
 few lines
Date: Wed, 18 Dec 2019 13:54:54 -0800
Message-Id: <20191218215530.2280-10-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135543_680175_6B767302 
X-CRM114-Status: GOOD (  14.08  )
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

Allocate the pio_data page after creating the MMU and local APIC so that
all direct memory allocations are grouped together.  This allows setting
the return value to -ENOMEM prior to starting the allocations instead of
setting it in the fail path for every allocation.

The pio_data page is only consumed when KVM_RUN is invoked, i.e. moving
its allocation has no real functional impact.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/x86.c | 33 +++++++++++++--------------------
 1 file changed, 13 insertions(+), 20 deletions(-)

diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index e3f122dca5f8..b3e367963b08 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9420,18 +9420,11 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 	else
 		vcpu->arch.mp_state = KVM_MP_STATE_UNINITIALIZED;
 
-	page = alloc_page(GFP_KERNEL | __GFP_ZERO);
-	if (!page) {
-		r = -ENOMEM;
-		goto fail;
-	}
-	vcpu->arch.pio_data = page_address(page);
-
 	kvm_set_tsc_khz(vcpu, max_tsc_khz);
 
 	r = kvm_mmu_create(vcpu);
 	if (r < 0)
-		goto fail_free_pio_data;
+		return r;
 
 	if (irqchip_in_kernel(vcpu->kvm)) {
 		vcpu->arch.apicv_active = kvm_x86_ops->get_enable_apicv(vcpu->kvm);
@@ -9441,25 +9434,27 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 	} else
 		static_key_slow_inc(&kvm_no_apic_vcpu);
 
+	r = -ENOMEM;
+
+	page = alloc_page(GFP_KERNEL | __GFP_ZERO);
+	if (!page)
+		goto fail_free_lapic;
+	vcpu->arch.pio_data = page_address(page);
+
 	vcpu->arch.mce_banks = kzalloc(KVM_MAX_MCE_BANKS * sizeof(u64) * 4,
 				       GFP_KERNEL_ACCOUNT);
-	if (!vcpu->arch.mce_banks) {
-		r = -ENOMEM;
-		goto fail_free_lapic;
-	}
+	if (!vcpu->arch.mce_banks)
+		goto fail_free_pio_data;
 	vcpu->arch.mcg_cap = KVM_MAX_MCE_BANKS;
 
 	if (!zalloc_cpumask_var(&vcpu->arch.wbinvd_dirty_mask,
-				GFP_KERNEL_ACCOUNT)) {
-		r = -ENOMEM;
+				GFP_KERNEL_ACCOUNT))
 		goto fail_free_mce_banks;
-	}
 
 	vcpu->arch.user_fpu = kmem_cache_zalloc(x86_fpu_cache,
 						GFP_KERNEL_ACCOUNT);
 	if (!vcpu->arch.user_fpu) {
 		pr_err("kvm: failed to allocate userspace's fpu\n");
-		r = -ENOMEM;
 		goto free_wbinvd_dirty_mask;
 	}
 
@@ -9467,7 +9462,6 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 						 GFP_KERNEL_ACCOUNT);
 	if (!vcpu->arch.guest_fpu) {
 		pr_err("kvm: failed to allocate vcpu's fpu\n");
-		r = -ENOMEM;
 		goto free_user_fpu;
 	}
 	fx_init(vcpu);
@@ -9494,13 +9488,12 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 	free_cpumask_var(vcpu->arch.wbinvd_dirty_mask);
 fail_free_mce_banks:
 	kfree(vcpu->arch.mce_banks);
+fail_free_pio_data:
+	free_page((unsigned long)vcpu->arch.pio_data);
 fail_free_lapic:
 	kvm_free_lapic(vcpu);
 fail_mmu_destroy:
 	kvm_mmu_destroy(vcpu);
-fail_free_pio_data:
-	free_page((unsigned long)vcpu->arch.pio_data);
-fail:
 	return r;
 }
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
