Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC4B56AF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=81Yzcujp+ShujK+kBeqXeiJZT89btgZn5S1UvR75UiA=; b=k/9ABvEmbkhWD2oucL4s9OgXJ
	ZGYtohQJYCe5c3rVf5ajV8PF3hnH/pzHFuIBa0Xsv6C26iNKN+nb8isvL23vCDUfAzjRPlkp2c4Fh
	aG/2XpgP3NEM21RT3C9vWXShfXEvx0GNMFASaVQxymtEPMUZE7DTNqbZOiAoY3CRy0DssPfHqjXcu
	15VU/e4R7GzUX6EsDFr3JCBZKJ5iIpZEMwZLKiWDs+5GQkIYlLPxz/Cplu8j/Kv4Z1qEhQyE2d1sI
	LUrPXg4ZiQ0E+GmK7iZdfuEH5IbEQgUeAgBLlX2qAICMsz/e0rpTWdDczhoxBdWypFdfhCmRyLDSo
	RgkelLswA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8Ci-0000H6-EX; Wed, 26 Jun 2019 13:43:16 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8CV-0000GE-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:43:05 +0000
Received: from localhost (p54B330AF.dip0.t-ipconnect.de [84.179.48.175])
 by pokefinder.org (Postfix) with ESMTPSA id E84C82C0114;
 Wed, 26 Jun 2019 15:43:02 +0200 (CEST)
Date: Wed, 26 Jun 2019 15:43:02 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH] dt-bindings: i2c: omap: Add new compatible for J721E SoCs
Message-ID: <20190626134302.GM801@ninjato>
References: <20190605084504.2777-1-vigneshr@ti.com>
MIME-Version: 1.0
In-Reply-To: <20190605084504.2777-1-vigneshr@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_064304_068521_76125C58 
X-CRM114-Status: UNSURE (   7.32  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8814039453152678212=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8814039453152678212==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EOHJn1TVIJfeVXv2"
Content-Disposition: inline


--EOHJn1TVIJfeVXv2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 05, 2019 at 02:15:04PM +0530, Vignesh Raghavendra wrote:
> From: Peter Ujfalusi <peter.ujfalusi@ti.com>
>=20
> J721E SoCs have same I2C IP as OMAP SoCs. Add new compatible to
> handle J721E SoCs.
>=20
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>

Applied to for-next, thanks!

Sorry for the delay, I was waiting for an ack to show up. I totally
missed you are the maintainer :( Won't happen again!


--EOHJn1TVIJfeVXv2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0TdmAACgkQFA3kzBSg
KbZ9dBAAo919nA+c20of0MlgEZW7UedZulT6dQ4dEQarjiBxvSypxnuLFf4GK0HU
49ES8y9RFx/ALu1w0tuB2X8tdnymyeURHhKamiRzI9uQckdWdG+bq4CYqJAbjyRn
wrqn09bsPLR3X7tW5Ivcn5p0capglvGYbKMfSG4sM43b793RglSxydF2XhDoZYlQ
jw7ixZikzVY1hl7fz05zhjXNnOpEF/M3HdnqpkcFf/PrAlZH+NycWnAU3LbERYVa
hCIo98A7lqgfuGgCsiifSwc0M9fcLu7ddf8SVPnS5V39//H+8oW2BpR5U8tDZ4nW
Iu3l/R4mBdZ68Evda2mQHNbRGybt3cV4e4VdyuxeKjGPe+kAxBUaEsPNwYF01k2A
StviNSwbGPDkzHOLP4/Cw+1cb++CsduUJd06e1xocsqkpzLoaGUTmy1g0TiL1hdv
ehM8d+zmZfm1l4RMF/bXe06+nOlMy4JvT/4yB1a4XoptrOdOJ7gKvAguKQkVfwx9
yopMdS2cysDNu2ny9258EnAls1cfFJCbysBbl3/lX8HNwb8yUWSrD/EleroF/35h
2H/awiSEuDDGXJRXoUxXlJQpS/kXrw3ehpplkFptKKhpG5s1U+EZNXZk5IZHWw8c
helXxIcFR4UZUuMefJ/5NzB+yi6v2VJFHmZyOHmnRwxdtqNDekI=
=T4Na
-----END PGP SIGNATURE-----

--EOHJn1TVIJfeVXv2--


--===============8814039453152678212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8814039453152678212==--

