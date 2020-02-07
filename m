Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8524B155DB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 19:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1q325ExfPT4NKA/88E9chTN73k36gPpmRmSQNjkza0M=; b=ckRVSGwmNYXJRE
	WeeQektPIaZON5Kj1p2EbbXE55/Un2wiWJgx1GnfepmVK4/jVmcHwgcxQVTf4Imi+krtpL3c5aS5Y
	5uX9o2O3Gsk0NvYSB+/9rrPWV2JnF52APsT0kH9lHqAl2dfRbufzjUeQY8egb5xkNMV8l6J7yDc73
	FTi3C2YilaLb87B4kY7LqVQuKjxL/7Lb0EdyiT/9pVjSUt00IaDZ2AagMMeaMB50hFtw/Ew6Hbw1L
	U3dAWs7xo6hYR+hqiB56zDJbMO2WNDWGJiUgJHG/pj2cTEg9LX8Shq7GQCPXAbtJs2IfmMAHnLr1n
	AanslaAowii5Is73IN8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j08Ca-0002Hq-Ro; Fri, 07 Feb 2020 18:18:04 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j08CS-0002GX-K9
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 18:17:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581099475;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zZJ4qP8Dp5obTldW76MuAHNAAKAcx/3dX73hUB9dtQo=;
 b=XwS795EJykRQWe4WcY7gj7ELnDIg5f79u2HjeSQellpencprlJkCU0sLp/a3tiaZQqjpb1
 TNJX1VrrMFiq1T5E/eez0fJt0tR0FYzXgF3OcKr5MGg9ExIUc9sIN7HAAK4orwRdKcdFS9
 SNjljzPS7HjG51+C3NRGV8/E1q6Lf/8=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-b3gXl4w2P6yE44wHINc9gw-1; Fri, 07 Feb 2020 13:17:52 -0500
Received: by mail-qv1-f70.google.com with SMTP id dc2so75207qvb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 10:17:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cPT63VS6JkFJRjpL5MMsWxNfN8Beu47vJy8tbC2r7XM=;
 b=aovv6h9IDPR+ToEdIv75bYN4dNchplLKoL9f6rFFvbQRVjdy+kiLFtH6uXI4v+Bnyj
 /OpK+bTzeVy2G7Xw9jXg/RujmTfHltHqbqhj3pLqZHZcylu11hKyHgB0ONnFNBOpIeQq
 s8PgQuDpaaNUpnGJRBiy3lkXYtAnUc/m/b6kGi0P3PkpDKog1SXeIXqQd7srnecCXHUR
 n/lT6UAjJya94/6fl4/xVNatUOgqE8GErq4JcsC0ZtapNWBh6flTiiHOfnTFZgYlnJ9s
 DHeEkd20FajkJgpbUv4qaIno3EIN4gfdE8w9nOetx8sZhl1synWfnGbUKji35j0sh9FZ
 FYpA==
X-Gm-Message-State: APjAAAXlprkuHR6bkHe7yDEYFqcvE2FLYcvLDuV3xQ0muRtvHX3M1kri
 W5mtc1zy3Ye/E8HETXLA8jP4EMfu6h1yBp6XbDl2GLul+EV1QHoKfHct/2uVkbFmcQrU7DN52Vc
 E0+/5BvkWYnNJrpMdOWGgOEsSBmJ0fG8VACk=
X-Received: by 2002:a05:6214:1253:: with SMTP id
 q19mr106747qvv.75.1581099472159; 
 Fri, 07 Feb 2020 10:17:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqzRox8Bo7fyFYmNOjYNh/V3B0M3O5rtHPF6if8Y080MuT3a3U4ayt/3NWDSUCkErG4IzY/vdw==
X-Received: by 2002:a05:6214:1253:: with SMTP id
 q19mr106704qvv.75.1581099471868; 
 Fri, 07 Feb 2020 10:17:51 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id b24sm1725899qto.71.2020.02.07.10.17.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 10:17:51 -0800 (PST)
