Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360731E7BA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 13:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63c9x4tHioWATE0WwO1S4W4Qjk/Ym0aV5H+qg6/0ttc=; b=HM4J7jNls5RnrD
	JQBQY4GFti7qMINQVVZjlSUYA/cLtLVNg+ziVTYrBHORGV2QZix8L4R9SCs9Sm2BUoCaxcqduI9gh
	zz8+elsEqCSjKTDXNHiZj1hx0NDbne7/+LZpjBCoY5VsBLuMKLijI7P48OPiuEH1ppXyqvCXqptKg
	iPvCz+lI/ZmCyWNTTUkaX1jJU52RbQBTMc+vXv5aFITaYBdOZYf+oxz5XzPfUL5aWjwDWxwfyKKiW
	sQhcyboOomVUn3aN8dC2dVUbfSWGmmiFh871vqyKpo4Ck4wwIChSFmeE2Xp9PUh9Spp6PUtqVfqtV
	LJ76jcrYjXL27bSGUILQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jed5q-0007GX-P9; Fri, 29 May 2020 11:22:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jed3N-0002q8-0w
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 11:19:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8531D55D;
 Fri, 29 May 2020 04:19:54 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B0BF3F52E;
 Fri, 29 May 2020 04:19:52 -0700 (PDT)
Date: Fri, 29 May 2020 12:19:50 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Evgenii Stepanov <eugenis@google.com>
Subject: Re: [PATCH v4 11/26] arm64: mte: Add PROT_MTE support to mmap() and
 mprotect()
Message-ID: <20200529111949.GA23332@gaia>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-12-catalin.marinas@arm.com>
 <CAMn1gO5ApcHOgQ_oLjiGDdCx9znz7N50w-BbzGPYpAzPQC3OQQ@mail.gmail.com>
 <20200528091445.GA2961@gaia> <20200528110509.GA18623@arm.com>
 <20200528163412.GC2961@gaia>
 <CAFKCwri+X=de0gFrMZfA84dYmftSkcDc0DEvQ2JAmeOw2sLR=A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFKCwri+X=de0gFrMZfA84dYmftSkcDc0DEvQ2JAmeOw2sLR=A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041957_175165_822CCA89 
X-CRM114-Status: GOOD (  29.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch <linux-arch@vger.kernel.org>, nd <nd@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Peter Collingbourne <pcc@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 11:35:50AM -0700, Evgenii Stepanov wrote:
> On Thu, May 28, 2020 at 9:34 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Thu, May 28, 2020 at 12:05:09PM +0100, Szabolcs Nagy wrote:
> > > On 05/28/2020 10:14, Catalin Marinas wrote:
> > > > I don't think the stack initialisation is that difficult. On program
> > > > startup (can be the dynamic loader). Something like (untested):
> > > >
> > > >     register unsigned long stack asm ("sp");
> > > >     unsigned long page_sz = sysconf(_SC_PAGESIZE);
> > > >
> > > >     mprotect((void *)(stack & ~(page_sz - 1)), page_sz,
> > > >              PROT_READ | PROT_WRITE | PROT_MTE | PROT_GROWSDOWN);
> > > >
> > > > (the essential part it PROT_GROWSDOWN so that you don't have to specify
> > > > a stack lower limit)
> > >
> > > does this work even if the currently mapped stack is more than page_sz?
> > > determining the mapped main stack area is i think non-trivial to do in
> > > userspace (requires parsing /proc/self/maps or similar).
> >
> > Because of PROT_GROWSDOWN, the kernel adjusts the start of the range
> > down automatically. It is potentially problematic if the top of the
> > stack is more than a page away and you want the whole stack coloured. I
> > haven't run a test but my reading of the kernel code is that the stack
> > vma would be split in this scenario, so the range beyond sp+page_sz
> > won't have PROT_MTE set.
> >
> > My assumption is that if you do this during program start, the stack is
> > smaller than a page. Alternatively, could we use argv or envp to
> > determine the top of the user stack (the bottom is taken care of by the
> > kernel)?
> 
> PROT_GROWSDOWN seems to work fine in our case, and the extra tag
> maintenance overhead sounds like a valid argument against setting PROT_MTE
> unconditionally.
> 
> On the other hand, we may end up doing this in the userspace in every
> process. The reason is, PROT_MTE can not be set on a page that contains a
> live frame with stack tagging because of mismatching tags (IRG is not
> affected by PROT_MTE but STG is). So ideally, this should be done at (or
> near) the program entry point, while the stack is mostly empty.

Since stack tagging cannot use instructions in the NOP space anyway, I
think we need an ELF note to check for the presence of STG etc. and, in
addition, we can turn PROT_MTE by default on the initial stack. Maybe on
such binaries we could just set PROT_MTE on all anonymous and ramfs
mappings (i.e. VM_MTE_ALLOWED implies VM_MTE).

For dynamically linked binaries, we base this decision on the main ELF,
not the interpreter, and it would be up to the dynamic loader to reject
libraries that have such note when HWCAP2_MTE is not present.

> > > (and eventually there should be a way to use PROT_MTE on
> > > writable global data and appropriate code generation that
> > > takes colors into account when globals are accessed, but
> > > that requires significant ELF, ld.so and compiler changes,
> > > that need not be part of the initial mte design).
> >
> > The .data section needs to be driven by the ELF information. It's also a
> > file mapping and we don't support PROT_MTE on them even if MAP_PRIVATE.
> > There are complications like DAX where the file you mmap for CoW may be
> > hosted on memory that does not support MTE (copied to RAM on write).
> >
> > Is there a use-case for global data to be tagged?
> 
> Yes, catching global buffer overflow bugs. They are not nearly as
> common as heap-based issues though.

OK, so these would be tagged red-zones around global data. IIUC, having
different colours for global variables was not considered because of the
relocations and relative accesses.

If such red-zone colouring is done during load (the dynamic linker?), we
could set PROT_MTE only when MAP_PRIVATE and copied on write to make
sure it is in RAM. As above, I think this should be driven by some ELF
information.

There's also the option of scrapping PROT_MTE altogether and enabling
MTE (default tag 0) on all anonymous and private+copied pages (i.e.
those stored in RAM). At this point, I can't really tell whether there
will be a performance impact.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
