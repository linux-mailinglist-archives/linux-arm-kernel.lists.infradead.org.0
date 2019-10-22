Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AF2E0B97
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 20:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zo9n9bL5zROcf8p7Z/tDDNqh4WLHlfucw8uUl6Kpcp8=; b=RKRZkdynJgCfa3
	14OFA7Lsx/Y4y1HJ1Yiyuk+GEzWo+amMZcJjErJKM6icAxGvt8Jt8mpBlJhCBCfe+6IbHaVxT8tvA
	j+dUZM8MthD8J+wvTSboMz7laRrL0gY74eoyhap6oxlezGbzy0SBSghrNRlN+VH0oysbOW1/RuVCn
	+GzAlyEeOVpTBgQhrUU+32BmPmnIoCENpKx16ERPHifrXnQwuhAuXGTlQ9aD2TJzRxBZnmJMgFIX3
	h2uyBX5tPR79dsJp8oxkzCSplpuDbR5WnQlSyyZDKLPy+jjQzHmsUJzXU8eyw0BRry/TTNwQ97VvF
	f6a5rljnvL7KOk4rR+ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMz6N-0000iV-7a; Tue, 22 Oct 2019 18:41:51 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMz6G-0000gT-3Z
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 18:41:45 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 11:41:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="222915653"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.41])
 by fmsmga004.fm.intel.com with ESMTP; 22 Oct 2019 11:41:39 -0700
Date: Tue, 22 Oct 2019 11:41:39 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Christoffer Dall <christoffer.dall@arm.com>
Subject: Re: [PATCH 42/45] KVM: arm64: Free sve_state via arm specific hook
Message-ID: <20191022184139.GK2343@linux.intel.com>
References: <20191022015925.31916-1-sean.j.christopherson@intel.com>
 <20191022015925.31916-43-sean.j.christopherson@intel.com>
 <20191022114342.GB2652@e113682-lin.lund.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022114342.GB2652@e113682-lin.lund.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_114144_158218_940DDE7F 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Hogan <jhogan@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 01:43:42PM +0200, Christoffer Dall wrote:
> On Mon, Oct 21, 2019 at 06:59:22PM -0700, Sean Christopherson wrote:
> > Add an arm specific hook to free the arm64-only sve_state.  Doing so
> > eliminates the last functional code from kvm_arch_vcpu_uninit() across
> > all architectures and paves the way for removing kvm_arch_vcpu_init()
> > and kvm_arch_vcpu_uninit() entirely.
> > 
> > Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> > ---
> >  arch/arm/include/asm/kvm_host.h   | 1 +
> >  arch/arm64/include/asm/kvm_host.h | 1 +
> >  arch/arm64/kvm/reset.c            | 5 +++++
> >  virt/kvm/arm/arm.c                | 2 ++
> >  4 files changed, 9 insertions(+)
> > 
> > diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
> > index 8a37c8e89777..cc414de5acd3 100644
> > --- a/arch/arm/include/asm/kvm_host.h
> > +++ b/arch/arm/include/asm/kvm_host.h
> > @@ -333,6 +333,7 @@ static inline void kvm_arch_sync_events(struct kvm *kvm) {}
> >  static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
> >  static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
> >  static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
> > +static inline int kvm_arm_vcpu_destroy(struct kvm_vcpu *vcpu) {}
> >  
> >  static inline void kvm_arm_init_debug(void) {}
> >  static inline void kvm_arm_setup_debug(struct kvm_vcpu *vcpu) {}
> > diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> > index f656169db8c3..92d7c384a4ed 100644
> > --- a/arch/arm64/include/asm/kvm_host.h
> > +++ b/arch/arm64/include/asm/kvm_host.h
> > @@ -52,6 +52,7 @@ int kvm_arm_init_sve(void);
> >  
> >  int __attribute_const__ kvm_target_cpu(void);
> >  int kvm_reset_vcpu(struct kvm_vcpu *vcpu);
> > +int kvm_arm_vcpu_destroy(struct kvm_vcpu *vcpu);
> >  void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu);
> >  int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext);
> >  void __extended_idmap_trampoline(phys_addr_t boot_pgd, phys_addr_t idmap_start);
> > diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> > index f4a8ae918827..98abc4278f42 100644
> > --- a/arch/arm64/kvm/reset.c
> > +++ b/arch/arm64/kvm/reset.c
> > @@ -205,6 +205,11 @@ bool kvm_arm_vcpu_is_finalized(struct kvm_vcpu *vcpu)
> >  }
> >  
> >  void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
> > +{
> > +
> > +}
> > +
> > +int kvm_arm_vcpu_destroy(struct kvm_vcpu *vcpu)
> >  {
> >  	kfree(vcpu->arch.sve_state);
> >  }
> 
> nit: warning: control reaches end of non-void function

Doh, fixed.  Thanks for the quick review!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
