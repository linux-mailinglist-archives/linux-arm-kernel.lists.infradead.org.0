Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780BD17E908
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 20:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bwoV8Gc5WgyDUez+QFpG9nUdnDJIXoUQjoa2RNG6tY=; b=Di/ewe0tgKDlL6
	/f4AaFXtqyMKTKw5wX1HHyCJM1px/8ec/b5UrGQCc9cLEv1dpzCSubWaqWiCOxfncdcC0E2GonYWR
	008YSPKB5UUpJsKIY3RyMt3FYV5nJVUf5QCw23bl+/Rg0D2QKzRwLqtSpzFl/ud3wrAywupFo9Il1
	kHSiCEgy2KV27IbdxYG8sBfxaan7kuytTqgKqCsPDiVo9O7GvZfJ1n2dzgTSXB9fFkNkGFBeYMZrN
	o9E/3ae0X0o3n71bxJLLXEducEPcDxHNnHyll4o+zsS1tcLuknACF94wY/2PGB+PyKC2znA3HxDXu
	LvdI7Cgxj/Dn74R/c1Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBOMQ-0006bu-FP; Mon, 09 Mar 2020 19:46:46 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBOMJ-0006bK-4C
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 19:46:40 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M4roN-1jA0uh0wwJ-001ypm for <linux-arm-kernel@lists.infradead.org>; Mon,
 09 Mar 2020 20:46:36 +0100
Received: by mail-qk1-f169.google.com with SMTP id f198so10450036qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 12:46:35 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3yYhta0oMqXvgtwzofLj7ajq+5peEbLOchz2IlSrVORRhFYclU
 ES51Xkm22jtsiLjJzrp94BP/0/DN8qepkFQ37X8=
X-Google-Smtp-Source: ADFU+vvmBvMz+V6RDUU++ZwSagdLLK5RIhqNTJ7v8Q8rLCrbads695yLqa65IiOBHxFXCnfQzEWO8L12fWPy8qQjUb0=
X-Received: by 2002:a37:6455:: with SMTP id y82mr7117037qkb.286.1583783194930; 
 Mon, 09 Mar 2020 12:46:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
 <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
 <20200309155945.GA4124965@arrakis.emea.arm.com>
 <20200309160919.GM25745@shell.armlinux.org.uk>
In-Reply-To: <20200309160919.GM25745@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Mar 2020 20:46:18 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2yyJLmkifpSabMwtUiAvumMPwLEzT5RpsBA=LYn=ZXUw@mail.gmail.com>
Message-ID: <CAK8P3a2yyJLmkifpSabMwtUiAvumMPwLEzT5RpsBA=LYn=ZXUw@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:XFCgUUdSazkCxv2U74euTBMMj46fwUTBYB9XvL6ID4DPWjb0yI3
 nxK5nbnSLsrPLDB2bl7t/5W6U8uPFidWhphprPslzKygb2ZK7H3Xcf34MRxjPGmTzYSsZDK
 4eaDC1tO7F0LHPdp5dmJok+HEkAbyDPlM19y1CS6gONBwaG0e+fSu6mGbOZeu5tJMpW5nJa
 J4HOSx0iLW2QvC/NOfX6A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MBphgpORWEw=:pe1opI1UkIpCWszOXAMHm/
 aX6tkeGlAuUDw27sHOaMlW1i2/LkKQdds2oIWpTuMn6GcW49hYLrSeRQQN2V37ozgNuFiyyVy
 mm5FN21h2ePEu4tQDz2HM5GhU6UaYv/ZscgcTcfVvzyhO+MI822CTsnl23APils3QbbnystxX
 RQ5yoaLmoV6CrAh8ZPg0+fN9Bn2j9UtqAZDjyGQLQLHxlF6vZx9WkiPutX8le+37RcYpNRGOd
 FhSTirZnsT8/7+p0XT5/MOEGUB2g/kIfV8R04zKkOwdNrOz4UFJTmr3NYh3sUkOFnoRpKb5jS
 lXagsWK9NwZzv0KuTBhu21nkowibcwfzTLBMBtUvyD5xMLh5K6sWz1r/BUJAfNr7cUX10SDvo
 QDJs99ZJCUExRDA6xs70RYjIc0/9goHKE8tdZD4HomE9jksxfAjL0UBs4RtoeBQPcAsS1Cthj
 Ep9YecL+xib90MuY+0+Kk/QPXniXqffIBfqH9vYm2pZklpQ8ALVMXWwTY6STbd3+2bOu0J8bx
 2nHeE/04HfahzLarOXmw6SHBCSin+KnBwi+EPFSUHn8y0xlyQ2+0ihYmqh8RHegOEiCGJ8gpz
 GFvgcrU5qxB4WXiSueFrWQEOJCPdBcjtvCUnvt4r1JByuz4ZigdqyKjS3tCoN5YzMATktN7+K
 AB1eII0BusQfdcwbrSKEG12YKtLDE7FcJe3HPXGSrksTkE5DjGKLs/flXuiLO466ZP/sc2KRe
 XO+h+L74FZ6yttkHQCUXaq6JptvkoCNvVrg+jSWkuWXqkuRmVwkJwFTvli4ZgXWWMI26sacdn
 NPqLpbhq+MFUcREXQa2O3+3cSzh+ZNBNTsCKCeEl9oLYL8oHZQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_124639_465491_A640EB7E 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Catalin Marinas <catalin.marinas@arm.com>, Roman Gushchin <guro@fb.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Santosh Shilimkar <ssantosh@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 9, 2020 at 5:09 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
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

