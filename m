Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F1B10EFDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:12:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kSqFE3U1Q1r09yaXgBmkP8C8O1AfnySxD2z2v79x4qY=; b=JF0vwtA5nIuFzCMzTED08k6hM
	YWrE402JfIO1rFqMWh+xxz4t/7B73LPaexFED7mELKtsydM1GKjMIEEOmTWz1VBSahoUnrtYZJ7G7
	FSp/PIaTjHY7S2iBSzcH8Kmlt90oBIJrkp1vJfkkosUwnrNc4z+o87jKMRHm9MN1mGrCPOV0mXH0m
	PPu+V3fp6qA2zn77JcxkXkGMdtwNtiQODJtGPeJc5IP7xtdlsWqsInAuADyj2Dm4U8TJGROTWqR9f
	6QdzLaUFJ/bweFs7smohDilCLCQfvL9QQ2W8wQaYv89UQL2XR8rWe9/SyzqLMhQW9gnDiRXuqi/XI
	09cSW7sPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibr7W-0006w7-3i; Mon, 02 Dec 2019 19:12:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibr7B-0006m4-JU
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 19:12:11 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0AC4A20865;
 Mon,  2 Dec 2019 19:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575313928;
 bh=c0wU/ydN3X9chS8ohQeA9+Ps5De+Uh3+bA/Xz2NUefA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rtDi8zJvTPcyL3e/hsmgwlQ55KHTdew267Yef4LwQw4s8+vzWxPfAHmPbcjMBd/kR
 OM28GSQxAWV8uOwrnxJat4lo3OJ9K7udADJWLDGhay+g3AiIOCBJCyY4JO3djA8QT0
 o54LcLGQURJjZnuOfrxsPGWgDixTO63pDmHY2FZo=
Date: Mon, 2 Dec 2019 20:12:05 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: Convert to new-style SPDX license
 identifiers
Message-ID: <20191202191205.2izimptezz5rf5kp@gilmour.lan>
References: <20191123132435.22093-1-peron.clem@gmail.com>
 <20191128174204.tbr5ldilkadw42gc@gilmour.lan>
 <CAJiuCccY7AFsd22bOxKZW=BAne5YEG0vmnVmUNFamU9cpW_vNA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCccY7AFsd22bOxKZW=BAne5YEG0vmnVmUNFamU9cpW_vNA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_111209_683674_AB4E010E 
