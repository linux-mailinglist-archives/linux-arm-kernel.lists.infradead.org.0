Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9A715C8EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:55:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkU7psCQ0hbrEr+62r7P4Edjj1fxLq7zfBMsiflpmvI=; b=RgOiZ6HhxHzcxV
	JWgHKQcFbGX3d3fEYjuKrtB8+QshLQ0rkr9caZd+55uxz6c2oC0+qFIzyLPWu9vHmlta1GciQIPoM
	dv3DejvRkZ9GNad5Kp3x3LyMOFrhUu3W/WZe2QMmEmigFZuw4kRdKcT32owo/8X70u3rXiHbSXlQz
	MWoqKWfj/2yIHKpDIUemBec1WpmNHnc9ldrwIsMWFCc4+S0AuXrs4Fg8CRPXfOrwLCj2fic3Aa0xY
	3ohGRQx9s2nztMWXqC0nm7rU1d19NyFqZmS8WOndgtI/O3owXx53Oha+Zu6/Kj850bYWHEOL9iYnA
	8krWcYOaCN4+r50fL8pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hlz-0001fA-SZ; Thu, 13 Feb 2020 16:55:31 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hjk-0006pW-V1
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:53:17 +0000
Received: from mail-qt1-f179.google.com ([209.85.160.179]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Md6AP-1jbtT623pj-00aFbZ for <linux-arm-kernel@lists.infradead.org>; Thu,
 13 Feb 2020 17:53:07 +0100
Received: by mail-qt1-f179.google.com with SMTP id l16so213743qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:53:07 -0800 (PST)
X-Gm-Message-State: APjAAAWzvvwM6BbV++eW8i7s4Qg5PAtwAi+64nswQj2Kria1oSoC7N3f
 A9GBQlHGnzPbcQnQsY6Gu/UMS63SfOwdsIdgeLs=
X-Google-Smtp-Source: APXvYqy4gfD4gDOo3l2kqBaxaneA3Mxd3sL9iK2C79jzJxJBs1MCO7MsBN5MK3tSaslTWwKsP/R7oVEhM2+rnrndMy0=
X-Received: by 2002:ac8:669a:: with SMTP id d26mr5640059qtp.304.1581612786288; 
 Thu, 13 Feb 2020 08:53:06 -0800 (PST)
MIME-Version: 1.0
References: <20200211175507.178100-1-hannes@cmpxchg.org>
 <29b6e848ff4ad69b55201751c9880921266ec7f4.camel@surriel.com>
 <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
In-Reply-To: <20200212085004.GL25745@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 13 Feb 2020 17:52:49 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
Message-ID: <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:vEuxEcumCEq2E3HOOzzEcjhrf1an5MJuzTcBItVVKEn0UdFfPdh
 Iu2XaWmpuO/ff60u4i/qooJp38qIM03pWqooGH5YvVvTA+gUXeDFA3YOEjHWI1x8cbFc5bB
 SXMZmt6y118KmuiD3p8JJSWFQpkV7v/OAh7kUuHdFjZz3xHBi848qkKIaOk2LvEOVpj9q8P
 gHb5XqVRhMIQiwbdoPCzw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0vSZrpfVrB8=:3dX+jqXY8uRmeavtdYWXY/
 4rjPmmk/c7AUEyzB9vznB9yqMRYABkb2utRarUZz5WUXuBg8kR8eX8fIjpdgpe/NBn/hmKgw/
 /F2j8lQH84tIOjYvh8og6Wk3fScnCQ5nA0l+9gdQnfjNzNA+g9TJUro9aZokVEWoA84i3sz0F
 dRCGN6HRFL4MUma3yXIq2IWOK5EZMemmwY03ct5n+9pG0FXGPAaNDnI9Iw/ttBsW1uYTSoa3F
 kCOnRy56tMX+HCbr1UoPaWASN0P5bJGi+k+JTgUw84/xIeObV0T3+o1TbedTAM0KliySGnmJQ
 j1RDwQt5P+DhH3Zh9NKZ86EgGu3QNWZM8F46patJQZiw5LIXyvU1B8HGayevcCXB0WzPprUIp
 GSEVD8nTUdHd5yzduSocup7JZQM9Z9mrSiJrgdok3QqYzDioBoM4EgJzYlZwJEPGi/tJPMklc
 36Y3CidtFybuKi3eN8yYB90jegAuXnz951yiDiRcIR9E/rdpiF9lZff5wPZv89iJGIztTwT07
 wlKKzpXzbpoD3Si+1alROoXO9jWRPut3Ge1jF5vPp+eV02cOBzLxoUT0EKMSSgioBm5C8QaWZ
 ly0JHX661humckudosara7ddxgaGTaOcEGzhWg1R/gyNURb7cDqWFC23+FfCOtTnoQ7TGAsku
 rgxYWyyhE795tYC/16Dka1Oqfb88aO+MTAFyRu/3pwJ5avNXrjOQGLPPfaUd22MjZv5AkFvgG
 UQ1cWeFzqRest91yb+f48GCUaDfzXD6UsxHqWMtjVaYX3O+60gw2fDCES1BWdW2dZaCkvU6ih
 C5B5vxhOXy9vyhhFaNX9pe6MTDyVL5jXcvELt3mQBAgpgMBNgw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085313_353485_5397F0D8 
X-CRM114-Status: GOOD (  28.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Michal Hocko <mhocko@suse.com>, Rik van Riel <riel@surriel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Dave Chinner <david@fromorbit.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Roman Gushchin <guro@fb.com>, Linux-MM <linux-mm@kvack.org>,
 Yafang Shao <laoar.shao@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 9:50 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Feb 11, 2020 at 05:03:02PM -0800, Linus Torvalds wrote:
> > On Tue, Feb 11, 2020 at 4:47 PM Andrew Morton <akpm@linux-foundation.org> wrote:
> > >
> > > What's the situation with highmem on ARM?
> >
> > Afaik it's exactly the same as highmem on x86 - only 32-bit ARM ever
> > needed it, and I was ranting at some people for repeating all the
> > mistakes Intel did.
> >
> > But arm64 doesn't need it, and while 32-bit arm is obviosuly still
> > selling, I think that in many ways the switch-over to 64-bit has been
> > quicker on ARM than it was on x86. Partly because it happened later
> > (so all the 64-bit teething pains were dealt with), but largely
> > because everybody ended up actively discouraging 32-bit on the Android
> > side.
> >
> > There were a couple of unfortunate early 32-bit arm server attempts,
> > but they were - predictably - complete garbage and nobody bought them.
> > They don't exist any more.

I'd generally agree with that, the systems with more than 4GB tended to
be high-end systems predating the Cortex-A53/A57 that quickly got
replaced once there were actual 64-bit parts, this would include axm5516
(replaced with x86-64 cores after sale to Intel), hip04 (replaced
with arm64), or ecx-2000 (Calxeda bankruptcy).

The one 32-bit SoC that I can think of that can actually drive lots of
RAM and is still actively marketed is TI Keystone-2/AM5K2.
The embedded AM5K2 is listed supporting up to 8GB of RAM, but
the verison in the HPE ProLiant m800 server could take up to 32GB (!).

I added Santosh and Kishon to Cc, they can probably comment on how
long they think users will upgrade kernels on these. I suspect these
devices can live for a very long time in things like wireless base stations,
but it's possible that they all run on old kernels anyway by now (and are
not worried about y2038).

> > So at least my gut feel is that the arm people don't have any big
> > reason to push for maintaining HIGHMEM support either.
> >
> > But I'm adding a couple of arm people and the arm list just in case
> > they have some input.
> >
> > [ Obvious background for newly added people: we're talking about
> > making CONFIG_HIGHMEM a deprecated feature and saying that if you want
> > to run with lots of memory on a 32-bit kernel, you're doing legacy
> > stuff and can use a legacy kernel ]
>
> Well, the recent 32-bit ARM systems generally have more than 1G
> of memory, so make use of highmem as a rule.  You're probably
> talking about crippling support for any 32-bit ARM system produced
> in the last 8 to 10 years.

What I'm observing in the newly added board support is that memory
configurations are actually going down, driven by component cost.
512MB is really cheap (~$4) these days with a single 256Mx16 DDR3
chip or two 128Mx16. Going beyond 1GB is where things get expensive
with either 4+ chips or LPDDR3/LPDDR4 memory.

For designs with 1GB, we're probably better off just using
CONFIG_VMSPLIT_3G_OPT (without LPAE) anyway, completely
avoiding highmem. That is particularly true on systems with a custom
kernel configuration.

2GB machines are less common, but are definitely important, e.g.
MT6580 based Android phones and some industrial embedded machines
that will live a long time. I've recently seen reports of odd behavior
with CONFIG_VMSPLIT_2G and plus CONFIG_HIGHMEM and a 7:1
ratio of lowmem to highmem that apparently causes OOM despite lots
of lowmem being free. I suspect a lot of those workloads would still be
better off with a CONFIG_VMSPLIT_2G_OPT (1.75 GB user, 2GB
linear map). That config unfortunately has a few problems, too:
- nobody has implemented it
- it won't work with LPAE and therefore cannot support hardware
  that relies on high physical addresses for RAM or MMIO
  (those could run CONFIG_VMSPLIT_2G at the cost of wasting
  12.5% of RAM).
- any workload that requires the full 3GB of virtual address space won't
  work at all. This might be e.g. MAP_FIXED users, or build servers
  linking large binaries.
It will take a while to find out what kinds of workloads suffer the most
from a different vmsplit and what can be done to address that, but we
could start by changing the kernel defconfig and distro builds to see
who complains ;-)

I think 32-bit ARM machines with 3GB or more are getting very rare,
but some still exist:
- The Armada XP development board had a DIMM slot that could take
  large memory (possibly up to 8GB with LPAE). This never shipped as
  a commercial product, but distro build servers sometimes still run on
  this, or on the old Calxeda or Keystone server systems.
- a few early i.MX6 boards  (e.g. HummingBoard) came had 4GB of
  RAM, though none of these seem to be available any more.
- High-end phones from 2013/2014 had 3GB LPDDR3 before getting
  obsoleted by 64-bit phones. Presumably none of these ever ran
  Linux-4.x or newer.
- My main laptop is a RK3288 based Chromebook with 4GB that just
  got updated to linux-4.19 by Google. Official updates apparently
  stop this summer, but it could easily run Debian later on.
- Some people run 32-bit kernels on a 64-bit Raspberry Pi 4 or on
  arm64 KVM with lots of RAM. These should probably all
  migrate to 64-bit kernels with compat user space anyway.
In theory these could also run on a VMSPLIT_4G_4G-like setup,
but I don't think anyone wants to go there. Deprecating highmem
definitely impacts any such users significantly, though staying on
an LTS kernel may be an option if there are only few of them.

           Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
