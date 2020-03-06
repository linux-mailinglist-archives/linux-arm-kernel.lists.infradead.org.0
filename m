Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EB117BA63
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:39:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Y2j4AHWFJLu7OVlmy/pW/UztBYZQjfjbAunI2uSKbc=; b=TnYaPt5W7fIZkg6x0L4qLPrT0
	JQQn4K8N/HHvMnGSzLsUwE//4yAWFkrgeSM7pBLD0549zQMMuNagjNhSzJYx+IUaPKzU7Q4JZn5+7
	R8TWC1ZjiuOTfzos++cshInmge/Y49hM6r/AGdeGFMh+vM25W5pqCSkvbPUzxK+qC4dAqNGoku8Vv
	dLQg2trRyEbvBB+OGWe/2bB2d04TjI3VMq11W3RYuMRTNzkOBA3Avfl0zHkzoqfcOwc5cyiJ0jCCJ
	Mb3Cyb2LnN1u5/vAya+rGEDdGISgsaOLUbcpLZMeTM4rVHysJqlCz8yNtolZ74dGQAQ3LijzH6gFn
	lxL9uFVCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAANi-0007Va-Qv; Fri, 06 Mar 2020 10:39:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAANZ-0007Uq-6B
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:38:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jAANM-00031M-8Q; Fri, 06 Mar 2020 11:38:40 +0100
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jAANJ-0002Qa-AC; Fri, 06 Mar 2020 11:38:37 +0100
Date: Fri, 6 Mar 2020 11:38:37 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Message-ID: <20200306103837.4b2qfrsnqf2ebqqa@pengutronix.de>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
 <240b86a0aa76ac1f1d3948fc3089e3d13266f4b1.camel@toradex.com>
