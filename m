Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C7E17E312
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 16:05:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7nG4AloFJMJzUaRZnm6RO8KfRL2xNuWc8ieLb4Myqs=; b=MvytJp5NBAlJGJ
	PKBJBtgAmHU5v1v2B71j7Z+QzCAPwbsyIdeEjyy4csNOLNSnL1pfE9AtBSpvknuD6nfl597/WVULc
	bUrdkEuIGVSd/Jc/uKkhvl1K7xEE/r0HH0eLkLDlM6lQxnNPbCkKWAF9W4upPhvbyzin+1dAaBCxR
	RscgBjl3Ne9R35tX6rDaUo8SrNNKnexIEegprkaBNrG7vTndeIM/ar0mcuHXEwP2cYzDpXRSQENgA
	/blJfS0sv3wto6VBtnBOsTOTRdURx3IcV02Cg7O6adPAoGp2g1sns54aouWt5vr3Y2MKxgpX2dROM
	9/KvftX26984NzUKX0Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJyH-0005zr-8A; Mon, 09 Mar 2020 15:05:33 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJy3-0005wp-Dr
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 15:05:21 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MxE5Y-1jZYzE20j2-00xaqJ for <linux-arm-kernel@lists.infradead.org>; Mon,
 09 Mar 2020 16:05:16 +0100
Received: by mail-qt1-f169.google.com with SMTP id m33so7219888qtb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 08:05:14 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3wXDylmGtucN6RhnJk4gfc/UpElQNoFr8YUx5RnGbSrZ3F3882
 Cawz7QRZp6gfU+4+SqFzLucpr5sMIguUmwOYsoY=
X-Google-Smtp-Source: ADFU+vvxWhD4Ku1IfT+mUmY/AeB1CS0OqCZ/jtDyF/dQT9uwneeJb7AmmSc5NwwGRV+bP0xVJ9xB9rGipT01taiUGkg=
X-Received: by 2002:ac8:7381:: with SMTP id t1mr14598317qtp.142.1583766312944; 
 Mon, 09 Mar 2020 08:05:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
 <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
 <20200308141923.GI25745@shell.armlinux.org.uk>
 <CAK8P3a2Gz5H_fcNtW0yCCjO1cRNa0nyd568sDYR0nNphu49YqQ@mail.gmail.com>
 <20200309140439.GL25745@shell.armlinux.org.uk>
In-Reply-To: <20200309140439.GL25745@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Mar 2020 16:04:54 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1HEhwie1uUObQMJyGcs_WSwz4Gj81tAWXZX4d2ff77XA@mail.gmail.com>
Message-ID: <CAK8P3a1HEhwie1uUObQMJyGcs_WSwz4Gj81tAWXZX4d2ff77XA@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:Utpm87gILuwpk3AW+k2JtE9M706BcMu2KcOmdKsIlJT8oq4JIDI
 syPeE40yLrZFlfUNC2uBTlkFCWvfnZtADGfozvsyXCu5xLOI9c+wm+67LyDhQY3FDXHL+9u
 TI4kNIvqMP2xXkYdbPE3W0Lp5tgfZyLOKg7e+V2y2brIaP4Cxr3RJlYwJbawZOKy/n5G4IV
 XelVA57UBohh4sD4AS8zg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dIzyIbzPopo=:wkpEc14NNxGesN0dGwxkVj
 DXl4Zp1NzSd8pgcSVRFkJpqNGpEhL2u8/ky0yc8hV5dehaSDix1kNJqcgd8W63gH0FTZNUaoh
 9CCubXsyPRbsMjxaRmJSCUnpZVpxUzIaoU7JNPsymnniD6CAqrdgyYVDhnawIX0rE/8Ji8Gi+
 lQVGux9Ji8rhMGjW7qYS8+l2FryUhO6vaC82o68iZ3NCpnwygnCgzToncdk9PUCap/f8cstv7
 H2zkN2aZvapUfXGSP4WohiW9uti4owXdy2mUY74EAC85pDQRNDQHSafkM5gBAJrhyW65z9/tY
 SdRcP6vugy0hHH07J7G6gkdUUOpM/wBO8ElNTbL+GT3KwvmCLRjXgV7EXZKnERQPtdvna82ej
 0WbJjr7qvujLBaxLKsqsJzGsqIEpIOcrE1pldI/V9cEE2yVTMbn2ilHDmHsOwPfRJf88ITmIu
 2PonMOzRqpZg8MQINOy2vvK41ME2u0uT1lQdoVggzByfd5rDgD2T8/Hq4b7AQR11H58ta4Rap
 AhdBqEMAKGbA/EFS6ct7wMDr94OSaqdVzxdb7Kcve6Vv8prBuZaC5eHSlXfuqI9NZAjHoBTii
 UYTSw72hicXpMaQOaaHVbNTAd//91YBG9fLE/HrZ04FSywPSlNce44NNiqAUFpE1ZWcixHwSY
 bYANY5C395dPm22X0TEeC6R9o9qcQVLXxTce09v2/iikqGWStD4lIyiSzR53k5oxtGWe9MIp0
 jS1L2Lz5KYGs8S5yjNr4PYhihlsURR10GTEmFMPvZYDxtMOaiUvIzhS5/QbafUjmL14/quGYp
 EnM6R77vfq/Z7UCzWmajtasYujaG8gym35e/DCvTxUBQQvLlIo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_080519_764048_517340B4 
