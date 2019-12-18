Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18213125624
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1nKnyQyCaTbr7ajoBNY/7gF17m7QFy0mkdgNu14hEc=; b=kPgmCsPt098vUW
	guCn5jD3uICDQuCSizK1V4i0B3B/7A3sEcNrzudirpvXMhSo9JsNZrxypSxJNyvulAcU8N4Df4wne
	qML281tOaPWr8MidPZlvWu/FOklTYzjExJ/zXuHfo6+xhMKa+KYYd1K0HwRhFWCZ/8bW/JNpJlYay
	KimcXLSpCEa4mKFrPRLebQOwF8FCAis7UYsfaMjuFjivNsI0hHypPscE6vMBGKxjpu2v7hTgBWPY9
	9RWaGiKyeprqnszAofRetnlbKI5kJcBcBEJJu4cpLt/tQhRmRE05WzrdhOLmzP34Jc562380wTm47
	YcpTphSzSx0gl4NxWgMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhNx-0002hj-CE; Wed, 18 Dec 2019 22:01:37 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIM-00059X-EE
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:55:52 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108088"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:40 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 18/45] KVM: PPC: Drop kvm_arch_vcpu_free()
Date: Wed, 18 Dec 2019 13:55:03 -0800
Message-Id: <20191218215530.2280-19-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135550_525565_7C9984BC 
X-CRM114-Status: GOOD (  10.02  )
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

Remove the superfluous kvm_arch_vcpu_free() as it is no longer called
from commmon KVM code.  Note, kvm_arch_vcpu_destroy() *is* called from
common code, i.e. choosing which function to whack is not completely
arbitrary.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/powerpc/kvm/powerpc.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index 173f57e0a1b5..a2ba708f5cec 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -475,7 +475,7 @@ void kvm_arch_destroy_vm(struct kvm *kvm)
 #endif
 
 	kvm_for_each_vcpu(i, vcpu, kvm)
-		kvm_arch_vcpu_free(vcpu);
+		kvm_arch_vcpu_destroy(vcpu);
 
 	mutex_lock(&kvm->lock);
 	for (i = 0; i < atomic_read(&kvm->online_vcpus); i++)
@@ -752,7 +752,7 @@ void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
 {
 }
 
-void kvm_arch_vcpu_free(struct kvm_vcpu *vcpu)
+void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 {
 	/* Make sure we're not using the vcpu anymore */
 	hrtimer_cancel(&vcpu->arch.dec_timer);
@@ -781,11 +781,6 @@ void kvm_arch_vcpu_free(struct kvm_vcpu *vcpu)
 	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
-void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
-{
-	kvm_arch_vcpu_free(vcpu);
-}
-
 int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
 {
 	return kvmppc_core_pending_dec(vcpu);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
