Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B7F63E52
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 01:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4+4KsXCj1Z0O9ojZnhl2iTOwwo6Vx3ltfA0UVlmZbqk=; b=e1IcfcDWWQUeMri4cdVCWR3Pf
	2w2UnTwdLnq1GVM357CcGcZfpKqKUFTl5QQ64qNPxSIIc9Hvfz36j0r9R57d4R9qg3bXOtdbe1smd
	z8wi84UyzuvjpXOZvR86UhofO/stxbdc1Sn8LMzzNaT9JRMcqki3YRRzhCN8NixjU4QER/NILruru
	muxkrUEm6CPcC5dV3v5yCc9MWGZW80e0USND3A64nOaadEMdAFvFySqahe8S2exJMr/93fndMVUvv
	Y1xNlnYT0ucrezBHzPnZIQw/uhxdM2O9mAZ6d4rugYtzR4fktmTC0e/5Q7MrY0BNjfp7kErWzaoc3
	3xRDZKzIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkzRm-0002m4-3O; Tue, 09 Jul 2019 23:22:54 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkzRZ-0002lZ-Bi
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 23:22:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562714508;
 bh=u1FhKHCjpKKk4zGtZVctqypPyAO5EX3bGkmrsnhboZE=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=J3senOF5L3eWDp79uNdC/JL2KaUMb1y/vzOakiKZELSBLMNcEcdLsvi5mmQlZzBh4
 c4Uy+vXNAS0X0EQnSeb2e05Wu9KHbMntKYhnLKY9hjNk4YhgME/WvX89U/c0eVLE6o
 2vDAyrvtsZMLjguxoYsg1PBiaG0DPtXDwRmaHAKY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([109.90.233.87]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0M6BKc-1ijAb00RlC-00y83e; Wed, 10
 Jul 2019 01:21:48 +0200
Date: Wed, 10 Jul 2019 01:21:44 +0200
From: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: Peter Rosin <peda@axentia.se>
Subject: Re: [RFC] SW connection between DVB Transport Stream demuxer and
 I2C-based frontend
Message-ID: <20190709232144.GI22408@latitude>
References: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
 <7d47a978-5307-a2c8-acc2-f29ce7567bd5@axentia.se>
MIME-Version: 1.0
In-Reply-To: <7d47a978-5307-a2c8-acc2-f29ce7567bd5@axentia.se>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:hPlL5u4HY5DqxoayKH7gTcS5JKbY7+HFTGMT5QDmJ4clt1D9fTR
 7gdoI2SqD01BLqEZ5Ab2pZAWU+WFiW3xYSgLi3R6iXQaYrWrxCf6eXJR9pAMg5H4ybHmHj+
 XJt6a3PkuKvQoBqmf9kgizXNWgHr4YQx3xRKN4BfcxsGYB9s/frtlv+W+tDBEZeiW5Mhvu4
 IWoEpKF2TnXMcv4HR3kvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vM1z5KBQ2zc=:IfTUzUMz0CjQH7/xwVYryM
 NiIYuZs8mygzWT8JKp4ReYk4EnmHYnxvl/IkOEsxbFaTXU4IyHY3XPRos/MDTx7BT1EcSYwFi
 Ky81PrqJv1rl1/nCYxte2q6HBruOHmI8bazxw+H+bmqH8Fd/Q+9EGdez5uEapv1JHPtU5Bw3D
 8ys313aIX3x3amcPAl5WMwLgA/82/b8rQUY26MazUyth8SGrAM3a3BIyUPLJIT70elzpSyIG6
 CWO5CeZ5S8io0JEFB2C+EAaPRzTTuAW1DpRbUy0ulpp9c3Z17psH+Xu1vf6jCwpOq2U+7WK4T
 89pi7ok8GlSCgUHP9edJxB0TJ/kKWo1ggUvjvlH6+jbUPf/i+7pzG3DOXV2zGo6zPOr0qjUtL
 TevWl5DAAUMy3SgOfftfH2MLDFU/XbRjj3bgSJXuOBjH85pS7goT/H3UmMZtXWpixkNm7/Xe1
 VPKS37Tn2Q9VGNvClf6AYYp0+TRBP7jpQvkrFNCxZzwJ7aGo6uXsLIKDfu9behmpa9WYlldjj
 lvVeNq2i6q4vaaQa3VjqHaIhtp+1ub1iYOWbdgb9Ucva5+nVzCOIYoJuX4UWI77YMeyvkzBpG
 6dfXiOcTRaGGFUG5iVwOWxPZ50B5Nug+L7zwMePsMIJvmqPrCk0pxSRL1pszz4+KxQGnLiZcx
 Exgzia5Nx3NywWJO7DSLtBroYqse8gv/VpKTeMDs4gjZrY9mPsN2REL1854p6A8FuWtmhL8Ax
 SW2A8SjdJbUQ5HZe0nIENm9d+YbX0NhrOuCxW3ozAINSVrADAoNh4xXGAnHv+X1sABmFTWGC/
 F3nigLoFKVfYr2julFJGWFSnn5N7jKRxGY1XYxM7D0bDolVGLsO+oSMoYfLXysmIzjeRUUQ48
 cv8JbqQvorGqFJjPfrhlKSn9KZ02yzfOAvFsn+aj6OKo+SOAywep80hYdGCLlDMVzbmQpfTUc
 2r0RiMhY0hwdyCJyC8e0qm9yL6+jgAgID4xBa87cdvisxQn7JfQOM+zj4uJB6pMxdq0mdeHBR
 F+tPjcttnl9CoJDrMYDuL130CWeRhmUgm+Blfu0H9ADEqMy9GTjLWlaUKW+imd1oVq8whNYbQ
 zuRE8j7ytbdMd4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_162241_742518_46884472 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (j.neuschaefer[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Korsgaard <peter@korsgaard.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Wolfram Sang <wsa@the-dreams.de>,
 Linus Walleij <linus.walleij@linaro.org>, Brad Love <brad@nextdimension.cc>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 GPIO <linux-gpio@vger.kernel.org>, Antti Palosaari <crope@iki.fi>,
 I2C <linux-i2c@vger.kernel.org>, Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Olli Salonen <olli.salonen@iki.fi>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============7108863224851939077=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7108863224851939077==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wtjvnLv0o8UUzur2"
Content-Disposition: inline


--wtjvnLv0o8UUzur2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 08, 2019 at 07:58:00PM +0000, Peter Rosin wrote:
> On 2019-07-08 13:08, Marc Gonzalez wrote:
[...]
> > +	dvb_demod: si2168@64 {
> > +		compatible =3D "silabs,si2168";
> > +		reg =3D <0x64>;
> > +		reset-gpios =3D <&tlmm 84 GPIO_ACTIVE_LOW>;
>=20
>=20
> In principle, I think you should be able to add something like this here:
>=20
> 		i2c-gate {
> 			#address-cells =3D <1>;
> 			#size-cells =3D <0>;
>=20
> 			tuner@60 {
> 				compatible =3D "silabs,si2157";
> 				reg =3D <0x60>;
> 				/* whatever else is needed */
> 			};
> 		};
>=20
> But in practice, I don't know if the si2157 driver understands that or
> if there is anything else that gets in the way. Totally untested...

So far, both drivers don't deal with devicetree at all, and there are no
bindings, so we have the chance to write the best bindings possible.

An i2c-gate subnode on the si2168 node looks good to me, FWIW.


Greetings,
Jonathan Neusch=C3=A4fer

--wtjvnLv0o8UUzur2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl0lIWIACgkQCDBEmo7z
X9u4tQ//Uspzp7ZgorenRjW67VpJ2QDBh+TAxqGare8VptT6VuPpxAewaQcvuSoL
TvyQPaFLfzRcpAWXLIUvLclYkJxXl5nTjvvrT0UAtiKMFvVG0dwz9TH+8BqMmaXp
87C8/IKZhOslJbqKnSFWhnVs2PX+vQ0rpwX3GlrPXL+7a/QNQ5ElSupxJP77Mmfp
uDyN1mV/G16KbD8dXvbx+cmHJClixxcpxQDzxG3rn+xpfRuRrNyhbKM3leo68n0p
MuNyU97Hxr6WfNXfSXSzvMQfYzs8lKKk6W2z7cA3TIB47TbiARXf2THz01F+Mrbl
lQfi89kYATuEyxGZflFg8TNM3aYUsZnDb7Z0oF6VfgoyrtCvaZ1LUBT2YJN+h1Y+
g7lLcpk5p/iYettqg7Uw+TTVl4eEccrf+iQbe8mpllI1xdEJD9roci4ejazYfSPI
SNA/O/Drt49Boyiln3NqikccL0ZIpFPg9wehe/OANsKIcKjMCcHi8ti5+uuNHWe5
E7U3BDsRfSBHVC2GRLfIzaq9qyfibczB7xr7shuf6fVEjSDQo9qAfRmOmlT+WY8Q
bCRJczQjOYcUrwQjXs+apNFleXm1cU0LAVzTFSwXhYjJpwrMZTojgxYvlmzoRkrL
p982FJil2MjgYPZzVc+pHm2+V4QfRNEecxK7a7TaO0140eMOa4c=
=KEcJ
-----END PGP SIGNATURE-----

--wtjvnLv0o8UUzur2--


--===============7108863224851939077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7108863224851939077==--

