Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78A1155E73
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 19:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCwawpHY5075FgKEKdL+JoPWduuZnViAt/UjpfduhzU=; b=En5sPYtdi5H0q2
	dyadv6BpSfGn54eazv5duMrxBkFaCxhd/+NpvMoVXLMwp0o3CGforz/pL+grvZv6B8rq+Mgyuc22f
	3FUQ0fZskCj/bKnd3ImJ+QPuGtFoGHr5GZZ6ZzcPX9EPejuySep9lHDwMpkCbZbb2unxCqHw/coTU
	XZW0xLmda+qQHjm0F5PgCDZtoGX1avdr3bFPI4+bPYaFLcX4szRzKNqb10M6/UxV16zTegfBwD9fG
	zsS0c3LWnVojSC8ArerC/zsKvtHd0/hwpia0WLATrxOdIWmq1bbZ6Vrwtd2V5ViBEfqvzD2LWslmO
	cBlg5zz2MRyaBbL9j78g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j08kO-0005cV-Tu; Fri, 07 Feb 2020 18:53:01 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j08kG-0005bb-4W
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 18:52:53 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 10:52:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="265095893"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by fmsmga002.fm.intel.com with ESMTP; 07 Feb 2020 10:52:47 -0800
Date: Fri, 7 Feb 2020 10:52:47 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v4 16/19] KVM: Ensure validity of memslot with respect to
 kvm_get_dirty_log()
Message-ID: <20200207185247.GJ2401@linux.intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-17-sean.j.christopherson@intel.com>
 <20191224181930.GC17176@xz-x1>
 <20200114182506.GF16784@linux.intel.com>
 <20200206220355.GH700495@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206220355.GH700495@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_105252_209406_4E8AF7AA 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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

On Thu, Feb 06, 2020 at 05:03:55PM -0500, Peter Xu wrote:
> On Tue, Jan 14, 2020 at 10:25:07AM -0800, Sean Christopherson wrote:
> > On Tue, Dec 24, 2019 at 01:19:30PM -0500, Peter Xu wrote:
> > > On Tue, Dec 17, 2019 at 12:40:38PM -0800, Sean Christopherson wrote:
> > > > +int kvm_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log,
> > > > +		      int *is_dirty, struct kvm_memory_slot **memslot)
> > > >  {
> > > >  	struct kvm_memslots *slots;
> > > > -	struct kvm_memory_slot *memslot;
> > > >  	int i, as_id, id;
> > > >  	unsigned long n;
> > > >  	unsigned long any = 0;
> > > >  
> > > > +	*memslot = NULL;
> > > > +	*is_dirty = 0;
> > > > +
> > > >  	as_id = log->slot >> 16;
> > > >  	id = (u16)log->slot;
> > > >  	if (as_id >= KVM_ADDRESS_SPACE_NUM || id >= KVM_USER_MEM_SLOTS)
> > > >  		return -EINVAL;
> > > >  
> > > >  	slots = __kvm_memslots(kvm, as_id);
> > > > -	memslot = id_to_memslot(slots, id);
> > > > -	if (!memslot->dirty_bitmap)
> > > > +	*memslot = id_to_memslot(slots, id);
> > > > +	if (!(*memslot)->dirty_bitmap)
> > > >  		return -ENOENT;
> > > >  
> > > > -	n = kvm_dirty_bitmap_bytes(memslot);
> > > > +	kvm_arch_sync_dirty_log(kvm, *memslot);
> > > 
> > > Should this line belong to previous patch?
> > 
> > No.
> > 
> > The previous patch, "KVM: Provide common implementation for generic dirty
> > log functions", is consolidating the implementation of dirty log functions
> > for architectures with CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT=y.
> > 
> > This code is being moved from s390's kvm_vm_ioctl_get_dirty_log(), as s390
> > doesn't select KVM_GENERIC_DIRTYLOG_READ_PROTECT.  It's functionally a nop
> > as kvm_arch_sync_dirty_log() is empty for PowerPC, the only other arch that
> > doesn't select KVM_GENERIC_DIRTYLOG_READ_PROTECT.
> > 
> > Arguably, the call to kvm_arch_sync_dirty_log() should be moved in a
> > separate prep patch.  It can't be a follow-on patch as that would swap the
> > ordering of kvm_arch_sync_dirty_log() and kvm_dirty_bitmap_bytes(), etc...
> > 
> > My reasoning for not splitting it to a separate patch is that prior to this
> > patch, the common code and arch specific code are doing separate memslot
> > lookups via id_to_memslot(), i.e. moving the kvm_arch_sync_dirty_log() call
> > would operate on a "different" memslot.   It can't actually be a different
> > memslot because slots_lock is held, it just felt weird.
> > 
> > All that being said, I don't have a strong opinion on moving the call to
> > kvm_arch_sync_dirty_log() in a separate patch; IIRC, I vascillated between
> > the two options when writing the code.  If anyone wants it to be a separate
> > patch I'll happily split it out.
> 
> (Sorry to respond so late)
> 
> I think the confusing part is the subject, where you only mentioned
> the memslot change.  IMHO you can split the change to make it clearer,
> or at least would you mind mention that kvm_arch_sync_dirty_log() move
> in the commit message?  Thanks,

I'll add a few paragraphs to the changelog.  Splitting it out still feels
weird.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
