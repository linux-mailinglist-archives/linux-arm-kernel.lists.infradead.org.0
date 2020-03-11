Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F73181F67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 18:26:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQgMGLeXEurRMsmJ118/czVSD+ZHxD2SgU4mcZu+Pw0=; b=I5711WMRJwC+su
	TnF6VT4m2t+fTvjSx85N75LRbCKr7YqC3s5PmBUoOZfF8cFMpW+rjdNAKEUs9XsqJ+YDgdg14jeSq
	+Ypuh608KENO0sdx+93C7NCR9a85YEpq+DFigdmxbHygqQ6PAYUPCDTXjeLlbLOsBUzdRHZvYG5o/
	+Ur2BOgWTt2SMyMni4GH+ctbK/ZwdlyQq1Jbc1MoT0NbfmYKycLMBSYD+HzL3UpnRAwLPejuZJGLx
	kOFc8L8ffvfFI8DVrDqorQolMFRwgVWdU1LRqLOjhZgL5aC4B5az1JfQQJZ4ly9wAFDtGg+uG0nJJ
	aSF2vkKswhaYfDpfyRWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC587-0005Td-CK; Wed, 11 Mar 2020 17:26:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC57t-0005QK-6I
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 17:26:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FC8C1FB;
 Wed, 11 Mar 2020 10:26:36 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0166D3F6CF; Wed, 11 Mar 2020 10:26:33 -0700 (PDT)
Date: Wed, 11 Mar 2020 17:26:31 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Message-ID: <20200311172631.GN3216816@arrakis.emea.arm.com>
References: <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
 <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
 <20200309155945.GA4124965@arrakis.emea.arm.com>
 <20200309160919.GM25745@shell.armlinux.org.uk>
 <CAK8P3a2yyJLmkifpSabMwtUiAvumMPwLEzT5RpsBA=LYn=ZXUw@mail.gmail.com>
 <20200311142905.GI3216816@arrakis.emea.arm.com>
 <CAK8P3a2RC+sg2Tz4M8mkQ_d78FTFdES+YsucUzDFx=UK+L8Oww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2RC+sg2Tz4M8mkQ_d78FTFdES+YsucUzDFx=UK+L8Oww@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_102637_314760_E381BB19 
X-CRM114-Status: GOOD (  21.07  )
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

On Wed, Mar 11, 2020 at 05:59:53PM +0100, Arnd Bergmann wrote:
> On Wed, Mar 11, 2020 at 3:29 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> 
> > > - Flip TTBR0 on kernel entry/exit, and again during user access.
> > >
> > > This is probably more work to implement than your idea, but
> > > I would hope this has a lower overhead on most microarchitectures
> > > as it doesn't require pinning the pages. Depending on the
> > > microarchitecture, I'd hope the overhead would be comparable
> > > to that of ARM64_SW_TTBR0_PAN.
> >
> > This still doesn't solve the copy_{from,to}_user() case where both
> > address spaces need to be available during copy. So you either pin the
> > user pages in memory and access them via the kernel mapping or you
> > temporarily map (kmap?) the destination/source kernel address. The
> > overhead I'd expect to be significantly greater than ARM64_SW_TTBR0_PAN
> > for the uaccess routines. For user entry/exit, your suggestion is
> > probably comparable with SW PAN.
> 
> Good point, that is indeed a larger overhead. The simplest implementation
> I had in mind would use the code from arch/arm/lib/copy_from_user.S and
> flip ttbr0 between each ldm and stm (up to 32 bytes), but I have no idea
> of the cost of storing to ttbr0, so this might be even more expensive. Do you
> have an estimate of how long writing to TTBR0_64 takes on Cortex-A7
> and A15, respectively?

I don't have numbers but it's usually not cheap since you need an ISB to
synchronise the context after TTBR0 update (basically flushing the
pipeline).

> Another way might be to use a use a temporary buffer that is already
> mapped, and add a memcpy() through L1-cache to reduce the number
> of ttbr0 changes. The buffer would probably have to be on the stack,
> which limits the size, but for large copies get_user_pages()+memcpy()
> may end up being faster anyway.

IIRC, the x86 attempt from Ingo some years ago was using
get_user_pages() for uaccess. Depending on the size of the buffer, this
may be faster than copying twice.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
