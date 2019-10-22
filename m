Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF5BDFB50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7X4G2svyoPbkyNys5/vQLaAaPsgP2sP5o4zyFFHrEs=; b=hAIclxFi//2xle
	MI12S2Ba/pra4RXtGDuGdsdPpMootF0WnEHTdnGkNpr45F+wzs9Wkl+UQCLQwVvFFkTmSp32XbLdd
	o+fpM9oRCA4Gn7Gvx8k15/hXGqtKziz6jfYGnnqmDFKOqV8Zks6wqXVdHU1I7NchQyMWl5Z0Huz0T
	pN3W4FWk/SSl06T/r4p1ZOaFlJN9SY3lHMWaBjm6vSAMzsLtHCwLVl80kE/iNmYeZ6tALRy3RKFIp
	4kQE0eb/+3GQ3iqeeQ1cQ9lHo9mNQyDXtwF2849gKOZ1/1mCjO9tItwt+vSxwCuho5HRcUhlD4oUq
	/vzi+7Ro8cssV+4f9npg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjXE-0000Wg-85; Tue, 22 Oct 2019 02:04:32 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjSZ-0003sH-F2
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 01:59:45 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 18:59:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196293799"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 18:59:40 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 13/45] KVM: PPC: Book3S PR: Allocate book3s and shadow vcpu
 after common init
Date: Mon, 21 Oct 2019 18:58:53 -0700
Message-Id: <20191022015925.31916-14-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022015925.31916-1-sean.j.christopherson@intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_185943_587638_C49B32D0 
X-CRM114-Status: GOOD (  13.14  )
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

Call kvm_vcpu_init() in kvmppc_core_vcpu_create_pr() prior to allocating
the book3s and shadow_vcpu objects in preparation of moving said call to
common PPC code.  Although kvm_vcpu_init() has an arch callback, the
callback is empty for Book3S PR, i.e. barring unseen black magic, moving
the allocation has no real functional impact.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/powerpc/kvm/book3s_pr.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
index 1e6b83908668..a933ba60bc7c 100644
--- a/arch/powerpc/kvm/book3s_pr.c
+++ b/arch/powerpc/kvm/book3s_pr.c
@@ -1712,12 +1712,18 @@ static int kvmppc_core_vcpu_create_pr(struct kvm *kvm, struct kvm_vcpu *vcpu,
 				      unsigned int id)
 {
 	struct kvmppc_vcpu_book3s *vcpu_book3s;
-	int err = -ENOMEM;
 	unsigned long p;
+	int err;
+
+	err = kvm_vcpu_init(vcpu, kvm, id);
+	if (err)
+		return err;
+
+	err = -ENOMEM;
 
 	vcpu_book3s = vzalloc(sizeof(struct kvmppc_vcpu_book3s));
 	if (!vcpu_book3s)
-		goto out;
+		goto uninit_vcpu;
 	vcpu->arch.book3s = vcpu_book3s;
 
 #ifdef CONFIG_KVM_BOOK3S_32_HANDLER
@@ -1727,14 +1733,9 @@ static int kvmppc_core_vcpu_create_pr(struct kvm *kvm, struct kvm_vcpu *vcpu,
 		goto free_vcpu3s;
 #endif
 
-	err = kvm_vcpu_init(vcpu, kvm, id);
-	if (err)
-		goto free_shadow_vcpu;
-
-	err = -ENOMEM;
 	p = __get_free_page(GFP_KERNEL|__GFP_ZERO);
 	if (!p)
-		goto uninit_vcpu;
+		goto free_shadow_vcpu;
 	vcpu->arch.shared = (void *)p;
 #ifdef CONFIG_PPC_BOOK3S_64
 	/* Always start the shared struct in native endian mode */
@@ -1770,15 +1771,14 @@ static int kvmppc_core_vcpu_create_pr(struct kvm *kvm, struct kvm_vcpu *vcpu,
 
 free_shared_page:
 	free_page((unsigned long)vcpu->arch.shared);
-uninit_vcpu:
-	kvm_vcpu_uninit(vcpu);
 free_shadow_vcpu:
 #ifdef CONFIG_KVM_BOOK3S_32_HANDLER
 	kfree(vcpu->arch.shadow_vcpu);
 free_vcpu3s:
 #endif
 	vfree(vcpu_book3s);
-out:
+uninit_vcpu:
+	kvm_vcpu_uninit(vcpu);
 	return err;
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
