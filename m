Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AEA2005AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TXXrS6uge+FmKyPLu1wV1E3etE0EqV6Lyx5OMKTrk0Y=; b=cN9zFw1MzOzGnSaq0/MF7ci3E
	c7418yAmW3jGKj5HboSIhe7AuV3o1TAkKIrgp/a8zVuQH0rrdWQUAN3xN7UVS+YY/J5c8E7FwEEvj
	v+G9AXtKIqyv0zuIm28Mr3GEOgDAPVK3nfnkdnzIbsVluxGPUoLaxEJ2vsN+gI/jlZiHpRYydsZTe
	JuNt7EvQqRVRI4i92wxoC9f2V5xqWTrWO3PL79HbERFe5H5AqYi/rCfaJD6lHuBGSxjj7XJRMF6yl
	CNMVvzvlbtRILKWSBL1f4WGQB93bTsRtg9qXBw0JY7hMwOL/h5cSvO6yaOjc610RsXDMyzILldJoi
	XyON+6XKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDaI-0006SN-Ux; Fri, 19 Jun 2020 09:45:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDa0-0006QO-BU; Fri, 19 Jun 2020 09:45:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DB8E6AEB2;
 Fri, 19 Jun 2020 09:44:56 +0000 (UTC)
Message-ID: <bdc91c1b015d2f02bd0ea90ae81a122123c62b38.camel@suse.de>
Subject: Re: [PATCH v5 00/27] clk: bcm: rpi: Add support for BCM2711
 firmware clocks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stephen Boyd <sboyd@kernel.org>, Maxime Ripard <maxime@cerno.tech>
Date: Fri, 19 Jun 2020 11:44:54 +0200
In-Reply-To: <159255945796.62212.5838238989498858379@swboyd.mtv.corp.google.com>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
 <159255945796.62212.5838238989498858379@swboyd.mtv.corp.google.com>
User-Agent: Evolution 3.36.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_024500_539101_AFF22A99 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Mike Turquette <mturquette@baylibre.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 Phil Elwell <phil@raspberrypi.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6104126909227736772=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6104126909227736772==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-fZ7yXxkuArogoYxiG0Gc"


--=-fZ7yXxkuArogoYxiG0Gc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-06-19 at 02:37 -0700, Stephen Boyd wrote:
> Quoting Maxime Ripard (2020-06-15 01:40:40)
> > Hi,
> >=20
> > Since the whole DRM/HDMI support began to grow fairly big, I've chosen
> > to split away the two discussions between the firmware clocks and the
> > HDMI support.
> >=20
> > Let me know what you think,
> > Maxime
>=20
> Do you want this to go through clk tree? Or looking for acks/review
> tags?
>=20

FWIW I don't mind taking the device tree changes trough the RPi soc tree.

Regards,
Nicolas


--=-fZ7yXxkuArogoYxiG0Gc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7siRYACgkQlfZmHno8
x/5pSQf/exFv/66MuXsAeM5ue9vwfKbkmJ1AI4WY+HeyniqK7yARVlufqNDDHNry
JW+BPgp/zFe6ZMhVfD/l9xc/tf3dn0vT/CINKP2Uhgey4GeVZ+TuekJ9pOQmlDjt
HaormE0veBP+pk07pwOj7vXUNEd5spHlMjdu/xPT0NgZXQanvBy+NYIRZjWSXjs2
pmxNSsSr9LGT2ypipzUtyqAtILTUobwgXFAWNeSp9uxyHD+V2qLatUtJCbP+Lqii
nrosXYxiGw4CaZ2Ypl14pcOfQ24nsaAQNInTDetN47MCJtJZDcINclfqG0IWfvE3
2+ZxejWhAankUhgBWQDZXcoPsLcgkA==
=Fnq6
-----END PGP SIGNATURE-----

--=-fZ7yXxkuArogoYxiG0Gc--



--===============6104126909227736772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6104126909227736772==--


