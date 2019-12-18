Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF92C125649
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:08:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzvKQ/A0NhfgeG3LHxOE2CBnSxpbR2dnquK6b3tM5h4=; b=AWoHGKKkwVyWQb
	c2JDQ0zgFaZUmYACEUcLb25fucbLE/vMeslnGa+ded1zSH2t1x7VWyp0d3Owd+a/X46dKn/pJwot9
	pSlxYayg2wqcM4+t07+0uxFX+RMcY5RaNOjByVfFx7yEbAo+L1zk0XTJoCmSsRd9uA/2JoxP8kwGx
	DbxEvdKzzysE4kIzSJH9Hy0p2z9BQorGQ00oLuq8mKzwFQAkmkoGsuURRIuCzzVMSQGzuF2AG9OzH
	CynwRFstK2BUbYq/eGWkyRA67SA20w8tIy1pu2/tI9RNv72aNWyP9C/rWGP5UmZ2+fThp/qSQX/nJ
	8XmytOx2UhED4B13UsmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhUK-0001Zr-3c; Wed, 18 Dec 2019 22:08:12 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIa-0004yN-HY
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:56:08 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108155"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:48 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 35/45] KVM: s390: Manually invoke vcpu setup during
 kvm_arch_vcpu_create()
Date: Wed, 18 Dec 2019 13:55:20 -0800
Message-Id: <20191218215530.2280-36-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135604_712579_1F1303BD 
X-CRM114-Status: GOOD (  11.39  )
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

Rename kvm_arch_vcpu_setup() to kvm_s390_vcpu_setup() and manually call
the new function during kvm_arch_vcpu_create().  Define an empty
kvm_arch_vcpu_setup() as it's still required for compilation.  This
is effectively a nop as kvm_arch_vcpu_create() and kvm_arch_vcpu_setup()
are called back-to-back by common KVM code.  Obsoleting
kvm_arch_vcpu_setup() paves the way for its removal.

Note, gmap_remove() is now called if setup fails, as s390 was previously
freeing it via kvm_arch_vcpu_destroy(), which is called by common KVM
code if kvm_arch_vcpu_setup() fails.

No functional change intended.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/s390/kvm/kvm-s390.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 2ed76584ebd9..5cd92c9fc050 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -2932,6 +2932,11 @@ static void kvm_s390_vcpu_setup_model(struct kvm_vcpu *vcpu)
 }
 
 int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
+{
+	return 0;
+}
+
+static int kvm_s390_vcpu_setup(struct kvm_vcpu *vcpu)
 {
 	int rc = 0;
 
@@ -3070,8 +3075,14 @@ int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 		 vcpu->arch.sie_block);
 	trace_kvm_s390_create_vcpu(id, vcpu, vcpu->arch.sie_block);
 
+	rc = kvm_s390_vcpu_setup(vcpu);
+	if (rc)
+		goto out_ucontrol_uninit;
 	return 0;
 
+out_ucontrol_uninit:
+	if (kvm_is_ucontrol(vcpu->kvm))
+		gmap_remove(vcpu->arch.gmap);
 out_free_sie_block:
 	free_page((unsigned long)(vcpu->arch.sie_block));
 	return rc;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
