Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E738E1BA139
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/VUOIXWwkqfQb2ty1TUEmTO3j5zciyX1AvYWbw9Ruk=; b=j6XGmE8kFeqGhA
	1rq8xy1NfsVaEO59EWCsR6IhaWMyUqSy2vmOtG7HkKxY8BqM+Er6lvZyFLeottDitFFz9fWFY6ACa
	E+gf0b2F4DluwILZxqbBoACnD+MYzY5CHgPPdT//nqFUls2l1Jk/GBNs2EQDHxt1UpYzgRGP5VSxK
	moae6Z8hSj+EpDK2UvMtVvj1jzb8cEc4vHSFFhvzsf78ussrlx7vkEjmg9j2UBE06l5TaUUt52XVM
	I/aK57OkpZC2THM7faqUl2qCzn5DvTAGfGEtTH0WoWVqqLVhZcin/my1D6bvsKE20dK8f9LUv5/fO
	i+5V2IwWAuY5hr2/YLPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT12y-0003jG-7S; Mon, 27 Apr 2020 10:31:32 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT12o-0003iY-WF
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:31:24 +0000
Received: by mail-ot1-x344.google.com with SMTP id j26so25282211ots.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 03:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3d7vs20E1Et9twZMWtdoqd2YRjkdvKBGwACExL5kyRg=;
 b=tvtrT3kris+dM2Fd6C2U6qTO23oFqBPH6nLTx0ZEhnnfleDuIP/+oa2CScVy19rpkk
 COfloMiCX95ftcXhVLOPW9KP7+/PaNrE5zONJMcZOrxURYrILEre8ttKPbOuS9tNpbc+
 LQyyBkxNObiImX/P5y/ncL6LJQndQzzc6Jy+qhTjr9Nw6vZAm/8Q2PpozO/2q7mhIQjP
 r8TjF1g2Kr1eXk4Xa8TSMGOR2HVZBkAYtqRAzb+771Tp+yqOfrydKCWcUx6jcrSjXd0d
 O2ekoMICDb+M+9eC8HjlW8bLQL5QPtmmvnkdbcSe0V5vhWaWzrOcN9XgUbUpCCVKD8Nd
 4kyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3d7vs20E1Et9twZMWtdoqd2YRjkdvKBGwACExL5kyRg=;
 b=p1yi+dZHiFT3P9vd+N+DAQifkKvU0U8c3kiu6pIlR/DEwucSx54PVjUhim4OspvcuJ
 gWpPWGwOabcLUIqeqJV3zLFiQ/pHRHRf+0YyRxTnVVMWAHNVwWOB0kYjHWRuZ887XKJ5
 qx4a7DrFLehCuv5OSNUU0mIUbB6Mmct4GhWTdGQKAcaBSAd4Aq4wgSB4IKCO5G7RwKR5
 TRGpT6lLIQbzIfOAZyplIBCmo2qGnT2mHMdzmLIrqw1r3ZqN3HcHLEQh/Dt6qf/5tiKS
 kC+B4PaeqVWeMZ0OGf8jxwbIU1qjbYOGQFkecy3/FK6QtozscLJGYUIbg2SH1Qy0TUCx
 W9ZA==
X-Gm-Message-State: AGi0PuYtdLB4TPL4dQxXTSxh4RS/PIEP1sMhhL4He6MJBP19abEwNv9O
 tCZ87UpRuv5kjzdOOYzdeIepJ04HhAxFXlIZXxA=
X-Google-Smtp-Source: APiQypLDnWLyGAgDCNv98J886odnQ8mX26B9JoocB96gAjQ4sJvW7pv565vVlbaHXsTMdz90L4H275X8XO7T/WINWDQ=
X-Received: by 2002:aca:b783:: with SMTP id h125mr3069784oif.62.1587983481703; 
 Mon, 27 Apr 2020 03:31:21 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdXwsUAaeY+b6t-nqPE8kL-p+F4HqXE2mujP0eXPjrbooQ@mail.gmail.com>
In-Reply-To: <CAMuHMdXwsUAaeY+b6t-nqPE8kL-p+F4HqXE2mujP0eXPjrbooQ@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 27 Apr 2020 11:30:55 +0100
Message-ID: <CA+V-a8sH4sLN1XuRM+SgbbN5O38wrtMyk5QEXEPhV5tOkbchJw@mail.gmail.com>
Subject: Re: [PATCH 00/10] Add RZ/G1H support.
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_033123_048009_27C77468 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Mon, Apr 27, 2020 at 10:28 AM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Prabhakar,
>
> On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
> <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > This patch series aims to add support for Renesas RZ/G1H (r8a7742) SoC.
> >
> > RZ/G1H SoC is similar to R-Car Gen2 H2 SoC.
> >
> > This patch set is based on renesas-drivers/master-v5.7-rc1.
>
> Thanks for your series!
>
> Looks mostly OK to me.
Thank you for the review. After fixing patch 8/10 shall I just post a
v2 with a single patch or the entire series ?

> The missing code part seems to be the introduction of the main
> CONFIG_ARCH_R8A7742 symbol?
>
I was planning to post them once these patches were reviewed, just
didn't wanted to flood with too many patches.

for enabling r8a7742 SoC in multi_v7_defconfig should this be only
sent out wen its accepted in shmobile_defconfig or can it be part of
same series as below ?

05ba50a4cf99 ARM: multi_v7_defconfig: Enable r8a7742 SoC
99b69d08729a ARM: shmobile: defconfig: Enable r8a7742 SoC
6b7bcd6635c7 ARM: debug-ll: Add support for r8a7742
1cf4e52e3a0e soc: renesas: Add Renesas R8A7742 config option

> I assume you plan to submit the DTS for v5.8, too, so I'll have to be
> careful and apply the binding definitions to a separate shared branch?
>
Yes I do plan to submit the DTS changes for v5.8.

Cheers,
--Prabhakar

> Thanks again!
>
> > Lad Prabhakar (10):
> >   dt-bindings: power: rcar-sysc: Document r8a7742 SYSC binding
> >   dt-bindings: power: rcar-sysc: Add r8a7742 power domain index macros
> >   soc: renesas: rcar-sysc: add R8A7742 support
> >   dt-bindings: reset: rcar-rst: Document r8a7742 reset module
> >   soc: renesas: rcar-rst: Add support for RZ/G1H
> >   dt-bindings: clock: renesas: cpg-mssr: Document r8a7742 binding
> >   clk: renesas: Add r8a7742 CPG Core Clock Definitions
> >   clk: renesas: cpg-mssr: Add R8A7742 support
> >   ARM: shmobile: r8a7742: Basic SoC support
> >   cpufreq: dt: Add support for r8a7742
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
