Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCAA125633
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:04:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+npQZOlll/Wu6AkYySle7fbwl9rhGgHcq58C65aqXAk=; b=FSCbfFPJxGWjo3
	16mv+HtZwHcGuZCgwyz6FeXIcqSqneaetuoAIPBMj5iywilBU/k5KVwxrEpuFQSeXGLw4r5/DEPKC
	0RwzRrXx69+6/2WivR/9H0rrrvfwd4y3osMySflyqZHywNuOXUV6bkDCjYwDp2BDJjPlbPLrNi6hG
	B/qtiP6OUByzJy/nuVdGAb/1lOlHSySYFoAVFraNvMTb00OAYMc1sMTCn64+JziXwx18TDS5QRvw7
	ICwQR0DbSGAtkXQPa3+ci3MM/jIfroYzR0l0RLRxQs0GJ+fS400p8hjgf+2He7rhou2Gt/ftmacli
	E54IIPDJVaAggkbnuTAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhQs-0005eh-RD; Wed, 18 Dec 2019 22:04:38 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIQ-00059X-13
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:55:58 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108120"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:44 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 26/45] KVM: s390: Invoke kvm_vcpu_init() before allocating
 sie_page
Date: Wed, 18 Dec 2019 13:55:11 -0800
Message-Id: <20191218215530.2280-27-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135554_176418_B8E7673F 
X-CRM114-Status: GOOD (  12.65  )
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

Now that s390's implementation of kvm_arch_vcpu_init() is empty, move
the call to kvm_vcpu_init() above the allocation of the sie_page.  This
paves the way for moving vcpu allocation and initialization into common
KVM code without any associated functional change.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/s390/kvm/kvm-s390.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 0049b621e56a..1f8ba074cbd6 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -3027,10 +3027,16 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
 	if (!vcpu)
 		goto out;
 
+	rc = kvm_vcpu_init(vcpu, kvm, id);
+	if (rc)
+		goto out_free_cpu;
+
+	rc = -ENOMEM;
+
 	BUILD_BUG_ON(sizeof(struct sie_page) != 4096);
 	sie_page = (struct sie_page *) get_zeroed_page(GFP_KERNEL);
 	if (!sie_page)
-		goto out_free_cpu;
+		goto out_uninit_vcpu;
 
 	vcpu->arch.sie_block = &sie_page->sie_block;
 	vcpu->arch.sie_block->itdba = (unsigned long) &sie_page->itdb;
@@ -3046,10 +3052,6 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
 		vcpu->arch.sie_block->gd |= GISA_FORMAT1;
 	seqcount_init(&vcpu->arch.cputm_seqcount);
 
-	rc = kvm_vcpu_init(vcpu, kvm, id);
-	if (rc)
-		goto out_free_sie_block;
-
 	vcpu->arch.pfault_token = KVM_S390_PFAULT_TOKEN_INVALID;
 	kvm_clear_async_pf_completion_queue(vcpu);
 	vcpu->run->kvm_valid_regs = KVM_SYNC_PREFIX |
@@ -3078,7 +3080,7 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
 	if (kvm_is_ucontrol(vcpu->kvm)) {
 		rc = __kvm_ucontrol_vcpu_init(vcpu);
 		if (rc)
-			goto out_uninit_vcpu;
+			goto out_free_sie_block;
 	}
 
 	VM_EVENT(kvm, 3, "create cpu %d at 0x%pK, sie block at 0x%pK", id, vcpu,
@@ -3086,10 +3088,10 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
 	trace_kvm_s390_create_vcpu(id, vcpu, vcpu->arch.sie_block);
 
 	return vcpu;
-out_uninit_vcpu:
-	kvm_vcpu_uninit(vcpu);
 out_free_sie_block:
 	free_page((unsigned long)(vcpu->arch.sie_block));
+out_uninit_vcpu:
+	kvm_vcpu_uninit(vcpu);
 out_free_cpu:
 	kmem_cache_free(kvm_vcpu_cache, vcpu);
 out:
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
