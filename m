Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D060155B63
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 17:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggbYX6xJzfmqLhbupl4J5lAUK0NDNifbmsYe1CjpJR8=; b=tjItdm89mqIm4I
	kpwYI6O4lr6uARdYt5H3KsSG6O2C1mmQD6dI4je7rXs9xGi3rAV5cPnrOs3ekILS3ICYLoIUG0M6k
	aPRulL5HaP6jj8E5W2y2yF6f3bLj25vfQz1ATU/qNuW5Mjg9LmgrB4zyqZadh3LJQhdQVnx0tSCX4
	CerPi7tUheXoFBO7A0nfQ+i2G11oe3Gnc3LKyCoQwyjn4j8TIN8nIyYPENYZ7wBBbp2ohiEEheA6u
	0j1EYIfYTizmvTHFkihgrrk5d/1A/t7tGrlhGQSod30fGJ4VheEjRml61sjB2CksH2WsHK4YWlmdu
	bZqgM3tahFxaPSwD2ZIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j068s-00083f-Ek; Fri, 07 Feb 2020 16:06:06 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j068h-00080N-NO
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 16:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581091554;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BLEVywtX/maNqEMEgdMdwF4jCircP8s45PaTEGjDtRI=;
 b=dKJOwNHxn7vDyE/koxeQtjzGwDWIYriENOksUgOP2pOvFHSu/SHRPuB8WE6ySz/4gAVY08
 XpEkU3iHJe6F5xkBRblOvoOgtjbvgJY8rWXJokrGepE+Lgzg8+dKJ07djf11KSbARHU2A+
 P4EIwwXcfpdK8Dilac+01phPBiK9Vuo=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-429-huNx2mHkM_OqMi_eC82K3g-1; Fri, 07 Feb 2020 11:05:50 -0500
Received: by mail-qv1-f70.google.com with SMTP id v3so1450325qvm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 08:05:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Bqsgg9qLeLOSmneB4WSB2dg3BsO/26WgQ0bE3+4CQXQ=;
 b=EMqHQLeG0dUhZFv6sl8jE7GzahDSnw7MRTcguxhNOgGTEcm+4P1cmOeH7N8Bb/7tuQ
 E37x5Pa5LDIYnYkWxQlLjsmSivx375hC7iemlImnxY58ngtAT2yanPz/yXHSeILa9IC7
 wedXm1Idx/OcBGSr3WyhJe5KWBTaIAS5OCA50MHZDpZ5amCn9XVbVrGujBDA0ICx6gEz
 JjGl+MSb0vSFNAG8LAc6bh9WHxq4m6k2a8QeZUkkcLHh5AWL9IO6ObXGybJrlCYT9NGu
 FPJXgK63zAjpNd4Sr+yNAi6lkcJzTX5K4JUYkUG63c3N/5/Ckvp3zQcnuUkuxNVrotU8
 Er3g==
X-Gm-Message-State: APjAAAX8TsmN0TDTCKVnn9QSXcyTsm8MwDyyc6lFusDvJL/s9WwI0Tul
 7rIR3v4ihxuO+/eco5NzS8meYFKDmIhIAyvSAnFgyeXfvCto9VyZTbOIzeVBW1Fq56TzolCNktS
 SwmfHy5JBhxbpO5rO8gu8C82J8ZUS/SBzrg8=
X-Received: by 2002:a37:c0c:: with SMTP id 12mr7542944qkm.425.1581091550083;
 Fri, 07 Feb 2020 08:05:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqyBU3fSbdWuwCNOt5og3uav2CnBhaKLUx7zFmWTkehMEXphwviUtToR7q9BtKv4R+OEmMKY/w==
X-Received: by 2002:a37:c0c:: with SMTP id 12mr7542902qkm.425.1581091549699;
 Fri, 07 Feb 2020 08:05:49 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id 69sm1462245qkg.133.2020.02.07.08.05.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 08:05:48 -0800 (PST)
Date: Fri, 7 Feb 2020 11:05:46 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 18/19] KVM: Dynamically size memslot array based on
 number of used slots
Message-ID: <20200207160546.GA707371@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-19-sean.j.christopherson@intel.com>
 <20200206221208.GI700495@xz-x1>
 <20200207153829.GA2401@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200207153829.GA2401@linux.intel.com>