Date: Fri, 7 Feb 2020 13:17:48 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 12/19] KVM: Move memslot deletion to helper function
Message-ID: <20200207181748.GC720553@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-13-sean.j.christopherson@intel.com>
 <20200206161415.GA695333@xz-x1>
 <20200206162818.GD13067@linux.intel.com>
 <20200206165116.GE695333@xz-x1>
 <20200207175912.GG2401@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200207175912.GG2401@linux.intel.com>
X-MC-Unique: b3gXl4w2P6yE44wHINc9gw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_101756_807093_F0E4C186 
X-CRM114-Status: GOOD (  26.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 09:59:12AM -0800, Sean Christopherson wrote:
> On Thu, Feb 06, 2020 at 11:51:16AM -0500, Peter Xu wrote:
> > On Thu, Feb 06, 2020 at 08:28:18AM -0800, Sean Christopherson wrote:
> > > On Thu, Feb 06, 2020 at 11:14:15AM -0500, Peter Xu wrote:
> > > > On Tue, Jan 21, 2020 at 02:31:50PM -0800, Sean Christopherson wrote:
> > > > > Move memslot deletion into its own routine so that the success path for
> > > > > other memslot updates does not need to use kvm_free_memslot(), i.e. can
> > > > > explicitly destroy the dirty bitmap when necessary.  This paves the way
> > > > > for dropping @dont from kvm_free_memslot(), i.e. all callers now pass
> > > > > NULL for @dont.
> > > > > 
> > > > > Add a comment above the code to make a copy of the existing memslot
> > > > > prior to deletion, it is not at all obvious that the pointer will become
> > > > > stale during sorting and/or installation of new memslots.
> > > > 
> > > > Could you help explain a bit on this explicit comment?  I can follow
> > > > up with the patch itself which looks all correct to me, but I failed
> > > > to catch what this extra comment wants to emphasize...
> > > 
> > > It's tempting to write the code like this (I know, because I did it):
> > > 
> > > 	if (!mem->memory_size)
> > > 		return kvm_delete_memslot(kvm, mem, slot, as_id);
> > > 
> > > 	new = *slot;
> > > 
> > > Where @slot is a pointer to the memslot to be deleted.  At first, second,
> > > and third glances, this seems perfectly sane.
> > > 
> > > The issue is that slot was pulled from struct kvm_memslots.memslots, e.g.
> > > 
> > > 	slot = &slots->memslots[index];
> > > 
> > > Note that slots->memslots holds actual "struct kvm_memory_slot" objects,
> > > not pointers to slots.  When update_memslots() sorts the slots, it swaps
> > > the actual slot objects, not pointers.  I.e. after update_memslots(), even
> > > though @slot points at the same address, it's could be pointing at a
> > > different slot.  As a result kvm_free_memslot() in kvm_delete_memslot()
> > > will free the dirty page info and arch-specific points for some random
> > > slot, not the intended slot, and will set npages=0 for that random slot.
> > 
> > Ah I see, thanks.  Another alternative is we move the "old = *slot"
> > copy into kvm_delete_memslot(), which could be even clearer imo.
> 
> The copy is also needed in __kvm_set_memory_region() for the MOVE case.

Right.  I actually meant to do all "old = *slot" in any function we
need to cache the data explicitly, with that we also need another one
after calling kvm_delete_memslot() for move.  But with the comment as
you suggested below it looks good to me too.

Thanks,

> 
> > However I'm not sure whether it's a good idea to drop the test-by for
> > this.  Considering that comment change should not affect it, would you
> > mind enrich the comment into something like this (or anything better)?
> > 
> > /*
> >  * Make a full copy of the old memslot, the pointer will become stale
> >  * when the memslots are re-sorted by update_memslots() in
> >  * kvm_delete_memslot(), while to make the kvm_free_memslot() work as
> >  * expected later on, we still need the cached memory slot.
> >  */
> 
> As above, it's more subtle than just the kvm_delete_memslot() case.
> 
> 	/*
> 	 * Make a full copy of the old memslot, the pointer will become stale
> 	 * when the memslots are re-sorted by update_memslots() when deleting
> 	 * or moving a memslot, and additional modifications to the old memslot
> 	 * need to be made after calling update_memslots().
> 	 */
> 

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
