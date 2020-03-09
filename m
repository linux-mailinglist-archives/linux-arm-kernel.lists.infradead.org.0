Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3ED17E52C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:58:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I29ywSeD+7k4SstAV6geh80SWyaK3FVPAX6tqFX5SVo=; b=L2N642iFPF8p1h
	2wtXsLhb1HXUO9RNc5GCtfCLxwLQ2WSIlnGsqfcQVPrI6CmOZauZ/QFpFj2X8BA9XbQMNUuKx1N6j
	/IU2evVytuWpWTqtHJxGToGQGpYkp/MK/7g5cD73U7uFI4Bu/oOgpxJsA2NrBwPrRkIqub6Qx1cr8
	mrMzwBHxYFV1xNdJk59cLK6A1HxGKua4z0LRbDgbIVq/i+CaTnqghypMz0bQaSkn0XjrrZ3HxSQpC
	CLOGI6Th9LXXXQlhcu4PVqHuvD6yN0a6Gb0vFGclkm5jWmyUWg/y7K8DOcZZ1tqjxAP3kgkxxMfyd
	dCw40gdJCPaQ9JsNotLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLj7-0002UR-S4; Mon, 09 Mar 2020 16:58:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLj0-0002U1-Dj
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:57:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2E1C1FB;
 Mon,  9 Mar 2020 09:57:53 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 332003F534; Mon,  9 Mar 2020 09:57:51 -0700 (PDT)
Date: Mon, 9 Mar 2020 16:57:49 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Message-ID: <20200309165749.GB4124965@arrakis.emea.arm.com>
References: <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
 <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
 <20200309155945.GA4124965@arrakis.emea.arm.com>
 <20200309160919.GM25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309160919.GM25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095754_549715_22144B4A 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Arnd Bergmann <arnd@arndb.de>, Rik van Riel <riel@surriel.com>,
 Roman Gushchin <guro@fb.com>, Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 04:09:19PM +0000, Russell King wrote:
> On Mon, Mar 09, 2020 at 03:59:45PM +0000, Catalin Marinas wrote:
> > On Sun, Mar 08, 2020 at 11:58:52AM +0100, Arnd Bergmann wrote:
> > > - revisit CONFIG_VMSPLIT_4G_4G for arm32 (and maybe mips32)
> > >   to see if it can be done, and what the overhead is. This is probably
> > >   more work than the others combined, but also the most promising
> > >   as it allows the most user address space and physical ram to be used.
> > 
> > A rough outline of such support (and likely to miss some corner cases):
> > 
> > 1. Kernel runs with its own ASID and non-global page tables.
> > 
> > 2. Trampoline code on exception entry/exit to handle the TTBR0 switching
> >    between user and kernel.
> > 
> > 3. uaccess routines need to be reworked to pin the user pages in memory
> >    (get_user_pages()) and access them via the kernel address space.
> > 
> > Point 3 is probably the ugliest and it would introduce a noticeable
> > slowdown in certain syscalls.
> 
> We also need to consider that it has implications for the single-kernel
> support; a kernel doing this kind of switching would likely be horrid
> for a kernel supporting v6+ with VIPT aliasing caches.

Good point. I think with VIPT aliasing cache uaccess would have to flush
the cache before/after access, depending on direction.

> Would we be adding a new red line between kernels supporting
> VIPT-aliasing caches (present in earlier v6 implementations) and
> kernels using this system?

get_user_pages() should handle the flush_dcache_page() call and the
latter would dial with the aliases. But this adds heavily to the cost of
the uaccess.

Maybe some trick with temporarily locking the user page table and
copying the user pmd into a dedicated kernel pmd, then accessing the
user via this location. The fault handler would need to figure out the
real user address and I'm not sure how we deal with the page table lock
(or mmap_sem).

An alternative to the above would be to have all uaccess routines in a
trampoline which restores the user pgd but with only a couple of pmds
for mapping the kernel address temporarily. This would avoid the issue
of concurrent modification of the user page tables.

Anyway, I don't think any of the above looks better than highmem.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
