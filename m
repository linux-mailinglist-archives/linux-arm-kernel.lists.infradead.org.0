Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8837E24110
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMg2KOmGD5H3ovRkkanrtCEqNTCS6ih8sCHMbE0SV1o=; b=MWRYQ3asSbCHCi
	2zeuUcj5Y/ElGvXSag4zdUY9wNHiRg304D27k0T/AoLa48RtdkaVqi7Tgdv4Y8ZiQC3UqERfR31ns
	JVNgEoDSv/HDU/Hm9x6dNH5ykm9ZNTpNGwPBYnT4Y+M24sAsNMFKaCVexjJcATW513UX2bMWC5Fjt
	ZEBhuB+UdtBaAqFdj7Uj2wNxakGeH8ZFUreEnWnlQB/lxKsb64MDBBxTkGqUVlWPhXLOfyowb2OxB
	fYb1cQbJgK2wNF4rfg90Cyj7iD6gPX1zpYPbWnBv9etINkPF/LvkXfz9EWiEDRF6DE2QUHrkj+SpO
	rGijIZcLDxhmmx/h2yyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSnrM-00024z-D7; Mon, 20 May 2019 19:22:08 +0000
Received: from smtp13.smtpout.orange.fr ([80.12.242.135]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSnrF-000240-6x
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 19:22:03 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by mwinf5d70 with ME
 id EjMv2000F3iAcaR03jMw2d; Mon, 20 May 2019 21:21:56 +0200
X-ME-Helo: mail-qt1-f171.google.com
X-ME-Auth: bWF4aS5qb3VyZGFuQHdhbmFkb28uZnI=
X-ME-Date: Mon, 20 May 2019 21:21:56 +0200
X-ME-IP: 209.85.160.171
Received: by mail-qt1-f171.google.com with SMTP id a39so17705724qtk.2;
 Mon, 20 May 2019 12:21:56 -0700 (PDT)
X-Gm-Message-State: APjAAAW0aBQhuWK71XqEuhv+YpNS4rHv3r9tPv/JKmzlF+1l/PDeALL6
 HBs2mn894GFKLXENJjPtwpV6xQEdPCkDxEZ6khA=
X-Google-Smtp-Source: APXvYqwWx9jKotKEBSYAh/ox+pJ7V+Mptux6Q++uPZ/syBhzl2tV/VKpkDxPtgnqjvrayCPxYj5WzDuOzvpzYmMWHCQ=
X-Received: by 2002:a0c:d941:: with SMTP id t1mr61382342qvj.204.1558380115291; 
 Mon, 20 May 2019 12:21:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190413171532.25967-1-martin.blumenstingl@googlemail.com>
 <CAHStOZ5Pe9LvDk4cKAVB4SS5wgFcK-bweFTqU_mnEhOAyZKHuA@mail.gmail.com>
 <CAFBinCD4OnBbU0YR5P5cAhut==XXUxdHSxHQkBVm28DHZWkbAw@mail.gmail.com>
In-Reply-To: <CAFBinCD4OnBbU0YR5P5cAhut==XXUxdHSxHQkBVm28DHZWkbAw@mail.gmail.com>
From: Maxime Jourdan <maxi.jourdan@wanadoo.fr>
Date: Mon, 20 May 2019 21:21:43 +0200
X-Gmail-Original-Message-ID: <CAHStOZ4O=sdHaKrY_DwkhDHVBsa_Dg4xWEBrS77LHG-WbZ6-Cw@mail.gmail.com>
Message-ID: <CAHStOZ4O=sdHaKrY_DwkhDHVBsa_Dg4xWEBrS77LHG-WbZ6-Cw@mail.gmail.com>
Subject: Re: [PATCH 0/3] 32-bit Meson: add the canvas module
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_122201_606053_7E285B26 
X-CRM114-Status: GOOD (  32.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mjourdan@baylibre.com, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Jourdan <maxi.jourdan@wanadoo.fr>,
 linux-amlogic <linux-amlogic@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Martin, so sorry for forgetting about this.

On Thu, Apr 18, 2019 at 9:50 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Maxime,
>
> On Sat, Apr 13, 2019 at 8:54 PM Maxime Jourdan <maxi.jourdan@wanadoo.fr> wrote:
> >
> > Hi Martin,
> > On Sat, Apr 13, 2019 at 7:15 PM Martin Blumenstingl
> > <martin.blumenstingl@googlemail.com> wrote:
> > >
> > > This adds the canvas module on Meson8, Meson8b and Meson8m2. The canvas
> > > IP is used by the video decoder hardware as well as the VPU (video
> > > output) hardware.
> > >
> > > Neither the VPU nor the video decoder driver support the 32-bit SoCs
> > > yet. However, we can still add the canvas module to have it available
> > > once these drivers gain support for the older SoCs.
> > >
> > > I have tested this on my Meson8m2 board by hacking the VPU driver to
> > > not re-initialize the VPU (and to use the configuration set by u-boot).
> > > With that hack I could get some image out of the CVBS connector. No
> > > changes to the canvas driver were required.
> > >
> > > Due to lack of hardware I could not test Meson8, but I'm following (as
> > > always) what the Amlogic 3.10 vendor kernel uses.
> > > Meson8b is also not tested because u-boot of my EC-100 doesn't have
> > > video output enabled (so I couldn't use the same hack I used on my
> > > Meson8m2 board).
> > >
> > > This series meant to be applied on top of "Meson8b: add support for the
> > > RTC on EC-100 and Odroid-C1" from [0]
> > >
> > >
> >
> > The series looks good to me, however I wonder if we should maybe add a
> > new compatible ?
> >
> > The canvas IP before the GX* generation does not handle what Amlogic
> > calls "endianness", the field that allows doing some byte-switching to
> > get proper NV12/NV21. So the following defines are unusable:
> >
> > #define MESON_CANVAS_ENDIAN_SWAP16 0x1
> > #define MESON_CANVAS_ENDIAN_SWAP32 0x3
> > #define MESON_CANVAS_ENDIAN_SWAP64 0x7
> > #define MESON_CANVAS_ENDIAN_SWAP128 0xf
> I didn't know about this - thank you for pointing this out.
>
> your suggestions to add new compatible strings is a good idea for that case.
> Amlogic uses different defines for Meson8 and Meson8m2 in their vendor
> kernel and they keep Meson8b different.
> I will add three new compatibles, one for each SoC (Meson8, Meson8b,
> Meson8m2) just to be on the safe side if we discover differences in
> the canvas IP on these SoCs.
>
> what do you think?
>

Sure thing. Keep an eye out for any hints regarding the amount of
canvases as well, I *think* I remember some old SoCs having only 192
but I haven't been able to find it again.

> > It wouldn't change much functionally, but we could have e.g a warning
> > if a m8 canvas user tries to set endianness even though it does
> > nothing.
> this is a good idea, that will make it easier to spot why something
> doesn't work.
> we can also return -EINVAL, like you already do for the case where the
> canvas ID is already used.
>

Yes, returning an error is a good idea.

Maxime

>
> Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
