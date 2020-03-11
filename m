Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F09181B2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 15:29:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoMnWaCHnpL+Ibg2dbcIMsLE37DDi6tWxmFltIdCpIc=; b=owwONxEaWiBkHE
	xHAm7Z48B7oQQqZUuwrXIs4uhv7Qda2S5OqnOpDj/Hp/3elJrHhMudloM1QHDQ3oDxw1/3I6ZTy4N
	iL+wff68rMPoSMZLuUQ0eoAcQ2IrZdtKuinl1Tk+thzXReP3i2+F2QXETxHB7dN+wVfHIKJdlUxh4
	84me2gB21BBczVh4gntgVPiwJpIv1andbIQnt7J6JYuzPdY6gelhChocYjY7P6nTQfm8RDh786QBe
	+1izUfzC8OzqaSxvb7pCGSxmbtvEXuGTVjmRI8sXb2MMx6iKr4zTxEKusZlgbXhnnwWM4ecE3cRNU
	NyHR85U5+/6/b7sNCI7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2Mj-0005VO-Fo; Wed, 11 Mar 2020 14:29:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2MC-0005As-EE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 14:29:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3CF0F31B;
 Wed, 11 Mar 2020 07:29:10 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AEA6A3F67D; Wed, 11 Mar 2020 07:29:07 -0700 (PDT)
Date: Wed, 11 Mar 2020 14:29:05 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Message-ID: <20200311142905.GI3216816@arrakis.emea.arm.com>
References: <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
 <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
 <20200309155945.GA4124965@arrakis.emea.arm.com>
 <20200309160919.GM25745@shell.armlinux.org.uk>
 <CAK8P3a2yyJLmkifpSabMwtUiAvumMPwLEzT5RpsBA=LYn=ZXUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2yyJLmkifpSabMwtUiAvumMPwLEzT5RpsBA=LYn=ZXUw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_072912_604756_9A0052A2 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Nishanth Menon <nm@ti.com>, Michal Hocko <mhocko@suse.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Rik van Riel <riel@surriel.com>,
 Roman Gushchin <guro@fb.com>, Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Linux-MM <linux-mm@kvack.org>,
 Yafang Shao <laoar.shao@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 08:46:18PM +0100, Arnd Bergmann wrote:
> On Mon, Mar 9, 2020 at 5:09 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Mon, Mar 09, 2020 at 03:59:45PM +0000, Catalin Marinas wrote:
> > > On Sun, Mar 08, 2020 at 11:58:52AM +0100, Arnd Bergmann wrote:
> > > > - revisit CONFIG_VMSPLIT_4G_4G for arm32 (and maybe mips32)
> > > >   to see if it can be done, and what the overhead is. This is probably
> > > >   more work than the others combined, but also the most promising
> > > >   as it allows the most user address space and physical ram to be used.
> > >
> > > A rough outline of such support (and likely to miss some corner cases):
> > >
> > > 1. Kernel runs with its own ASID and non-global page tables.
> > >
> > > 2. Trampoline code on exception entry/exit to handle the TTBR0 switching
> > >    between user and kernel.
> > >
> > > 3. uaccess routines need to be reworked to pin the user pages in memory
> > >    (get_user_pages()) and access them via the kernel address space.
> > >
> > > Point 3 is probably the ugliest and it would introduce a noticeable
> > > slowdown in certain syscalls.
> 
> There are probably a number of ways to do the basic design. The idea
> I had (again, probably missing more corner cases than either of you
> two that actually understand the details of the mmu):
> 
> - Assuming we have LPAE, run the kernel vmlinux and modules inside
>   the vmalloc space, in the top 256MB or 512MB on TTBR1
> 
> - Map all the physical RAM (up to 3.75GB) into a reserved ASID
>   with TTBR0
> 
> - Flip TTBR0 on kernel entry/exit, and again during user access.
> 
> This is probably more work to implement than your idea, but
> I would hope this has a lower overhead on most microarchitectures
> as it doesn't require pinning the pages. Depending on the
> microarchitecture, I'd hope the overhead would be comparable
> to that of ARM64_SW_TTBR0_PAN.

This still doesn't solve the copy_{from,to}_user() case where both
address spaces need to be available during copy. So you either pin the
user pages in memory and access them via the kernel mapping or you
temporarily map (kmap?) the destination/source kernel address. The
overhead I'd expect to be significantly greater than ARM64_SW_TTBR0_PAN
for the uaccess routines. For user entry/exit, your suggestion is
probably comparable with SW PAN.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
