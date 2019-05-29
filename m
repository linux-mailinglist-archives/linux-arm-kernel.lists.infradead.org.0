Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560FF2D64C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iQfBPM/60adHER9lVHwqD5U4/kMmonIPlH3lwJ1H9Gc=; b=uofjwk0KRDzjjuEJ9WQA2xEJ6
	BTKIiqhiSq2N43qfJUNPMrfBcHVbsK4BWetgjjalsnPBuSl2nT/CNhyMiKg9S6WyudQ73veSkQdgc
	H4HEPELAb8zeTrSze3VmjSK528mrPpT7Mc2DxBdp70g9bNM/TyAmVf7LKTD0e+NgMKNd0ZzVSVluA
	GOeOVDjTEIIN44kRA4v67kVZigR9q8ZOOjQnCkuAAI3+nMN5+qK6PcWiZ7yzoAqvx/3vQrtYiZr93
	R6k51HrGHXMFiPC0mCJkMLxx+vte2VEOeTN1e0Op2vPQeg+mgZ77SvVAAuXEw9oXAUQDo1XSSEZze
	5dNoSOzAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVszZ-0007tY-Nr; Wed, 29 May 2019 07:27:21 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVszR-0007qf-FY
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:27:14 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id E449324001E;
 Wed, 29 May 2019 07:27:10 +0000 (UTC)
Date: Wed, 29 May 2019 09:27:10 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 5/5] ARM: dts: gr8-evb: Fix RTC vendor
Message-ID: <20190529072710.ipddsox4rzeqko4h@flea>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-5-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190525134140.6220-5-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_002713_679413_B652D51B 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0613474634300256545=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0613474634300256545==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qjh6lptw2dk5bg75"
Content-Disposition: inline


--qjh6lptw2dk5bg75
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 25, 2019 at 03:41:40PM +0200, Maxime Ripard wrote:
> For some reason, the RTC vendor is reported to be phg, while the part is
> actually made by the much more known NXP. Fix that.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--qjh6lptw2dk5bg75
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO40TgAKCRDj7w1vZxhR
xSbWAQCWESCj0FTJl5kClqKo7k9z1VtSLNlsZs7ikyfTwXDBBQD9F02H5zZwvPJP
jPcpKgvaHfTXpGdSfeSKb0ZlgTuhEQ8=
=cUdi
-----END PGP SIGNATURE-----

--qjh6lptw2dk5bg75--


--===============0613474634300256545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0613474634300256545==--

