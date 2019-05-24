Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D712946F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:20:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xM0GoMGcKd3x/PbiFMgpqBf5PEi0fm0OYN++IEobH0M=; b=C1xvMsUyzNE2NIizfGI1pd8FK
	qznlg2ABONStbue4VULu9rK6Eyd/peK6WtQO/cDgApoig2V2wJ5FZCYvvsx5KGxiW/5pcdRdlctRR
	fEE0RYByolpcSzF+0kc22U0z3pUGJlHEprh+y08nslXZnrNGxOVPl4QFrGmcqT8Fc2o9xBYV5lV53
	qY7JPFFs/Ufp3lvUbXKQeofgJ0/e7RQUj7mbopKXnbpupOqrdL2s5LuQkoumC2YHIjQSEKpOoZyo2
	Z8WVRdWmln0wgS5h6ZjVk94M/agkAVjuhkpBO+4cOmo7cvQGO771W/Pcv6b7B/exyqHL3MAP2w8XT
	Tb88kc6eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6NK-0004le-Gc; Fri, 24 May 2019 09:20:30 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6NC-0004l5-To
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 09:20:24 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 37F45240016;
 Fri, 24 May 2019 09:20:01 +0000 (UTC)
Date: Fri, 24 May 2019 11:20:01 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Luca Weiss <luca@z3ntu.xyz>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Message-ID: <20190524092001.ztf3kntaj4uiswnv@flea>
References: <20190518170929.24789-1-luca@z3ntu.xyz>
 <EF411F71-D257-41FC-9248-B0E3F686B6B9@z3ntu.xyz>
 <20190521142544.ma2xfu77bamk4hvc@flea> <4343071.IDWclfcoxo@g550jk>
MIME-Version: 1.0
In-Reply-To: <4343071.IDWclfcoxo@g550jk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_022023_264855_053A7D62 
X-CRM114-Status: GOOD (  28.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8260414502991714779=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8260414502991714779==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fjx5mpewtig2icgo"
Content-Disposition: inline


--fjx5mpewtig2icgo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 24, 2019 at 10:35:36AM +0200, Luca Weiss wrote:
> On Dienstag, 21. Mai 2019 16:25:44 CEST Maxime Ripard wrote:
> > On Tue, May 21, 2019 at 03:52:47PM +0200, luca@z3ntu.xyz wrote:
> > > On May 21, 2019 3:09:55 PM GMT+02:00, Maxime Ripard
> <maxime.ripard@bootlin.com> wrote:
> > > >On Tue, May 21, 2019 at 08:43:45AM +0200, luca@z3ntu.xyz wrote:
> > > >> On May 20, 2019 1:07:42 PM GMT+02:00, Maxime Ripard
> > > >
> > > ><maxime.ripard@bootlin.com> wrote:
> > > >> >On Sat, May 18, 2019 at 07:09:30PM +0200, Luca Weiss wrote:
> > > >> >> Add a node describing the KEYADC on the A64.
> > > >> >>
> > > >> >> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> > > >> >> ---
> > > >> >>
> > > >> >>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 7 +++++++
> > > >> >>  1 file changed, 7 insertions(+)
> > > >> >>
> > > >> >> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > >> >
> > > >> >b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > >> >
> > > >> >> index 7734f70e1057..dc1bf8c1afb5 100644
> > > >> >> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > >> >> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > >> >> @@ -704,6 +704,13 @@
> > > >> >>
> > > >> >>  			status = "disabled";
> > > >> >>
> > > >> >>  		};
> > > >> >>
> > > >> >> +		lradc: lradc@1c21800 {
> > > >> >> +			compatible = "allwinner,sun4i-a10-lradc-
> keys";
> > > >> >> +			reg = <0x01c21800 0x100>;
> > > >> >> +			interrupts = <GIC_SPI 30
> IRQ_TYPE_LEVEL_HIGH>;
> > > >> >> +			status = "disabled";
> > > >> >> +		};
> > > >> >> +
> > > >> >
> > > >> >The controller is pretty different on the A64 compared to the A10.
> > > >
> > > >The
> > > >
> > > >> >A10 has two channels for example, while the A64 has only one.
> > > >> >
> > > >> >It looks like the one in the A83t though, so you can use that
> > > >> >compatible instead.
> > > >>
> > > >> Looking at the patch for the A83t, the only difference is that it
> > > >> uses a 3/4 instead of a 2/3 voltage divider, nothing is changed with
> > > >> the channels.
> > > >
> > > >I guess you can reuse the A83t compatible here then, and a more
> > > >specific a64 compatible in case we ever need to fix this.
> > > >
> > > >> But I'm also not sure which one (or a different one)
> > > >> is used from looking at the "A64 User Manual".
> > > >
> > > >I'm sorry, what are you referring to with "one" in that sentence?
> > >
> > > Sorry, I meant I didn't find anything in the A64 user manual whether
> > > a 3/4 or a 2/3 voltage divider (or one with different values) is
> > > used on the A64.
> >
> > Ok :)
> >
> > I guess you can just reuse the A83t compatible then, together with the
> > A64's.
>
> I'd submit a v2 with these changes to v1 then:
>                 lradc: lradc@1c21800 {
> -                       compatible = "allwinner,sun4i-a10-lradc-keys";
> -                       reg = <0x01c21800 0x100>;
> +                       compatible = "allwinner,sun50i-a64-lradc-keys",
> +                                    "allwinner,sun8i-a83t-r-lradc";
> +                       reg = <0x01c21800 0x400>;
>                         interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
>                         status = "disabled";
>                 };
> Does that look okay?
> The reg change is due to me not spotting the address being 0x01C2
> 1800---0x01C2 1BFF, so the size should be 0x400 and not 0x100.

It would be great to drop the -keys from the compatible, and to
document the bindings

Looks good otherwise

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--fjx5mpewtig2icgo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOe3QQAKCRDj7w1vZxhR
xWfqAQDx49qWsSlXSPCIFr0j7LgzCl6/USKYCbeA7Gmm78/oGgEA7OyIV/rpYtNc
ksrLp0izVlRyo3tYAqHBk8DXRXEeoAw=
=xKwX
-----END PGP SIGNATURE-----

--fjx5mpewtig2icgo--


--===============8260414502991714779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8260414502991714779==--

