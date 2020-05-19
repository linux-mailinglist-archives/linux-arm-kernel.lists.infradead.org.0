Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2166E1D95FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/YDbJk8TAbANl+QTRyTndPybGmVlAHg2C4EFnR806s=; b=LaRr86U8Dc8RM+
	T9baT7Zi1I8vp+LenoBeZkAnKBo8OcS0ALxzIQFy3BzaaGrREHzyh/b2IVtNMf/YzJIB8JCX7Augy
	zjIdX/algr9IuJqJH4MuS+EVkA/Pk3OKk2eX24csNFfguXXXFzMSbHncp1VSBNBoer7Gc4dmkYidO
	qV3b9YoRdr2ISVqJkMmhZtpXrmkIxDFFGIsgWws+Ep2oqi11p+kwR88YdCygzBBG2C5kfTdwfBaiW
	UqkhClBU8fZHuCsuMJVkamkwoIseoKFQCdzmUC15t0wcsRdVqXGhn5ZLKDeTEaWRd3TYJQflusdZj
	Nd4M2THBEKSS/1KiBgrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb15w-0002vN-WC; Tue, 19 May 2020 12:11:41 +0000
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb15o-0002uw-8S
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:11:33 +0000
Received: by mail-oo1-f66.google.com with SMTP id p123so2753814oop.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 05:11:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YzPr5ME/rx0mm8f1HXcVFMEaGYLRdecJyu3Hp8Rox/0=;
 b=kaYZmX4wqt/t5yGDvCZhOH1nzQqxHYwKDm3/0PLz0DJrj6r/twzO/cjxYY8tGpN33B
 xl9iPI3oianszc/P2GHOOFYBwok/OcRz9K+FKlYRBUgeQ/RonpVHZz0es5IkNrTzvAJf
 rYX2JRnoW3fccI+vvROCERqYACPBJKdaqHbnSQj0Sh9o7DKLzPu07ksPWbLGvmGekib/
 ijoocIVX++Ppn2/T2pECxyzQGlrdGB0UkNz5y955SqiccfOAlGwqyQVM5Dgs0J3OwLnm
 T8y2ffMqjIAyyaV+Xqeyu98Wy0bJsBF+5dnVu0bmd2S3qpCT7RYpno7hKtLztB2kq+M5
 e74Q==
X-Gm-Message-State: AOAM533R01uxUtl6ee/IlfktKCZGmG+HEUaZxylTXJflvrpqMNIBhV/o
 U0g0buOWLetbIcWV2xCHnIXlC4gAACXSBL8MifI=
X-Google-Smtp-Source: ABdhPJyRSziZNrfSrilLC08tU525imlrr6yhGihg5O4ZATTVfbhCA5/40gAFoQqsQv6KSsH1dU3TNKmkqJKDRrsQJwc=
X-Received: by 2002:a4a:95d0:: with SMTP id p16mr16485117ooi.40.1589890287441; 
 Tue, 19 May 2020 05:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200429082134eucas1p2415c5269202529e6b019f2d70c1b5572@eucas1p2.samsung.com>
 <20200429082120.16259-1-geert+renesas@glider.be>
 <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
 <CAMuHMdXxq6m6gebQbWvxDynDcZ7dLyZzKC_QroK63L8FGeac1Q@mail.gmail.com>
 <20200519094637.GZ1551@shell.armlinux.org.uk>
 <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
 <CAK8P3a3H=7qx+Rz9sScTVCSMKWGwQ_ROnyoyK73A5yUd+_jbTw@mail.gmail.com>
In-Reply-To: <CAK8P3a3H=7qx+Rz9sScTVCSMKWGwQ_ROnyoyK73A5yUd+_jbTw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 19 May 2020 14:11:14 +0200
Message-ID: <CAMuHMdV0_GTop+YTPeu+aSFB=1YHsyzLXn-+0fa8upkNMq10bQ@mail.gmail.com>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_051132_301056_FFA7DE6E 
X-CRM114-Status: GOOD (  22.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 <devicetree@vger.kernel.org>, Grant Likely <grant.likely@arm.com>,
 Nicolas Pitre <nico@fluxnic.net>, Masahiro Yamada <masahiroy@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Lukasz Stelmach <l.stelmach@samsung.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Tue, May 19, 2020 at 1:28 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Tue, May 19, 2020 at 1:21 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Tue, May 19, 2020 at 11:46 AM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
>
> > >
> > > > However, something under /chosen should work.
> > >
> > > Yet another sticky plaster...
> >
> > IMHO the old masking technique is the hacky solution covered by
> > plasters.
> >
> > DT describes the hardware.  In general, where to put the kernel is a
> > software policy, and thus doesn't belong in DT, except perhaps under
> > /chosen.  But that would open another can of worms, as people usually
> > have no business in specifying where the kernel should be located.
> > In the crashkernel case, there is a clear separation between memory to
> > be used by the crashkernel, and memory to be solely inspected by the
> > crashkernel.
> >
> > Devicetree Specification, Release v0.3, Section 3.4 "/memory node" says:
> >
> >     "The client program may access memory not covered by any memory
> >      reservations (see section 5.3)"
> >
> > (Section 5.3 "Memory Reservation Block" only talks about structures in
> > the FDT, not about DTS)
> >
> > Hence according to the above, the crashkernel is rightfully allowed to
> > do whatever it wants with all memory under the /memory node.
> > However, there is also
> > Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt.
> > This suggests the crashkernel should be passed a DTB that contains a
> > /reserved-memory node, describing which memory cannot be used freely.
> > Then the decompressor needs to take this into account when deciding
> > where the put the kernel.
> >
> > Yes, the above requires changing code. But at least it provides a
> > path forward, getting rid of the fragile old masking technique.
>
> There is an existing "linux,usable-memory-range" property documented
> in Documentation/devicetree/bindings/chosen.txt, which as I understand
> is exactly what you are looking for, except that it is currently only
> documented for arm64.

Thank you, that looks appropriate!

It seems this is not really used by the early startup code.
Is that because the early startup code always runs in-place, and the
kernel image is not even copied?

> Would extending this to arm work?

Let's see.... Th arm early boot code seems to be more complex than the
arm64 code ;-)

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
