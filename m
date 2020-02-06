Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310521549B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 17:51:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngTwG33jf3VAl17mWBUCz6+7pu5jaFQq/KGaVH04Np8=; b=Ru6MB11EXVc+n8
	NMKoSmaCCYvb46fvCnOxuKzGG8b7NkKmPhHRGzhaWqGEMdv8dFEbdh2Ucbsa2f5hUVl3/LZ+JuKnS
	PH4r/YR1j8+0xNQpgu2bncmscPgQC0ayzE9LbA9eif0eTH9gX3PmW8fBf5vhWoiPD5RHNhqBPejwW
	V3CpgmUeeM57em4zj/Ux/8U0TZycjY0lOMBxo9uTr9lHEcBepX0p0ZVN4wNnhro6CDO9eg4e3uvje
	ExpE7pAG9KKqehe7LHynmsjk5t++o6qTl7XFSCy5Pc0vjd+dtBxfhQGVM+GfEW+IiuaWboSnXPs0L
	lwgV1jkfPhmyBW/Gngdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izkNN-0007O6-2m; Thu, 06 Feb 2020 16:51:37 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izkNF-0007NR-CE
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 16:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581007886;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5uqDteyIESKHBqFfefG3/Fe5X/W69IoC1lkhBv3/qEc=;
 b=N8Z2Rz5BUQ59TPhOfRv39XxR4Mo5Z47hyqyiK46lX3oeR7yqQbuujfwmZsI2m0Xzml1msS
 tR4wDpaMDf5k9a+8mzYv7PkAeYfLZR0Un4oF9Pvpfej7MuBnV7RNkZ97BXEHr4lJA0CQzJ
 DLFR4U/u0cuFPA9RBHyxwhKlGPgRlx0=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-qkqZMWu0PQiDzAZsg_Clzw-1; Thu, 06 Feb 2020 11:51:21 -0500
Received: by mail-qt1-f198.google.com with SMTP id o18so4234350qtt.19
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 08:51:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6wEZC2xS1ICrNAGJ+8QI1N9zsFW9IzwC/0IJCgjt8nk=;
 b=aDMlDHDjc9Fo6lVT1InkdfAld8/x4bpIMT3K1pblsvinOMgwEXvHdji8M0t8eXMsoc
 eS56ae5VovzFUA+iCWj8lEk56Jk4LQ+RjtdctgKWC5E7a//ODB0TtGJAeZFEPeUZeZgR
 7OZgYKcWS9rwiIU0RehG5txXi88imzM/9t3goMZi3E6AfOQ0PKv1U3OY+uU7j+UAQwcW
 WF5eVvTJlPSXwLjw5dY3kbVw8PlL1TPUJKQHu+rdMNkEurEIqMaZLZwAB79uzzQsFJNe
 ONFpwSnEEtQEG1MOH3lswdFIw1gE2O3tyxMdODVAQH5b8DeDXb2eusiDlCUB+BFmvMOH
 AKfg==
X-Gm-Message-State: APjAAAVpdkMuDHWv1hpFDRJbpsHcuwStA7S1SAPyHL+P+dLoc0W0BWVU
 Nkgpex+bdmhxEauW/p+oIKiQboxBjWP/udYgdCM3iEdXQBI2hg/x8ftmj26T1iwIiU6VB0/HuZg
 3IbXuRFdGN9ntOvpPq2nk7iPCzUK94yAdBUM=
X-Received: by 2002:a0c:ed22:: with SMTP id u2mr3142540qvq.13.1581007880666;
 Thu, 06 Feb 2020 08:51:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqx/jX2RKvHGf3JDTGGU+D3o2LP4p21Bk3Kl7+mbxJpFhXmYhA374b5M6RMOGMp7RFtjxv6e0g==
X-Received: by 2002:a0c:ed22:: with SMTP id u2mr3142516qvq.13.1581007880314;
 Thu, 06 Feb 2020 08:51:20 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id v10sm1058913qtj.26.2020.02.06.08.51.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 08:51:19 -0800 (PST)
Date: Thu, 6 Feb 2020 11:51:16 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 12/19] KVM: Move memslot deletion to helper function
Message-ID: <20200206165116.GE695333@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-13-sean.j.christopherson@intel.com>
 <20200206161415.GA695333@xz-x1>
 <20200206162818.GD13067@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200206162818.GD13067@linux.intel.com>
X-MC-Unique: qkqZMWu0PQiDzAZsg_Clzw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_085129_494866_D8090117 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

On Thu, Feb 06, 2020 at 08:28:18AM -0800, Sean Christopherson wrote:
> On Thu, Feb 06, 2020 at 11:14:15AM -0500, Peter Xu wrote:
> > On Tue, Jan 21, 2020 at 02:31:50PM -0800, Sean Christopherson wrote:
> > > Move memslot deletion into its own routine so that the success path for
> > > other memslot updates does not need to use kvm_free_memslot(), i.e. can
> > > explicitly destroy the dirty bitmap when necessary.  This paves the way
> > > for dropping @dont from kvm_free_memslot(), i.e. all callers now pass
> > > NULL for @dont.
> > > 
> > > Add a comment above the code to make a copy of the existing memslot
> > > prior to deletion, it is not at all obvious that the pointer will become
> > > stale during sorting and/or installation of new memslots.
> > 
> > Could you help explain a bit on this explicit comment?  I can follow
> > up with the patch itself which looks all correct to me, but I failed
> > to catch what this extra comment wants to emphasize...
> 
> It's tempting to write the code like this (I know, because I did it):
> 
> 	if (!mem->memory_size)
> 		return kvm_delete_memslot(kvm, mem, slot, as_id);
> 
> 	new = *slot;
> 
> Where @slot is a pointer to the memslot to be deleted.  At first, second,
> and third glances, this seems perfectly sane.
> 
> The issue is that slot was pulled from struct kvm_memslots.memslots, e.g.
> 
> 	slot = &slots->memslots[index];
> 
> Note that slots->memslots holds actual "struct kvm_memory_slot" objects,
> not pointers to slots.  When update_memslots() sorts the slots, it swaps
> the actual slot objects, not pointers.  I.e. after update_memslots(), even
> though @slot points at the same address, it's could be pointing at a
> different slot.  As a result kvm_free_memslot() in kvm_delete_memslot()
> will free the dirty page info and arch-specific points for some random
> slot, not the intended slot, and will set npages=0 for that random slot.

Ah I see, thanks.  Another alternative is we move the "old = *slot"
copy into kvm_delete_memslot(), which could be even clearer imo.
However I'm not sure whether it's a good idea to drop the test-by for
this.  Considering that comment change should not affect it, would you
mind enrich the comment into something like this (or anything better)?

/*
 * Make a full copy of the old memslot, the pointer will become stale
 * when the memslots are re-sorted by update_memslots() in
 * kvm_delete_memslot(), while to make the kvm_free_memslot() work as
 * expected later on, we still need the cached memory slot.
 */

In all cases:

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
