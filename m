Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3289A2BF7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x9LUspxpODFD49algdFxG6KR0tKQFHzYnudHLWWlVCc=; b=ZqFMaA1NSsHIV0+h6GmwZADG7
	NPJx3VOH9bcqyBPpOIIcNDAft0B6TdHLA6/BlynlF/ZlJCrJqLGslIjdfCZLoZhDfvJCUi0wScS3t
	ZdUslaa2ot2xkjRUm31hY50mFDZsO5zEZSbDVliJq7W31jpJi0/it5TNoQNHMTOvowNqmX0ma1+Pk
	AsMnXEvoraKsF82/V4+VFJ5nVctnQYA8UZ4C0r9Fxw/e4Ab+y5U56Jmksm/FwDoLb+sMQ2aOc3FDF
	bZ7hztIeTm6y/FWHa9dXj3xjp0LEm/SBoVBNt1ZK/YScGjuHUrB/alSfgkHS03jHn9tToEbu9cG17
	nCxEi8G9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVgx-0004Sm-Cy; Tue, 28 May 2019 06:34:35 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVgh-0004KI-25
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:34:20 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id F10C21C0007;
 Tue, 28 May 2019 06:34:01 +0000 (UTC)
Date: Tue, 28 May 2019 08:34:01 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 3/5] dt-bindings: vendor: Add a bunch of vendors
Message-ID: <20190528063401.7uikujzahuq4wlxm@flea>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-3-maxime.ripard@bootlin.com>
 <20190526160600.GA1399@bogus>
MIME-Version: 1.0
In-Reply-To: <20190526160600.GA1399@bogus>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_233419_320313_F70D0406 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0818224829885053206=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0818224829885053206==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mqpnwsn2vk4qeuus"
Content-Disposition: inline


--mqpnwsn2vk4qeuus
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Sun, May 26, 2019 at 11:06:00AM -0500, Rob Herring wrote:
> On Sat, 25 May 2019 15:41:38 +0200, Maxime Ripard wrote:
> > Add all the missing vendors used in Allwinner DTS.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  .../devicetree/bindings/vendor-prefixes.yaml  | 58 +++++++++++++++++++
> >  1 file changed, 58 insertions(+)
> >
>
> Applied, thanks.

While the other patches are in your tree now, this one looks missing.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mqpnwsn2vk4qeuus
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOzWWQAKCRDj7w1vZxhR
xQLAAQD6nKGIFIcd43Os6xkOABzRfXLk5hNDNjqwz6+qzA55YAD+Ln1mULNMU9lR
UWa0T77cSkTVD8BBjCxcUZM5jWxy0gk=
=Zkd0
-----END PGP SIGNATURE-----

--mqpnwsn2vk4qeuus--


--===============0818224829885053206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0818224829885053206==--

