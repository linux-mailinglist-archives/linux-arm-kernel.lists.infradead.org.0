Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A14FC31EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0jjA02Mc7X+cmC8UFqAa38ndw26UuvPiKZRmZrld+s=; b=h9HT4rrVHH7kSu
	gPP4brhsH/gFKbDhdIC6YI1yM2dfJEvvoQzvlLv9tgpjZuCdUhTP8OXryN36ep/6xHGKFpWB/8hwG
	WnJDUnuIlwp56SSufkywwY3mTE84z+EPq398ytwFV3QdKqbF0R6612Pyh00qGdilYw5jV/rThIlKq
	PyXiGuQyaAY/Y3ODTvgBPuqQp5myS3ePOvFqNf16WXyeCpK2zdqjJCwpdiClbeSOXxFkukcyZpMoy
	Qx4jBzHd68dXNdisDMYLFIqJGA6yeuIwQ2sBp8fPMe3frC3gS/Eg7Rlk8rnQj+RGMrkQ3wW7G6Hun
	89EFloZd2sdHClM4JudA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFuO-0000U9-C1; Tue, 01 Oct 2019 11:01:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFuH-0000Tj-3i; Tue, 01 Oct 2019 11:01:26 +0000
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23C0021D71;
 Tue,  1 Oct 2019 11:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569927684;
 bh=WFo4AOUfzZaJbgEqFa0H+5dWz8gP0vH+XT9yDB8pn74=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DKAOAjhhZQekV/U0rf1A61tna9L0itLTk3ksZxH/4x8NGaaPEMB6wFbrRuMk0nE04
 pmYtJv/BtN/snI8o56m6K6S3SNSX+TmnxsyTYPmUmLs0860AYsKNWKF8bA4kBcxDS0
 YByxPCIlMdIoRWs6B2VsNN9AfxWvOcIyagdW+dRY=
Received: by mail-wm1-f42.google.com with SMTP id p7so2839162wmp.4;
 Tue, 01 Oct 2019 04:01:24 -0700 (PDT)
X-Gm-Message-State: APjAAAV9M13ygKzJhbdX8HHPcqM6AMvh/YVbhJRinOla/2M3bnvX0K2h
 b0WCksrgde/ebwgbboyXez16q/LFGXSZqR7CFq0=
X-Google-Smtp-Source: APXvYqxTkPFr419qtuPFWbkgNrsF7CMpg7mB9lJniQFsAuSfCSwlMLaZF7coguK/T5VVCPX6kxCP/gJgub/cxMZOwAw=
X-Received: by 2002:a1c:2b41:: with SMTP id r62mr3025307wmr.47.1569927682563; 
 Tue, 01 Oct 2019 04:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-5-jagan@amarulasolutions.com> <4177305.6QI6aNXrAv@phil>
 <CAMty3ZBZ0kXsc-4EwUwy9rAHcDvhhYL1JWkyhhdvSvfRdyvvwA@mail.gmail.com>
In-Reply-To: <CAMty3ZBZ0kXsc-4EwUwy9rAHcDvhhYL1JWkyhhdvSvfRdyvvwA@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 1 Oct 2019 19:01:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v67J_Dir72==ZxLmW-yeEsryWEJduVnHQiL96nn0vJEMcg@mail.gmail.com>
Message-ID: <CAGb2v67J_Dir72==ZxLmW-yeEsryWEJduVnHQiL96nn0vJEMcg@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: Rename roc-pc with libretech
 notation
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_040125_193319_6ED3B196 
X-CRM114-Status: GOOD (  25.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Levin Du <djw@t-chip.com.cn>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Da Xue <da@lessconfused.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 6:34 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Mon, Sep 30, 2019 at 3:02 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Hi Jagan,
> >
> > Am Donnerstag, 19. September 2019, 07:28:20 CEST schrieb Jagan Teki:
> > > Though the ROC-PC is manufactured by firefly, it is co-designed
> > > by libretch like other Libretech computer boards from allwinner,
> > > amlogic does.
> > >
> > > So, it is always meaningful to keep maintain those vendors who
> > > are part of design participation so-that the linux mainline
> > > code will expose outside world who are the makers of such
> > > hardware prototypes.
> > >
> > > So, rename the existing rk3399-roc-pc.dts with libretch notation,
> > > rk3399-libretech-roc-rk3399-pc.dts
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/Makefile                           | 2 +-
> > >  .../{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts}   | 0
> >
> > Somewhat "randomly" renaming files for "exposure" of the maker isn't the
> > way to go. Especially as the file name itself is merely a handle and not
> > meant for fame. The board filename should mainly enable developers to
> > hopefully the correct board file to use/change - and "rk3399-roc-pc"
> > is sufficiently unique to do that.
> >
> > Similar to how the NanoPi boards do that.
> >
> > And renames not only loose the history of changes but also in this case
> > the file is in the kernel since july 2018 - more than a year, so this might
> > actually affect the workflow of someone.
>
> Yes, I agreed this point.
>
> >
> > So I'd really expect an actual technical reason for a rename.
>
> This changes purely based on the recent changes on naming conventions
> that have been followed in amlogic and allwinner with regards to
> libretech [1]. I have seen few Bananapi boards from Allwinner H3 has
> been converted as per Libretech computer recently. I assume these

The DTS file for AML-S905X-CC has never been renamed.

The ALL-H3-CC was only reworked to split out the common bits to accommodate
the different SoC (H3 vs H5) variants for the same board. Even after the
rework, the board DTS files retained their original naming scheme. Same
goes for the Bananapi M2+. However we have never renamed Bananapi files
to Libretech.

Since Libre Computer and Firefly both have the ROC-RK3399-PC, renaming
it is likely to cause some confusion.

ChenYu

> changes are because libretech has part of co-designed vendor and also
> open source forum supported for these hardware.
>
> For further information, may be Da Xue can comment on this.
>
> [1] https://libre.computer/products/boards/
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
