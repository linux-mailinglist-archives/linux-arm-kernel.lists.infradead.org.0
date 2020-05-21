Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DA71DD32E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 18:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uuipLTKLlsp84RHOHfCtCPwHHLnWjEAysQqijDTJzqc=; b=ZO6Z6nym+bCyEy5MI/Z6RUHPZ
	QYDCaSWB+lIWptDaVARU4SG/rRA4jho49bu8bvvlPLNs9R3BjMpAf0kDlF1W20XfHSYX4U9th+7b/
	OsuJYk5NxILEu0NKtC9fxf+VkOabjVQsIUT83twBnxa8KZ9Xl8f4p5VymTkOgI8YxBvOZpiiXD41g
	xXnBn2dn//Fp6NXGw4U0wkIS8R1MOXfZL5boJlMoo/Ii8pI3DfE9QzsSXtNOv8CxFJlzxCAX/y8CZ
	Ne6qhZ7YrAzqX/f0RKyCHOjp2PeA5X6v7jGnsryd2mYMp2CH7xVSFX81XZn8Vg0dfkKLrkXSVvoMk
	xAkEOg+cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jboF1-00030q-5Q; Thu, 21 May 2020 16:40:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jboEi-0002lo-PX; Thu, 21 May 2020 16:40:01 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3B5D2072C;
 Thu, 21 May 2020 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590079200;
 bh=AfI9fmUuFN9xXeTYe0PWSZoP2kgFN0oEZnj47UWorQk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PxuSU3uZYzpRLRdfe6Rz7HLoMY3bYg9op1wwP4N0PdBGZPEFoO/2RdlRUJkMufXCN
 k+uSn09pgwURuO7SDRb3U6qQ8aMF1Yb9d5sweGPvl86oLvc98dLElPyf6p82Wjnwr/
 do5Lo8UULK6bwoTOnwcV2rAUBlsuroCTbYwvqnMk=
Date: Thu, 21 May 2020 17:39:57 +0100
From: Mark Brown <broonie@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [PATCH v6 00/19] mtd: spi-nor: add xSPI Octal DTR support
Message-ID: <20200521163957.GG4770@sirena.org.uk>
References: <20200520163053.24357-1-p.yadav@ti.com>
MIME-Version: 1.0
In-Reply-To: <20200520163053.24357-1-p.yadav@ti.com>
X-Cookie: Keep your laws off my body!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_094000_852959_5B0C03B2 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6823539095071756863=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6823539095071756863==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TdkiTnkLhLQllcMS"
Content-Disposition: inline


--TdkiTnkLhLQllcMS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 20, 2020 at 10:00:34PM +0530, Pratyush Yadav wrote:
> Hi,
>=20
> This series adds support for octal DTR flashes in the spi-nor framework,
> and then adds hooks for the Cypress Semper and Mircom Xcella flashes to
> allow running them in octal DTR mode. This series assumes that the flash
> is handed to the kernel in Legacy SPI mode.

Are people happy with the SPI bits of this from a MTD point of view?  I
don't have any concerns and could apply them on a branch even if more
revisions are needed for the MTD side.

--TdkiTnkLhLQllcMS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7Grt0ACgkQJNaLcl1U
h9D1OQgAhiDwTKnfU5U/brtlpuvixDO+Q0C2aTYod9BlC6/J0LiO/hDJeEvk37Pr
hAyYy3T36TEfkovmaLsQTTthWIkmvU+GhZhOmBUpGTPsINXBUDCM5oIV7D8k7axY
okkAhFALSCWJk9KSkaYyQAKXH1JdAAh+3kodj4zU+jGaa9NOpsjJmIapIQ+9/iTn
48Rn8Du87lLkYGQkA13k7sdi4sghM/8Nx3fvjPgEG9K65J+DE2nds2v5mrD0HPDx
G+4+54Z0N9/QT4ZVebUEb4fMuBRlB0tpMnaQhd/ll/VJ7XNppMBtKhlMeV7TUF/+
z9wWlZEKa3CYCCbQdluJq1GlHlhAIg==
=fkrh
-----END PGP SIGNATURE-----

--TdkiTnkLhLQllcMS--


--===============6823539095071756863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6823539095071756863==--

