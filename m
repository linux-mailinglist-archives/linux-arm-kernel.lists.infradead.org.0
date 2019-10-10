Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11566D2787
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 12:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u7Pe35gecLt6caZtyaHpFBq6bfUX64eOtpm9QnTE36g=; b=mVobSwugLMn7Oy3AyLERqG4Mx
	3gkpMQRZGVCJ47Z9U7MXoXwpS+VDkuNxJFiHJbHdPHKYRfhXD4k4C967x7oo0yHDvxt8+a4gVahR7
	M2tbx7XFYza3Ju2joSnMsOm7gtwdtNhdqyy9CJ6Xf4Iv0EkJlZS+iJ6gX0UtEbeYzTg8UTSExoF0H
	mlK7zaqMAwW3L3qHQHA3z8TfllGCyM/KgcVsY81WRidaOd4p0nscBjdGnAdSpF5xtW9h+83FmSpFK
	SLVtTMb1xcunsHBJDgXSj/nxDG/U0CeppK5JpLQ92zlfwcdTuWHeHD8ENJ/MrP3xbhoFLXOcxAKBa
	EKxj1gkGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIW2p-0000iW-JG; Thu, 10 Oct 2019 10:51:43 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIW2f-0000iD-0L
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 10:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570704654;
 bh=isSp2yjj8tgFc9B8HE7ygr6I8j0nOi1nB76gSDYoQH4=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=KhqOxyobTJUF5YwUyLQs6T2Fsjamje5XTom+I9Y1dCWYByBjAATUvLUnM+J17W3p3
 4JH0qgR2T0RE8sCc74FGqnqZyYqv8IXsEK5bMh3suT9BQzZSSitMd7QiZ4xI5ECc/c
 Vw4J+r5LLCmj/n+Ekegl/F14pbzLXU/nfI+gTLys=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([109.90.233.87]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MUXtY-1ij1942giW-00QVyQ; Thu, 10
 Oct 2019 12:50:54 +0200
Date: Thu, 10 Oct 2019 12:50:51 +0200
From: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v2 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191010105051.GG19803@latitude>
References: <20190930194332.12246-1-andreas@kemnade.info>
 <20190930194332.12246-3-andreas@kemnade.info>
 <20191006223848.GE19803@latitude>
 <20191010073129.607f7b6f@kemnade.info>
MIME-Version: 1.0
In-Reply-To: <20191010073129.607f7b6f@kemnade.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:PVhL9x4eQyuah6Ugn428WrQuTewZmlP2MiGwnrCCZgNMNLCBAXC
 BdnYvEikPTdghD6qWiHpNavC8QkEtV4VTv/NNW9iUcRKoMcnrGnD17Ry2aKfN7QJFBSAuBM
 pTo3NNNgvn8k3AGuDs+WkiV8QCK+Box0zrzwLk1UuuR4wznVwMUZ2Uy2jjS8J9hCusYIpwN
 W6X4KwtdP1ORaEc1bgJZw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3XygdKJjTVg=:GekyFO4A45gWRBuEKhH9jo
 Epz+BCj1uPC2yxszIpKjmL2wJA+a/ighkFkpYUSEJMphjqQeieJuvimC1GpdCUxOsHCrDvPXC
 vkoSTK6DT+bsH13VVtALqhmkUj1Mh9qeg7S6AL4KMIB0OQDDq7TreT129iL3iAsc4jfLyAORd
 dp44uIsDuT+DDlrReQfXzkoM+HbIAC8dKKabWoCAdt7fI7UIwv0EktI8PJdBnKGZqELTzrsLc
 sncpnXf7SU2gbJzaBJYEJic6vc+YojWkWjWDVU96EaPRk7efhJMpPiff5HL+VQpfodbCDvF6e
 ITq3adxTU89CF5G56HgA3FdsdG5T9KPDCvGTB6KIK7oJ1isv6cbZPSHwOgCSDV9EfTGlXj95/
 pBiAp4tOKH4lWOAImMd3Mfr6avDb9rTGR+Zjhoh6tX8jUUKG0XLYbxfs4wYcU7WzBRUHYs3TC
 LE/StNwz9M6QZ/sc2276fRgFyiWEh4l8x0cMNI/O63jbg0dFdtKSk0rW39HHXyCG/lZA7xw62
 o7YQBj5vxjQmQNdTy/eJ2B8qjcYE7jsnsr99tMpAWzuraPEvX9ArGscRhjvT2vikma74Q5OVg
 9hKSUG51LIHROej2kQ2kNUuNBtQuDwxigd/B9W1dnRofwXE1xlyCC2MDo7iczWB2E0n+z61pf
 4c5qeeyfdKM0Umj/pKe8VszJpv5ml1h/QC3tL7Dtyah9s3W/Hw7JiEdoejJz2E/r+RuYdwhva
 On8CKKjN2tzrFXciwT0SsMSBOQVJzBVdcuiqnoMsjQsQq8DmmHSGDXEpI2j46S/e7t5mK5o5A
 OiE+04S9Q1j6FRT8H9drOkhmdynrARMR4J28lgyXpzqLavh/o1cK6UrfsV68SYP20hbcmqNvW
 /fNDY4PxWEsTS1H/hdlxbaWGkTd3CTGuCuXcf871n+MLvoFRfYZLNz9yw6YUIT/OKriGOkbvt
 t8GswK/UbSVJQhlLUwFdPOqKtWZTaxTKnnvxyXWLwGAVo2K/siaUzOuyFsyBGltFc1z8yeC0o
 LfYD2fTcq6WdLekRpPG9h4duc3LTavzMNIlRNqnzEZLB8/3BDFEuYY3b0zt5zB6/cQdW/Y9QP
 ordY4qBGZYpL2FUaQKBW+aXctTgz/hKixE99aYcQk0UjgUCAu1D4Ya3lUapnyvT/XTs+vVlos
 1NHMiBcj3Gye3/jUywyQSj/5qsgwSNSKg4EtuiEgc11VW6nwJJBjlo+YzfGkXg33ABAvoQq4z
 E7d9hhyJn2U7bBxg4fR2517Y18ik86j+HAN0lstkhT3eqplBCSXkxwc4+xqw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_035133_379930_2CFEFF37 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (j.neuschaefer[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, marex@denx.de, Marco Felsch <m.felsch@pengutronix.de>,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, festevam@gmail.com,
 s.hauer@pengutronix.de, angus@akkea.ca,
 Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0055864157273189629=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0055864157273189629==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="E69HUUNAyIJqGpVn"
Content-Disposition: inline


--E69HUUNAyIJqGpVn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 10, 2019 at 07:31:29AM +0200, Andreas Kemnade wrote:
> Hi Jonathan,
>=20
> On Mon, 7 Oct 2019 00:38:48 +0200
> Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net> wrote:
>=20
> > Thanks for CCing me on this patchset. Nice to see more e-book reader
> > related work!
> >=20
> btw. seems that we have a common target, since our ebook readers both
> have a tps65185. It seems to be a good idea to comment things on the
> i2c busses without proper bindings. That might help to find allies.

Yep. I did this in imx50-kobo-aura.dts:

	/* TODO: TPS65185 PMIC for E Ink at 0x68 */


If you want to take on the task of writing/upstreaming a TPS65185
driver, feel free. I'm currently not working on one.
(I have an MFD driver and a hwmon driver on a branch somewhere, but no
regulator driver.)

> I will send a v3 with correct memory, better name for GLED
> and the above-mentioned comments.

Thanks!

--E69HUUNAyIJqGpVn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl2fDPkACgkQCDBEmo7z
X9tnWA//emtOhSRw1zxZK6fZP0uHAJvsQEaElaqk/KIEwrlBbRp9z4jyqyqWQkSJ
lw1P4ukj3fRqtdYf0L0fzO6sssSZcVLztO0BVO0PeP9R0DXxjcJ4HeD+PMvu0962
8kZxzYcA0j5qCPacCDCLnpQbbDqFN5OrW8jyjipjui9fp0EAikqObtLNn0OTM2gs
9zttSZu9gWCKXQxivfEp1W07v3sHrQuIKRvOGY8pDz0aXy5ahJ9Qv6wIS+SnovOM
GRPX6ZJE4BVUS9YonFITt9+h1VMJZw0YtxwDncjaDVqHE7DliwqowGcAPjRviceE
CK3/bikNO5hGZhlXIi5/KIJgbZ+Bp5laTFMKfNvYHFt8MjKIzLBsn+iXO3eZ+Rd5
0+H/WQNBAPaBhocrVkGm8Xkv72AkP7+M+zCJb1MbAvCwcTiTA4mMQ1MZ4GS2aE7W
z+SU/fu6CFRIjsSHsQ86qtx1bmSI1w18VFFGCYnPNMmu4KHSVhah+yjnZE4gzfDO
oOHuZO5tZ/7Ac8FHRjr6sWBZrf5B37FJbs+WmTzZcrY8CmM1BZvGAFvzkgOQAqlS
Jf7nNiJ00+hED3taMwzTQPdRprnwuFFHzKD+YfiMIEU9ugUUbuYqw1ai9ALbWXLm
2OTYEpI9Pthh6OFe4ADt3iZgSgFJtmYtkEGLGc3x2GPJ9+eiquU=
=MOg3
-----END PGP SIGNATURE-----

--E69HUUNAyIJqGpVn--


--===============0055864157273189629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0055864157273189629==--

