Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF79B154C57
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 20:37:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exh1GG27bU5IcChR8aJFZS7lDmhlzGFXRuxn4kjR0hg=; b=piw+VDgJ4G31mo
	T4RiPG0MklEjBXoQUhahrQEbM3BuQrVN8QcLZj2IePxrS5nvN5mlJraPGgXyPSZU4a8TP9Dx86a01
	RYF6bj0Srm+t10NDu+Bmk/9LUT7/aZXMFyJBKCeXaEbqdtbUZdkmZDs7I4Vnjix7qCr4tkfywrLvk
	mbmkoGn/iwJoWNlVSnFmMwcEVJaGSk2Q3FnQIPecTXwAMUjzb6wjj4W0z7YiAtIoI7gEqA1Prbxd2
	7PV0MKxffUTrYuvUuh7ZUYzUhVbuFvX7Vuec6seiqafqBVytiblu4LiCslauWv5xHzCTVBgkSF2EW
	lzt3emb+WDEL7qi/1j0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmxM-0007YC-E9; Thu, 06 Feb 2020 19:36:56 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmxG-0007XT-5i
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 19:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581017808;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BY4eM7roan33zzN33BZZTsZYnXiEgiqpdLA911AInoA=;
 b=Yp26ikKrZkcDUnby2glhiRYLP2zYTZn9IlQkfVw7LipiDxLY+a2lfof+xi2gIt47G2J3o8
 WGoM/jWLS39jmOd7T1/X1KHxVh0E8IZkgO3EALkcwu/0TTy/ImvbJNGWr7bIZcNN26Rh+q
 2wn/XUuH8eAHATK0XH95yCrUlX5R/ao=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-HKmpGfLKPx67ZxhCtGYB8g-1; Thu, 06 Feb 2020 14:36:44 -0500
Received: by mail-qv1-f70.google.com with SMTP id u11so4352200qvo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 11:36:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=63tHR8gxCpqnhyTTleCyjPFAZKtvnLPIWeZPDjhFIKk=;
 b=tdkKkaJtl/v+jrzCrRohJCcL/oTX7QVf84dFKxMM+wvKQPrfNeo4L5ZDxDMrGhXh0j
 75SjHM06YOKE+zuuhLJ4AWe7PhsW7qaHZYMn3MjRhD/fIA5zHrVfsgudb9x/PYBGwgJZ
 MEw80AWz+ruuT+VplzF+nElKzXvNzmGWmW7V2rEiBFBcHSmU+KMM/KG3VydYKUiW5TDv
 oJSins5FmVPF6/UbXI8Om02UG4mN3cJJdfOTxnT8cOzvBBZ+2vlqrwRSASYIV+TkKcMw
 ytT0ABOuaoRUZvwUyySzHzOv1uu2ZvlvYbiN5nLEVtM7g74gcjaKlbsVjy8ZUM4c5i6a
 WbbQ==
X-Gm-Message-State: APjAAAWU15kC/FXG8dwVBHvGxT4DmykGniTllnozl1zEnng4ZLsKW78s
 ShWqZ50gvtqfh0fV67zt5h0Wf4ddCZYXRmJ8MxVO9YXWKKn7H8kfxN7e9XrlnnQs3b/BDbqXY5/
 h8UNdR0Bvtl3NMTKF+PCUwumwMdUE+T6YmTE=
X-Received: by 2002:ac8:42c6:: with SMTP id g6mr4191487qtm.250.1581017803991; 
 Thu, 06 Feb 2020 11:36:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqzatdWQ9u1Csyt6ZBqzWmkIODyw51F4x3+ll70oC84aFgUA9YxLV7t3Xset8ndnG7nclcebeQ==
X-Received: by 2002:ac8:42c6:: with SMTP id g6mr4191461qtm.250.1581017803755; 
 Thu, 06 Feb 2020 11:36:43 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id e64sm135332qtd.45.2020.02.06.11.36.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 11:36:43 -0800 (PST)
Date: Thu, 6 Feb 2020 14:36:40 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 14/19] KVM: Clean up local variable usage in
 __kvm_set_memory_region()
Message-ID: <20200206193640.GB700495@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-15-sean.j.christopherson@intel.com>
 <20200206190641.GA700495@xz-x1>
 <20200206192230.GE13067@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200206192230.GE13067@linux.intel.com>
X-MC-Unique: HKmpGfLKPx67ZxhCtGYB8g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_113650_293871_7818374D 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, Feb 06, 2020 at 11:22:30AM -0800, Sean Christopherson wrote:
> On Thu, Feb 06, 2020 at 02:06:41PM -0500, Peter Xu wrote:
> > On Tue, Jan 21, 2020 at 02:31:52PM -0800, Sean Christopherson wrote:
> > 
> > [...]
> > 
> > > @@ -1101,52 +1099,55 @@ int __kvm_set_memory_region(struct kvm *kvm,
> > >  	if (mem->guest_phys_addr + mem->memory_size < mem->guest_phys_addr)
> > >  		return -EINVAL;
> > >  
> > > -	slot = id_to_memslot(__kvm_memslots(kvm, as_id), id);
> > > -	base_gfn = mem->guest_phys_addr >> PAGE_SHIFT;
> > > -	npages = mem->memory_size >> PAGE_SHIFT;
> > > -
> > > -	if (npages > KVM_MEM_MAX_NR_PAGES)
> > > -		return -EINVAL;
> > > -
> > >  	/*
> > >  	 * Make a full copy of the old memslot, the pointer will become stale
> > >  	 * when the memslots are re-sorted by update_memslots().
> > >  	 */
> > > -	old = *slot;
> > > +	tmp = id_to_memslot(__kvm_memslots(kvm, as_id), id);
> > > +	old = *tmp;
> > > +	tmp = NULL;
> > 
> > Shall we keep this chunk to the patch where it will be used?  Other
> > than that, it looks good to me.
> 
> I assume you're talking about doing this instead of using @tmp?
> 
> 	old = *id_to_memslot(__kvm_memslots(kvm, as_id), id);

Yes.

> 
> It's obviously possible, but I really like resulting diff for
> __kvm_set_memory_region() in "KVM: Terminate memslot walks via used_slots"
> when tmp is used.
> 
> @@ -1104,8 +1203,13 @@ int __kvm_set_memory_region(struct kvm *kvm,
>          * when the memslots are re-sorted by update_memslots().
>          */
>         tmp = id_to_memslot(__kvm_memslots(kvm, as_id), id);
> -       old = *tmp;
> -       tmp = NULL;
> +       if (tmp) {
> +               old = *tmp;
> +               tmp = NULL;
> +       } else {
> +               memset(&old, 0, sizeof(old));
> +               old.id = id;
> +       }

I normally don't do that, for each patch I'll try to make it
consistent to itself, assuming that follow-up patches can be rejected.
I don't have strong opinion either, please feel free to keep them if
no one disagrees.

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
