Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58026A4464
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 14:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2LYwzLj2iNwmOUZwgqOzAl+Bbx3pC6bactlVJvIhHZk=; b=V9NMS5xJCffJ/qzvjGK9G3Mei
	+jFqPycOx2U84CQSkOncHqQEiE6gRyrIfmZYVu0sGDBtCBca1QDEJTtk6IhzNcNQ4ByO5mMWxiBYO
	51rcJw1pZrU9EHY4AMU/qTocoUtHhL/XrAAsT2iBUW8xNwzE2PgGy6vAq2BpXj5hGU3AQT2UXf13P
	9GXbnl0CfEMV/wGoiFssHtJLeXH3TUR3h/6CD5H6CCsJr1M7WJYM+0e/obVsHhOelgZlGEQ1wBEPZ
	DJW23lYC11FflglNJiOuzgYZ6POF977xapwwS2YeV2LRvW53NdaLSlhLTJm0Unkssqg1JfmawR8OD
	FfIcaUF1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i42KT-000560-3d; Sat, 31 Aug 2019 12:18:05 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i42KG-00055c-Ps
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 12:17:54 +0000
Received: from localhost (p5486C98B.dip0.t-ipconnect.de [84.134.201.139])
 by pokefinder.org (Postfix) with ESMTPSA id 137752C0093;
 Sat, 31 Aug 2019 14:17:52 +0200 (CEST)
Date: Sat, 31 Aug 2019 14:17:51 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 5/9] i2c: at91: add support for digital filtering
Message-ID: <20190831121751.GC1032@ninjato>
References: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
 <1562678049-17581-6-git-send-email-eugen.hristev@microchip.com>
 <20190831121308.GB1032@ninjato>
MIME-Version: 1.0
In-Reply-To: <20190831121308.GB1032@ninjato>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_051752_991257_AAC27C59 
X-CRM114-Status: UNSURE (   8.31  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2419447968539621890=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2419447968539621890==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t0UkRYy7tHLRMCai"
Content-Disposition: inline


--t0UkRYy7tHLRMCai
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > +	dev->enable_dig_filt =3D of_property_read_bool(pdev->dev.of_node,
> > +						     "i2c-dig-filter");
> > +
>=20
> What do you think of the idea to introduce 'flags' to struct i2c_timings
> and parse the bindings in the core, too? Then you'd have sth like:
>=20
> 	if (t->flags & I2C_TIMINGS_ANALOG_FILTER)
>=20
> Would that be useful for you?

Forgot to say, we can also implement this incrementally to make sure
your patches land in 5.4 in case you are currently busy with sth else.


--t0UkRYy7tHLRMCai
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1qZW8ACgkQFA3kzBSg
KbbcoQ//ZMuUi7Vd6Xj/Gh9IgbGuTbXxjGeoSW+Kts2TbqLIcJHl9A8F8BLOe3OH
QJRwEMB/NVIpI6XTuQKadhBkKHoI/1n+5jhOJX4P239Lar26V3kXG97WLSNH3kJP
RJ4q5ZfPRLKzpxlebefRUWntFCadSWmQvztiji0VyQR5wSY3+eJkVhU7ftIKFEpW
LFMoCI0Gr1eClZM47oZERx9hsilWnacd+y8eLTDoiUmd0yVGx0QO26JNju6zIkuU
zMAfj51/y0aNN63LIHAp3M4uOxVvLxAWZrhg4nGrbfrEwUIFjWMajM27mnuF8C6R
jFaK/CUOBUHO1dRRDvPHmFEJThJo7iQ4gR++2r4+ADeoWDP7geMn6uttEs3xRZEU
HkOvWUDUzxgR0ylv768MU4lUV8eYt5d0kzYEQqcOiBO4eAS7zQ0SaeSLdbrQuIhR
Vx6Msz70pCaBSQqEckJPlKcmN4fm4vp67wVZdy8jEjNuJIY7j7jVsFEQZkJXfdBq
tV8yfRFm0C5HZbq5DR0QSF6xqREW/k40aHsPC/7bmyvyzCuA9GiGe3bZCzxoOeuR
TAmzevIjsE4UfmCrNdqQP/V4E0tZMAbllPgxUlgZYO84EiLn76pKxxlvyt5hp++t
NlMl1rO/Ne51jtwCVcmGgpkoLtlop2ChAKzhPSGZDMn7aAHdJVU=
=YVhT
-----END PGP SIGNATURE-----

--t0UkRYy7tHLRMCai--


--===============2419447968539621890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2419447968539621890==--

