Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDDD154E34
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 22:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0WWRGKrlkjG7nUTL3WhxdYDDytrLeX2MKT0vP3H72s=; b=OQL0D7CNOXNlJR
	8oVKkiNSi1kW43IFY6X6IsFJQ/kZNr42Gd3iaxBWBePLX8MEnLHUAhlA5ifR8P22O+6GUHvTYaSrr
	zLp/MBdCAOpJU8RW/XB8XdpgsB8WVhbSZb4dcLVflmNo9sMPsA3mcjAKsLfrZ/nOPKiqwZxaU+sWK
	P4ZuOxYKO1q3wdlzbNqdTNGY3cGvCbywhR7ml99zCBKcETGn5Dc6PdP0k1ca99dD/nMdV7ugQ3Nco
	O6LifzNKq0qXPvDA3BGe3dSA67xb4bxuprpB+34qLDBdZZELEBY+fRf86FoIWjcroXwm2ov0HqjPm
	RM1U58cvErO0EweXlAGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izotl-0002Xs-LS; Thu, 06 Feb 2020 21:41:21 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izotf-0002XW-44
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 21:41:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581025273;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=miTk2jHvXEeon48FMT6UBcqphMo6SpNxcWIB57XG7sg=;
 b=hZmi66chcRcV5qKh3TXBL2+JYRCnW/7L2EiPAm0DIoDmQ1pqrEDf0u0Msd3+2s9w/4YebZ
 0749Zpje0U8TQWxfldwAJZ59tDU8hT/W5FdF1llDsJo3OmHIPGIa7vB9MyilHEkxXPDegs
 d9jQ7ThRroxdvuTwbIG8B10o3DXqYKo=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-407-MG8x2cemPEiwpzfxDbtDwQ-1; Thu, 06 Feb 2020 16:41:12 -0500
Received: by mail-qk1-f199.google.com with SMTP id z21so4540130qki.18
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 13:41:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fv7hocxnCQMQx/Ef0JfmL5g1BsW3yRUgDUYfbGA1aT0=;
 b=TrF2LbK13H6/yJhK8zH7xNt6k48xxgFzndQbE3uCbi6JQ9AA/bC7dgv8QOUvvp7bl8
 XAkYw6xf6geOLuFVsji1fgheyDn/2EpcXc1I8YdIMaWQsFAHK7Pd2qwtQA6Vhzjbg1XP
 jsomd1v3bWcnbCHscFssitOwczfE7qe0z/XEDbu3TirAgYG3Vq1xMeNA7Wfe6Ie3AKY6
 X1RynK5MRMmsaByxsnRlfcA1+tcMJn2gQ4istip7bvK1Cm7uKNFXQaKdlzV9OStMKB8d
 xhEuwRuwUIliaD2wmC7NFJFQ/X2IqN3jnn6UTbPm3eOdbWtT7I/ygGGjXxuChUfkxkZH
 hgbg==
X-Gm-Message-State: APjAAAXzGVegKHPnc4M3lJZpBU3Y3qfuJcjhWPTLI3FhpAHRpV/n1e3i
 Y28mL0KwVK/LWIlCaKmQmwoNaSDQgMezNWui51vzraqUMh+ZVTdwNFufcQ42xlrue2zdH3MRgh+
 fXndqs2cnMq7A8HNNeiyylvFQDKh6ne0oX3Y=
X-Received: by 2002:a05:620a:7f2:: with SMTP id
 k18mr4541152qkk.207.1581025271641; 
 Thu, 06 Feb 2020 13:41:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqxJgBpP+Sn/XW78feM1lgNrPZNv0ribzryOvpKTws4jf2FMfbWVePD88+Gb3lvt+IGO4p+aFA==
X-Received: by 2002:a05:620a:7f2:: with SMTP id
 k18mr4541080qkk.207.1581025270452; 
 Thu, 06 Feb 2020 13:41:10 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id w9sm304509qka.71.2020.02.06.13.41.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 13:41:09 -0800 (PST)
Date: Thu, 6 Feb 2020 16:41:06 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 15/19] KVM: Provide common implementation for generic
 dirty log functions
Message-ID: <20200206214106.GG700495@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-16-sean.j.christopherson@intel.com>
 <20200206200200.GC700495@xz-x1>
 <20200206212120.GF13067@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200206212120.GF13067@linux.intel.com>
X-MC-Unique: MG8x2cemPEiwpzfxDbtDwQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_134115_240795_CF7D3776 
X-CRM114-Status: GOOD (  21.35  )
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

On Thu, Feb 06, 2020 at 01:21:20PM -0800, Sean Christopherson wrote:
> On Thu, Feb 06, 2020 at 03:02:00PM -0500, Peter Xu wrote:
> > On Tue, Jan 21, 2020 at 02:31:53PM -0800, Sean Christopherson wrote:
> > 
> > [...]
> > 
> > > -int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm, struct kvm_clear_dirty_log *log)
> > > +void kvm_arch_dirty_log_tlb_flush(struct kvm *kvm,
> > > +				  struct kvm_memory_slot *memslot)
> > 
> > If it's to flush TLB for a memslot, shall we remove the "dirty_log" in
> > the name of the function, because it has nothing to do with dirty
> > logging any more?  And...
> 
> I kept the "dirty_log" to allow arch code to implement logic specific to a
> TLB flush during dirty logging, e.g. x86's lockdep assert on slots_lock.
> And similar to the issue with MIPS below, to deter usage of the hook for
> anything else, i.e. to nudge people to using kvm_flush_remote_tlbs()
> directly.

The x86's lockdep assert is not that important afaict, since the two
callers of the new tlb_flush() hook will be with slots_lock for sure.

> 
> > >  {
> > > -	struct kvm_memslots *slots;
> > > -	struct kvm_memory_slot *memslot;
> > > -	bool flush = false;
> > > -	int r;
> > > -
> > > -	mutex_lock(&kvm->slots_lock);
> > > -
> > > -	r = kvm_clear_dirty_log_protect(kvm, log, &flush);
> > > -
> > > -	if (flush) {
> > > -		slots = kvm_memslots(kvm);
> > > -		memslot = id_to_memslot(slots, log->slot);
> > > -
> > > -		/* Let implementation handle TLB/GVA invalidation */
> > > -		kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
> > > -	}
> > > -
> > > -	mutex_unlock(&kvm->slots_lock);
> > > -	return r;
> > > +	/* Let implementation handle TLB/GVA invalidation */
> > > +	kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
> > 
> > ... This may not directly related to the current patch, but I'm
> > confused on why MIPS cannot use kvm_flush_remote_tlbs() to flush TLBs.
> > I know nothing about MIPS code, but IIUC here flush_shadow_memslot()
> > is a heavier operation that will also invalidate the shadow pages.
> > Seems to be an overkill here when we only changed write permission of
> > the PTEs?  I tried to check the first occurance (2a31b9db15353) but I
> > didn't find out any clue of it so far.
> > 
> > But that matters to this patch because if MIPS can use
> > kvm_flush_remote_tlbs(), then we probably don't need this
> > arch-specific hook any more and we can directly call
> > kvm_flush_remote_tlbs() after sync dirty log when flush==true.
> 
> Ya, the asid_flush_mask in kvm_vz_flush_shadow_all() is the only thing
> that prevents calling kvm_flush_remote_tlbs() directly, but I have no
> clue as to the important of that code.

As said above I think the x86 lockdep is really not necessary, then
considering MIPS could be the only one that will use the new hook
introduced in this patch...  Shall we figure that out first?

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
