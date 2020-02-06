Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6AA154E8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 23:04:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqyXaVv3zbE/du0ZxA7cGqvyzR0W9zEojYmb6op5R7g=; b=RzFfR9eLnwVW0H
	2JVDS2RQyf6A7Y4ScqyeD1aEZUgKSm5tI2Yct3gn90EAipNMw8yr3sHTCR9nOwTsdkwjpT1XKJ2El
	C7UM56nLFNH8tGTYhrvP+TeuFw34v1PYhjMMdTqoWfnH/HqBfnqzxmD772PQlpF3pqMC02rvCRHQ3
	Ed/DSVXbIw4o8DTjYXgW/kKd3HAmtBPupkTvQkIbSsG5j88KY256SbxCYC5BYyPrIyoFc61GyLlBk
	D5/ayOX/JU608qNM2Fzbr7uVJg5YNuUL3AU1c35dO2opdqCW4ji1cdOMUCFigg074EHrPrMf9B7h+
	N4LQtjxDp1BSqL2Hz/rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izpFr-0001BB-LJ; Thu, 06 Feb 2020 22:04:11 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izpFj-0001AY-3M
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 22:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581026641;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/6BekcDT9n3zN1TnOpoj1GWb65h2d7UBWogt94JZQto=;
 b=CZ6l8geqaPcxZE17XK4T0TV8mxd9Zd+CyRYNz4nxYAUnvZ+kiP+8QohpWMHKUateOoD59F
 VgQ//FzkId2WjvagJBP0vh4uonx85khz62JVWrKcJOLE0a2eK/qWryjhNIEJcXL7NdTU0u
 vxgwGAQziRLa2d+zUg1oJhJjQfEB3mQ=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-69-nw6hpJ04ObSgKNy19kvc1A-1; Thu, 06 Feb 2020 17:03:59 -0500
Received: by mail-qv1-f72.google.com with SMTP id u11so4617437qvo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 14:03:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dz1uoo006UjtoREFQWYnwIS83IIptUYIWImaDlSbYB4=;
 b=mr3iQiVwdKoNpbrCHXFQKio5eVA5DzR2pS19eDq78eTK8YcBdxY8n0EEvbt1RaoWTC
 spUeTp44aTNWcUDKMj0HvEnCVjLg+1CzPDdc92bhzC36FadQX1KEtqlbrx9HLuA8XAdY
 hWyJiqPfOYf7nIsODbBe60z7bik+Hh+xIfExcTtvTSa2X6YHt3H3VC5o7AyDf/L3rnNP
 ni3x5TL2Qv6tM61tETlCmDkS0+dKjEvlbi5wPIzLD8syejC+QUDmpjRmNRORQo06DLLi
 rQvtXjWCtx0WHk1wx6PT9ZrBgOchsbDhA1TPRS6/G46NNER8WQPDy/na6wLY/e40lDfA
 aezQ==
X-Gm-Message-State: APjAAAVE1foNXEgoVmCOqqbc1W4ghKV6tAOErKUWS8aorWENtibUyDcy
 Ebl2vPHgw+qfhB6ZcSXeorf0f3RheLHUuapHYcZkYeLQKEOb6IVdEhFvSFOe+IuC2KQglgpFYUn
 XOeAPjzYDyPFGqHPbVz3wNA1KPOxZpB+hTgc=
X-Received: by 2002:ac8:7396:: with SMTP id t22mr4707000qtp.269.1581026639163; 
 Thu, 06 Feb 2020 14:03:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqwu2LJdikIjEQUWHwIaSDYrGQrBVVncwkTn7Iy+PzbVsPREs+ohxiEeOt5zr/YlX26hX6iftw==
X-Received: by 2002:ac8:7396:: with SMTP id t22mr4706974qtp.269.1581026638877; 
 Thu, 06 Feb 2020 14:03:58 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id i7sm312515qki.83.2020.02.06.14.03.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 14:03:58 -0800 (PST)
