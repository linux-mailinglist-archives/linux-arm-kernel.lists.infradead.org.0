Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184EA43699
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/1EgDh18nZSVAe6KFNECx70/1QS1qaDxwzFxEvyJSqE=; b=CQsELJPkx/6fTLFyp2/7O68gB
	ii8Xmh3CIUXC6DTeYXGep3fEampcCFSP28wDxxvnZGRxT+Rw84+8jWMAlEm1Xe6wweHovddDAfJ+Z
	lKeqfpZ70XI2a5H7qmYbFamLyEghbGPZRIqrxo2AbNRFD5t4hVFPnOMFM3YoqJwvLvkZS3WdrQAah
	syl80ItFa783iDf+hGevJtdCl0PDiZbFOWARXSx1HElkbfj8d3b6Mrza49skv20gKSrzJvPmWGzF5
	CWNfIFypcDNAo2rYZBpZpCqhzQXsuu4cg/w/EpT127hwOu+vzmXh6HrInMBIEgRZcyXDVBo7rUR3S
	B/bZ08+4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPo3-0006y7-9L; Thu, 13 Jun 2019 13:30:19 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPkR-0003d2-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:26:38 +0000
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 5F7D624000F;
 Thu, 13 Jun 2019 13:26:30 +0000 (UTC)
Date: Thu, 13 Jun 2019 15:14:11 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v10 09/11] drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI
 regulator support
Message-ID: <20190613131411.m5noowniybmy2iwb@flea>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-10-jagan@amarulasolutions.com>
 <20190603134907.lh5rdpucbrzrsdps@flea>
 <CAMty3ZC5-y8RJcLjFP_G8i7=9-BuOQWdnxoo66TO4mrrOxqDLg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZC5-y8RJcLjFP_G8i7=9-BuOQWdnxoo66TO4mrrOxqDLg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062635_240811_B7B557ED 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: Bhushan Shah <bshah@mykolab.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?utf-8?B?5Z2a5a6a5YmN6KGM?= <powerpan@qq.com>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2842965129209505860=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2842965129209505860==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="67h24wqq3644zbtr"
Content-Disposition: inline


--67h24wqq3644zbtr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 13, 2019 at 01:25:52PM +0530, Jagan Teki wrote:
> On Mon, Jun 3, 2019 at 7:19 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Mon, May 20, 2019 at 02:33:16PM +0530, Jagan Teki wrote:
> > > Allwinner MIPI DSI controllers are supplied with SoC
> > > DSI power rails via VCC-DSI pin.
> > >
> > > Add support for this supply pin by adding voltage
> > > regulator handling code to MIPI DSI driver.
> > >
> > > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >
> > This creates a lot of warnings at boot time on my board this is
> > missing vcc-dsi-supply.
>
> Is it about regulator_put or similar, would you provide the log.

Sure
http://code.bulix.org/whiea9-769551?raw

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--67h24wqq3644zbtr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQJMIwAKCRDj7w1vZxhR
xWegAQDwSoUtcUAwaJhKm16aerVWYEQ/+xe+Ju5225zohnNd/QD9EENvHyaxAOv5
b+bUdFuORnm+O681sZh0ILOpLSLMjQE=
=Md8P
-----END PGP SIGNATURE-----

--67h24wqq3644zbtr--


--===============2842965129209505860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2842965129209505860==--

