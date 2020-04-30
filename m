Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9281BF820
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q60wLzyhwq06KyOuIgI+dt4w0nSKpzUz/Hq6u982mEI=; b=F/tDDO5DP7jtY5G7P8+NRFgj7
	tsjaSpsOZ2BQG1EtJmtVBCIf7jrfgJbIhcWdqKupqfuKmIJe7j5MZUxQDH1waK5pRfczyJmbqjTf+
	N72jIwEqfQIJdXMhRbS/VKXaaCgW4BewOu9HGeVCakg/WCqIq4NIuDcpNP3ig0haq+GwLlGHvws81
	wGLay76wMXVutlwUcGE2Gm/txI5+TKBhNoj7YRrt7y+uv19ZSGHmb3p2TZ6CGUy1EbQCzhymwyAru
	CuOZFWq7O5eOQi4bG3OmJD7nKBM+0aZHP7jhF21PbqGi2n39AkbHOlJGwKr67iEBCBb0ij6aaetDO
	ydJC9rH4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8AE-0005Z1-CZ; Thu, 30 Apr 2020 12:19:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8A6-0005YH-BK; Thu, 30 Apr 2020 12:19:31 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDAE92076D;
 Thu, 30 Apr 2020 12:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588249169;
 bh=N9rKaTsZFrUvyvsuP9lOc4Wzmprx5voNQJlTVM2rGf4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kUAkY5ypXbCmOb1J6dz7spcNrSx8SjCBuT8ha4oxfvY5gTGWEPVdtk14Hpg+O4PBl
 Qj/56KbHndZm/zVKyt3Sn42jlYyvBevEtJJdc2RAZYMcLcdX91zOnVrswvPKexje0u
 4TPMM4s4MnfBnUOCPqX9zSl5uoEUM+0WfU7etRYE=
Date: Thu, 30 Apr 2020 13:19:26 +0100
From: Mark Brown <broonie@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [PATCH v4 02/16] spi: atmel-quadspi: reject DTR ops
Message-ID: <20200430121926.GC4633@sirena.org.uk>
References: <20200424184410.8578-1-p.yadav@ti.com>
 <20200424184410.8578-3-p.yadav@ti.com>
 <20200430113243.GB4633@sirena.org.uk>
 <20200430121737.37dghomlluzqcxxi@ti.com>
MIME-Version: 1.0
In-Reply-To: <20200430121737.37dghomlluzqcxxi@ti.com>
X-Cookie: Sign here without admitting guilt.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_051930_407114_1650FB1F 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7278950358104921929=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7278950358104921929==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nmemrqcdn5VTmUEE"
Content-Disposition: inline


--nmemrqcdn5VTmUEE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 05:47:39PM +0530, Pratyush Yadav wrote:

> Most other controllers either don't specify a supports_op function at=20
> all, in which case spi_mem_default_supports_op() is called, or do their=
=20
> custom logic and then call spi_mem_default_supports_op(). In both those=
=20
> cases, DTR ops would get rejected because of the call to=20
> spi_mem_default_supports_op(). So they do not need to add the check=20
> explicitly there.

> The two exceptions are atmel-quadspi and spi-mtk-nor (which I missed=20
> updating). They don't call the default supports_op, so they need to be=20
> updated to explicitly to reject DTR ops.

OK.

> Earlier versions of this series discovered the DTR capability from=20
> devicetree. In that case, no change would be required at all, but review=
=20
> comments suggested I drop those changes. Instead, the controllers should=
=20
> accept/reject DTR ops in their supports_op hooks.

It definitely shouldn't be in device tree, this is something that the
silicon supports so we should already be able to figure out if we can
use it with just the compatible.

--nmemrqcdn5VTmUEE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6qwk0ACgkQJNaLcl1U
h9CGPQf/RnFFO+2GEO20wzuUOjiIgXpgOfBnSKgMTXOWAmba2YafGkKYwsymVpGY
zt5Q9vkcx9dsgudhY892WkRo/l9+xJOkSYbp38ld0QR+YNfXbPUPeuvhK2F39YTJ
YjMbZw8hbYyMqF+yXbJXJrj7PGbu9ISesfBgC73i3ywZC8S9epUKQZp7HssURy/M
GJEMzoM40Vam/V48VAPrMHa0Dut9Bum74W9jzW5Fpnxz00AkY47aeMzGSOD+IyHD
zP97bFTE4NUym4FES9c9efA61FuUJxOK8YRN5Hmfn22BwxxQ6ZT1B+7jRv+Fj32J
GfvAqmI+mYhLpW/bHI7PCh/eP/eO0g==
=dS3u
-----END PGP SIGNATURE-----

--nmemrqcdn5VTmUEE--


--===============7278950358104921929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7278950358104921929==--