There are probably a number of ways to do the basic design. The idea
I had (again, probably missing more corner cases than either of you
two that actually understand the details of the mmu):

- Assuming we have LPAE, run the kernel vmlinux and modules inside
  the vmalloc space, in the top 256MB or 512MB on TTBR1

- Map all the physical RAM (up to 3.75GB) into a reserved ASID
  with TTBR0

- Flip TTBR0 on kernel entry/exit, and again during user access.

This is probably more work to implement than your idea, but
I would hope this has a lower overhead on most microarchitectures
as it doesn't require pinning the pages. Depending on the
microarchitecture, I'd hope the overhead would be comparable
to that of ARM64_SW_TTBR0_PAN.

> We also need to consider that it has implications for the single-kernel
> support; a kernel doing this kind of switching would likely be horrid
> for a kernel supporting v6+ with VIPT aliasing caches.  Would we be
> adding a new red line between kernels supporting VIPT-aliasing caches
> (present in earlier v6 implementations) and kernels using this system?

I would initially do it for LPAE only, given that this is already an
incompatible config option. I don't think there are any v6 machines with
more than 1GB of RAM (the maximum for AST2500), and the only distro
that ships a v6+ multiplatform kernel is Raspbian, which in turn needs
a separate LPAE kernel for the large-memory machines anyway.

Only doing it for LPAE would still cover the vast majority of systems that
actually shipped with more than 2GB. There are a couple of exceptions,
i.e. early  Cubox i4x4, the Calxeda Highbank developer system and the
Novena Laptop, which I would guess have a limited life expectancy
(before users stop updating kernels) no longer than the 8GB
Keystone-2.

Based on that, I would hope that the ARMv7 distros can keep shipping
the two kernel images they already ship:

- The non-LPAE kernel modified to VMSPLIT_2G_OPT, not using highmem
  on anything up to 2GB, but still supporting the handful of remaining
  Cortex-A9s with 4GB using highmem until they are completely obsolete.

- The LPAE kernel modified to use a newly added VMSPLIT_4G_4G,
   with details to be worked out.

Most new systems tend to be based on Cortex-A7 with no more than 2GB,
so those could run either configuration well.  If we find the 2GB of user
address space too limiting for the non-LPAE config, or I missed some
important pre-LPAE systems with 4GB that need to be supported for longer
than other highmem systems, that can probably be added later.

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
