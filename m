Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8381E10050F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 13:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhkrdbx9TgwICHKhT+qTo6XJMLqj8dhxEn8xPkblwKU=; b=iiWytlVUfB4oxZ
	JA9mgYUHi46vMuALHrxZ6fWdT2Jh8o3n6zLYczUYvqboQUHCxymw7Be5zvq0u3cixxjf4oLVIgpzD
	desEd9x0Fd2+5c4oirZqIFc72byqQWzie/BIRGn7ePwINSjaPOKpC2TzTUa1QKgK2XCLBV1QZAEu1
	d74Z2qy/kJbegFtBQg36fxbeFsiQ2iGGnwksUNmfx1jxUGq+U413XkyMSy3hg7W6hxnbD/x84f3Nl
	rHopZCskC2ecLGAIAyChYIUli9rItbzPsMqx9rgtf5n2TEeJrLcLW2JKzO/vqI6CQDIwXwUQRVPBe
	wgekt+ycJGqiNNnmsS9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfis-00047p-24; Mon, 18 Nov 2019 12:01:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfie-00044S-Dt; Mon, 18 Nov 2019 12:01:26 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWfiX-0006Jj-Hc; Mon, 18 Nov 2019 13:01:17 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
Date: Mon, 18 Nov 2019 13:01:16 +0100
Message-ID: <17111474.kvkBZtc6MS@diego>
In-Reply-To: <62bfaad5-cbd6-efbd-426b-3da681fcd160@fivetechno.de>
References: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
 <CAMty3ZDwjv4ShpbAyQPWk9ewboFOK3nZO0s_QNty_m0hJKR76w@mail.gmail.com>
 <62bfaad5-cbd6-efbd-426b-3da681fcd160@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_040124_623202_769E3FAA 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 18. November 2019, 12:57:16 CET schrieb Markus Reichl:
> Hi Jagan,
> =

> Am 18.11.19 um 12:44 schrieb Jagan Teki:
> > On Mon, Nov 4, 2019 at 5:42 PM Heiko St=FCbner <heiko@sntech.de> wrote:
> >>
> >> Hi Markus,
> >>
> >> Am Freitag, 1. November 2019, 17:54:23 CET schrieb Markus Reichl:
> >> > For rk3399-roc-pc is a mezzanine board available that carries M.2 and
> >> > POE interfaces. Use it with a separate dts.
> >> >
> >> > Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> >> > ---
> >> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >> >  .../boot/dts/rockchip/rk3399-roc-pc-mezz.dts  |  52 ++
> >> >  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 757 +--------------=
--
> >> >  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 767 +++++++++++++++=
+++
> >> >  4 files changed, 821 insertions(+), 756 deletions(-)
> >> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezz.=
dts
> >> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> >> >
> >> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot=
/dts/rockchip/Makefile
> >> > index a959434ad46e..80ee9f1fc5f5 100644
> >> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> >> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> >> > @@ -28,6 +28,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-nanopi-neo=
4.dtb
> >> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-orangepi.dtb
> >> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-puma-haikou.dtb
> >> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc.dtb
> >> > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc-mezz.dtb
> >> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4.dtb
> >> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock960.dtb
> >> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64.dtb
> >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezz.dts b/a=
rch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezz.dts
> >> > new file mode 100644
> >> > index 000000000000..ee77677d2cf2
> >> > --- /dev/null
> >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezz.dts
> >> > @@ -0,0 +1,52 @@
> >> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >> > +/*
> >> > + * Copyright (c) 2017 T-Chip Intelligent Technology Co., Ltd
> >> > + * Copyright (c) 2019 Markus Reichl <m.reichl@fivetechno.de>
> >> > + */
> >> > +
> >> > +/dts-v1/;
> >> > +#include "rk3399-roc-pc.dtsi"
> >> > +
> >> > +/ {
> >> > +     model =3D "Firefly ROC-RK3399-PC Mezzanine Board";
> >> > +     compatible =3D "firefly,roc-rk3399-pc", "rockchip,rk3399";
> >>
> >> different board with same compatible isn't possible, so
> >> you'll need a new compatible for it and add a new line to
> >> the roc-pc entry in
> >>         Documentation/devicetree/bindings/arm/rockchip.yaml
> >>
> >> Either you see it as
> >> - a board + hat, using dt overlay and same compatible
> >> - a completely separate board, which needs a separate
> >>   compatible as well
> >>
> >> And as discussed in the previous thread
> >> http://lists.infradead.org/pipermail/linux-rockchip/2019-November/0275=
92.html
> >> but also in Jagan's response that really is somehow a grey area
> >> for something relatively static as the M.2 extension.
> > =

> > Sorry for late response on this. I still think that the "overlay would
> > be a better suite" than having separate dts, since it is HAT which is
> > optional to insert and have possibility of having another HAT if it
> > really fit into it.
> > =

> > Comments?
> Presently no other extension board does exist, I don't expect one.
> =

> I use it with rootfs on NVME on the mezzanine board.
> It is convenient to have the NVME up before going to user space.

And that is exactly the reason while I think it's sane to have this
as a separate board. For more common hats with random
extended functionality this might be different.

But people attaching the nvme-"hat" will in most all cases do so quite
permanently as well ;-) .

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
