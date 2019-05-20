Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E80F2421E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 22:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9e1+5BYPHfdYIJbkbty2CTFr98Na2qtUH2gVk3aXIQ=; b=P0H5PCS/OrUlyQ
	RnBaRmRRkCp0Xs45BxusxyCaZJiqv4qTVzPO3FA7cxpg8aYdrRbUIiYn3GX4g/EQAtf0/sTVlkabm
	TiTJ4i5VJPPONRsBvcbUgdEgmJ9OGeTiurBMF2dUBo8YegtCUas8RtyTaJJ34mbcCeBMmQBBTUJIn
	Oczc/LAs9XazNsYUr6hTbtw7unWsVqndm1H8LB1+fhzijudHpusr8Sxf2ebbtC+SU8soTlVnCA08b
	cd3r8NYSxaXaZYsWR8M9aIHblcCEliqK9THN9dqdkHVCc928U4rZvyXLTtKiK/VjY5lDdS22Czwna
	TWy6fT9wTsZkQ8J/+f8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSotL-0003ju-Fi; Mon, 20 May 2019 20:28:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSotD-0003is-Qk; Mon, 20 May 2019 20:28:09 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hSot6-0008TP-VJ; Mon, 20 May 2019 22:28:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Limit GPU frequency on veyron
 mickey to 300 MHz when the CPU gets very hot
Date: Mon, 20 May 2019 22:28:00 +0200
Message-ID: <1695268.0xytyHHoPs@diego>
In-Reply-To: <CAD=FV=VGA_i=vM4_OrqXnv0WC__Fcdced3oOZjzcPO=i8Q+SdA@mail.gmail.com>
References: <20190520170132.91571-1-mka@chromium.org>
 <CAD=FV=VGA_i=vM4_OrqXnv0WC__Fcdced3oOZjzcPO=i8Q+SdA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_132808_013680_0B32F707 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 20. Mai 2019, 22:16:46 CEST schrieb Doug Anderson:
> Hi,
> =

> On Mon, May 20, 2019 at 10:01 AM Matthias Kaehlcke <mka@chromium.org> wro=
te:
> >
> > On rk3288 the CPU and GPU temperatures are correlated. Limit the GPU
> > frequency on veyron mickey to 300 MHz for CPU temperatures >=3D 85=B0C.
> >
> > This matches the configuration of the downstream Chrome OS 3.14 kernel,
> > the 'official' kernel for mickey.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> > Note: this patch depends on "ARM: dts: rockchip: Add #cooling-cells
> > entry for rk3288 GPU" (https://lore.kernel.org/patchwork/patch/1075005/)
> > ---
> >  arch/arm/boot/dts/rk3288-veyron-mickey.dts | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot=
/dts/rk3288-veyron-mickey.dts
> > index d889ab3c8235..f118d92a49d0 100644
> > --- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> > +++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> > @@ -125,6 +125,12 @@
> >                                          <&cpu2 8 THERMAL_NO_LIMIT>,
> >                                          <&cpu3 8 THERMAL_NO_LIMIT>;
> >                 };
> > +
> > +               /* At very hot, don't let GPU go over 300 MHz */
> > +               cpu_very_hot_limit_gpu {
> > +                       trip =3D <&cpu_alert_very_hot>;
> > +                       cooling-device =3D <&gpu 2 2>;
> > +               };
> =

> Two things:
> =

> A) If I'm reading things properly, you're actually limiting things to
> 400 MHz.  This is because you don't have <https://crrev.com/c/1574579>
> which deletes the 500 MHz GPU operating point.  So on upstream the
> available points are:
> =

> 0: 600 MHz
> 1: 500 MHz
> 2: 400 MHz
> 3: 300 MHz
> 4: 200 MHz
> 5: 100 MHz
> =

> ...and downstream:
> =

> 0: 600 MHz
> 1: 400 MHz
> 2: 300 MHz
> 3: 200 MHz
> 4: 100 MHz
> =

> Thinking about it more, I bet Heiko would actually be OK deleting the
> 500 MHz GPU operating point for veyron.  Technically it's not needed
> upstream because upstream doesn't have our hacks to allow re-purposing
> NPLL for HDMI (so they _can_ make 500 MHz) but maybe we can make the
> argument that these laptops have only ever been tested with the 500
> MHz operating point removed and also that eventually someonje will
> probably figure out a way to re-purpose NPLL for HDMI even upstream...

Yeah. Dropping the opp sounds sensible ... for the npll-related thing
and also if you're really running into thermal constraints it might be
good to give the system a bit more breathing room?


Heiko


> B) It seems like in the same patch you'd want to introduce
> "cpu_warm_limit_gpu", AKA:
> =

> cpu_warm_limit_gpu {
>   trip =3D <&cpu_alert_warm>;
>   cooling-device =3D
>   <&gpu 1 1>;
> };
> =

> =

> -Doug





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
