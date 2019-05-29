Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B57F2D650
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CjSijCz6fY7lYjDLa+ccCxJhH0VtP0Igkam9Ms/Ix1k=; b=UX7xNQNyrFzJSpXbs4eI/7AkI
	UxVt6rf8sFl1omV04EWoaM89rFHKq2VbQnjZE0sf4xH2GKD1V+pdPEhZLU/Aqj3DZy4MSQ/uzQgZE
	Dz3yn+V+uH5LuCu/jfUrTTRC4G+2yeiwg9IhSuZF0RXPEJV3nm/OuBUWb4kipGpYP402L4wICp3CM
	BDzRcKoFz4T2p0o8M9+SZW8UW9fQEbn7d3CHQDrJFZWHuKqb7/GnjTBY73o/R18q0cRLU/3GxroB6
	/etRCLHm7UDIvK3KekIy14/D8tq3gTqcFrHz45e6tu1zSoLumvmvq6LVBeGKfFxTTK0PZu0ytSoJ4
	m1oXzR06w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVszw-00089Z-Js; Wed, 29 May 2019 07:27:44 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVszo-00088K-Cm
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:27:38 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 77FA1240017;
 Wed, 29 May 2019 07:27:34 +0000 (UTC)
Date: Wed, 29 May 2019 09:27:34 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] ARM: dts: sunxi: h3/h5: Fix GPIO regulator state array
Message-ID: <20190529072733.qdqyd7uc2hy63xbc@flea>
References: <20190525134424.8277-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190525134424.8277-1-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_002736_596580_C11F4241 
X-CRM114-Status: GOOD (  10.29  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3600730408570321440=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3600730408570321440==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mtc6m46dvis3l6io"
Content-Disposition: inline


--mtc6m46dvis3l6io
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 25, 2019 at 03:44:24PM +0200, Maxime Ripard wrote:
> Even though it translates to the same thing down to the binary level, we
> should have an array of 2 number cells to describe each voltage state,
> which in turns create a validation warning.
>
> Let's fix this.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mtc6m46dvis3l6io
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO40ZQAKCRDj7w1vZxhR
xYaaAP4jM8eKZyHNb0+w5Xv7HNzE1+mZ9HuxrK25OgAVm/RkOAEAnQqtL1+1eDHt
31a+XYEEky9wVxgUH0wCNqM17e/Ebgg=
=SoC7
-----END PGP SIGNATURE-----

--mtc6m46dvis3l6io--


--===============3600730408570321440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3600730408570321440==--

