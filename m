Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A8619AE34
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 16:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IqlO8X5fgBEH8DJIzXcaq3n4JtjVTxq8zQfJniakFHA=; b=UKtCs99rJ+9aqo2oaAgLJkqWQ
	ap93OB/VjOnczNdwm+k43/+isGBgVbiAUowVgcNdVm+LgZrySnj4g3uQiWfgFj0W5yMXFd6zwUxPc
	CcM4VJU1a4aKBs8NrQlv5+K81bWWxxFPJUsGmhD0TP/9OZTG5H/Sc2uP2cMaMAEz+MduuL8L0r5/L
	2oDU3jDTJQ8kkXBHwzojjleGE+sWgVGoy1cUTnK44GWtEZS0I37xM/EGgK12W2KLUStWV/AMODGKc
	f0uKxdyfbMIDMXFDGB07lruiUtDf5Bf2AKR7BMibcoR1mTd2ARR55bhFUU7SAN922wlUWP7Im/evl
	SmpFS1M/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJeZP-0002tk-4s; Wed, 01 Apr 2020 14:42:19 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJeZA-0002id-9j
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 14:42:06 +0000
Received: from localhost (p54B33220.dip0.t-ipconnect.de [84.179.50.32])
 by pokefinder.org (Postfix) with ESMTPSA id F04C62C1EEC;
 Wed,  1 Apr 2020 16:41:59 +0200 (CEST)
Date: Wed, 1 Apr 2020 16:41:59 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT
Message-ID: <20200401143254.GA2409@ninjato>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <CAKfKVtFf+VpinkOGsBFZ2-_PKvx-C1L7G7_uhY2RCvV5dy6L_w@mail.gmail.com>
 <AM0PR06MB5185E501349E06428093B62FD4F70@AM0PR06MB5185.eurprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM0PR06MB5185E501349E06428093B62FD4F70@AM0PR06MB5185.eurprd06.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_074204_525296_F5292C5F 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============3173777359941407615=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3173777359941407615==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tsOsTdHNUZQcU9Ye"
Content-Disposition: inline


--tsOsTdHNUZQcU9Ye
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> The multi-master -binding is documented here as boolean and encodes a
> Boolean by either existing or not existing in device tree. It is also
> used in other drivers so I couldn't do much about it missing meaning
> False.
> https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bi=
ndings/i2c/i2c.txt
> I originally had a custom device tree entry where the default was for
> multi-master to be enabled before I noticed the pre-existing binding.
>=20
> Maybe if the multi-master binding was changed from Boolean to for
> example a string property (multi-master =3D "ON" / multi-master =3D
> "OFF"), code could still just check the existence with
> "of_property_read_bool()" first, where property missing means "OFF"
> and property existing means "ON"(like before) if there is no text
> associated. Xiic driver would then only disable multimaster, if device
> tree explicitly contains multi-master =3D "OFF".
>=20
> This should be able to maintain driver backwards compatibility with
> old device trees, but requires binding documentation change and all
> drivers should likely be updated to also accept the new style of
> multi-master property to be consistent. This is also not as clean as
> the old Boolean property in my opinion.

I agree. I don't want to change the old "multi-master" binding like
above because that would be quite intrusive for other drivers and
confusing when trying to understand the binding.

My best bet is to introduce another binding "single-master" which says
clearly that we are the only bus master on that bus.

Both bindings missing means then "unclear".

I think this matches reality best.

Opinions?


--tsOsTdHNUZQcU9Ye
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6EqDcACgkQFA3kzBSg
KbbF6g//ca5Zr0fqlMxxbB0GPUdCqBey97V9YduvQi9tCkt5ufyg12ypS3iSTUFq
v/0+sDd2J7zidl4TXfwlMrn7fiWOHENsJLX++78dSK1o+d1nx4MXpgBDhQaOu3+q
MjAspDeQPquTY4wPbMQCprVkDhTpSANRUvTwD5FdTmOJt+YA8luySNaWL/nQmWKj
8UqAQyn1vgmNWaAv1ch1jr8+vuE+YV+i4opSd3wEQcXXEy3v0hYNSONyFf1WlRul
T1ITLRaVBgY9uJNhIbqfi/khS3VV/Mtp/GIaGHgl+vkGtf0Uv3cLvednYmNUP/lx
y0PcaIXobivy6iKHNpIUJ0J8Xi2aL5d0VSABBrHuqi3GoOQM6hfkbOqhxHb4QgYS
RMfhUAYztM/AdHcss5xb/oC3hPCZgzqPQg1rxDI+IGOOQoJfx+3vpM/fpp4oqCKJ
fwSxC0rF2OQsWXCc9rIRyuvVrKaXfAE43uysyATYC6zMPTH+fmd8trREk2W7nitF
xxD+7UypFDmSZlhZf1v9csUIeWve/gjjvhvtnYlTJHc1bC62dpc/6UR+6NEtEM+0
F5Tttow5S+jwY36zJwIkFrhmqsgpPPrUWEYPSXAdgb30B5VMRaMcwMGkYUaVOGBn
ue2kmuU3euXXpBMjbAObF6bRfuwq7ce0Hqg47NGJQj0lvlJc1AY=
=LbAj
-----END PGP SIGNATURE-----

--tsOsTdHNUZQcU9Ye--


--===============3173777359941407615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3173777359941407615==--

