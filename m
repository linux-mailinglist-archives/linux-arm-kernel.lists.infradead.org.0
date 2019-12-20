Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9DA128014
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:53:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtzJYqa0PFLwNFf/lJWrHs3sSQimu46fn6spZWTWfXI=; b=fnptVKr4tgOfof
	GqmviRLgkDM7uyhZtZGnR+j5lGOv9+9Ow4q+9iwUQZHmJr1On2MkeKjCNoPG8NkzEOl65W5UUi3HR
	a0m7oeo94cbuonht1K9ZUpPgRUTWLAr2bqpHsAwFVJR5f+jEyzD3rvCSgcLifWWv+DlgPlAfRwa1/
	TEC0Y4+zACce4rC6Yxtj3WPhEbbJJSTa7YzIWUsiQf+pI7JNCXXAPNbP8LdoQmlxVnyOYw+FHGwY3
	+ULNLY8BHLfS/QGzIxvUasNlfc7aO3uSoMQ0eHaxYKCsnoIaNItQ3OuwTllNUvy+zfsVaeFg0a5OZ
	1qiAFbVkf7FjZBizL1/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKb0-0007tO-Mw; Fri, 20 Dec 2019 15:53:42 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKar-0007sc-Bj
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 15:53:34 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 07:53:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="222513815"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by fmsmga001.fm.intel.com with ESMTP; 20 Dec 2019 07:53:30 -0800
Date: Fri, 20 Dec 2019 07:53:30 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Cornelia Huck <cohuck@redhat.com>
Subject: Re: [PATCH v2 30/45] KVM: Move vcpu alloc and init invocation to
 common code
Message-ID: <20191220155330.GA21021@linux.intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-31-sean.j.christopherson@intel.com>
 <20191220103325.34fc2bf0.cohuck@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220103325.34fc2bf0.cohuck@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_075333_443043_B4EEB14A 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Greg Kurz <groug@kaod.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 James Hogan <jhogan@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 10:33:25AM +0100, Cornelia Huck wrote:
> On Wed, 18 Dec 2019 13:55:15 -0800
> Sean Christopherson <sean.j.christopherson@intel.com> wrote:
> > +int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
> >  {
> > -	struct kvm_vcpu *vcpu;
> >  	struct sie_page *sie_page;
> >  	int rc;
> >  
> > -	rc = -ENOMEM;
> > -
> > -	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
> > -	if (!vcpu)
> > -		goto out;
> > -
> > -	rc = kvm_vcpu_init(vcpu, kvm, id);
> > -	if (rc)
> > -		goto out_free_cpu;
> > -
> > -	rc = -ENOMEM;
> > -
> >  	BUILD_BUG_ON(sizeof(struct sie_page) != 4096);
> >  	sie_page = (struct sie_page *) get_zeroed_page(GFP_KERNEL);
> >  	if (!sie_page)
> > -		goto out_uninit_vcpu;
> > +		return -ENOMEM;
> >  
> >  	vcpu->arch.sie_block = &sie_page->sie_block;
> >  	vcpu->arch.sie_block->itdba = (unsigned long) &sie_page->itdb;
> > @@ -3087,15 +3070,11 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
> >  		 vcpu->arch.sie_block);
> >  	trace_kvm_s390_create_vcpu(id, vcpu, vcpu->arch.sie_block);
> >  
> > -	return vcpu;
> > +	return 0;
> > +
> >  out_free_sie_block:
> >  	free_page((unsigned long)(vcpu->arch.sie_block));
> > -out_uninit_vcpu:
> > -	kvm_vcpu_uninit(vcpu);
> > -out_free_cpu:
> > -	kmem_cache_free(kvm_vcpu_cache, vcpu);
> > -out:
> > -	return ERR_PTR(rc);
> > +	return rc;
> 
> This is getting a bit hard to follow across the patches, but I think rc
> is now only set for ucontrol guests. So this looks correct right now,
> but feels a bit brittle... should we maybe init rc to 0 and always
> return rc instead?

Yes, but only for a few patches until kvm_s390_vcpu_setup() is introduced,
at which point @rc is unconditionally set at the end.

        rc = kvm_s390_vcpu_setup(vcpu);
        if (rc)
                goto out_free_ucontrol_gmap;
        return 0;

My personal preference is to use "return 0;" when the return is known to
be zero as it makes the success path obvious at a glance.  I also didn't
want to intialize @rc at he beginning because then the sie_page allocation
would look a bit funky:

	int rc = 0;

        BUILD_BUG_ON(sizeof(struct sie_page) != 4096);
        sie_page = (struct sie_page *) get_zeroed_page(GFP_KERNEL);
        if (!sie_page)
                return -ENOMEM;


An alternative would be to init @rc to -ENOMEM:

        int rc = -ENOMEM;

        BUILD_BUG_ON(sizeof(struct sie_page) != 4096);
        sie_page = (struct sie_page *) get_zeroed_page(GFP_KERNEL);
        if (!sie_page)
                return rc;

This would be my preference if you'd prefer to init @rc right away,
especially if  __kvm_ucontrol_vcpu_init() is open coded here (discussion
in patch 35, "KVM: s390: Manually invoke vcpu setup during 
kvm_arch_vcpu_create()", e.g.:

        int rc = -ENOMEM;

        BUILD_BUG_ON(sizeof(struct sie_page) != 4096);
        sie_page = (struct sie_page *) get_zeroed_page(GFP_KERNEL);
        if (!sie_page)
                return rc;

	...

        if (kvm_is_ucontrol(vcpu->kvm)) {
                vcpu->arch.gmap = gmap_create(current->mm, -1UL);
                if (!vcpu->arch.gmap)
                        goto out_free_sie_block;
                vcpu->arch.gmap->private = vcpu->kvm;
        }

        VM_EVENT(kvm, 3, "create cpu %d at 0x%pK, sie block at 0x%pK", id, vcpu,
                 vcpu->arch.sie_block);
        trace_kvm_s390_create_vcpu(id, vcpu, vcpu->arch.sie_block);

        rc = kvm_s390_vcpu_setup(vcpu);
        if (rc)
                goto out_free_ucontrol_gmap;
        return 0;

out_free_ucontrol_gmap:
        if (kvm_is_ucontrol(vcpu->kvm))
                gmap_remove(vcpu->arch.gmap);
out_free_sie_block:
        free_page((unsigned long)(vcpu->arch.sie_block));
        return rc;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
