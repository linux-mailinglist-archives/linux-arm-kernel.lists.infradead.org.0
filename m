Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3411D17ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jruomH9AI39jHzZr3k3oX/7+I1L3VarWLIxAPKbdIbg=; b=tNZUoZz3EdjBaBaT3X61wjMPt
	kFdAUnu76Qfgb3AXk02wjj8vg3GsazvBCXfcecPIWOPo6FWMUJpMJYF2JiAICRjrP2n8SYZI9o+nC
	ph7cICthtmTB6B0X1DAwI8eWVMAIbcVpqe7ujnBTL/wYJjmEG9SVKS9T3oa2oqW2LrfkleRJNQgrI
	QFctafhutVdoQCcsuGQVZWlZ/Wv+uiJODqU3zNnm+/OHJ/KdHrRFOCLmNhj8J8gFn8nyVtSxXp653
	FljqBfSR0eZyqjyxLD5jxKjilvizrX/wPfm/gKR40QGVjHO637SeQyXHRuxScV6hY23jKa4TBeEd9
	Ayer0tM9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYskA-0008LD-VH; Wed, 13 May 2020 14:52:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsk4-0008Ke-56
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:52:17 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5085A20EDD;
 Wed, 13 May 2020 14:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589381535;
 bh=aDe9gxy5ZWcHcgv7aMsGJcaCT0P3OBw3zC83hBcy6Kk=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=dxGuUP2TAxO7KDXb4DgBScMZ5J9ZoEEwhBCtSiE0pL0pIdoOBUVniNfEdUClhnCPG
 ljhhF+oMU5KVY5FAgaeQmnvangU0JZoSOdBJwYLw6CYyD6LVGzFwDCEsznrVsV/7rs
 KMmVPltXOHWS2HI9yKebyXtclQuwEWX6LOIKOfCY=
Date: Wed, 13 May 2020 15:52:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 04/10] dt-bindings: spi: Add bindings for spi-dw-mchp
Message-ID: <20200513145213.GJ4803@sirena.org.uk>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-5-lars.povlsen@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200513140031.25633-5-lars.povlsen@microchip.com>
X-Cookie: Long life is in store for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_075216_213631_5C4D0885 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org, Serge Semin <fancer.lancer@gmail.com>,
 linux-spi@vger.kernel.org, Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Wan Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0131368074381068724=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0131368074381068724==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VSaCG/zfRnOiPJtU"
Content-Disposition: inline


--VSaCG/zfRnOiPJtU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 13, 2020 at 04:00:25PM +0200, Lars Povlsen wrote:
> This add DT bindings for the Microsemi/Microchip SPI controller used
> in various SoC's. It describes the "mscc,ocelot-spi" and
> "mscc,jaguar2-spi" bindings.

> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  .../bindings/spi/mscc,ocelot-spi.yaml         | 60 +++++++++++++++++++
>  .../bindings/spi/snps,dw-apb-ssi.txt          |  7 +--

That's not what this change does.  It is removing the existing binding
for Ocelot and Jaguar2 from the free format binding documentation and
adds some entirely separate YAML bindings for them.  This conflicts with
competing YAML conversions that both Serge Semin and Wan Ahmad Zainie
(CCed) have in flight at the minute.  It also doesn't strike me as a
good idea to fork the bindings, what's the motivation for doing that?

--VSaCG/zfRnOiPJtU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl68CZwACgkQJNaLcl1U
h9BwYgf8DfOs//tQj8MVWxQY15K2npvyImynKTYW4jCzU4Yy0Wsi+a5frEVieYKG
slqASiY3+5zN99GO0B7nrtnSa3kgU+bNS3t3MUwC5FidaARwSpIN2UM8UBFOca2j
gV+XXF1ZwsKmOsnP0ymFA9ESsEFgXDliL5nBDCS9KpIMRqI3fnIerhnxA5w68TKn
EvYdHKxaXtqlhrwdjvdxEdYAyUI8ewoOfotxbLLmaiRy0bEH0hSalhECvBiFryQb
rWbBpAP7G40nDxIeM9ZX7wkVPI9XcdMF2DCFBMandffNsPGDwIaee/5OAjYAKcxu
tWgAyeG0ckXRi7/IQMvpDa+1HEjQMg==
=rceh
-----END PGP SIGNATURE-----

--VSaCG/zfRnOiPJtU--


--===============0131368074381068724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0131368074381068724==--

