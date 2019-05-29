Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0502D64A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q3xs6hVv6HxY9bZ4yk3EXH2rbGTEWyWwjKP50XvYhS4=; b=chQsUf37ETIjHQRmL0hmQ43dg
	QR529LdqZhWojJ7b67uinjrPQbVOAFcL7xePOLSf8tzxV6kGS4gmKpOwzIpzsdaORL5yLz73oWD5S
	Txr0ZNf59CziJUFhiuub9hzo4PXyi95hwm3t0hqBy19OuXBM7iGU5XRNVGOAkPCoglBcIL29cRM3Z
	b+LTr0edJdZv921fecUpjvjM89no7Eebpw3V3JGxcwleubtvoZBkWY+rhVCdneMlxP/A299I1NEWl
	3GzENWeFra9Qfdk8A6TcmRUONWEV+jlmgF+eow+SJCcgB16e67rkP7+RhDxwYvyqcSdBBXP3dtfDc
	ejI0Q186Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVszM-0007fv-MJ; Wed, 29 May 2019 07:27:08 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVszD-0007df-KY
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:27:02 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 752A240011;
 Wed, 29 May 2019 07:26:56 +0000 (UTC)
Date: Wed, 29 May 2019 09:26:55 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 4/5] ARM: dts: sun7i: icnova-swac: Fix the model vendor
Message-ID: <20190529072655.3zlpssjmidbf5djq@flea>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-4-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190525134140.6220-4-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_002659_824772_F6833A06 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============6117318499804640729=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6117318499804640729==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mgqdrh2vmna5rpic"
Content-Disposition: inline


--mgqdrh2vmna5rpic
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 25, 2019 at 03:41:39PM +0200, Maxime Ripard wrote:
> Even though the SWAC is just a baseboard to the icnova SoM, the vendor of
> the baseboard somehow ended up with the board name instead of the vendor
> name. Fix that.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mgqdrh2vmna5rpic
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO40PwAKCRDj7w1vZxhR
xTOiAP4w0jMv0U/jU1vKaNdAI7mKu22x5teHidnViwUaNQsN4QD+I9tJk+ELEHkI
1BfEXisxOX+TAViiVPuYNQfyP6brmgc=
=Iykm
-----END PGP SIGNATURE-----

--mgqdrh2vmna5rpic--


--===============6117318499804640729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6117318499804640729==--

