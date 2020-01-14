Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E52313B20B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 19:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qs5Gx+SjPeEx8e1m5K41mOnE0l1NJ/g4ZoWJcuo5UR4=; b=p9WwfLisPT+U0I
	EareFq7KxK/qz3Z9IcS+HyVlut8OM2mg62rFacQX0rExxzyOe353d1iEfzytK+GDnnBSFF6NgRdnm
	jEAN+peoGldF+tqi1UmmlZWgMJmaWw5kFP1D26Ap0tjhTd87qmxcgjn5u28UCHKVdA42pZEzVmg2B
	GMdy9CPHh41KnCwrF8zvkDE4C6zcEeqK0Q6cIqsEp2PaV7+KP1oYi50xNe16GLfXG22SN1Rlllqkk
	8EB3sJYAGjeDNEb/k6jLOI+tyZzYKV5DrsUaYJuzCfVv5KWGx4+XPT02VJCvsswgv7zfv3prLIvBJ
	GtA5Mhd35HfUUK9NMaBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQsT-00072r-RG; Tue, 14 Jan 2020 18:25:21 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQsF-0006ag-Ve
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 18:25:14 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 10:25:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,319,1574150400"; d="scan'208";a="225636474"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga006.jf.intel.com with ESMTP; 14 Jan 2020 10:25:07 -0800
Date: Tue, 14 Jan 2020 10:25:07 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v4 16/19] KVM: Ensure validity of memslot with respect to
 kvm_get_dirty_log()
Message-ID: <20200114182506.GF16784@linux.intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-17-sean.j.christopherson@intel.com>
 <20191224181930.GC17176@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224181930.GC17176@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_102508_071742_13E4C6C5 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Philippe =?iso-8859-1?Q?Mathieu-Daud=E9?= <f4bug@amsat.org>,
 kvm-ppc@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 24, 2019 at 01:19:30PM -0500, Peter Xu wrote:
> On Tue, Dec 17, 2019 at 12:40:38PM -0800, Sean Christopherson wrote:
> > +int kvm_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log,
> > +		      int *is_dirty, struct kvm_memory_slot **memslot)
> >  {
> >  	struct kvm_memslots *slots;
> > -	struct kvm_memory_slot *memslot;
> >  	int i, as_id, id;
> >  	unsigned long n;
> >  	unsigned long any = 0;
> >  
> > +	*memslot = NULL;
> > +	*is_dirty = 0;
> > +
> >  	as_id = log->slot >> 16;
> >  	id = (u16)log->slot;
> >  	if (as_id >= KVM_ADDRESS_SPACE_NUM || id >= KVM_USER_MEM_SLOTS)
> >  		return -EINVAL;
> >  
> >  	slots = __kvm_memslots(kvm, as_id);
> > -	memslot = id_to_memslot(slots, id);
> > -	if (!memslot->dirty_bitmap)
> > +	*memslot = id_to_memslot(slots, id);
> > +	if (!(*memslot)->dirty_bitmap)
> >  		return -ENOENT;
> >  
> > -	n = kvm_dirty_bitmap_bytes(memslot);
> > +	kvm_arch_sync_dirty_log(kvm, *memslot);
> 
> Should this line belong to previous patch?

No.

The previous patch, "KVM: Provide common implementation for generic dirty
log functions", is consolidating the implementation of dirty log functions
for architectures with CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT=y.

This code is being moved from s390's kvm_vm_ioctl_get_dirty_log(), as s390
doesn't select KVM_GENERIC_DIRTYLOG_READ_PROTECT.  It's functionally a nop
as kvm_arch_sync_dirty_log() is empty for PowerPC, the only other arch that
doesn't select KVM_GENERIC_DIRTYLOG_READ_PROTECT.

Arguably, the call to kvm_arch_sync_dirty_log() should be moved in a
separate prep patch.  It can't be a follow-on patch as that would swap the
ordering of kvm_arch_sync_dirty_log() and kvm_dirty_bitmap_bytes(), etc...

My reasoning for not splitting it to a separate patch is that prior to this
patch, the common code and arch specific code are doing separate memslot
lookups via id_to_memslot(), i.e. moving the kvm_arch_sync_dirty_log() call
would operate on a "different" memslot.   It can't actually be a different
memslot because slots_lock is held, it just felt weird.

All that being said, I don't have a strong opinion on moving the call to
kvm_arch_sync_dirty_log() in a separate patch; IIRC, I vascillated between
the two options when writing the code.  If anyone wants it to be a separate
patch I'll happily split it out.

> 
> > +
> > +	n = kvm_dirty_bitmap_bytes(*memslot);
> >  
> >  	for (i = 0; !any && i < n/sizeof(long); ++i)
> > -		any = memslot->dirty_bitmap[i];
> > +		any = (*memslot)->dirty_bitmap[i];
> >  
> > -	if (copy_to_user(log->dirty_bitmap, memslot->dirty_bitmap, n))
> > +	if (copy_to_user(log->dirty_bitmap, (*memslot)->dirty_bitmap, n))
> >  		return -EFAULT;
> >  
> >  	if (any)
> > -- 
> > 2.24.1
> 
> -- 
> Peter Xu
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