X-CRM114-Status: GOOD (  40.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6049556345007664557=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6049556345007664557==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hre6yxsla27gcger"
Content-Disposition: inline


--hre6yxsla27gcger
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 28, 2019 at 07:12:16PM +0100, Cl=E9ment P=E9ron wrote:
> On Thu, 28 Nov 2019 at 18:42, Maxime Ripard <mripard@kernel.org> wrote:
> >
> > Hi Clement,
> >
> > Sorry for the pretty slow answer
> >
> > On Sat, Nov 23, 2019 at 02:24:35PM +0100, Cl=E9ment P=E9ron wrote:
> > > Move the SPDX-License-Identifier lines to the top and drop the
> > > license splat.
> > >
> > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > ---
> > >
> > > Hi,
> > >
> > > This the same logic that what has be done on Amlogic.
> > >
> > > Commit: ARM64: dts: amlogic: Convert to new-style SPDX license identi=
fiers
> > > https://lore.kernel.org/patchwork/patch/890455/
> >
> > So there's a bunch of different things that should be addressed in
> > separate patches here I believe.
> >
> > >  arch/arm64/boot/dts/allwinner/axp803.dtsi     | 39 +----------------
> > >  .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 39 +----------------
> > >  .../dts/allwinner/sun50i-a64-nanopi-a64.dts   | 39 +----------------
> > >  .../dts/allwinner/sun50i-a64-olinuxino.dts    | 39 +----------------
> > >  .../dts/allwinner/sun50i-a64-orangepi-win.dts | 39 +----------------
> > >  .../dts/allwinner/sun50i-a64-pine64-lts.dts   |  3 +-
> > >  .../dts/allwinner/sun50i-a64-pine64-plus.dts  | 39 +----------------
> > >  .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 39 +----------------
> > >  .../dts/allwinner/sun50i-a64-pinebook.dts     |  1 -
> > >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 42 +----------------=
--
> > >  .../boot/dts/allwinner/sun50i-a64-sopine.dtsi | 42 +----------------=
--
> > >  .../boot/dts/allwinner/sun50i-a64-teres-i.dts |  3 +-
> > >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 39 +----------------
> > >  .../sun50i-h5-bananapi-m2-plus-v1.2.dts       |  4 +-
> > >  .../allwinner/sun50i-h5-bananapi-m2-plus.dts  |  4 +-
> > >  .../allwinner/sun50i-h5-nanopi-neo-plus2.dts  | 39 +----------------
> > >  .../dts/allwinner/sun50i-h5-nanopi-neo2.dts   | 39 +----------------
> > >  .../dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 39 +----------------
> > >  .../allwinner/sun50i-h5-orangepi-prime.dts    | 42 +----------------=
--
> > >  .../sun50i-h5-orangepi-zero-plus.dts          |  3 +-
> > >  .../sun50i-h5-orangepi-zero-plus2.dts         | 39 +----------------
> > >  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  | 39 +----------------
> > >  .../dts/allwinner/sun50i-h6-beelink-gs1.dts   |  2 +-
> > >  .../dts/allwinner/sun50i-h6-orangepi-3.dts    |  2 +-
> > >  .../allwinner/sun50i-h6-orangepi-lite2.dts    |  2 +-
> > >  .../allwinner/sun50i-h6-orangepi-one-plus.dts |  2 +-
> > >  .../dts/allwinner/sun50i-h6-orangepi.dtsi     |  2 +-
> > >  .../boot/dts/allwinner/sun50i-h6-pine-h64.dts |  2 +-
> > >  .../dts/allwinner/sun50i-h6-tanix-tx6.dts     |  2 +-
> > >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  2 +-
> > >  30 files changed, 33 insertions(+), 634 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/axp803.dtsi b/arch/arm64/b=
oot/dts/allwinner/axp803.dtsi
> > > index f0349ef4bfdd..f4f2c70fde5c 100644
> > > --- a/arch/arm64/boot/dts/allwinner/axp803.dtsi
> > > +++ b/arch/arm64/boot/dts/allwinner/axp803.dtsi
> > > @@ -1,43 +1,6 @@
> > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > >  /*
> > >   * Copyright 2017 Icenowy Zheng <icenowy@aosc.xyz>
> > > - *
> > > - * This file is dual-licensed: you can use it either under the terms
> > > - * of the GPL or the X11 license, at your option. Note that this dual
> > > - * licensing only applies to this file, and not this project as a
> > > - * whole.
> > > - *
> > > - *  a) This file is free software; you can redistribute it and/or
> > > - *     modify it under the terms of the GNU General Public License as
> > > - *     published by the Free Software Foundation; either version 2 o=
f the
> > > - *     License, or (at your option) any later version.
> > > - *
> > > - *     This file is distributed in the hope that it will be useful,
> > > - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > > - *     GNU General Public License for more details.
> > > - *
> > > - * Or, alternatively,
> > > - *
> > > - *  b) Permission is hereby granted, free of charge, to any person
> > > - *     obtaining a copy of this software and associated documentation
> > > - *     files (the "Software"), to deal in the Software without
> > > - *     restriction, including without limitation the rights to use,
> > > - *     copy, modify, merge, publish, distribute, sublicense, and/or
> > > - *     sell copies of the Software, and to permit persons to whom the
> > > - *     Software is furnished to do so, subject to the following
> > > - *     conditions:
> > > - *
> > > - *     The above copyright notice and this permission notice shall be
> > > - *     included in all copies or substantial portions of the Softwar=
e.
> > > - *
> > > - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIN=
D,
> > > - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTI=
ES
> > > - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> > > - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> > > - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> > > - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> > > - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> > > - *     OTHER DEALINGS IN THE SOFTWARE.
> > >   */
> >
> > So this is the first, obvious, one that you talk about in your commit
> > log. While the license says that it's X11, SPDX reports that it's now
> > MIT, can you clarify this?
>
> As far as I know X11 and MIT are similar and MIT is preferred in Linux.
> see: LICENSES/preferred.
> So I have converted the X11 to MIT but it can be an explicit commit.
> This is done implicitly in the Amlogic commit.

It's not really my main concern, it's more that if it's a license
change, then you need the agreement of all the authors, so basically
anyone that touched all those DT.

> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts =
b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > index 72d6961dc312..2ca36580436c 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > @@ -1,6 +1,5 @@
> > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > >  /*
> > > - * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > - *
> > >   * Copyright (c) 2018 ARM Ltd.
> > >   */
> >
> > This is another kind of changes though. The SPDX identifier is there,
> > but under the wrong format and you're fixing it.
> >
> > That being said, I'm not a super fan of mixing the two comment styles
> > for two lines.
> >
> > What about using only // style comments for the header?
>
> Most of the other dts use this style for the header so I would like to
> keep this kind of style.
> Except if DT maintainers want explicity to move to another style.
> Having a coherency in all dts is better and we can move to another
> style with a simple script.

Some drivers already use the // comment for their copyright notice,
the coding style allows it for single line comment and our DTs already
use it, so it's the cleanest solution imho.

> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts =
b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> > > index f335f7482a73..84b7e9936300 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> > > @@ -1,4 +1,4 @@
> > > -// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > >  /*
> > >   * Copyright (C) 2019 Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > >   */
> >
> > And I'm not sure what this one (and the next) is?
>
> The license expressions in dual licensed files is wrong here, "OR"
> should be uppercase.
> I can move it to a separate commit if you like.

Ah, right, indeed, this should be in a separate patch.

Thanks!
Maxime

--hre6yxsla27gcger
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXeViBQAKCRDj7w1vZxhR
xT6AAQC35VJscNYYQjTRrHq7l91bwIQ1GxqYCZNUKpvRYALq2AEAhGVlONgaDx6+
y1KC09Y3YVyygZJ9d705xzI+wYjh7gI=
=wruZ
-----END PGP SIGNATURE-----

--hre6yxsla27gcger--


--===============6049556345007664557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6049556345007664557==--

