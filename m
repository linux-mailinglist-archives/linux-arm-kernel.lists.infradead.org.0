Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923AC24150
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfddXsJ3EmVahVSNuhqSlx2sOLq0hX6pJ/g8qsDkkBQ=; b=lk3MDTGmrnh/aN
	iOdje0qCHUwO8rJ/J5zkwBub4tRBgeyJSpGaKidWDi7K4s+lHVjCcaz6eneCF/QztmVpIRNWYzJSv
	yGM7poai/gQt52nyJlsbaCmA9GPAJATJTTsnQAtU1EMFyw8RAX0Sb3VLALCpL4NosNN90TiRM5hMr
	Yg/qkphpmsjVsrBg85ZYOrBCiGYQ0qTPsYVfgZJ8Xsi9Dvn+PRFZnoNtjDYxkwM1sdaCrm65YQo8i
	lRwf3nnabsBUhUtO1mUk6jRwnw1r404oqEfAJiqiZCc3WMvJjYSJ0ZKD9zt+wHau2MsaL+kj6Cvuc
	HArRroTE6r/1Ps+og6Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSo5t-00078t-Rg; Mon, 20 May 2019 19:37:09 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSo5l-00077d-6J; Mon, 20 May 2019 19:37:02 +0000
Received: by mail-ot1-x342.google.com with SMTP id l25so5737296otp.8;
 Mon, 20 May 2019 12:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XVji6EW7+3Muo/zfup6MVTf/3d/utIq25qSjoZ1JLts=;
 b=OjJQYTl5xqc9g9jBo9P61CScZaOFd89JYM+lXP+wWpwnM5V85ht/CH5QBwe3G6xum/
 NQacpr0MMdVXwY77pd9fHReGdHexG8HnZY9OPu0ByLOaJkfRoOWt5rSZX0LQ3T5LEBwr
 JNO9ZzQCC4Ft8SIiXHjQIUjPl6wGB78mKQw9jXsyQp0kRZYTwbGU15l7UTVqVAQJePUR
 woyvknrDveua2kKithc9BI89DXCEoU2ghvohNcAT3ZUhr1qdIeU/ZRJlgEHpLoTtQ6Gt
 yTHm3Kc9d0Mhy/F8gIAjHwX5U8l7KCmlcTzq1mTQnwMgp9+gadfZ9EjixHDrVt5FWj4M
 ENSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XVji6EW7+3Muo/zfup6MVTf/3d/utIq25qSjoZ1JLts=;
 b=qrmOYdpYTfpJ5kPq3UDYoraAoS3fiMply6KpKBZ+VmY+Kk5UKe47nQQz7n8i1eKXSL
 0tVB9VNGQF/A6y9IMgB1M2mMDFWpiEGEwtKvYWks1evnZ7ivUFJ13rdSQnbZTwhlsFN0
 MIogfu/0FHPGaoL7F2QX4xVW5NxasMrjdJFGfn/x62r2btchbZa1Vl2sWnwUEW5VTt9h
 D5rD/lOFNQugM06mSXnqqBea65IPWFFESsYDhoUgdaDx5TZZmY0HZnorucXXacgKl1fS
 E/FmzyGZSwrq4vT2OUkwul1vjcoi835YohPG1LW/OBhWLY8U6EcyvQD6kI3pnynSqPq3
 uj1w==
X-Gm-Message-State: APjAAAUq0Pr11sXupxsXWagbrZ49HoqCOkNkHKPMVuR2StcF45hW7zKk
 gD32jtrreRst57VhUNe1THpVWeuZZ6oGEpG5jh0=
X-Google-Smtp-Source: APXvYqy9xz0BM+Jt3/1MqM1Qd0gyzmKhktCKQkV64no6FtpQKOWujanY15J3MAYELu3Ppdok5fMkBGK/kEKzFRI2cWg=
X-Received: by 2002:a9d:69c8:: with SMTP id v8mr46812783oto.6.1558381020106;
 Mon, 20 May 2019 12:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190413171532.25967-1-martin.blumenstingl@googlemail.com>
 <CAHStOZ5Pe9LvDk4cKAVB4SS5wgFcK-bweFTqU_mnEhOAyZKHuA@mail.gmail.com>
 <CAFBinCD4OnBbU0YR5P5cAhut==XXUxdHSxHQkBVm28DHZWkbAw@mail.gmail.com>
 <CAHStOZ4O=sdHaKrY_DwkhDHVBsa_Dg4xWEBrS77LHG-WbZ6-Cw@mail.gmail.com>
