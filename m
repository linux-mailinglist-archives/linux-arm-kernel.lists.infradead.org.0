Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFFA1DCFC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r6vEsn5sQb8TxtoWuyF5pXQxMVgLTn+QlO1F//PI7qo=; b=Vgip7CWltrzNYTBCy1oSBQKTF
	7ldOBrMWBr1Q+7M8sUqfg1/Ut8/LRKkyeF1f2ptWk3evtKMigDSuwKNzyI6NVjRQ/Q5xxk223GiQK
	QCmTJXxzbajdnElCUsh33oOzGxQS+NIvB/zfrcbA98E4yxD+9Pv4WR9xPE1U6VvCbfvYXiF4cNEtV
	xCye6jNeHgVAcUObkXF6hPM5hSZr1UpqxpJxxHv9LkNSoexqUg1XsqTqMHWfqrMdN+d1cIXDYdJDx
	J0W9eNCL10p2jA02gLW9wySBwPtdVi47iDqAzfxZJmiDp25xrF6wExEJFbpxZ0J/z5NRYCi0L3/BF
	KvCP1ksHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmEC-0003MH-AS; Thu, 21 May 2020 14:31:20 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmE0-0003L0-96
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:31:10 +0000
Received: from localhost (p5486ce13.dip0.t-ipconnect.de [84.134.206.19])
 by pokefinder.org (Postfix) with ESMTPSA id F01102C1FCF;
 Thu, 21 May 2020 16:31:03 +0200 (CEST)
Date: Thu, 21 May 2020 16:31:00 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v12 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
Message-ID: <20200521143100.GA16812@ninjato>
References: <20200521110910.45518-1-tali.perry1@gmail.com>
 <20200521110910.45518-3-tali.perry1@gmail.com>
 <20200521142340.GM1634618@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200521142340.GM1634618@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_073108_467256_66DD4D93 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 tmaimon77@gmail.com, yuenn@google.com, avifishman70@gmail.com,
 venture@google.com, openbmc@lists.ozlabs.org, brendanhiggins@google.com,
 ofery@google.com, Tali Perry <tali.perry1@gmail.com>, kfting@nuvoton.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: multipart/mixed; boundary="===============2534616006455913879=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2534616006455913879==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Tali, Andy!

On Thu, May 21, 2020 at 05:23:40PM +0300, Andy Shevchenko wrote:
> On Thu, May 21, 2020 at 02:09:09PM +0300, Tali Perry wrote:
> > Add Nuvoton NPCM BMC I2C controller driver.
>=20
> Thanks. My comments below.
> After addressing them, FWIW,
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Thanks, Andy, for all the review!

=46rom a glimpse, this looks good to go. I will have a close look later
today.

> > +#ifdef CONFIG_DEBUG_FS
>=20
> Again, why is this here?
>=20
> Have you checked debugfs.h for !CONFIG_DEBUG_FS case?

I wondered also about DEBUG_FS entries. I can see their value when
developing the driver. But since this is done now, do they really help a
user to debug a difficult case? I am not sure, and then I wonder if we
should have that code in upstream. I am open for discussion, though.

> > +MODULE_VERSION("0.1.3");
>=20
> Module version is defined by kernel commit hash. But it's up to you and
> subsystem maintainer to decide.

Please drop it. I also think commit id's (or even kernel versions) are a
more precise description.

Regards,

   Wolfram


--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7GkKAACgkQFA3kzBSg
KbZ4kA/+J19dZhaJMmLz3WgryibpVzJTnhheDeduLgYVUvQcBoHj7dvuMF9+RYNM
R+ClE6BTGWDYBGglNFSSFq/M8TUro7GzIPJw1wzSjLLtxYh13FeFx9FFYX+XS1zO
oKff+p2gC1XM6RjEsIyTz7+/e0AsUKgCM6ENX4re+BbU/6IHvv2zOOaaVn2oEsoO
3jQ/V2yV9U1QsFLd/Ev2SnYT4owBZY/CVz93njaUc9/Hfvz5FawH0SD3/GnWh8+K
3gm7Ry1VoW8oopkXEcquXTBjaLKQPE3/w0cuJHFh4f9PAi1aEYHCfFa6MgC/Z8xg
Fkhwkxj5m226WUa41Lswib5sdQ/ITRLetMkoM3VTLFKj5x2HmluwSV2Jt6tGFReZ
K5fP8h8b4/TjEqVILEctTAfW0pEVT+BF0/cg9MiPPlKjNKXdOollLpu6hnaUdUxb
QYz3ehhDfsD9lKpKFfCTyx1seQ54DwBM/C/w+RAg8ThTWjMHuj2rz872SVC1i+hY
OCqRzUicn60p0SzZW5rL+kAVEKQkWjuosQ9XyoBMASXZnfWjzhLIFde6Yas6SXHV
rTKLx5840wEuTVnNKsQ5XoMN0eadd9H0eu4I/XBXoc5ywX5EISq6df4xKfGC0kx6
VB9hc42qrJ5lmQVOMVQ1bAdFba+mwzLKdCNcC+qHISoNJOctprY=
=dVRn
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--


--===============2534616006455913879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2534616006455913879==--

