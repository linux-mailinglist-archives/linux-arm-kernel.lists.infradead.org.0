Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F401B779F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 15:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NLNbzVaE+5OjZOsJKx3z7z2nHkX63mASXvydC6/ta4U=; b=qrMmTwsgSa+c02HZelgAcqqrl
	Qdj10YiKB66vqxkTomVeOwcwVguR7ZR9yzP5HGvwRj5+4vdhr80E4+txbgEopUA8ZrLMQJi2IGcYI
	EoQQjyyrgZY5sGCO9zukQ1qDi11H3WFlFyRmzqH1xPHimQqH78lpqiQHyfLRzcUKnN9GQgjNt3HXM
	qkJzLaY12EcxkIAaAv1ZxvPGeYoAl6omSwx9EwxvHRQ/VcUWZ6onI+rpcd741Ij19MKcbzaAA8WxG
	MDYbYsyNZhzggv/Sh/8PsGvmDbPoJNtWN1twZ5s47kYe8x0LYD0D11VAzEJgBmwf82e+P17/gSTE3
	h981K8GNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyoV-0005o2-Kg; Fri, 24 Apr 2020 13:56:19 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyoG-0005ml-Ov; Fri, 24 Apr 2020 13:56:09 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 50BE640004;
 Fri, 24 Apr 2020 13:55:53 +0000 (UTC)
Date: Fri, 24 Apr 2020 15:55:52 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 3/4] media: rockchip: rga: Add support for the PX30
 compatible
Message-ID: <20200424135552.GI610776@aptenodytes>
References: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
 <20200423200937.1039257-4-paul.kocialkowski@bootlin.com>
 <cf31ae67792aedf60ee4cf8002861edadc305314.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <cf31ae67792aedf60ee4cf8002861edadc305314.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_065607_800943_C0394879 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, justin.swartz@risingedge.co.za,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hansverk@cisco.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Johan Jonker <jbx6244@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5754187094057228040=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5754187094057228040==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3U8TY7m7wOx7RL1F"
Content-Disposition: inline


--3U8TY7m7wOx7RL1F
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ezequiel,

On Fri 24 Apr 20, 09:54, Ezequiel Garcia wrote:
> Hey Paul,
>=20
> Thanks for the patch!
>=20
> On Thu, 2020-04-23 at 22:09 +0200, Paul Kocialkowski wrote:
> > The PX30 SoC has a RGA block, so add the associated compatible to
> > support it.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  drivers/media/platform/rockchip/rga/rga.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/=
platform/rockchip/rga/rga.c
> > index 9d122429706e..4fb4615662b7 100644
> > --- a/drivers/media/platform/rockchip/rga/rga.c
> > +++ b/drivers/media/platform/rockchip/rga/rga.c
> > @@ -955,6 +955,9 @@ static const struct dev_pm_ops rga_pm =3D {
> >  };
> > =20
> >  static const struct of_device_id rockchip_rga_match[] =3D {
> > +	{
> > +		.compatible =3D "rockchip,px30-rga",
> > +	},
>=20
> Please note that if you don't have anything px30-specific,
> then you don't need the compatible in the driver.
>=20
> You can have something like:
>=20
> compatible =3D "rockchip,px30-rga", "rockchip,rk3288-rga"
>=20
> so you need to add it to the bindings. See Justin Swartz
> recent patches for rk3228.

Thanks for the instruction!

I've been a bit confused about that because RK3399 has its own compatible
(without a 2nd rk3288 compatible) although there's nothing different with it
either. All of these rockchip platforms come with what they call "RGA2", th=
at
seems to have no variation across platforms (downstream rockchip even has a
single compatible for it).

Should we add the rk3288 compatible to the rk3399 dtsi? I guess we
can't remove it from the driver at this point, for backward compatibility
with previous dts (what a strange idea...).

> Down the road, if you find something specific for px30,
> you can make the driver aware.=20

Makes sense, yes.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--3U8TY7m7wOx7RL1F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6i7+gACgkQ3cLmz3+f
v9FiYAf/S2rf7jhG7m6KOPzamwQ3o9tzlswdBgoIl9QCOJ45gxp6WdL/pYTzIG5n
699GzPx7eFLs9nig+3To7cjsatt1he0hyI4Y5VXrBYTJUINu7mPXrXOOOytT85mL
9HNLhZJrvnDMRBdailFpY/nwYUq4TORps7ll3yMwOBWCIziyxU6ShuaS7UUcNfd6
KQWa19k19huhhJ/WFG04lc1mjMQYzAM+DoLSn72KGTho3YYZjm8P9rvYgMTW5rF8
kTX8Zd1CM6esAQhYji6CJQV4sKi0ZRCLz81dAf0chibWLcDbA9DyXgGX3A4GDIfR
2rXiW1ggIZhknk09nPri7clhpqxSVQ==
=GDWl
-----END PGP SIGNATURE-----

--3U8TY7m7wOx7RL1F--


--===============5754187094057228040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5754187094057228040==--

