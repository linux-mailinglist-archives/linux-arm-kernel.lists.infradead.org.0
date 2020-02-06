Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD625153E02
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 06:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mv9SITUU2THCZ8YT6UHTqtGx95h4SP0gusXlj8nPk48=; b=uSh5ZaIkFRG0OX
	2xmupLzKmaI/czjP1AAW4qbEsUVWD1ic2/nGuIF9jVqTyRplER0fHOT18jvRWfD+IenWlHfX89/LM
	SLgBaG2KowYvUeUm2czllmq7CHQdiyQFJb04AKs9uAaRggxuLRqUjnvYBn2cOqOG3XRdV2awHLLj2
	/9HqNj+2WWhlaFwGXpAJzfhY3bM6/5zgT7fZpA7lOg4dC5wwnZeMRHY/PO2FjOsg/mXu3I4gPni/F
	cndawCL3OiPBEsj9H1B/qvGDzgDXrA0Pdq5BeErJcKRVHjDuwwI8K7n6IW0IugtO2v3ItaQXTSg19
	6coZ79HlEEys0vMqedvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izZM1-0003JB-7s; Thu, 06 Feb 2020 05:05:29 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izZLv-0003Ic-Hg
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 05:05:25 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 21:05:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,408,1574150400"; d="scan'208";a="254987822"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by fmsmga004.fm.intel.com with ESMTP; 05 Feb 2020 21:05:19 -0800
Date: Wed, 5 Feb 2020 21:05:19 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 01/19] KVM: x86: Allocate new rmap and large page
 tracking when moving memslot
Message-ID: <20200206050518.GA9401@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-2-sean.j.christopherson@intel.com>
 <20200205214952.GD387680@xz-x1>
 <20200205235533.GA7631@linux.intel.com>
 <20200206020031.GJ387680@xz-x1>
 <20200206021714.GB7631@linux.intel.com>
 <20200206025858.GK387680@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206025858.GK387680@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_210523_598567_F4E3381A 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Philippe =?iso-8859-1?Q?Mathieu-Daud=E9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 09:58:58PM -0500, Peter Xu wrote:
> On Wed, Feb 05, 2020 at 06:17:15PM -0800, Sean Christopherson wrote:
> > On Wed, Feb 05, 2020 at 09:00:31PM -0500, Peter Xu wrote:
> > > On Wed, Feb 05, 2020 at 03:55:33PM -0800, Sean Christopherson wrote:
> > > > On Wed, Feb 05, 2020 at 04:49:52PM -0500, Peter Xu wrote:
> > > > > Instead of calling kvm_arch_create_memslot() explicitly again here,
> > > > > can it be replaced by below?
> > > > > 
> > > > > diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> > > > > index 72b45f491692..85a7b02fd752 100644
> > > > > --- a/virt/kvm/kvm_main.c
> > > > > +++ b/virt/kvm/kvm_main.c
> > > > > @@ -1144,7 +1144,7 @@ int __kvm_set_memory_region(struct kvm *kvm,
> > > > >                 new.dirty_bitmap = NULL;
> > > > >  
> > > > >         r = -ENOMEM;
> > > > > -       if (change == KVM_MR_CREATE) {
> > > > > +       if (change == KVM_MR_CREATE || change == KVM_MR_MOVE) {
> > > > >                 new.userspace_addr = mem->userspace_addr;
> > > > >  
> > > > >                 if (kvm_arch_create_memslot(kvm, &new, npages))
> > > > 
> > > > No, because other architectures don't need to re-allocate new metadata on
> > > > MOVE and rely on __kvm_set_memory_region() to copy @arch from old to new,
> > > > e.g. see kvmppc_core_create_memslot_hv().
> > > 
> > > Yes it's only required in x86, but iiuc it also will still work for
> > > ppc?  Say, in that case ppc won't copy @arch from old to new, and
> > > kvmppc_core_free_memslot_hv() will free the old, however it should
> > > still work.
> > 
> > No, calling kvm_arch_create_memslot() for MOVE will result in PPC leaking
> > memory due to overwriting slot->arch.rmap with a new allocation.
> 
> Why?  For the MOVE case, kvm_arch_create_memslot() will create a new
> rmap for the "new" memslot.  If the whole procedure succeeded,
> kvm_free_memslot() will free the old rmap.  If it failed,
> kvm_free_memslot() will free the new rmap if !NULL.  Looks fine?

Oh, I see what you're suggesting.   Please god no.

This is a bug fix that needs to be backported to stable.  Arbitrarily
changing PPC behavior is a bad idea, especially since I don't know squat
about the PPC rmap behavior.

If it happens to fix a PPC rmap bug, then PPC should get an explicit fix.
If it's not a bug fix, then at best it is a minor performance hit due to an
extra allocation and the need to refill the rmap.  Worst case scenario it
breaks PPC.

And unless this were a temporary change, which would be silly, I would have
to carry forward the change into "KVM: PPC: Move memslot memory allocation
into prepare_memory_region()", and again, I don't know squat about PPC.

I also don't want to effectively introduce a misnamed function, even if
only temporarily, e.g. it's kvm_arch_create_memslot(), not
kvm_arch_create_or_move_memslot(), because the whole flow gets reworked a
few patches later.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
