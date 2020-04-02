Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A1C19C460
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 16:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0jgumBUT9ZxDxkk0Dila/kYKhZmm7yEt8paUy3+7YQ=; b=eAJq0pTOC/28bI
	y0e19tZek2ek2L4XdVgcuhZv34h+qzxKzFmrjxxR9MTe8gEFXw6vmFWySPrGLlj1rWB3mtKPkbyK0
	KbcDeWmPJvPjhTr75VF8yhWdfzbN5jnMUJAZ5nOCMCSPuYU5NoMVjEhjgGRqk+M09vyQQvAaFZlc8
	IzGXBnb7gwBtc+5u4iF/Dd+sbBweCXP4RlpLv8gjt6j7p3BsM3srJ+OztRpb64LgZGgHtu+WN1716
	xMxypqmkcM+tJo8fmdJ4SqxNy2X3bwALi0khB3Ag8Po45JFMSxfI51YQOmFob/KENiqnYSfFKU0b2
	fgvVImQdWSfJLhY8Mz3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0xM-0003Tj-TY; Thu, 02 Apr 2020 14:36:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0xA-0003R4-LO
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 14:36:22 +0000
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7EE220787
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 Apr 2020 14:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585838179;
 bh=hgqNTt2kKMNGHqP+Km3jz9TvPzM2T4GaVOuSBURhUvs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Xea48Y7rVx7bKJXai1/rCZV02PKwdZb4NtyEvbGgM3eK43U6ZAC4N4R5Dzhu/tpgZ
 Ix/acFtoFs6RiiUvxog1xUiHsMKNCC4kJfqpbdKlGwGBb87JV6h20pa2q195oUMJoZ
 hsriSvjosxbqeD+R/0eO72SAMOgSI4V4mocJgaho=
Received: by mail-il1-f173.google.com with SMTP id i75so3749676ild.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 07:36:19 -0700 (PDT)
X-Gm-Message-State: AGi0PuYVLAqU5NgbFQutrVU1hZHTTrm3HrsMM9vpls7gvP5SgEjLFb4H
 sJIZAcMEYJdCOvBta8GFh/7X2n/zMPnbplObp+g=
X-Google-Smtp-Source: APiQypK/ccv9NRSETRVTWozAv5jSrWGxRlqM/ygFo4EjfN+UAGVGv17+NG3gieCqXQN2oci7WqN0P+0T4tCB/gk2P3w=
X-Received: by 2002:a92:dcd1:: with SMTP id b17mr3620113ilr.80.1585838179188; 
 Thu, 02 Apr 2020 07:36:19 -0700 (PDT)
MIME-Version: 1.0
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
 <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
 <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
 <e0c125ea492670c7069c407b6b0c5958@agner.ch>
In-Reply-To: <e0c125ea492670c7069c407b6b0c5958@agner.ch>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 2 Apr 2020 16:36:08 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEe835GbXU5qgX-QQ5n4SmwQO1nAoAZw5pUVCbR=J8XmQ@mail.gmail.com>
Message-ID: <CAMj1kXEe835GbXU5qgX-QQ5n4SmwQO1nAoAZw5pUVCbR=J8XmQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_073620_740083_97241EF5 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nd <nd@arm.com>, Tony Lindgren <tony@atomide.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Peter Smith <Peter.Smith@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Russell King <linux@armlinux.org.uk>, linux-omap@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Apr 2020 at 16:34, Stefan Agner <stefan@agner.ch> wrote:
>
> On 2020-04-02 14:05, Ard Biesheuvel wrote:
> > On Thu, 2 Apr 2020 at 13:50, Peter Smith <Peter.Smith@arm.com> wrote:
> >>
> >> > I take it this implies that the LLVM linker does not support the
> >> > R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
> >> > expanded to a pair of adds with the appropriate relocations, letting
> >> > the linker fix up the immediates (and the ADD vs SUB bits)
> >>
> >> Not at the moment. I have a patch in review to add the G0 variants for these in Arm state at reviews.llvm.org/D75349 . As far as I know LLVM MC does not have support for generating the relocations either. This could be added though. I agree that using the G* relocations with a pair of add/sub instructions would be the ideal solution. The adrl psuedo is essentially that but implemented at assembly time. I think it would be possible to implement in LLVM but at the time (4+ years ago) I wasn't confident in finding someone that would think that adrl support was worth the disruption, for example the current Arm assembly backend can only produce 1 instruction as output and adrl requires two.
> >>
> >> I'd be happy to look at group relocation support in LLD, I haven't got a lot of spare time so progress is likely to be slow though.
> >>
> >
> > For Linux, I have proposed another approach in the past, which is to
> > define a (Linux-local) adr_l macro with unlimited range [0], which
> > basically comes down to place relative movw/movt pairs for v7+, and
> > something along the lines of
> >
> >         ldr <reg>, 222f
> > 111:    add <reg>, <reg>, pc
> >         .subsection 1
> > 222:    .long <sym> - (111b + 8)
> >         .previous
>
> Just to confirm: The instance at hand today seems to be working fine
> without adrl, so I guess we are fine here, do you agree?
>

I agree. Apologies for hijacking the thread :-)

> There are a couple more instances of adrl in arch/arm/crypto/, maybe
> that is where the adr_l macro could come in.
>

There are various places in the arch code that could be cleaned up
along these lines.

But you're right - this is a separate discussion that deserves a
thread of its own. I was just satisfying my own curiosity.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
