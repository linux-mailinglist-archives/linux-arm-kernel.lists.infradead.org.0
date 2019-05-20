Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F039922D3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3KQRDD2Iq/C0g7YRKp7nTSBncFpvazRr25Dvm3Fhhbo=; b=ku1NIv2conx3mz2H104b7mQCE
	KQxuCZEXSWjQpyiLNht1VkdJthIEQ4ejYR6I6krMTYrcn3cZGGjSiwgG2wnqu87NUjCdDgcLnh6jr
	6dGs8BOtjL43UEDJpnAUodDe82RNLA/n96CnZ66r4Ho1xG5ZzV+9l1ESAoanC/qNnS7SFSTcNSYLP
	v9HHuoMI5kk7EX12Be/u0DhPRlWIBCWZPf/exdEIQnyu8NmCVV2dHnXc284SdKwV0BOIFblmjpjes
	1PmS1pn318L43ioLO5LLN91dU0YiB9oGV5TyZwHMNGaM5MCPgexbYxAOfw/Y2vg2Y5g5TKYpiemrY
	YrdcWMIrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScr1-0003Qm-MP; Mon, 20 May 2019 07:37:03 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScqv-0003Q2-1N
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:36:58 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 384921BF20F;
 Mon, 20 May 2019 07:36:53 +0000 (UTC)
Date: Mon, 20 May 2019 09:36:52 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 2/4] arm64: dts: allwinner: h6: add watchdog node
Message-ID: <20190520073652.itk452vrpnicta5v@flea>
References: <20190518152355.11134-1-peron.clem@gmail.com>
 <20190518152355.11134-3-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190518152355.11134-3-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_003657_233041_A42186E6 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============1935243213061336222=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1935243213061336222==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e276a7us3gg53ua6"
Content-Disposition: inline


--e276a7us3gg53ua6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 18, 2019 at 05:23:53PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 has a watchog node which seems broken
> on some boards.
>
> Test has been performed on several boards.
>
> Chen-Yu Tsai boards:
> Pine H64 - H6448BA 7782 =3D> OK
> OrangePi Lite 2 - H8068BA 61C2 =3D> KO
>
> Martin Ayotte boards:
> Pine H64 - H8069BA 6892 =3D> OK
> OrangePi 3 - HA047BA 69W2 =3D> KO
> OrangePi One Plus - H7310BA 6842 =3D> KO
> OrangePi Lite2 - H6448BA 6662 =3D> KO
>
> Cl=E9ment P=E9ron board:
> Beelink GS1 - H7309BA 6842 =3D> KO
>
> As it seems not fixable for now, declare the node
> but leave it disable with a comment.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

If it doesn't work most boards, then why do we need to merge that
patch in the first place?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--e276a7us3gg53ua6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOJZFAAKCRDj7w1vZxhR
xQh1AQD1wT9FiJDFc3HyLL1R5Zfgdvvje9Gm40LwAYtcqbVztQD/WWrr2dC4yL3m
eySG7yJU57b661i7G27N2vwjLCO0Wg4=
=Vx+h
-----END PGP SIGNATURE-----

--e276a7us3gg53ua6--


--===============1935243213061336222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1935243213061336222==--

