Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4851DFB75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxnTDMlBlDTrDi3Ydx+uQWgj+AyGb2oVClhMpW1lwpI=; b=gx0OiIiYdFL8h+
	BUOGVGKA85SIpPnvdw02MxnckwGlQXlPi6KnXpbVZU/1DtF2Mh349hmszf8kIbL8Iwm8DHmDzrhtE
	4aG/o9WMBQNTOAHCFpIHPYoV3S92OyoxpBo9Y2JUZUOloAstB/s+B/WJs+8H0wcx6a2mV38vEjoUS
	sMop+xj1qifAEBzHANsfH9NyYjdJlNNGxjABZpo8KC0dzGyFI8L4vMxBUpkFg8T+Ku5yZVlgHsoEi
	TnB9ljLcsQ+pU6fxtYwOZqXllTNKF4Iv7Qeo/DERhlFdfGXiAHC2umpRz7jrs5nB87sSWhsk81W3A
	AemhbpFQihTAO6VLHFpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMje8-0001X3-Ed; Tue, 22 Oct 2019 02:11:40 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjSy-0003sj-3u
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 02:00:15 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 19:00:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196293919"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 19:00:00 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 40/45] KVM: ARM: Move all vcpu init code into
 kvm_arch_vcpu_create()
Date: Mon, 21 Oct 2019 18:59:20 -0700
Message-Id: <20191022015925.31916-41-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022015925.31916-1-sean.j.christopherson@intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_190008_256360_1E2F0748 
X-CRM114-Status: GOOD (  13.79  )
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

Fold init() into create() now that the two are called back-to-back by
common KVM code (kvm_vcpu_init() calls kvm_arch_vcpu_init() as its last
action, and kvm_vm_ioctl_create_vcpu() calls kvm_arch_vcpu_create()
immediately thereafter).  This paves the way for removing
kvm_arch_vcpu_{un}init() entirely.

Note, there is no associated unwinding in kvm_arch_vcpu_uninit() that
needs to be relocated (to kvm_arch_vcpu_destroy()).

No functional change intended.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 virt/kvm/arm/arm.c | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 1ab151d43fd7..aac4e5a1a521 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -266,6 +266,23 @@ int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
 
 int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 {
+	int err;
+
+	/* Force users to call KVM_ARM_VCPU_INIT */
+	vcpu->arch.target = -1;
+	bitmap_zero(vcpu->arch.features, KVM_VCPU_MAX_FEATURES);
+
+	/* Set up the timer */
+	kvm_timer_vcpu_init(vcpu);
+
+	kvm_pmu_vcpu_init(vcpu);
+
+	kvm_arm_reset_debug_ptr(vcpu);
+
+	err = kvm_vgic_vcpu_init(vcpu);
+	if (err)
+		return err;
+
 	return create_hyp_mappings(vcpu, vcpu + 1, PAGE_HYP);
 }
 
@@ -311,18 +328,7 @@ void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
 
 int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 {
-	/* Force users to call KVM_ARM_VCPU_INIT */
-	vcpu->arch.target = -1;
-	bitmap_zero(vcpu->arch.features, KVM_VCPU_MAX_FEATURES);
-
-	/* Set up the timer */
-	kvm_timer_vcpu_init(vcpu);
-
-	kvm_pmu_vcpu_init(vcpu);
-
-	kvm_arm_reset_debug_ptr(vcpu);
-
-	return kvm_vgic_vcpu_init(vcpu);
+	return 0;
 }
 
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
