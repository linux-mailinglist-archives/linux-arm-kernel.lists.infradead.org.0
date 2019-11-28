Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06FC10C6C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 11:33:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zNnZmqYDTMgL7RpGSoEkV8xv+RP3teRC8ZRiSF3350A=; b=Cm0ura6V5as9wnW34877S58/h
	sGvdrVu9ab5c+N+xYYGJ3GF+MkfFS5NYtKDFQxesN30SFRmy+B0jed/FwNJscUdRnSLjECQQl2pdn
	GISe3KkMh7heKPV/Ft2ho3+0Ze+sCbUIoqrxYDI9B80UJcCwvRE5AhvbDC3RIRrW9q/K6zr2T5dVB
	pAnijWnAmpKfQUjD97PXcVLHz/J8y0F1sNXzjZz+a7mD61EIGfIhMFl28TKh3LOgtafIrNJPqSe1J
	NR7TS0kmfa+W2K/3dPTKQDaOWGYWj1/RY5maLu+HHU+XkewimFnJljLaj+jbHfM8M2A2bWlRzz5BG
	E9s3V3Qmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaH6r-0008HN-2g; Thu, 28 Nov 2019 10:33:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaH6f-0008Gb-KX
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 10:33:06 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A8F821774;
 Thu, 28 Nov 2019 10:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574937185;
 bh=XkkZY50Ku/fTTkcm9Gj5G8wbLDZLo31fHLtFpoOVYCw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=13OFpcdb2oyl0G7fXdFH5DZQWxrcTEN4M4cMy0d8sc/zcZH7aOvPlsOmKKejf7uSK
 GxuhBUi83tUboyJjztTNa5pya+hTY07JhVN3nZ2DhT4kl6XVhttuXcXguqPZEavXYM
 eiHgzMrc1GjyRG/8pmyOhbMzQnQv6JU6eeqVScEM=
Date: Thu, 28 Nov 2019 11:33:01 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 1/1] arm64: dts: allwinner: a64: olinuxino: Add VCC-PG
 supply
Message-ID: <20191128103301.vjpkvjscy45ycgwg@gilmour.lan>
References: <20191126110508.15264-1-stefan@olimex.com>
 <20191126162721.qi7scp3vadxn7k2i@gilmour.lan>
 <0c1d7377-7064-f509-ffc5-bd1e8f2fbaa8@olimex.com>
MIME-Version: 1.0
In-Reply-To: <0c1d7377-7064-f509-ffc5-bd1e8f2fbaa8@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_023305_698359_656ED9B6 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8259009162085582505=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8259009162085582505==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="stx4a5zlstsyhhjb"
Content-Disposition: inline


--stx4a5zlstsyhhjb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stefan,

On Wed, Nov 27, 2019 at 09:07:40AM +0200, Stefan Mavrodiev wrote:
> On 11/26/19 6:27 PM, Maxime Ripard wrote:
> > Hi Stefan,
> >
> > On Tue, Nov 26, 2019 at 01:05:08PM +0200, Stefan Mavrodiev wrote:
> > > On A64-OLinuXino boards, PG9 is used for USB1 enable/disable. The
> > > port is supplied by DLDO4, which is disabled by default. The patch
> > > adds the regulator as vcc-pg, which is later used by the pinctrl.
> > >
> > > Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
> > > ---
> > >   arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts | 4 ++++
> > >   1 file changed, 4 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> > > index 01a9a52edae4..c9d8c9c4ef20 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> > > @@ -163,6 +163,10 @@
> > >   	status = "okay";
> > >   };
> > >
> > > +&pio {
> > > +	vcc-pg-supply=<&reg_dldo4>;
> > The equal sign should have spaces around it.
> >
> > Also, can you please list all the bank supplies while you're at it?
>
> Sure. Should the supplies defined as regulators names be added also to the
> pio node?
> For example reg_aldo1 is named "vcc-pe".

As far as I can tell, the A64 has regulators for PC, PD, PE, PG and
PL, so you should list those (PL being under r_pio)

> Also, since the commit message will be different for better representation
> of the changes, should I send the next
> patch as v2 or as a new one?

Either way works for me as long as the commit message matches the changes.

Thanks!
Maxime

--stx4a5zlstsyhhjb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXd+iXQAKCRDj7w1vZxhR
xcehAP963qGMNNtuK9UziU1syhhW7rH4N5zmtnS3s2iN4Mp0JwD/d4k4t/rtURBA
Lpwkgow4mIPRk/bmMRu8JfSG0GizbQY=
=1Rzz
-----END PGP SIGNATURE-----

--stx4a5zlstsyhhjb--


--===============8259009162085582505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8259009162085582505==--

