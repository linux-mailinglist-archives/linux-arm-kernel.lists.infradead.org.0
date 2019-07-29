Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208017877D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 10:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w9DUOvRxwFYasdo67dJALcEz5SVEJmUxCXjcDJE8MVI=; b=YYWYoCNWZ3LQr9ISe9Yag31Me
	BVxaG/40SonuWwYiBVg2JwYiZuqpLLatRBMQWMOpv5uBCl8+SyqiGrgJw4nm4jXiMM8hu5pvmqCtt
	lNZwBHsiarY6oBsoL64+yjqkO9T6lYm9cIMoR6xEPnPc63kniv37mL0cd/Y7MDJtEH/8CoLt3mRLg
	B8Izgu32APV289Q7GNGtqoQmJesyE/KgYLnrIbQ2oVnbI2V7qG/PhTjT4TX5N14/X1DOhZeoRBaCJ
	0CVGidFGAugcuqKLFy6F+SqmBtswXaYXHE6ZNo+FZwKvulyKEvOwGFKPZ8vilVtgGpCjJka5QDYhB
	R//+IQaAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs17C-00057D-B6; Mon, 29 Jul 2019 08:34:42 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs171-00056d-4H
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 08:34:33 +0000
Received: from localhost (p5486CFB7.dip0.t-ipconnect.de [84.134.207.183])
 by pokefinder.org (Postfix) with ESMTPSA id 3035F2C35BF;
 Mon, 29 Jul 2019 10:34:27 +0200 (CEST)
Date: Mon, 29 Jul 2019 10:34:26 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [PATCH v2] arm64: dts: renesas: ebisu, draak: Limit EtherAVB to
 100Mbps
Message-ID: <20190729083426.GA1381@kunai>
References: <20190729080356.13023-1-horms+renesas@verge.net.au>
MIME-Version: 1.0
In-Reply-To: <20190729080356.13023-1-horms+renesas@verge.net.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_013431_316809_30FE3D94 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3246825648325539517=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3246825648325539517==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 29, 2019 at 10:03:56AM +0200, Simon Horman wrote:
> * According to the R-Car Gen3 Hardware Manual Errata for Rev 1.00 of
>   August 24, 2018, the TX clock internal delay mode isn't supported
>   on R-Car E3 (r8a77990) and D3 (r8a77995).
>=20
> * TX clock internal delay mode is required for reliable 1Gbps communicati=
on
>   using the KSZ9031RNX phy present on the Ebisu and Draak boards.
>=20
> Thus, the E3 based Ebisu and D3 based Draak boards can not reliably
> use 1Gbps and the speed should be limited to 100Mbps.
>=20
> Based on work by Kazuya Mizuguchi.
>=20
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Yes, this matches all the previous discussions to the best of my
knowledge:

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--6c2NcOVqGQ03X4Wi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0+r44ACgkQFA3kzBSg
KbY5PQ//Tn9hY8BpQBlzmkBgp0Vb+e4od1DjjojwtSQH7aDBkA2LjrQ1ab/QTBXB
fOHqCFFMv0XIrFMAgChgXtRNXvnDuwJCeraIGV762Qv1vYUe/G+o+VFIEC8GU1IT
XXqSiJeDR+RTyV6iv3yHjkvkMRwJFRtu5iDgZ7UuLIrKYCQYHdkF1c+0tjkATGnb
I3U/kzvkQCmDEhU5inD8e7pIr8EtHdXwvnR8d5iPgTNG0JF9jwKg5WObU33uzfvJ
b+Qs5G8OWMR0e76cxe5XrqC1wrWdCM6D6BP+vWYncZo8hqP4r4wgIYOSlxOsQ1Jw
MqCtPLRyw1x4GgylwsfC/fr+efRTlMzHnTyRw/giMhjq3LOlQXyG33H6oRDBl7QG
H+J/ToAL7a2mcuPiLKojmIqEKr5lClRY5Rr0SmWjDNMgYZgUE9ZgQHAKryB7ca69
Zd6ZYpm/a7xSg9Mhj5XOvXRP19segJXEkwhLwTc0GlS2XeEwTEa5yHd2bJvo1IWE
UZQnk+xfAqt0FbSgg6+3fCMoKSzJ0s3A524opVWkWqkPu5uQrDsSeMdVXJAwT8h8
dQ2bvXMXTDFI/uy1X3hFvcOmAPfcGrSqVlwdwl12oMHad0QBa8vtC+++3/Bscu20
hrteZEvO6LmiiGOJ1PclsuLAuFxfJgx9cHcxzF45ye5cdrkx2vs=
=Pn1D
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--


--===============3246825648325539517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3246825648325539517==--