MIME-Version: 1.0
In-Reply-To: <240b86a0aa76ac1f1d3948fc3089e3d13266f4b1.camel@toradex.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:17:37 up 112 days,  1:36, 141 users,  load average: 0.00, 0.01,
 0.04
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_023853_389298_F2DCAC59 
X-CRM114-Status: GOOD (  33.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============9158061066172669729=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9158061066172669729==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ctfe6omlsgsb22re"
Content-Disposition: inline


--ctfe6omlsgsb22re
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Philippe,

On Fri, Mar 06, 2020 at 09:55:06AM +0000, Philippe Schenker wrote:
> On Thu, 2020-03-05 at 15:38 +0100, Oleksij Rempel wrote:
> > Hi Philippe,
> >=20
> > On Thu, Mar 05, 2020 at 02:49:28PM +0100, Philippe Schenker wrote:
> > > The MAC of the i.MX6 SoC is compliant with RGMII v1.3. The KSZ9131
> > > PHY
> > > is like KSZ9031 adhering to RGMII v2.0 specification. This means the
> > > MAC should provide a delay to the TXC line. Because the i.MX6 MAC
> > > does
> > > not provide this delay this has to be done in the PHY.
> > >=20
> > > This patch adds by default ~1.6ns delay to the TXC line. This should
> > > be good for all boards that have the RGMII signals routed with the
> > > same length.
> > >=20
> > > The KSZ9131 has relatively high tolerances on skew registers from
> > > MMD 2.4 to MMD 2.8. Therefore the new DLL-based delay of 2ns is used
> > > and then as little as possibly subtracted from that so we get more
> > > accurate delay. This is actually needed because the i.MX6 SoC has
> > > an asynchron skew on TXC from -100ps to 900ps, to get all RGMII
> > > values within spec.
>=20
> Hi Oleksij! Thanks for your comments and review.
> >=20
> > This configuration has nothing to do in mach-imx/* It belongs to the
> > board devicetree. Please see DT binding documentation for needed
> > properties:
> > Documentation/devicetree/bindings/net/micrel-ksz90x1.txt
>=20
> I know that nowadays this stuff only belongs in the devicetree. I fully
> agree with you. I am also aware of the devicetree bindings.
> >=20
> > All of this mach-imx fixups are evil and should be removed or disabled
> > by Kconfig
> > option. Since they will run on all i.MX based boards even if this PHY
> > are
> > connected to some switch and not connected to the FEC directly.
> > And.. If driver didn't made this configuration all this changes will
> > be lost on
> > suspend/resume cycle or on PHY reset.
>=20
> I am also aware of this behaviour.

=2E.. =C3=B2_=C3=B4 ...

> But the i.MX6 is a SoC used in
> embedded applications and I guess no one comes and plugs in a PCIe MAC
> card in an embedded device.

=2E.. hm ...

> But yes you're right you never know.

well, it is not theoretical discussion. This devices do exist.. With
this patch you will break other existing systems.

> Because the i.MX6 is an embedded processor I still think we should place
> that fixup in mach-imx. There is already a fixup for the predecessor
> KSZ9031 in that code. The KSZ9131 is pin-compatible with KSZ9031 and
> also software compatible, just not with the skew settings.

This fixups will be removed or disabled with Kconfig option:
https://lore.kernel.org/patchwork/patch/1164172/

> I really dislike reinventing the weel here for an old SoC.

Well, you are doing it not for a SoC (old or new), you are doing it for
PHY. PHY fixes belong to PHY driver.

> Philippe
> >=20
> > Regards,
> > Oleksij
> >=20
> > > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > >=20
> > > ---
> > >=20
> > >  arch/arm/mach-imx/mach-imx6q.c | 37
> > > ++++++++++++++++++++++++++++++++++
> > >  1 file changed, 37 insertions(+)
> > >=20
> > > diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-
> > > imx/mach-imx6q.c
> > > index edd26e0ffeec..8ae5f2fa33e2 100644
> > > --- a/arch/arm/mach-imx/mach-imx6q.c
> > > +++ b/arch/arm/mach-imx/mach-imx6q.c
> > > @@ -61,6 +61,14 @@ static void mmd_write_reg(struct phy_device *dev,
> > > int device, int reg, int val)
> > >  	phy_write(dev, 0x0e, val);
> > >  }
> > > =20
> > > +static int mmd_read_reg(struct phy_device *dev, int device, int
> > > reg)
> > > +{
> > > +	phy_write(dev, 0x0d, device);
> > > +	phy_write(dev, 0x0e, reg);
> > > +	phy_write(dev, 0x0d, (1 << 14) | device);
> > > +	return phy_read(dev, 0x0e);
> > > +}
> > > +
> > >  static int ksz9031rn_phy_fixup(struct phy_device *dev)
> > >  {
> > >  	/*
> > > @@ -74,6 +82,33 @@ static int ksz9031rn_phy_fixup(struct phy_device
> > > *dev)
> > >  	return 0;
> > >  }
> > > =20
> > > +#define KSZ9131_RXTXDLL_BYPASS	12
> > > +
> > > +static int ksz9131rn_phy_fixup(struct phy_device *dev)
> > > +{
> > > +	int tmp;
> > > +
> > > +	tmp =3D mmd_read_reg(dev, 2, 0x4c);
> > > +	/* disable rxdll bypass (enable 2ns skew delay on RXC) */
> > > +	tmp &=3D ~(1 << KSZ9131_RXTXDLL_BYPASS);
> > > +	mmd_write_reg(dev, 2, 0x4c, tmp);
> > > +
> > > +	tmp =3D mmd_read_reg(dev, 2, 0x4d);
> > > +	/* disable txdll bypass (enable 2ns skew delay on TXC) */
> > > +	tmp &=3D ~(1 << KSZ9131_RXTXDLL_BYPASS);
> > > +	mmd_write_reg(dev, 2, 0x4d, tmp);
> > > +
> > > +	/*
> > > +	 * Subtract ~0.6ns from txdll =3D ~1.4ns delay.
> > > +	 * leave RXC path untouched
> > > +	 */
> > > +	mmd_write_reg(dev, 2, 4, 0x007d);
> > > +	mmd_write_reg(dev, 2, 6, 0xdddd);
> > > +	mmd_write_reg(dev, 2, 8, 0x0007);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  /*
> > >   * fixup for PLX PEX8909 bridge to configure GPIO1-7 as output High
> > >   * as they are used for slots1-7 PERST#
> > > @@ -167,6 +202,8 @@ static void __init imx6q_enet_phy_init(void)
> > >  				ksz9021rn_phy_fixup);
> > >  		phy_register_fixup_for_uid(PHY_ID_KSZ9031,
> > > MICREL_PHY_ID_MASK,
> > >  				ksz9031rn_phy_fixup);
> > > +		phy_register_fixup_for_uid(PHY_ID_KSZ9131,
> > > MICREL_PHY_ID_MASK,
> > > +				ksz9131rn_phy_fixup);
> > >  		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
> > >  				ar8031_phy_fixup);
> > >  		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,
> > > --=20
> > > 2.25.1
> > >=20
> > >=20
> > >=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--ctfe6omlsgsb22re
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl5iKCcACgkQ4omh9DUa
UbMdoxAApaNnKMpkRYngo5clBs9/blpB/yrFdBsqF4OR7883X+stDApm9dk+ZBvr
oJzuj2m+FJ5GdazPWF3J4Ynt2vaZRQIip/R51/KSPp/b9DbUGpXbMZD0GXFnqmVk
1sErMn3ZV0QdIOdq8X+0HKg0Sl3zxSti+6TQolLlRvmZ0+LRqkM1TT40VQ2SdpK+
YxB6lginMrBz74vX7JBkgyQOBT9ECuWBvFodBHGhjGLXzkwgit+/c5Fxd7SLQc6o
kTiRmZEezVvBYh4t+JQCkm8ZWbelUv2KGjaO5SHLVBCGuVZ0fyoT7UqNYVNIINag
Skrv4H5t+2zMwn8ixXlFN1uRlKgUPxrhP7ehXn3rMyIwwG6rICWZT7XsTmT7+S/m
zn4Az0DGpECCIVIX/l2bx1xYJFu+eWy3PyYgL32g/EpV1nkAxYwJv/j7eWHZ5en7
RCSOLWoNqRW817h625OSS/NZVg8vcBnmXpV04JwumvJoBM3x6lsYNyd2sILIimmH
+T6qKZqaJ6o5vMw5PqDoZ1qqhTGr/l2xUu8a39oJToTQ0RtvnRZLzBeSmangprLH
2TeW3IGm61D8RNiF8BgxV42+NWwjatfbD+IwFARodwbM25ncg0PABeExdyLVKM8l
XmVKStnZ0taO/dk2DCRwGgEPXmTi66E9b8P4Ji1GJP3cJSKwgv0=
=Juw9
-----END PGP SIGNATURE-----

--ctfe6omlsgsb22re--


--===============9158061066172669729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9158061066172669729==--

