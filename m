Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC388125597
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 22:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z387YMS2hiUMDDttCj9WtJJPebIm2nGi1unO6BVC5DE=; b=i5g/5ZBY1ZrY1W
	XqjCQt0Fo0ONsdabM4o41sRe5df/vNjFF873FrLNDufxxyjr/hMlc3PokDSWOeyQJvtn0WRYwKTwb
	T17KhPuvrQwj2ZXudexUlpv26jN857zr+EOiEABhivInI95no5YHfytlzCiBeZ7Y7MqZDwDBF3T1Q
	SjoDwKv1DIMELZplQJ8VIsfVvi2Aw3PNUzYJoKAaJp7sxNemqXepcO59btznFp7MjUMIDPFPXw3d+
	U11Q8XPSfLO0J4hNwy8t9L8M41Xv7WE/QJtdPqVWzPlgk+v1UXfD65MEZ/af5bKSfmjgVq+p8WtVC
	01aWwfPReL2Gr7o0u1HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhJe-0005vS-5o; Wed, 18 Dec 2019 21:57:10 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhIB-0004ya-EZ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:55:41 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:55:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222108020"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 13:55:33 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v2 04/45] KVM: VMX: Allocate VPID after initializing VCPU
Date: Wed, 18 Dec 2019 13:54:49 -0800
Message-Id: <20191218215530.2280-5-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218215530.2280-1-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_135539_516013_411EEE0D 
X-CRM114-Status: GOOD (  12.77  )
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

Do VPID allocation after calling the common kvm_vcpu_init() as a step
towards doing vCPU allocation (via kmem_cache_zalloc()) and calling
kvm_vcpu_init() back-to-back.  Squishing allocation and initialization
together will eventually allow the sequence to be moved to arch-agnostic
creation code.

Note, the VPID is not consumed until KVM_RUN, slightly delaying its
allocation should have no real function impact.  VPID allocation was
arbitrarily placed in the original patch, commit 2384d2b326408 ("KVM:
VMX: Enable Virtual Processor Identification (VPID)").

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/vmx/vmx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
index 51e3b27f90ed..2e44ef744c01 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -6708,14 +6708,14 @@ static struct kvm_vcpu *vmx_create_vcpu(struct kvm *kvm, unsigned int id)
 		goto free_user_fpu;
 	}
 
-	vmx->vpid = allocate_vpid();
-
 	err = kvm_vcpu_init(&vmx->vcpu, kvm, id);
 	if (err)
 		goto free_vcpu;
 
 	err = -ENOMEM;
 
+	vmx->vpid = allocate_vpid();
+
 	/*
 	 * If PML is turned on, failure on enabling PML just results in failure
 	 * of creating the vcpu, therefore we can simplify PML logic (by
@@ -6826,8 +6826,8 @@ static struct kvm_vcpu *vmx_create_vcpu(struct kvm *kvm, unsigned int id)
 	vmx_destroy_pml_buffer(vmx);
 uninit_vcpu:
 	kvm_vcpu_uninit(&vmx->vcpu);
+	free_vpid(vmx->vpid);
 free_vcpu:
-	free_vpid(vmx->vpid);
 	kmem_cache_free(x86_fpu_cache, vmx->vcpu.arch.guest_fpu);
 free_user_fpu:
 	kmem_cache_free(x86_fpu_cache, vmx->vcpu.arch.user_fpu);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