Date: Thu, 6 Feb 2020 17:03:55 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v4 16/19] KVM: Ensure validity of memslot with respect to
 kvm_get_dirty_log()
Message-ID: <20200206220355.GH700495@xz-x1>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-17-sean.j.christopherson@intel.com>
 <20191224181930.GC17176@xz-x1>
 <20200114182506.GF16784@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200114182506.GF16784@linux.intel.com>
X-MC-Unique: nw6hpJ04ObSgKNy19kvc1A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_140403_224394_3C594C59 
X-CRM114-Status: GOOD (  18.81  )
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
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

On Tue, Jan 14, 2020 at 10:25:07AM -0800, Sean Christopherson wrote:
> On Tue, Dec 24, 2019 at 01:19:30PM -0500, Peter Xu wrote:
> > On Tue, Dec 17, 2019 at 12:40:38PM -0800, Sean Christopherson wrote:
> > > +int kvm_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log,
> > > +		      int *is_dirty, struct kvm_memory_slot **memslot)
> > >  {
> > >  	struct kvm_memslots *slots;
> > > -	struct kvm_memory_slot *memslot;
> > >  	int i, as_id, id;
> > >  	unsigned long n;
> > >  	unsigned long any = 0;
> > >  
> > > +	*memslot = NULL;
> > > +	*is_dirty = 0;
> > > +
> > >  	as_id = log->slot >> 16;
> > >  	id = (u16)log->slot;
> > >  	if (as_id >= KVM_ADDRESS_SPACE_NUM || id >= KVM_USER_MEM_SLOTS)
> > >  		return -EINVAL;
> > >  
> > >  	slots = __kvm_memslots(kvm, as_id);
> > > -	memslot = id_to_memslot(slots, id);
> > > -	if (!memslot->dirty_bitmap)
> > > +	*memslot = id_to_memslot(slots, id);
> > > +	if (!(*memslot)->dirty_bitmap)
> > >  		return -ENOENT;
> > >  
> > > -	n = kvm_dirty_bitmap_bytes(memslot);
> > > +	kvm_arch_sync_dirty_log(kvm, *memslot);
> > 
> > Should this line belong to previous patch?
> 
> No.
> 
> The previous patch, "KVM: Provide common implementation for generic dirty
> log functions", is consolidating the implementation of dirty log functions
> for architectures with CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT=y.
> 
> This code is being moved from s390's kvm_vm_ioctl_get_dirty_log(), as s390
> doesn't select KVM_GENERIC_DIRTYLOG_READ_PROTECT.  It's functionally a nop
> as kvm_arch_sync_dirty_log() is empty for PowerPC, the only other arch that
> doesn't select KVM_GENERIC_DIRTYLOG_READ_PROTECT.
> 
> Arguably, the call to kvm_arch_sync_dirty_log() should be moved in a
> separate prep patch.  It can't be a follow-on patch as that would swap the
> ordering of kvm_arch_sync_dirty_log() and kvm_dirty_bitmap_bytes(), etc...
> 
> My reasoning for not splitting it to a separate patch is that prior to this
> patch, the common code and arch specific code are doing separate memslot
> lookups via id_to_memslot(), i.e. moving the kvm_arch_sync_dirty_log() call
> would operate on a "different" memslot.   It can't actually be a different
> memslot because slots_lock is held, it just felt weird.
> 
> All that being said, I don't have a strong opinion on moving the call to
> kvm_arch_sync_dirty_log() in a separate patch; IIRC, I vascillated between
> the two options when writing the code.  If anyone wants it to be a separate
> patch I'll happily split it out.

(Sorry to respond so late)

I think the confusing part is the subject, where you only mentioned
the memslot change.  IMHO you can split the change to make it clearer,
or at least would you mind mention that kvm_arch_sync_dirty_log() move
in the commit message?  Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
