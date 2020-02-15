Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE9615FE1D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 12:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuMLxJJlw9R707dAZh1la9tOWuSteQZHKnHk9ntNeSM=; b=ciUaLpK9l/bVgg
	/x9sLnjq8RGNzcgV/MVHotQgBv7o4h6581ClZr0Ch5aFTEZhIL6fxs0V0wWLtOHtlGhZ1qq0XoSP0
	My+LTIlokWGtoxPdgIXuhdvQCT3PDQsTiy/RsvSNYYodp7W2WR2xT/KyPzAEki/P2lfH+fXmJ47HX
	vvoYsE4gEBoK+MQcLIshP9ik0fXj0Bb3DaThwWl35QfoEqFSUIm36GsarEYk/fuH1cNwOQ5cExLtu
	WM5t6xjIuZ+pG3UbkT4uyN3Ej92zo5TlmO7a/sgHeOu85GCH6zHuOHetHGnJGN2VSGhkEVV1/iytk
	bzpGeGSfiTf2o2MbibcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2va9-0004B1-OC; Sat, 15 Feb 2020 11:25:57 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2va0-0004AF-VS
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 11:25:50 +0000
Received: by mail-oi1-f194.google.com with SMTP id a22so12172027oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 03:25:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CKm2jdZv4bkhryatSR3sc3YwYWDYL0cZxrSHpiKACgs=;
 b=D4zyisUGzRmzBe5I2KU5x7qU/oHfjLkp0aDL/Ob91Q1d53aPT2XKVkdUuGYjUhWKtX
 1A4GVNnbfY2d6058YbHqnsjx63p/MgBmu3DmI2RxEKpEtbWwY7s8ajSWFrwAjHVLa1Z4
 /b25/uI+fxwX4ppown9SWKjVJz0yM/EgjMspBlkM+WT+y5Zf0XaKDnf1BFwIYCnYrUpK
 wHxhKm8UcUU1hW/HfrngXWkGxxOblfeZzdkSQpjdaQDh4JMn8NieDFax8apoeelguvib
 WhTdrpb75AiyDUSjknH+XkIPIMgp7BE2t5eh/IFLM7AadouILdSTgYsoejtULCgzB3kh
 4cjw==
X-Gm-Message-State: APjAAAVYBfoTeZuaPGIOvc/dhHRzrWE7qXNlpKQBI9wjQ8943XZxoM2I
 vMAPT5Y+21ZWc5cyfEWzEy+Ikynnym9ceznYys0atg==
X-Google-Smtp-Source: APXvYqy3gnViweSJe92lN+8veoys3VonFUwyBJ4mtKyOR9rGe/2O0TS+YkWKNVujqCTFiuI2W++F7LZyFkYUCfJWVbU=
X-Received: by 2002:a54:4707:: with SMTP id k7mr4492798oik.153.1581765944894; 
 Sat, 15 Feb 2020 03:25:44 -0800 (PST)
MIME-Version: 1.0
References: <20200211175507.178100-1-hannes@cmpxchg.org>
 <29b6e848ff4ad69b55201751c9880921266ec7f4.camel@surriel.com>
 <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
In-Reply-To: <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 15 Feb 2020 12:25:32 +0100
Message-ID: <CAMuHMdV8-=dj5n-FM1nHjXq1DhkJVOh4rLFxERt33jAQmU4h_A@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_032549_014703_8D5022C6 
X-CRM114-Status: GOOD (  30.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Michal Hocko <mhocko@suse.com>,
 Rik van Riel <riel@surriel.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, cip-dev@lists.cip-project.org,
 Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Thu, Feb 13, 2020 at 5:54 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Wed, Feb 12, 2020 at 9:50 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Tue, Feb 11, 2020 at 05:03:02PM -0800, Linus Torvalds wrote:
> > > So at least my gut feel is that the arm people don't have any big
> > > reason to push for maintaining HIGHMEM support either.
> > >
> > > But I'm adding a couple of arm people and the arm list just in case
> > > they have some input.
> > >
> > > [ Obvious background for newly added people: we're talking about
> > > making CONFIG_HIGHMEM a deprecated feature and saying that if you want
> > > to run with lots of memory on a 32-bit kernel, you're doing legacy
> > > stuff and can use a legacy kernel ]
> >
> > Well, the recent 32-bit ARM systems generally have more than 1G
> > of memory, so make use of highmem as a rule.  You're probably
> > talking about crippling support for any 32-bit ARM system produced
> > in the last 8 to 10 years.
>
> What I'm observing in the newly added board support is that memory
> configurations are actually going down, driven by component cost.
> 512MB is really cheap (~$4) these days with a single 256Mx16 DDR3
> chip or two 128Mx16. Going beyond 1GB is where things get expensive
> with either 4+ chips or LPDDR3/LPDDR4 memory.
>
> For designs with 1GB, we're probably better off just using
> CONFIG_VMSPLIT_3G_OPT (without LPAE) anyway, completely
> avoiding highmem. That is particularly true on systems with a custom
> kernel configuration.
>
> 2GB machines are less common, but are definitely important, e.g.
> MT6580 based Android phones and some industrial embedded machines
> that will live a long time. I've recently seen reports of odd behavior
> with CONFIG_VMSPLIT_2G and plus CONFIG_HIGHMEM and a 7:1
> ratio of lowmem to highmem that apparently causes OOM despite lots
> of lowmem being free. I suspect a lot of those workloads would still be
> better off with a CONFIG_VMSPLIT_2G_OPT (1.75 GB user, 2GB
> linear map). That config unfortunately has a few problems, too:
> - nobody has implemented it
> - it won't work with LPAE and therefore cannot support hardware
>   that relies on high physical addresses for RAM or MMIO
>   (those could run CONFIG_VMSPLIT_2G at the cost of wasting
>   12.5% of RAM).
> - any workload that requires the full 3GB of virtual address space won't
>   work at all. This might be e.g. MAP_FIXED users, or build servers
>   linking large binaries.
> It will take a while to find out what kinds of workloads suffer the most
> from a different vmsplit and what can be done to address that, but we
> could start by changing the kernel defconfig and distro builds to see
> who complains ;-)
>
> I think 32-bit ARM machines with 3GB or more are getting very rare,
> but some still exist:
> - The Armada XP development board had a DIMM slot that could take
>   large memory (possibly up to 8GB with LPAE). This never shipped as
>   a commercial product, but distro build servers sometimes still run on
>   this, or on the old Calxeda or Keystone server systems.
> - a few early i.MX6 boards  (e.g. HummingBoard) came had 4GB of
>   RAM, though none of these seem to be available any more.
> - High-end phones from 2013/2014 had 3GB LPDDR3 before getting
>   obsoleted by 64-bit phones. Presumably none of these ever ran
>   Linux-4.x or newer.
> - My main laptop is a RK3288 based Chromebook with 4GB that just
>   got updated to linux-4.19 by Google. Official updates apparently
>   stop this summer, but it could easily run Debian later on.
> - Some people run 32-bit kernels on a 64-bit Raspberry Pi 4 or on
>   arm64 KVM with lots of RAM. These should probably all
>   migrate to 64-bit kernels with compat user space anyway.
> In theory these could also run on a VMSPLIT_4G_4G-like setup,
> but I don't think anyone wants to go there. Deprecating highmem
> definitely impacts any such users significantly, though staying on
> an LTS kernel may be an option if there are only few of them.

The CIP-supported RZ/G1 SoCs can have up to 4 GiB, typically split (even
for 1 GiB or 2 GiB configurations) in two parts, one below and one above
the 32-bit physical limit.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
