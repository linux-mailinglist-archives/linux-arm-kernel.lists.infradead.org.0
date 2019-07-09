Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8333863CBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 22:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99rmJ4KdTEq/N8dcb4vu/QiyLGJJGPsSPZpuesYm0h4=; b=JxvRAky3QF90eW
	b7MsuP4vDML6ba61Ps9wslBFAh5mr99FFVZvZN138tv1TIXIBuyQA2P1gAxNG+rUPLfZjESIuFgVf
	9jOJrXD2DB+TM5boed0wDIitfj78PIBwVmSVjGhjaxNuZUHbE05O5rdd/dVTenuJBS1bqYbivZR3Y
	hU848t9xgVMZ7SMxTOs97vixBKvlV8a+45zCYOQZcPo7S9KYJoFvC8kYJvZlb4MPxB1nCEr1Ck6zd
	zwnY0ia1Egc8pcj8um3gIoZlImwt5U3ZA5unAwTyKBp6BB+laJJpZvK/xAqom2k1mIX+oaF348s8t
	oAHCqZCCW/UGbpPyajwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwlZ-0007o3-6w; Tue, 09 Jul 2019 20:31:09 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwlB-0007n9-P4
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 20:30:47 +0000
Received: by mail-oi1-x243.google.com with SMTP id w196so16368752oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 13:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PzzhMIXkgjfY/3I8xNBuuzFKRaBW4WRzScdd/5mOmm8=;
 b=TK7AxUoPJ8Dp1bYwsCGbWOtglqsnbxpl+OsqficcEvLFcPrjduzrCyRFvtBGl1xr73
 qURoStNeMzxVIVm64zwh5TFdq9AsSUWUj4nLs77NBb97lBuPc+5RvLDo5bHdmHZEQdLM
 4BnivVI511PHSv6rb+gjX8zyi7OdBkFdHfR6lbALcvKx78W4lbNaoN59XlHuicbt7fbC
 slWnOxT4/3CPXM+Y8ob087puyLO3iPxUyWSzk8xl01WIq+U7kVDtqZ2LkxKZbcTznKwM
 d2mtxvLQtrnqSJ5YGcaVN7ZkU1jUK+MfLwg0qAkIym8QIVHlF9B+Nq/SflEE8mkVq7Cn
 uDbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PzzhMIXkgjfY/3I8xNBuuzFKRaBW4WRzScdd/5mOmm8=;
 b=FJtiLD/sNbg4Cqsh5S5CdOegMFPOsONNmK8sDoDgqJl93wqHiAq+KCKlFUhVDYTKKa
 jIMtErC9nJJ52H1HcTwEQIuwFZQlesvfS7z3/uKtkb5NY/Dok6dumOVrPlSOGZnBxzjo
 HBWjNAK3vS/AytrS6ztyVDncpQ0ZPnjHkIXnuzaBYN4qaEZlnreCqELVbbR3B6UN3tDw
 uXcw+mI+xNp02lZ3ikTIQG434uxKlqp5krmKbc79xITh/nzW0zSMYhya2KsYLDjSOl3D
 vMsEKtsNJ93FAdVsamG3F3kKztIJPQo9PBMEAlMttPNCG2RYjTQqj+W0sOYs4fBVHeg7
 wNOg==
X-Gm-Message-State: APjAAAVH7KQ3mDCKKW3bCc3T73tZ3Nqg7F3ch84vQ7PdecJZMSJTCIlP
 5fHLsUzFWK5TW2DYlosmLAawD0MsnphTlkxjuKI=
X-Google-Smtp-Source: APXvYqxcnttgFG+ExJVZtKNgY/nJZ0LcoVm1wiyk2wRS4arEWWVemvY2rYVYYkQOuT1IpF4ima0OhtnS4WB0PchMdxE=
X-Received: by 2002:aca:b208:: with SMTP id b8mr1217173oif.98.1562704244691;
 Tue, 09 Jul 2019 13:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
 <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
 <CA+E=qVdsYV2Bxk245=Myq=otd7-7WHzUnSJN8_1dciAzvSOG8g@mail.gmail.com>
 <20190709085532.cdqv7whuesrjs64c@flea>
In-Reply-To: <20190709085532.cdqv7whuesrjs64c@flea>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 9 Jul 2019 13:30:18 -0700
Message-ID: <CA+E=qVdz4vfU3rtTTKjYdM+4UA+=FWheJfWOMaDtFMnWQ1rHbw@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_133045_822188_7E8B5661 
X-CRM114-Status: GOOD (  27.43  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 1:55 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Mon, Jul 08, 2019 at 05:49:21PM -0700, Vasily Khoruzhick wrote:
> > > > Maybe instead of edp-connector one would introduce integrator's specific
> > > > connector, for example with compatible "olimex,teres-edp-connector"
> > > > which should follow edp abstract connector rules? This will be at least
> > > > consistent with below presentation[1] - eDP requirements depends on
> > > > integrator. Then if olimex has standard way of dealing with panels
> > > > present in olimex/teres platforms the driver would then create
> > > > drm_panel/drm_connector/drm_bridge(?) according to these rules, I guess.
> > > > Anyway it still looks fishy for me :), maybe because I am not
> > > > familiarized with details of these platforms.
> > >
> > > That makes sense yes
> >
> > Actually, it makes no sense at all. Current implementation for anx6345
> > driver works fine as is with any panel specified assuming panel delays
> > are long enough for connected panel. It just doesn't use panel timings
> > from the driver. Creating a platform driver for connector itself looks
> > redundant since it can't be reused, it doesn't describe actual
> > hardware and it's just defeats purpose of DT by introducing
> > board-specific code.
>
> I'm not sure where you got the idea that the purpose of DT is to not
> have any board-specific code.

I believe DT was an attempt to move to declarative approach for
describing hardware. Yes, we have different compatibles for different
devices but they're specific to particular device rather than
particular board. Device interconnection is described in DT along with
some properties rather than in board-specific C-file. Introducing
board-specific compatible for a connector isn't looking right to me.

> It's perfectly fine to have some, that's even why there's a compatible
> assigned to each and every board.
>
> What the DT is about is allowing us to have a generic behaviour that
> we can detect: we can have a given behaviour for a given board, and a
> separate one for another one, and this will be evaluated at runtime.
>
> This is *exactly* what this is about: we can have a compatible that
> sets a given, more specific, behaviour (olimex,teres-edp-connector)
> while saying that this is compatible with the generic behaviour
> (edp-connector). That way, any OS will know what quirk to apply if
> needed, and if not that it can use the generic behaviour.
>
> And we could create a generic driver, for the generic behaviour if
> needed.
>
> > There's another issue: if we introduce edp-connector we'll have to
> > specify power up delays somewhere (in dts? or in platform driver?), so
> > edp-connector doesn't really solve the issue of multiple panels with
> > same motherboard.
>
> And that's what that compatible is about :)

Sorry, I fail to see how it would be different from using existing
panels infrastructure and different panels compatibles. I think Rob's
idea was to introduce generic edp-connector. If we can't make it
generic then let's use panel infrastructure.

> > I'd say DT overlays should be preferred solution here, not another
> > connector binding.
>
> Overlays are a way to apply a device tree dynamically. It's orthogonal
> to the binding.

It isn't orthogonal to original problem though.

> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
