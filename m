Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797C7A2683
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 20:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+nFNjMBEXNEazpV5uOQtBLOkXeF5mCPauQ2MbmAvEJE=; b=JsYkFBDohKZ7pNo7jdTjW5ua7
	VzzR60h1saVfe2Esc/BEVA3sejBYZNLaBhdeVmpg6jTjKInzihhdM4E/NEPMsRCjrV1zyj3sB9YJJ
	VgpVzTtDidBhBK14N9uDmCxCewdtsPvn4zuwMZb3yPqttkxW8o93ecuMUlrh+5EAYxKAqbuQy0Mj6
	yVKAFgvSWIGKty4ApjxY4hGE4Wr/eOMaocsRL7I9pYkQmhE3/MTDNgttR4OribRkx+V9z1Lb+WHAd
	Oj20IW87//26+NKTMIDhaJcn3ok1hk5nMRwyXg3OLjCdxSFgkK8hg0O0sB3nD4UoWbQGoiOhlfdd+
	WrwlId3eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3PXx-0004Zs-TI; Thu, 29 Aug 2019 18:53:26 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PXU-0004PT-TT
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 18:52:59 +0000
Received: from localhost (p54B33070.dip0.t-ipconnect.de [84.179.48.112])
 by pokefinder.org (Postfix) with ESMTPSA id 362DD2C0021;
 Thu, 29 Aug 2019 20:52:56 +0200 (CEST)
Date: Thu, 29 Aug 2019 20:52:55 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 2/3] i2c: bcm2835: Avoid clk stretch quirk for BCM2711
Message-ID: <20190829185255.GE3740@ninjato>
References: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
 <1566925456-5928-3-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
In-Reply-To: <1566925456-5928-3-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_115257_095980_37C72BFB 
X-CRM114-Status: GOOD (  10.35  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0340958772311039132=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0340958772311039132==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+JUInw4efm7IfTNU"
Content-Disposition: inline


--+JUInw4efm7IfTNU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 07:04:15PM +0200, Stefan Wahren wrote:
> The I2C block on the BCM2711 isn't affected by the clk stretching bug.
> So there is no need to apply the corresponding quirk.
>=20
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Reviewed-by: Eric Anholt <eric@anholt.net>

Applied to for-next, thanks!


--+JUInw4efm7IfTNU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1oHwcACgkQFA3kzBSg
KbakKRAAsAY5xsvAvpGx6PZp0uRhtLlAPh4nNZEdWvXB1S/Sjc/S9+d1O7S3KgX3
vNHGjpeRfvFZmkzr7SU8z9CHlAyu+hf0shAeuZGsXM9yrnkpVJHpCMm48DzMAVr2
ud1G/bj6RvxzjyAuxtn3SL8GGsBaoDeIoz0a5GIkdDWMB2v8hBQgIWP3Ym8BRtE2
5Pq9h445Ol2jtSlxiVKbxLTicqccywapHyfIX4k3k6x7F80Savl8AuaBKCU5bznC
j/USjoIqbtf8nEN6OzZj8ig6M320aggv2PW3UbLAEsZ2M9uUtyIuwWcmGFiOucOP
0c3Hb6/mD2o+Shn/iS3Qp6+LIRVFOM0o/+aJawq2Aw8eAV6X5tzVE2RqvSff+X/p
MHwq5ikdcj+4/XKgg8Ab/d4DZ2tK8I8I0am3FcU4MeU0jjbFyut0+AdlND8Zw3oE
8p5ATq0GtMxWZ7YkbCvPG6uLmDdBQG/5uO/33TmkV+W6JuWaXk8jrf8/yChD2XY2
EajubuqcvJNzXemPOTBkk0cr26debd2eFa0V094fEZU05yn3CvonNA8bQOECS5ob
ZqG19+uOx8bP9DayagPKSxY7MPpuu/3xaofW+OgJD6LqhgoSGCOGsI9LJcx9K8RU
pxcJ0yEQPN/0H/ZfWOe3wZh9sBxH5UhcAVmkeAo1Jb9lr7F4RvE=
=MKy2
-----END PGP SIGNATURE-----

--+JUInw4efm7IfTNU--


--===============0340958772311039132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0340958772311039132==--