X-CRM114-Status: GOOD (  36.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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

On Mon, Mar 9, 2020 at 3:05 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Mon, Mar 09, 2020 at 02:33:26PM +0100, Arnd Bergmann wrote:
> > On Sun, Mar 8, 2020 at 3:20 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > > On Sun, Mar 08, 2020 at 11:58:52AM +0100, Arnd Bergmann wrote:
> > > > On Fri, Mar 6, 2020 at 9:36 PM Nishanth Menon <nm@ti.com> wrote:
> > > > > On 13:11-20200226, santosh.shilimkar@oracle.com wrote:
> > >
> > > > - extend zswap to use all the available high memory for swap space
> > > >   when highmem is disabled.
> > >
> > > I don't think that's a good idea.  Running debian stable kernels on my
> > > 8GB laptop, I have problems when leaving firefox running long before
> > > even half the 16GB of swap gets consumed - the entire machine slows
> > > down very quickly when it starts swapping more than about 2 or so GB.
> > > It seems either the kernel has become quite bad at selecting pages to
> > > evict.
> > >
> > > It gets to the point where any git operation has a battle to fight
> > > for RAM, despite not touching anything else other than git.
> > >
> > > The behaviour is much like firefox is locking memory into core, but
> > > that doesn't seem to be what's actually going on.  I've never really
> > > got to the bottom of it though.
> > >
> > > This is with 64-bit kernel and userspace.
> >
> > I agree there is something going wrong on your machine, but I
> > don't really see how that relates to my suggestion.
>
> You are suggesting for a 4GB machine to use 2GB of RAM for normal
> usage via an optimised virtual space layout, and 2GB of RAM for
> swap using ZSWAP, rather than having 4GB of RAM available via the
> present highmem / lowmem system.

No, that would not be good. The cases where I would hope
to get improvements out of zswap are:

- 1GB of RAM with VMSPLIT_3G, when VMSPLIT_3G_OPT
  and VMSPLIT_2G don't work because of user address space
  requirements

- 2GB of RAM with VMSPLIT_2G

- 4GB of RAM if we add VMSPLIT_4G_4G

> > - A lot of embedded systems are configured to have no swap at all,
> >   which can be for good or not-so-good reasons. Having some
> >   swap space available often improves things, even if it comes
> >   out of RAM.
>
> How do you come up with that assertion?  What is the evidence behind
> it?

The idea of zswap is that it's faster to compress/uncompress
data than to actually access a slow disk. So if you already have
a swap space, it gives you another performance tier inbetween
direct-mapped pages and the slow swap.

If you don't have a physical swap space, then reserving a little
bit of RAM for compressed swap means that rarely used pages
take up less space and you end up with more RAM available
for the workload you want to run.

> This is kind of the crux of my point in the previous email: Linux
> with swap performs way worse for me - if I had 16GB of RAM in my
> laptop, I bet it would perform better than my current 8GB with a
> 16GB swap file - where, when the swap file gets around 8GB full,
> the system as a whole starts to struggle.
>
> That's about a 50/50 split of VM space between RAM and swap.

As I said above I agree that very few workloads would behave
better from using using 1.75GB RAM plus 2.25GB zswap (storing
maybe 6GB of data) compared to highmem. To deal with 4GB
systems, we probably need either highmem or VMSPLIT_4G_4G.

> > - A particularly important case to optimize for is 2GB of RAM with
> >   LPAE enabled. With CONFIG_VMSPLIT_2G and highmem, this
> >   leads to the paradox -ENOMEM when 256MB of highmem are
> >   full while plenty of lowmem is available. With highmem disabled,
> >   you avoid that at the cost of losing 12% of RAM.
>
> What happened to requests for memory from highmem being able to be
> sourced from lowmem if highmem wasn't available?  That used to be
> standard kernel behaviour.

AFAICT this is how it's supposed to work, but for some reason it
doesn't always. I don't know the details, but have heard of recent
complaints about it. I don't think it's the actual get_free_pages
failing, but rather some heuristic looking at the number of free pages.

> > - With 4GB+ of RAM and CONFIG_VMSPLIT_2G or
> >   CONFIG_VMSPLIT_3G, using gigabytes of RAM for swap
> >   space would usually be worse than highmem, but once
> >   we have VMSPLIT_4G_4G, it's the same situation as above
> >   with 6% of RAM used for zswap instead of highmem.
>
> I think the chances of that happening are very slim - I doubt there
> is the will to invest the energy amongst what is left of the 32-bit
> ARM community.

Right. But I think it makes sense to discuss what it would take
to do it anyway, and to see who would be interested in funding or
implementing VMSPLIT_4G_4G. Whether it happens or not comes
down to another tradeoff: Without it, we have to keep highmem
around for a much long timer to support systems with 4GB of
RAM along with systems that need both 2GB of physical RAM
and 3GB of user address space, while adding VMSPLIT_4G_4G
soon means we can probably kill off highmem after everybody
with more 8GB of RAM or more has stopped upgrading kernels.
Unlike the 2GB case, this is something we can realistically
plan for.

What is going to be much harder I fear is to find someone to
implement it on MIPS32, which seems to be a decade ahead
of 32-bit ARM in its decline, and also has a small number of users
with 4GB or more, and architecturally it seems harder to
implement or impossible depending on the type of MIPS
MMU.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
