Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F5F7BD1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 11:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVyVLb3CHXGiZ6VtVu/ijqPeQQ8YCGrCi1ZSsdMHWvA=; b=TJtNGycGDjWPtL
	NuzXopVz34O2nbxZzFJD7V96NunNwwbOhp/x3eJgoJ8gI1+SoMUf3Zlf0c90P6StLEYgfdja72rxO
	IYhRCkWya6LEK2AcNdT5JQnDcy2CB/nYDT7jOmzmaQe9HGnql/FTwdWNL9N9itUe81HjFBvDJR3z7
	PoA0XRcSGdJyItXtjYcHGDh0LB3aPvfjkYb/LFbRaZOCNRfJGA0TxaDquTasgvhCNpQdBGRMPufQl
	CjdW/xxUIdWIR7zDbtQJVR11UcXHvDvF+MtndLlEjuf3WPZLXTY/PsOCT5foXSAwz5GMAvo3RLh5a
	HtDdjCxHDAL2bec5j0jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsktZ-0003jT-EX; Wed, 31 Jul 2019 09:27:41 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsktM-0003fY-Qf
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 09:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=In-Reply-To:Content-Type:MIME-Version:References
 :Message-ID:Subject:Cc:To:From:Date;
 bh=tys11WF7FiBbva0mPM06RvxVHoTJLCHaJFi1kgHKOlY=; b=VWmBZSuU83JjDnf9gMTaxrmzwn
 L9+fc/xpWeDeXZSEI/yzPMyWYCcv0q+KeV8O2qeIlc0spZPwS8zCive5J22gcI0xvRa6BgxYG0eT8
 ty5Kg3Pq+IeY2sPwZwChlunbSVDEXqnQBnphMnW8RDTnsCCyKFs/eIxGSi6de0U8qTQw=;
Received: from frobwit.duncanthrax.net ([89.31.1.178]
 helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hsksy-0002wy-IF; Wed, 31 Jul 2019 11:27:04 +0200
Date: Wed, 31 Jul 2019 11:27:03 +0200
From: Sven Schnelle <svens@stackframe.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
Message-ID: <20190731092703.GA31316@t470p.stackframe.org>
References: <20190722154210.42799-1-steven.price@arm.com>
 <794fb469-00c8-af10-92a8-cb7c0c83378b@arm.com>
 <270ce719-49f9-7c61-8b25-bc9548a2f478@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <270ce719-49f9-7c61-8b25-bc9548a2f478@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_022729_016457_3BA972BE 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mm@kvack.org,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, Helge Deller <deller@gmx.de>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steven,

On Mon, Jul 29, 2019 at 12:32:25PM +0100, Steven Price wrote:
> 
> parisc is more interesting and I'm not sure if this is necessarily
> correct. I originally proposed a patch with the line "For parisc, we
> don't support large pages, so add stubs returning 0" which got Acked by
> Helge Deller. However going back to look at that again I see there was a
> follow up thread[2] which possibly suggests I was wrong?

I just started a week ago implementing ptdump for PA-RISC. Didn't notice that
you're working on making it generic, which is nice. I'll adjust my code
to use the infrastructure you're currently developing.

> Can anyone shed some light on whether parisc does support leaf entries
> of the page table tree at a higher than the normal depth?
> 
> [1] https://lkml.org/lkml/2019/2/27/572
> [2] https://lkml.org/lkml/2019/3/5/610

My understanding is that PA-RISC only has leaf entries on PTE level.

> The intention is that the page table walker would be available for all
> architectures so that it can be used in any generic code - PTDUMP simply
> seemed like a good place to start.
> 
> > Now that pmd_leaf() and pud_leaf() are getting used in walk_page_range() these
> > functions need to be defined on all arch irrespective if they use PTDUMP or not
> > or otherwise just define it for archs which need them now for sure i.e x86 and
> > arm64 (which are moving to new generic PTDUMP framework). Other archs can
> > implement these later.

I'll take care of the PA-RISC part - for 32 bit your generic code works, for 64Bit
i need to learn a bit more about the following hack:

arch/parisc/include/asm/pgalloc.h:15
/* Allocate the top level pgd (page directory)
 *
 * Here (for 64 bit kernels) we implement a Hybrid L2/L3 scheme: we
 * allocate the first pmd adjacent to the pgd.  This means that we can
 * subtract a constant offset to get to it.  The pmd and pgd sizes are
 * arranged so that a single pmd covers 4GB (giving a full 64-bit
 * process access to 8TB) so our lookups are effectively L2 for the
 * first 4GB of the kernel (i.e. for all ILP32 processes and all the
 * kernel for machines with under 4GB of memory)
 */

I see that your change clear P?D entries when p?d_bad() returns true, which - i think -
would be the case with the PA-RISC implementation.

Regards
Sven

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
