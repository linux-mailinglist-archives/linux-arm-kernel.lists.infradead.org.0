Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDE2160660
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 21:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwwYvwvmH+nVlJYVAj7uyaZY8+FpmaeCD0vThn2R/zI=; b=mGgxXX9x35l2oT
	XgItpauCku26UJ3A2YrYM8uoSCTOGil4zuc6OQrK2fCbrY7No/oTmcCSIvG+Ki/ePM5+QYYPM/9pc
	nqf+YKXFkFlOFOfxf4BOKhuMZ/NkGDuhSubtAFybpgAz5XAhmmvz0yPHBWcOmyHiu+50zJY5px7t9
	ax9hYuELaCG0Ou+Rx56WfEw0/CxqfgzE3UFkIi6cZuGiD6yA565Pfk+iO8M5wJXcbxhiEkM9toPxs
	V5h8NLcv163VpgYOoM5xTrTL84WcQw8cwB7ZR5iO2h8c+/UbaW5lWRE8C4q9C0NfPCrvEatL2P/8+
	eo/q2jq2OgU0+tcwoY7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Qgu-0004JV-Je; Sun, 16 Feb 2020 20:39:00 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Qgk-0004IW-Mf
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 20:38:52 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mate1-1jaYmc2GDr-00cQIg for <linux-arm-kernel@lists.infradead.org>; Sun,
 16 Feb 2020 21:38:45 +0100
Received: by mail-qt1-f181.google.com with SMTP id c5so10712833qtj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 12:38:44 -0800 (PST)
X-Gm-Message-State: APjAAAW+pSk7lhH+T2f3It7MPqg0DKGwYrJ0ZSpRfshxN9dQlR8jE+gF
 vrxu55uskCbULWaaPedjfAUk5CRy9H4Kbe/gexY=
X-Google-Smtp-Source: APXvYqzGbYZ4aYpEY0TUWZN5AxiKnI5sM7fs3pGtoCEgh1lCGT2r9R0o04dDMj4EezabIIFY8gGD+8mZfxHFiF3300Y=
X-Received: by 2002:ac8:3a27:: with SMTP id w36mr10771015qte.204.1581885523228; 
 Sun, 16 Feb 2020 12:38:43 -0800 (PST)
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
 <CAMuHMdV8-=dj5n-FM1nHjXq1DhkJVOh4rLFxERt33jAQmU4h_A@mail.gmail.com>
 <CAK8P3a0m574dHYuKBPLf6q2prnbFxX1w7xe4-JX-drN6dqH6TQ@mail.gmail.com>
 <CAMuHMdVpTngVXUnLzpS3hZWuVg97GVTf2Y3X8md--41AtaD1Ug@mail.gmail.com>
 <TYAPR01MB228505DD9E7C85F9FA4AA785B7170@TYAPR01MB2285.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB228505DD9E7C85F9FA4AA785B7170@TYAPR01MB2285.jpnprd01.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 16 Feb 2020 21:38:27 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3Za8dthPE7czQs+rK+xUq+ZZC4Sbj8QF5YjXvtfzop4Q@mail.gmail.com>
