Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911CB17E22E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:05:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SG7OAjRYWPRL1h5bqs68RiYBq9+gjvUqcrIbEJcZ3FI=; b=Ln1odk6/GaX2kU
	A7Upyg1e5f00x9OzuWCpgjfEfCodtc/unxwARPfU9zVvP20kVeSzuvhs88azlphEzh+aXxchc9tpv
	Mo+U9v0tqmPux/ZxhiaPpnu+jrKcCyx4Ut5ZwJWNnXaLJn0kG3n4z6AYadSgP08e6Ad6f83ppU6cR
	BdSUskVt6cWdECMhka0/RQwNgp1YiqKBSa4eP3oXLCzX8I4mroDcSAgqKcEPvcgFSIQNFPTpV9fkk
	RM0VuW7+/Y2nHVfAuW37MUHYOm40p9QQn10xUZqqA1XTuwUx5aaQCSyAMJd4+FPW7CSqmUVQyMiYk
	WNmpZ07n8cb8agNqyUpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJ2B-0005ur-AI; Mon, 09 Mar 2020 14:05:31 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJ21-0005u8-IC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 14:05:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d26Ye+vMRYj5g5ykorwl/W5eqkd9joFbNEWspN4ENAs=; b=Xl4UNnGtpQtUvm2BgVXiCnesn
 7sfNE6HTuF5M1sEiacWYVtLUj7JcKknJbqaOlmfa4Uc1uchICRc2UPtoZKgJ0Z4TIX9KenW7nmUtk
 jmKticzXy8ktdt2H4UZBTcBKr1oqKdgzkaVXoyOHbYCTnXmzv7j7ETY8ebK4+jq9qBgW1p3TbEVdp
 iMM3SFdsMiP7+ayIeGrD3Lh5qVn0R0EmfK9Ubo8B0qSyLSX6K+7nW1r6FIzw6VM/1qJeGmbKeg0bK
 f1I3tsqkvGx8S3xga4Nb3k3LYM0BLa3gIM5rWVU8XT09RkrZFk5zOv1Eqy34iooGn9DOWutdB77v4
 BXyB9MVUQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:50736)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jBJ1T-0007Ja-5X; Mon, 09 Mar 2020 14:04:47 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jBJ1L-0003Qb-Vi; Mon, 09 Mar 2020 14:04:40 +0000
Date: Mon, 9 Mar 2020 14:04:39 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Message-ID: <20200309140439.GL25745@shell.armlinux.org.uk>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2Gz5H_fcNtW0yCCjO1cRNa0nyd568sDYR0nNphu49YqQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_070521_608007_877DB718 
X-CRM114-Status: GOOD (  28.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Mar 09, 2020 at 02:33:26PM +0100, Arnd Bergmann wrote:
> On Sun, Mar 8, 2020 at 3:20 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Sun, Mar 08, 2020 at 11:58:52AM +0100, Arnd Bergmann wrote:
> > > On Fri, Mar 6, 2020 at 9:36 PM Nishanth Menon <nm@ti.com> wrote:
> > > > On 13:11-20200226, santosh.shilimkar@oracle.com wrote:
> >
> > > - extend zswap to use all the available high memory for swap space
> > >   when highmem is disabled.
> >
> > I don't think that's a good idea.  Running debian stable kernels on my
> > 8GB laptop, I have problems when leaving firefox running long before
> > even half the 16GB of swap gets consumed - the entire machine slows
> > down very quickly when it starts swapping more than about 2 or so GB.
> > It seems either the kernel has become quite bad at selecting pages to
> > evict.
> >
> > It gets to the point where any git operation has a battle to fight
> > for RAM, despite not touching anything else other than git.
> >
> > The behaviour is much like firefox is locking memory into core, but
> > that doesn't seem to be what's actually going on.  I've never really
> > got to the bottom of it though.
> >
> > This is with 64-bit kernel and userspace.
> 
> I agree there is something going wrong on your machine, but I
> don't really see how that relates to my suggestion.

You are suggesting for a 4GB machine to use 2GB of RAM for normal
usage via an optimised virtual space layout, and 2GB of RAM for
swap using ZSWAP, rather than having 4GB of RAM available via the
present highmem / lowmem system.

I'm saying that is quite risky given the behaviours I'm seeing,
where modern Linux seems to be struggling to work out what pages
it should be evicting.

I think Linux performs way better when it doesn't have to use
swap.

> > So, I'd suggest that trading off RAM available through highmem for VM
> > space available through zswap is likely a bad idea if you have a
> > workload that requires 4GB of RAM on a 32-bit machine.
> 
> Aside from every workload being different, I was thinking of
> these general observations:
> 
> - If we are looking at a future without highmem, then it's better to use
>   the extra memory for something than not using it. zswap seems like
>   a reasonable use.

I think that's still a very open question, one which hasn't been
answered yet.

> - A lot of embedded systems are configured to have no swap at all,
>   which can be for good or not-so-good reasons. Having some
>   swap space available often improves things, even if it comes
>   out of RAM.

How do you come up with that assertion?  What is the evidence behind
it?

This is kind of the crux of my point in the previous email: Linux
with swap performs way worse for me - if I had 16GB of RAM in my
laptop, I bet it would perform better than my current 8GB with a
16GB swap file - where, when the swap file gets around 8GB full,
the system as a whole starts to struggle.

That's about a 50/50 split of VM space between RAM and swap.

Proposing 2GB+ swap 2GB RAM would potentially place these machines
into the same situation as my laptop, and if it also results in
a loss of performance, we could end up with regression reports.

> - A particularly important case to optimize for is 2GB of RAM with
>   LPAE enabled. With CONFIG_VMSPLIT_2G and highmem, this
>   leads to the paradox -ENOMEM when 256MB of highmem are
>   full while plenty of lowmem is available. With highmem disabled,
>   you avoid that at the cost of losing 12% of RAM.

What happened to requests for memory from highmem being able to be
sourced from lowmem if highmem wasn't available?  That used to be
standard kernel behaviour.

> - With 4GB+ of RAM and CONFIG_VMSPLIT_2G or
>   CONFIG_VMSPLIT_3G, using gigabytes of RAM for swap
>   space would usually be worse than highmem, but once
>   we have VMSPLIT_4G_4G, it's the same situation as above
>   with 6% of RAM used for zswap instead of highmem.

I think the chances of that happening are very slim - I doubt there
is the will to invest the energy amongst what is left of the 32-bit
ARM community.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
