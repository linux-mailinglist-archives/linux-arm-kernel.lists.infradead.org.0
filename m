Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BE2749E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 11:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLvtqFBRdXZwQZrPk4HoFV33sMjwfmOODAmHTPROhMk=; b=XQ7wqWP/hSRyxe
	zZkcfDazm57ksuq9ZfGduq/jOmPZqgoe2yUnxV8K8KRzw6028BUBpoGTKQlXPVxD+Nlt8VsyC/qOa
	zE+5tH9F8aj5ihKhTdl/cdMrRsKMccKW2L/ZfSpkn70eNyZKb3jQeqG5DEvL6RQMMsIy7V2YNQZcv
	euJPdg+ION1qcJ/uknlqyscQOqJLsXND5jsOkkDfpjzduxiyuSyptXOSKJ3JIos2W6Ee3Nc2vHHJu
	OxHVjQm7ROukSXQlbX/rQh/HsN9NVyEkriPivtc1YuTEMNqgydiMDHeGcHA08sqSeNQHNFnQ7vfOI
	oi/P5v4ROV72/aG1lMUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqa5U-0006Lq-6v; Thu, 25 Jul 2019 09:31:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqa5F-0006LQ-11
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 09:30:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 925062238C;
 Thu, 25 Jul 2019 09:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564047044;
 bh=YLT7mc7uWZHnVWRAOXEA35kXHXVmPx8BUd1T5sThOCg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rypn7it8Rf260lh0cGgrtQiQ283OFmqpG1lxyuto4Y7QYQbzn6ruYk8uV6NiK7D/f
 hnNYlr/9QmLq6CPAhKWzSsjmkJC+PNqJTbRH4mEjG8OcRYMPfYeyOTSoxzgJPBd94M
 9AMwOACsNIfinxPFc3YYJSq3Hk2TY45ShQWw/bTk=
Date: Thu, 25 Jul 2019 10:30:37 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
Message-ID: <20190725093036.dzn6uulcihhkohm2@willie-the-truck>
References: <20190722154210.42799-1-steven.price@arm.com>
 <835a0f2e-328d-7f7f-e52a-b754137789f9@arm.com>
 <c9d2042f-c731-4705-4148-b38deccf7963@arm.com>
 <6f59521e-1f3e-6765-9a6f-c8eca4c0c154@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f59521e-1f3e-6765-9a6f-c8eca4c0c154@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_023045_101808_B545E3C8 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 linux-mm@kvack.org, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 02:39:22PM +0530, Anshuman Khandual wrote:
> On 07/24/2019 07:05 PM, Steven Price wrote:
> > There isn't any problem as such with using p?d_large macros. However the
> > name "large" has caused confusion in the past. In particular there are
> > two types of "large" page:
> > 
> > 1. leaf entries at high levels than normal ('sections' on Arm, for 4K
> > pages this gives you 2MB and 1GB pages).
> > 
> > 2. sets of contiguous entries that can share a TLB entry (the
> > 'Contiguous bit' on Arm - which for 4K pages gives you 16 entries = 64
> > KB 'pages').
> 
> This is arm64 specific and AFAIK there are no other architectures where there
> will be any confusion wrt p?d_large() not meaning a single entry.
> 
> As you have noted before if we are printing individual entries with PTE_CONT
> then they need not be identified as p??d_large(). In which case p?d_large()
> can just safely point to p?d_sect() identifying regular huge leaf entries.

Steven's stuck in the middle of things here, but I do object to p?d_large()
because I find it bonkers to have p?d_large() and p?d_huge() mean completely
different things when they are synonyms in the English language.

Yes, p?d_leaf() matches the terminology used by the Arm architecture, but
given that most page table structures are arranged as a 'tree', then it's
not completely unreasonable, in my opinion. If you have a more descriptive
name, we could use that instead. We could also paint it blue.

> > In many cases both give the same effect (reduce pressure on TLBs and
> > requires contiguous and aligned physical addresses). But for this case
> > we only care about the 'leaf' case (because the contiguous bit makes no
> > difference to walking the page tables).
> 
> Right and we can just safely identify section entries with it. What will be
> the problem with that ? Again this is only arm64 specific.
> 
> > 
> > As far as I'm aware p?d_large() currently implements the first and
> > p?d_(trans_)huge() implements either 1 or 2 depending on the architecture.
> 
> AFAIK option 2 exists only on arm6 platform. IIUC generic MM requires two
> different huge page dentition from platform. HugeTLB identifies large entries
> at PGD|PUD|PMD after converting it's content into PTE first. So there is no
> need for direct large page definitions for other levels.
> 
> 1. THP		- pmd_trans_huge()
> 2. HugeTLB	- pte_huge()	   CONFIG_ARCH_WANT_GENERAL_HUGETLB is set
> 
> A simple check for p?d_large() on mm/ and include/linux shows that there are
> no existing usage for these in generic MM. Hence it is available.

Alternatively, it means we have a good opportunity to give it a better name
before it spreads into the core code.

> IMHO the new addition of p?d_leaf() can be avoided and p?d_large() should be
> cleaned up (if required) in platforms and used in generic functions.

Again, I disagree and think p?d_large() should be confined to arch code
if it sticks around at all.

I don't usually care much about naming, but in this case I really find
the status quo needlessly confusing.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