X-MC-Unique: huNx2mHkM_OqMi_eC82K3g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_080555_857804_3319620F 
X-CRM114-Status: GOOD (  27.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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

On Fri, Feb 07, 2020 at 07:38:29AM -0800, Sean Christopherson wrote:
> On Thu, Feb 06, 2020 at 05:12:08PM -0500, Peter Xu wrote:
> > On Tue, Jan 21, 2020 at 02:31:56PM -0800, Sean Christopherson wrote:
> > > Now that the memslot logic doesn't assume memslots are always non-NULL,
> > > dynamically size the array of memslots instead of unconditionally
> > > allocating memory for the maximum number of memslots.
> > > 
> > > Note, because a to-be-deleted memslot must first be invalidated, the
> > > array size cannot be immediately reduced when deleting a memslot.
> > > However, consecutive deletions will realize the memory savings, i.e.
> > > a second deletion will trim the entry.
> > > 
> > > Tested-by: Christoffer Dall <christoffer.dall@arm.com>
> > > Tested-by: Marc Zyngier <maz@kernel.org>
> > > Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> > > ---
> > >  include/linux/kvm_host.h |  2 +-
> > >  virt/kvm/kvm_main.c      | 31 ++++++++++++++++++++++++++++---
> > >  2 files changed, 29 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
> > > index 60ddfdb69378..8bb6fb127387 100644
> > > --- a/include/linux/kvm_host.h
> > > +++ b/include/linux/kvm_host.h
> > > @@ -431,11 +431,11 @@ static inline int kvm_arch_vcpu_memslots_id(struct kvm_vcpu *vcpu)
> > >   */
> > >  struct kvm_memslots {
> > >  	u64 generation;
> > > -	struct kvm_memory_slot memslots[KVM_MEM_SLOTS_NUM];
> > >  	/* The mapping table from slot id to the index in memslots[]. */
> > >  	short id_to_index[KVM_MEM_SLOTS_NUM];
> > >  	atomic_t lru_slot;
> > >  	int used_slots;
> > > +	struct kvm_memory_slot memslots[];
> > 
> > This patch is tested so I believe this works, however normally I need
> > to do similar thing with [0] otherwise gcc might complaint.  Is there
> > any trick behind to make this work?  Or is that because of different
> > gcc versions?
> 
> array[] and array[0] have the same net affect, but array[] is given special
> treatment by gcc to provide extra sanity checks, e.g. requires the field to
> be the end of the struct.  Last I checked, gcc also doesn't allow array[]
> in unions.  There are probably other restrictions.
> 
> But, it's precisely because of those restrictions that using array[] is
> preferred, as it provides extra protections, e.g. if someone moved memslots
> to the top of the struct it would fail to compile.

However...

xz-x1:tmp $ cat a.c
struct a {
    int s[];
};

int main(void) { }
xz-x1:tmp $ make a
cc     a.c   -o a
a.c:2:9: error: flexible array member in a struct with no named members
    2 |     int s[];
      |         ^
make: *** [<builtin>: a] Error 1

My gcc version is 9.2.1 20190827 (Red Hat 9.2.1-1) (GCC).

>  
> > >  };
> > >  
> > >  struct kvm {
> > > diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> > > index 9b614cf2ca20..ed392ce64e59 100644
> > > --- a/virt/kvm/kvm_main.c
> > > +++ b/virt/kvm/kvm_main.c
> > > @@ -565,7 +565,7 @@ static struct kvm_memslots *kvm_alloc_memslots(void)
> > >  		return NULL;
> > >  
> > >  	for (i = 0; i < KVM_MEM_SLOTS_NUM; i++)
> > > -		slots->id_to_index[i] = slots->memslots[i].id = -1;
> > > +		slots->id_to_index[i] = -1;
> > >  
> > >  	return slots;
> > >  }
> > > @@ -1077,6 +1077,32 @@ static struct kvm_memslots *install_new_memslots(struct kvm *kvm,
> > >  	return old_memslots;
> > >  }
> > >  
> > > +/*
> > > + * Note, at a minimum, the current number of used slots must be allocated, even
> > > + * when deleting a memslot, as we need a complete duplicate of the memslots for
> > > + * use when invalidating a memslot prior to deleting/moving the memslot.
> > > + */
> > > +static struct kvm_memslots *kvm_dup_memslots(struct kvm_memslots *old,
> > > +					     enum kvm_mr_change change)
> > > +{
> > > +	struct kvm_memslots *slots;
> > > +	size_t old_size, new_size;
> > > +
> > > +	old_size = sizeof(struct kvm_memslots) +
> > > +		   (sizeof(struct kvm_memory_slot) * old->used_slots);
> > > +
> > > +	if (change == KVM_MR_CREATE)
> > > +		new_size = old_size + sizeof(struct kvm_memory_slot);
> > > +	else
> > > +		new_size = old_size;
> > > +
> > > +	slots = kvzalloc(new_size, GFP_KERNEL_ACCOUNT);
> > > +	if (likely(slots))
> > > +		memcpy(slots, old, old_size);
> > 
> > (Maybe directly copy into it?)
> 
> I don't follow, are you saying do "*slots = *old"?
> 
> @new_size and @old_size are not guaranteed to be the same.  More
> specifically, slots->memslots and old->slots are now flexible arrays with
> potentially different sizes.  Doing "*slots = *old" would only copy the
> standard members, a memcpy() would still be needed for @memlots.
> 
> A more effecient implementation would be:
> 
> 	slots = kvalloc(new_size, GFP_KERNEL_ACCOUNT);
> 	if (likely(slots)) {
> 		memcpy(slots, old, old_size);
> 		if (change == KVM_MR_CREATE)
> 			memset((void *)slots + old_size, 0, new_size - old_size);
> 	}
> 
> to avoid unnecessarily zeroing out the entire thing.  I opted for the
> simpler implementation as this is not performance critical code, for most
> cases @slots won't be all that large, and I wanted to be absolutely sure
> any mixup would hit zeroed memory and not uninitialized memory.

I made a silly mistake on reading "slots" as "old".  Ignore my
comment, sorry!  And please take my R-b for this patch too:

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
