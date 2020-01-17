Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D044D1410C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:26:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dVQOCxBVQTZzyFcz7jFbnpSlusFd+eKsZ/Y7wPg4ADE=; b=NJFPy9AKvKbx/apYSt0WdgSsh
	S/KYFovmkWWz8/qeNQfZsOvxg+vYGVaRsVw3+atCZcHN+UAIX3WCLVtuqogDYWGuJok+0DN608Oo+
	aLHl+5zUFbBG3xgwaHInJhrRCTvlkJL1XdEzaYRPsf+ORnJnhF9VUVfA4hlWwMeq5c9WCL8xSd/pF
	W4wFocSCQMzeUx5OTvyAjuKlY8GVx1e7E2ZrEBvvjkFpC6fflAA8er6Ru8BNztUIIKiYN1TB+iwlq
	8pUcZ7ydX86neT8Hv4oZbY0chLOOLWNtJ+twAzfmhhS0HIrLyN5Bl6ce708x8eU6LGKjtT7/Rnz/7
	aCnHW+31Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWJg-0001F3-6C; Fri, 17 Jan 2020 18:25:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWJP-0001E2-Ok
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:25:44 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04F0E206D5;
 Fri, 17 Jan 2020 18:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579285539;
 bh=Ajf3BP5hBZsV+EVeWhN6NMnAll1+MYA0SUMuToB9Bi8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rGISdMu+rzywI2gZjVcM1WGByjW5TW2wt+NoZo0MifkumfhruGnOL0SOu98nDSXnW
 vCTYqXaeAAUINnBx/ZLG1eN9wlBGnta3fl2ZvyHMKSqhoxKpzIugxEBDZ4JIuL9TWZ
 ETmRjk8Oo4A+/dOMlHkUwJzBbOQsq0qkLu6XJqaE=
Date: Fri, 17 Jan 2020 19:25:37 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/2] dt-bindings: arm: sunxi: add OrangePi 3 with eMMC
Message-ID: <20200117182537.scttsuq26g6v6yno@gilmour.lan>
References: <20200115194216.173117-1-jernej.skrabec@siol.net>
 <4200557.LvFx2qVVIh@jernej-laptop>
 <20200116122944.sgl2fgxf5mrg6i52@gilmour.lan>
 <12435330.uLZWGnKmhe@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <12435330.uLZWGnKmhe@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_102539_846149_CDA8A9A4 
X-CRM114-Status: GOOD (  23.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3983299142269709277=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3983299142269709277==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mplvgv5b6upxjosy"
Content-Disposition: inline


--mplvgv5b6upxjosy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jan 16, 2020 at 05:33:45PM +0100, Jernej =C5=A0krabec wrote:
> Dne =C4=8Detrtek, 16. januar 2020 ob 13:29:44 CET je Maxime Ripard napisa=
l(a):
> > On Thu, Jan 16, 2020 at 12:10:58AM +0100, Jernej =C5=A0krabec wrote:
> > > Hi!
> > >
> > > Dne sreda, 15. januar 2020 ob 22:57:31 CET je Rob Herring napisal(a):
> > > > On Wed, Jan 15, 2020 at 1:42 PM Jernej Skrabec <jernej.skrabec@siol=
=2Enet>
> > >
> > > wrote:
> > > > > OrangePi 3 can optionally have eMMC. Add a compatible for it.
> > > >
> > > > Is this just a population option or a different board layout? If the
> > > > former, I don't think you need a new compatible, just add/enable a
> > > > node for the eMMC.
> > >
> > > I have only board with eMMC but I imagine it's the former. Even so,
> > > current
> > > approach with Allwinner boards is to have two different board DT file=
s,
> > > one for each variant. This can be seen from
> > > Documentation/devicetree/bindings/arm/ sunxi.yaml which has a lot of
> > > compatibles ending with "-emmc". I guess reason for that is to avoid
> > > having MMC controller being powered on for no reason.
> > The main reason for that is that those populating options can be
> > conflicting. For example, last week we discussed an issue about the
> > eMMC being on the same pin set than an SPI flash, both options being
> > available.
> >
> > The solution Andre suggested then was to let the eMMC be disabled, and
> > have the bootloader probe the emmc, and if found, enable
> > it. Otherwise, it means that you have a SPI flash (and enable it).
> >
> > I guess a similar solution would apply here.
>
> From what I can tell from schematic, pins are dedicated for eMMC.
>
> So what solution do you suggest? Put eMMC node in original OrangePi 3 DT =
and
> set status to disabled?

If it's always dedicated to eMMC, but the eMMC is not always there, I
guess we could remove the non-removable property from the eMMC
mode. IIRC, without it (and without CD GPIO), it will fall-back to
polling the card and will be able to detect it if it's there (and not
use it if it's not).

Maxime

--mplvgv5b6upxjosy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiH8IQAKCRDj7w1vZxhR
xbWvAQDklRiCu9YordwQFOhckNNptssNw4rGbHaZXxEmxqtxQAD/UzPfwuDk4SR/
fyxg+YnibVHtraJeNwUYsL27/pkCOQA=
=TwtM
-----END PGP SIGNATURE-----

--mplvgv5b6upxjosy--


--===============3983299142269709277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3983299142269709277==--

