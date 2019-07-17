Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2506BCF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 15:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FCoA5+R0+t6+NUD5JJgbr8srfroRzDfu8zy3mK0EDBA=; b=cSEt7lWSckA/Jwd7yooDANVc4
	DuZdEqRbvfIuPLBnxfAf8wh+iKkiUfYuScXFru+rs0n3pVqe7qAfqSQk2UEa7wh94Tckj1pLtUmp3
	XEezVvNmG0QpVg737qr5Xvn3Js1CwJKYbX19lECKY3xOszkXmrE3egWSfv1R7Fvvtr1ix+h4ef8rg
	F9JSCG3ba1DmPIXccaAgeFUGD2mQYVaVzwoIy/cD6GY3XphS1YXP3ZnM0EdUTZOAn8tauVuYWBmwZ
	vm5X38BrruFVdT402kFLegKC6fIR4GPWLLHY/4t9LfreY2xZmDQRJ/yZDp8UyWo3tGtYuxPif7hlK
	GWBxl3wCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnjws-0007a0-Aq; Wed, 17 Jul 2019 13:26:22 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjwg-0007ZL-DQ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 13:26:12 +0000
Received: from localhost (p54B3309B.dip0.t-ipconnect.de [84.179.48.155])
 by pokefinder.org (Postfix) with ESMTPSA id 5D41E3E4757;
 Wed, 17 Jul 2019 15:26:07 +0200 (CEST)
Date: Wed, 17 Jul 2019 15:26:07 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [PATCH/RFC repost] arm64: dts: renesas: ebisu, draak: Limit
 EtherAVB to 100Mbps
Message-ID: <20190717132607.GA1458@kunai>
References: <20190717125739.21450-1-horms+renesas@verge.net.au>
MIME-Version: 1.0
In-Reply-To: <20190717125739.21450-1-horms+renesas@verge.net.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_062610_598432_5C68557C 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-renesas-soc@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: multipart/mixed; boundary="===============7480327176105671637=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7480327176105671637==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 17, 2019 at 02:57:39PM +0200, Simon Horman wrote:
> * According to the R-Car Gen3 Hardware Manual Errata for Rev 1.00 of
>   August 24, 2018, the TX clock internal delay mode isn't supported
>   on R-Car E3 (r8a77990) and D3 (r8a77995).
>=20
> * TX clock internal delay mode is required for reliable 1Gbps communicati=
on
>   using the KSZ9031RNX phy present on the Ebisu and Draak boards.
>=20
> Thus, the E3 based Ebisu and D3 based Draak boards reliably use 1Gbps and
> the speed should be limited to 100Mbps.
>=20
> Based on work by Kazuya Mizuguchi.
>=20
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

What about adding a short comment explaining the situation?


--45Z9DzgjV8m4Oswq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0vIesACgkQFA3kzBSg
KbYXAQ//eY5vLCU8SydfxuIYBpGgt01P4ilDeKmuGFtqppatLHXhyUhtDR2n+yp/
bgARhaNVdJyBPpHzrfslUFYlIGZ4V/hISsmE8PgMIRSo3G5CfXpHcdKdD8oKvL+5
gyLpAxOW+qCaOPtgPkDxVh1Hl65XiODn7U4UwhqLW/TqDaosQGXW9/eVFgILg5HM
UlOGbCxeVeWTt0vyyRayaVJZjNi85xUdArTWbw6WBxEwTFJWY/1M2GMostHAV9jN
6H8v/IqjsQNpzRrIsYYfyXIqKalxCFPzkVWSbDb4PK7kxjTlOOzRqGbaDUMowaDg
NMWFTC4Yre+UfxY1vX6fbjzSZRvdjfVu4cx+7fwGwZx7SllAqdgzBCH8IerVd0Wm
BetO1MvyLpTuO0Uzt0LI7EvIMfRCFcR1ckBAf+wwasYLRXxR6x4mXj/TnkjbOjI9
MMjayYzWopeEBh1wyYv/2E8hNoR2QHkCr/+8I7zedPTcXCBZ8MimDFT7eDg3M3jv
kiugpAaun3+w3VRpCGExZwZjzPWxoaTeDWh/C4hGZ7iKM0hrW+y4FPcOrDCniVzb
25Ql0hAH3Zz6UN3lAKuXoy1WTlrAV1tvKh7IUCBFz85YnIT2tHQEKVMnlwDxReee
uUJRwy0slD68jRbcGvkTVSRIkS+GnV8aY+vBKYSI0kAZDC8o+h8=
=dsjm
-----END PGP SIGNATURE-----

--45Z9DzgjV8m4Oswq--


--===============7480327176105671637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7480327176105671637==--

