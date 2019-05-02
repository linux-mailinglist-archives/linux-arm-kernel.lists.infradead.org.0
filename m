Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2531147E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 09:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OEIYWRVvGk6ioMz+/qunKplqeOdiLRQGAa/J/R4xRmo=; b=olmrvHcEGZCOs1U5jCDr4RfFy
	vDrtTnbu96c54GesKGCswgtasWK83Bkg4eENm2nsahxnVhWTg85Jwvwii4avMZz+hEB/rDYa7VIij
	YPFfIVdd+lgCQhDvxfAvmbMt2fDHBiT7oiLmnuzRLx4fq68BzFQZOB4tuWGDqLh6ShyFm8AV0xugs
	HWOVnmL+W3L+zKW3/qPZlnDHiPgSG2TiTEm+1a0LICl4eKwrUHAS69o7vPUCXvT0TX/QQIxON/CwT
	wdQPg2lD+roaIv20wXCK4Scm6OVAtkDM+17WRBsn9+3+P1Sas63D9CHtWHXObLwhdn3e51kPpANbT
	qGW2nZExg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6Qt-0007jX-2D; Thu, 02 May 2019 07:47:07 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6Qm-0007iQ-Ae
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 07:47:01 +0000
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id E68E810000D;
 Thu,  2 May 2019 07:46:56 +0000 (UTC)
Date: Thu, 2 May 2019 09:46:56 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH RFC] arm64: dts: allwinner: a64: teres-i: Enable audio
Message-ID: <20190502074656.5tw62ngvjxabrw4o@flea>
References: <20190212100929.iqsxu443qrkl6myf@flea>
 <E1gtds8-0000NB-Re@stardust.g4.wien.funkfeuer.at>
 <20190213094442.da2dy6d5bb527nft@flea>
 <E1gtsx9-0000RP-08@stardust.g4.wien.funkfeuer.at>
 <20190213155311.ovkpim3lxwyvuhhj@flea>
 <E1gu4dx-0000Sy-2B@stardust.g4.wien.funkfeuer.at>
 <20190215142029.GB32618@lst.de>
 <E1gv6rh-0000Km-U8@stardust.g4.wien.funkfeuer.at>
 <20190218102442.l3br2h3oqfe2atdv@flea>
 <20190430133232.GA18808@lst.de>
MIME-Version: 1.0
In-Reply-To: <20190430133232.GA18808@lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_004700_510231_76CC4B5C 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 info@olimex.com, Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 ibu@radempa.de, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1550223904987698635=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1550223904987698635==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ogjf4ravo7ykhs3c"
Content-Disposition: inline


--ogjf4ravo7ykhs3c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 30, 2019 at 03:32:32PM +0200, Torsten Duwe wrote:
> On Mon, Feb 18, 2019 at 11:24:42AM +0100, Maxime Ripard wrote:
> > On Sat, Feb 16, 2019 at 09:47:13PM +0100, Harald Geyer wrote:
> > >
> > > > Would you care to submit a patch version without that GPIO handled?
> > > > I think it's very useful and has the potential to be agreed upon.
> > >
> > > That would enable audio from the internal speakers but select debug
> > > output on the HP jack by default. I would be okay with that, despite
> > > still thinking that audio on the head phones should be the default.
> > >
> > > Maxime and Wens are the maintainers, so it's their call in the end.
> >
> > At this point, I'm not really convinced by the solution in that patch,
> > but I don't have really good ideas either. I think it would be good to
> > discuss this with Mark and Linus Walleij, they will probably have way
> > better solutions than what I can come up with.
>
> Once more my plead to *please* apply the unchallenged parts of this patch!
>
> For reference:
> https://patchwork.kernel.org/patch/10792589/
>
>
> Just leave out the line
>
> +	hpvcc-supply = <&reg_eldo1>; /* TODO: Use only one of these */
> (as clarified by ChenYu)
>
> and the
>
> @@ -131,6 +151,14 @@
>  	status = "okay";
>  };
>
> +&r_pio {
> +	r_debug_select_pin: debug-select {
> [...]
>
> hunk, which the discussion was about. The patch is of good value
> even without it.
>
> IMHO it's a shame this didn't make it into 5.1
>
> Acked-by: Torsten Duwe <duwe@suse.de>

Please resend that patch

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ogjf4ravo7ykhs3c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMqgcAAKCRDj7w1vZxhR
xUkWAP432UpRG05M57jNudXsgptVGodfkKNSF8GCePGGa381ugD+I4nvdzZdYqOA
sTKkTdR+ULGdkJncmivGKljgsi9Y7AA=
=6Eua
-----END PGP SIGNATURE-----

--ogjf4ravo7ykhs3c--


--===============1550223904987698635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1550223904987698635==--