Message-ID: <CAK8P3a3Za8dthPE7czQs+rK+xUq+ZZC4Sbj8QF5YjXvtfzop4Q@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Chris Paterson <Chris.Paterson2@renesas.com>
X-Provags-ID: V03:K1:65Vh3rzOfExv9DA7mFA85XNYseEAGoZq5gc3yhFZrqZBX1Gw/Nr
 PEjnC4kklTTjWTzfopxoNticHW1iLriI1/gE/1IqJ3swXIa2P5CAc1KcTwBOhWOa3DvrBJs
 3plSUxNm5eTXsmcWYpVp89EZkh3vQALSPpN5cYZCBogMrQdpDrgYtMHlZd0mh2mvbrZSEnp
 ij8PavvWbBjYejCduBlDQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BfBSQreGKw0=:Wsfezhhe8AXR6C4m3ZFrI/
 /fOvvZrpUpGBcyeAN/GIx9PmnuAjn2b7yrsptcOTLpU8AYfpbydH2zf/eHWQGOKLou6UGAJGJ
 N421VyhAMUQEnWpgYjwEk8UGrxH8ExOQEwiaTaeJ8NZD2slW+jvXp49UgU5aeQgOz1eOOxDA1
 J/eeM0O5SJIqhyYhWOoS7NEAHfBY2zoK1RHa6HgN3kHxvh0vtbi6XXaq0JsnkkD15ciBmNjPq
 30GTG7AHIJINIBWSsUCvQVvJT2KfkeQI9qFXEQlwny88S5Rd0cjLMWmgrs122JFtoCEtDVbia
 5HVNVd+eiG0fKxaGDSOxBhoR6jIfQex+R3Fl7ykJh10lxGVG7rVnuYF1Em+WO6Ac31lAWZ3FK
 sRM1OWNhziu4fyKfTtkS5PYDvrSz8oH9UW0sQjVpne0farMab5TITfWMZGGpVfwk5iKxllBYM
 8mY9SbOSO9P9XSzGsTwqjzO2YIy1P9n15PwKrghX3H+8YiPeSHg3S0ePezAYvfeVSvX2PowX1
 6inMGgrNK9mXIgpr5n53uZ+j9YTPagVsDjCAV6nK7BxTXDbltK5amALQQVrV+kBgBih/XUdaO
 3MTNAVvoWHev6WA/LxnFxRacPYsaYumig3XmcQJQix8oOMsksHicaEzXsRr8Eix9QD9BeTaPF
 8/iBEV5yNQcRuxCajFD1z5lFLTVdTSUbRhK52+KqREzxWvTInypHjRtBctrEHUojM55OMcTbj
 CW+0jYXnORFNRPJEbzPylIJGNj5+ttnBxA4jUgflNVpz0NpNv+0jxjK9LhkiSx9arEi/e0YuS
 0zUY7ZtsxYCNxWLHyLK+ZCHxc8/1nYkBpu/f6v1EbrTNXvz7og=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_123851_039284_C4767FD5 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Hocko <mhocko@suse.com>, Rik van Riel <riel@surriel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Al Viro <viro@zeniv.linux.org.uk>,
 "cip-dev@lists.cip-project.org" <cip-dev@lists.cip-project.org>,
 Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 "kernel-team@fb.com" <kernel-team@fb.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 16, 2020 at 8:54 PM Chris Paterson
<Chris.Paterson2@renesas.com> wrote:
>
> Hello Arnd, Geert,
>
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > Sent: 16 February 2020 09:45
> > To: Arnd Bergmann <arnd@arndb.de>
> >
> > Hi Arnd,
> >
> > On Sat, Feb 15, 2020 at 5:59 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Sat, Feb 15, 2020 at 12:25 PM Geert Uytterhoeven
> > > <geert@linux-m68k.org> wrote:
> > > > On Thu, Feb 13, 2020 at 5:54 PM Arnd Bergmann <arnd@arndb.de>
> > wrote:
> > > > > On Wed, Feb 12, 2020 at 9:50 AM Russell King - ARM Linux admin
> > > > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > The CIP-supported RZ/G1 SoCs can have up to 4 GiB, typically split (even
> > > > for 1 GiB or 2 GiB configurations) in two parts, one below and one above
> > > > the 32-bit physical limit.
>
> Yep. One example is r8a7743-iwg20m.dtsi.

This one has 2x512MB, with half above the 4GiB limit. This means it needs
LPAE to address high physical addresses (which is fine), but it does not need
highmem if one uses an appropriate CONFIG_VMSPLIT_* option.

> > > Good to know. I think there are several other chips that have dual-channel
> > > DDR3 and thus /can/ support this configuration, but this rarely happens.
> > > Are you aware of commercial products that use a 4GB configuration, aside
> > from
> > > the reference board?
>
> iWave Systems make a range of SOM modules using the RZ/G1 SoCs.
> I believe there are options for some of these to use 4 GB, although 1 or 2 GB is
> used in the boards we've upstreamed support for.
>
> There are also other SOM vendors (e.g. Emtrion) and end users of RZ/G1,
> but I'm not sure of the details.

Both iWave and Emtrion only seem to list boards with 2GB or less on their
websites today (with up to 15 year availability). My guess is that they had
the same problem as everyone else in finding the right memory chips in
the required quantities and/or long-term availability. iWave lists "By default
1GB DDR3 and 4GB eMMC only supported. Contact iWave for memory
expansion support." on some boards, but that doesn't mean they ever
shipped a 4GB configuration.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
