Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFF12988C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nMPyMLcEYyJwfsIFR3qDltXLnSuSIFdGe9JK78bNbCw=; b=Zs4z4Awt3yW2HPh5W4Moz0f2y
	nmf0XLX58P9u3eIZSwm703a1lcg7XR9wNCSU0pXwq65JRP8y739QrIVTEb9b7kJ2lC1L7ecKcvDAS
	SFmEET1UEe2lpPlO5NeSxLeZlO9grOx6WKG0N5p7GfXRZXZLCueJJMhtx6iit4w1moMi9q1kW84ka
	43ta/4t9ROzOK98qRXvfUPak4GIC9qb3TWff9OQ0rjCMoSZeYG+bNyBiZ0ZBCMA9yIUetapr1EY+7
	B2FaQA1c2uUrlwiSm6qMnJhlpFXIR/76X70vABoHxZocAgUvs4Vy5eD1QNqM2VWs7EwudBxAuzO8q
	M0SULozzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9va-0008L7-HF; Fri, 24 May 2019 13:08:06 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9vS-0008KM-VJ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:08:00 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 4294A240004;
 Fri, 24 May 2019 13:07:43 +0000 (UTC)
Date: Fri, 24 May 2019 15:07:42 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v5 0/4] Allwinner H6 watchdog support
Message-ID: <20190524130742.blyckr74erre3ekk@flea>
References: <20190523151050.27302-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190523151050.27302-1-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_060759_159222_057982B6 
X-CRM114-Status: GOOD (  13.12  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: multipart/mixed; boundary="===============7529737218264596950=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7529737218264596950==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kp5yz4xxxfd2wshh"
Content-Disposition: inline


--kp5yz4xxxfd2wshh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 23, 2019 at 05:10:46PM +0200, Cl=E9ment P=E9ron wrote:
> Hi,
>
> Allwinner H6 SoC has two watchdogs.
>
> As we are not sure that both A64 and H6 are stricly identical, I have
> introduced the H6 bindings.
>
> After investigation it seems that on some boards the first watchdog doesn=
't
> make it properly reboot. Please see details in the commit log.
>
> I think it's proper to add it with a comment anyway.
>
> The r_watchdog is still available and usable on all the H6 boards.

Applied all 4, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--kp5yz4xxxfd2wshh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOfsngAKCRDj7w1vZxhR
xZhmAP9dNnhILxNK6etNTB+zKw2FWxx3f+hVuDnWL6dnrZudwwD8DkKLz0P5oKZC
vjDzU3AcRPlmS3ZNQi7CpQqMK2tE8wg=
=FvXk
-----END PGP SIGNATURE-----

--kp5yz4xxxfd2wshh--


--===============7529737218264596950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7529737218264596950==--

