Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD8C1725C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/37lFVQF9ALDrgh3ibOv1Jjy8hLMDJ1/Do5/mtX4fN0=; b=XaJ0SFz7UD5kr5
	yw6zT0HUiZM7suDoa7jL9Ut8Q3EvmBeU6Ek4ie/3kFgQ/1H0xhcnUxAQMhBxTmeviwCZejSdcAant
	4oQy8pLNPlRp6nY2iA1WFuVaHNnNVoVzxucTRcV0Z734/zRUuTNjyBdS57ZJIKM3YGwj9bSy9zUdm
	wmiAZTBDLEEu852mC++7oY4CR2iMDR1TIGHmMMWurxO2YtEFNLTJBhAu8u4vOhAvG4Ssb3+oQwDdb
	aY0U8NHUw7U0NpFX0dwQCPEOUaiGgOfzmVODmxkqG07Te/ak8yd0GShYFSji1Xc0qyOAm4VqBiiv4
	Je9DTbIF3i+mgWaKFisg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NNp-000103-8K; Thu, 27 Feb 2020 17:55:37 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NNV-0000uL-FK
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:55:19 +0000
Received: by mail-ot1-x342.google.com with SMTP id r16so21435otd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 09:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DMctyA7z97eyN2JvDNB9L3xQr/YlQGTFBf3sd5NKHWU=;
 b=1wq4hmg+uAsjEl/wgmRZB+WY61SnT3Q8t2Ct2r2UbddVJTiMvdR+jHFO1VPZwWNFln
 3rf7Tc5G5oXeyVoTint/38zy/H44ulX2ua0wHcyBIAHpC8mnjJr+rgmv0kKGiGmqyyyr
 L6M2BuMpkX8f0mweKz2Xgkf0GCW6ovX4yeF9bZC9VhjnwB1aov3Vbyo9tNgTGFEZTlpn
 PFau6OyWaDUbHi1RUDFKRo6s3n/qIE7YDXlscTscoKY8uEYiod5jIcG4aTjleM2sHnlx
 XFPnIuU3sek8SyIYqhhO5bL63kPvhVttnFL+49NWXf0cP337y2MPHX0eDfh4FFNryDT5
 9niw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DMctyA7z97eyN2JvDNB9L3xQr/YlQGTFBf3sd5NKHWU=;
 b=Op1pLqUXHvW49MnzbE+Zy7ndnzrBfPRYtr2oH7xrADuizJnKK03L8bn8qOBv2lyoCV
 9lRdVs7GbDINwdPHTBbKdyxRbevkZUTZ++7S6nLGKtrnWxRTkHLPT2LuehOS+mK87rzg
 HW0WpB7g3e9kQfutshpcjIUP2lbdWdgeWV6m+dri17+nuED1wP/7k6IHKpqT1/x6V5MM
 EucvT/hXmi2RxVCHQGFkxqQ1Obz2nLf/PsHhm5aWOXPkbjcQxro/zVD+1ouvQ8l/OQQv
 bY2TQcPZSu6tzD3EPp2nRZSuesEP5IyovbNxwRpZWpuh/mIR1dWWipdoQpukXJdxRwGJ
 w9vQ==
X-Gm-Message-State: APjAAAUm8ECvNfGKmVDUlQrhUZIIbul2A5IZr0snpIOduvEe0LsJDC3e
 No0Ht/CVfT2Nd8WsJy6jA235VPQPyjd2th34+3QS2g==
X-Google-Smtp-Source: APXvYqxdU0nvSDit1sUOCjKYz8qzZqWLce5r/cRVMP78amOH13agUjF/G5uzdRyMv/pxEr2rQ+w8GfXKV+Y/DRwCxOw=
X-Received: by 2002:a9d:6c9:: with SMTP id 67mr43495otx.363.1582826115418;
 Thu, 27 Feb 2020 09:55:15 -0800 (PST)
MIME-Version: 1.0
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200227171704.GK31668@ziepe.ca>
 <e8781f85-3fc7-b9ce-c751-606803cbdc77@deltatee.com>
 <20200227174311.GL31668@ziepe.ca>
In-Reply-To: <20200227174311.GL31668@ziepe.ca>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 27 Feb 2020 09:55:04 -0800
Message-ID: <CAPcyv4iek=EmNk9JgXq=-HcZjd9Kz4m2+qXMhnDWMshFKFZPXQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Allow setting caching mode in arch_add_memory()
 for P2PDMA
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_095517_535997_2DDB6A6F 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, Linux-sh <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 David Hildenbrand <david@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 9:43 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Thu, Feb 27, 2020 at 10:21:50AM -0700, Logan Gunthorpe wrote:
> >
> >
> > On 2020-02-27 10:17 a.m., Jason Gunthorpe wrote:
> > >> Instead of this, this series proposes a change to arch_add_memory()
> > >> to take the pgprot required by the mapping which allows us to
> > >> explicitly set pagetable entries for P2PDMA memory to WC.
> > >
> > > Is there a particular reason why WC was selected here? I thought for
> > > the p2pdma cases there was no kernel user that touched the memory?
> >
> > Yes, that's correct. I choose WC here because the existing users are
> > registering memory blocks without side effects which fit the WC
> > semantics well.
>
> Hm, AFAIK WC memory is not compatible with the spinlocks/mutexs/etc in
> Linux, so while it is true the memory has no side effects, there would
> be surprising concurrency risks if anything in the kernel tried to
> write to it.
>
> Not compatible means the locks don't contain stores to WC memory the
> way you would expect. AFAIK on many CPUs extra barriers are required
> to keep WC stores ordered, the same way ARM already has extra barriers
> to keep UC stores ordered with locking..
>
> The spinlocks are defined to contain UC stores though.

How are spinlocks and mutexes getting into p2pdma ranges in the first
instance? Even with UC, the system has bigger problems if it's trying
to send bus locks targeting PCI, see the flurry of activity of trying
to trigger faults on split locks [1].

This does raise a question about separating the cacheability of the
'struct page' memmap from the BAR range. You get this for free if the
memmap is dynamically allocated from "System RAM", but perhaps
memremap_pages() should explicitly prevent altmap configurations that
try to place the map in PCI space?

> If there is no actual need today for WC I would suggest using UC as
> the default.

That's reasonable, but it still seems to be making a broken
configuration marginally less broken. I'd be more interested in
safeguards that prevent p2pdma mappings from being used for any cpu
atomic cycles.

[1]: https://lwn.net/Articles/784864/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
