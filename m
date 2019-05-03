Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D668A130B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DzZ+BPgyyuSbR3cQCaNA/73UCOEDKlRdnEx8Kkca4RM=; b=iEZfSkXhg0xdGkc/egPgVumR5
	ehWAtcHm230sTpcfYcidhUrPz6DhZQu9L8SyLPoW+oJBjGybQ5yseG+C8hmWw8lAmBXImusBW0jF+
	18x5Il+pyGd/0LP2Q6QOArtQwbdjMUHw89CrQWIXkGf3rvXI3VVR+st6ucuLDuRCzslfYZTvFijBa
	IYRg8oXaDLswByryusUdP9/8YR14pMy2GEXqOtg5jwv0ff7TurP3eaQ2bzSgXGPkDc7yJGaiRRFdq
	yiDscBsiYmx25llO7lRkfVpfXSxVNFCgWMh7toT2u99d4Mg0tjH2r/B9rC/ClJ6+qeSCs7mIllBJL
	oKK1h50dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZXp-0003jS-M1; Fri, 03 May 2019 14:52:13 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZXh-0003ie-Pl
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:52:07 +0000
Received: from localhost (p54B33153.dip0.t-ipconnect.de [84.179.49.83])
 by pokefinder.org (Postfix) with ESMTPSA id E8BD54A1428;
 Fri,  3 May 2019 16:52:01 +0200 (CEST)
Date: Fri, 3 May 2019 16:52:01 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] i2c: imx-lpi2c: Use __maybe_unused instead of #if
 CONFIG_PM_SLEEP
Message-ID: <20190503145201.GE24385@kunai>
References: <1556607314-32401-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1556607314-32401-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_075205_989925_326ACD92 
X-CRM114-Status: UNSURE (   7.73  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: multipart/mixed; boundary="===============7227413657254621031=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7227413657254621031==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ey/N+yb7u/X9mFhi"
Content-Disposition: inline


--ey/N+yb7u/X9mFhi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 30, 2019 at 07:00:02AM +0000, Anson Huang wrote:
> Use __maybe_unused for power management related functions
> instead of #if CONFIG_PM_SLEEP to simply the code.
>=20
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied to for-next, thanks!


--ey/N+yb7u/X9mFhi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzMVZEACgkQFA3kzBSg
Kba7pRAAsCwWRMqP8Z9JiWuNOqYNSCChv9BFTD+NYuI10hGXBROtML9ZAMdmlXAz
b3vuwRselOKxChnnLH59XrroG7Mlfahh4fZSP+BvslAtXB5WFJMI3SshzL06gd0a
ethOMyoS1XaO9VYk7+6UyqR3tUERTNgc8d3cRz7zMR12z8dFZAICsjIjGqsmTwcc
XM9ZeIikuCGuJpUCY2RMfrA+FPLN+rzM91xYBM2O4Pu4sxmKdJKoB3baKsksUuef
akHGHPXLvIrWnMO8kVFhIQnqbQB8j6sL4RUUIPYLo8hUUrC4tvmd7IQcQh+4ug2f
madEaETWrRIW/WSFcH5EMgH6bII9e2rIpHkZsAW55Kf7EsWcMK3Uo6wsol80Z9HS
wMLb2Zz1/fEi51NaC+E9XX/4rPyPIEYP3TQ7y2zqzCCPxhfl24ywjyfBfmVI4QDW
r/u4fyfSDg960h5DgqGhpM7oaJkX/T6bJgKoXPNkMAMiGQwR26FIhBzmh5bxkDdS
zI07PC0wMnN1Bzl1sIVBQov46s7WMN783xenfjTY9+IVRj9vlcHwAb0NiyvF+gcl
q8dzyppY8aSWsB/QRgZRwfzfb4u8kV1fefbZX89XYFESUeHmT7vDMhHs3etRhPaO
P5BVyarrEjcOg/2+2CZNiCBZysUa/BXa/BIIO/16gWW6e8JXsrA=
=hoAm
-----END PGP SIGNATURE-----

--ey/N+yb7u/X9mFhi--


--===============7227413657254621031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7227413657254621031==--