In-Reply-To: <CAHStOZ4O=sdHaKrY_DwkhDHVBsa_Dg4xWEBrS77LHG-WbZ6-Cw@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 21:36:49 +0200
Message-ID: <CAFBinCBKK7+dvkTwa=b7uBCAxLimzLnnvOSo4VD+5AVRiuynug@mail.gmail.com>
Subject: Re: [PATCH 0/3] 32-bit Meson: add the canvas module
To: Maxime Jourdan <maxi.jourdan@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_123701_259526_DDBF5824 
X-CRM114-Status: GOOD (  32.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mjourdan@baylibre.com, linux-amlogic <linux-amlogic@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Mon, May 20, 2019 at 9:21 PM Maxime Jourdan <maxi.jourdan@wanadoo.fr> wrote:
>
> Hey Martin, so sorry for forgetting about this.
>
> On Thu, Apr 18, 2019 at 9:50 PM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
> >
> > Hi Maxime,
> >
> > On Sat, Apr 13, 2019 at 8:54 PM Maxime Jourdan <maxi.jourdan@wanadoo.fr> wrote:
> > >
> > > Hi Martin,
> > > On Sat, Apr 13, 2019 at 7:15 PM Martin Blumenstingl
> > > <martin.blumenstingl@googlemail.com> wrote:
> > > >
> > > > This adds the canvas module on Meson8, Meson8b and Meson8m2. The canvas
> > > > IP is used by the video decoder hardware as well as the VPU (video
> > > > output) hardware.
> > > >
> > > > Neither the VPU nor the video decoder driver support the 32-bit SoCs
> > > > yet. However, we can still add the canvas module to have it available
> > > > once these drivers gain support for the older SoCs.
> > > >
> > > > I have tested this on my Meson8m2 board by hacking the VPU driver to
> > > > not re-initialize the VPU (and to use the configuration set by u-boot).
> > > > With that hack I could get some image out of the CVBS connector. No
> > > > changes to the canvas driver were required.
> > > >
> > > > Due to lack of hardware I could not test Meson8, but I'm following (as
> > > > always) what the Amlogic 3.10 vendor kernel uses.
> > > > Meson8b is also not tested because u-boot of my EC-100 doesn't have
> > > > video output enabled (so I couldn't use the same hack I used on my
> > > > Meson8m2 board).
> > > >
> > > > This series meant to be applied on top of "Meson8b: add support for the
> > > > RTC on EC-100 and Odroid-C1" from [0]
> > > >
> > > >
> > >
> > > The series looks good to me, however I wonder if we should maybe add a
> > > new compatible ?
> > >
> > > The canvas IP before the GX* generation does not handle what Amlogic
> > > calls "endianness", the field that allows doing some byte-switching to
> > > get proper NV12/NV21. So the following defines are unusable:
> > >
> > > #define MESON_CANVAS_ENDIAN_SWAP16 0x1
> > > #define MESON_CANVAS_ENDIAN_SWAP32 0x3
> > > #define MESON_CANVAS_ENDIAN_SWAP64 0x7
> > > #define MESON_CANVAS_ENDIAN_SWAP128 0xf
> > I didn't know about this - thank you for pointing this out.
> >
> > your suggestions to add new compatible strings is a good idea for that case.
> > Amlogic uses different defines for Meson8 and Meson8m2 in their vendor
> > kernel and they keep Meson8b different.
> > I will add three new compatibles, one for each SoC (Meson8, Meson8b,
> > Meson8m2) just to be on the safe side if we discover differences in
> > the canvas IP on these SoCs.
> >
> > what do you think?
> >
>
> Sure thing. Keep an eye out for any hints regarding the amount of
> canvases as well, I *think* I remember some old SoCs having only 192
> but I haven't been able to find it again.
Meson6 and older are limited to 192, Meson8 and newer already support
256. source: [0]

> > > It wouldn't change much functionally, but we could have e.g a warning
> > > if a m8 canvas user tries to set endianness even though it does
> > > nothing.
> > this is a good idea, that will make it easier to spot why something
> > doesn't work.
> > we can also return -EINVAL, like you already do for the case where the
> > canvas ID is already used.
> >
>
> Yes, returning an error is a good idea.
OK, I'll send an updated series later.


Martin


[0] https://github.com/endlessm/linux-meson/blob/5cb4882cdda584878a29132aeb9a90497a121df9/drivers/amlogic/canvas/canvas.c#L41

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
