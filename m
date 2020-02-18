Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FC416268B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DxZe4T33odpr80HzfmczHIfaq00a8QPzuDTti8Q+VYg=; b=jnddk+eLLXO4Hv0KjObyDYskM
	HS4t1FvPivz3RUS7vuoCpuFDRHZCjF6iL0gHFmPeXiY6BrZtDaC+OoO3dESAX+vAvdjd4APaIPoQj
	hdcOCLQy4fZMG5JaJ9gtS6w0xjUVd/U0j+blLZKH+WKDAjx7U9SY26vNjnhyFKDiCyNXIYvj8OogR
	U2nj3ekxI1NpK3GKKRwKAYuqKu7qsEmLEcJsGFEGNjieM0tdkqeTEU8GKRFlxT12HSAqKC9+9UGiH
	pPcTY2OvycBUFulZA2kY1ErqR2c7vs4qVtUNpxa7GfCYNZYWI2edjEKOmXDxDPUbR4SB9nKQjcxvv
	bbSU7ZivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42Q5-0005wm-GY; Tue, 18 Feb 2020 12:56:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42Pw-0005wB-Kf; Tue, 18 Feb 2020 12:56:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 316511FB;
 Tue, 18 Feb 2020 04:55:59 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A616F3F703;
 Tue, 18 Feb 2020 04:55:58 -0800 (PST)
Date: Tue, 18 Feb 2020 12:55:57 +0000
From: Mark Brown <broonie@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH 0/2] rewrite mtk-quadspi spi-nor driver with spi-mem
Message-ID: <20200218125557.GD4232@sirena.org.uk>
References: <20200215065826.739102-1-gch981213@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200215065826.739102-1-gch981213@gmail.com>
X-Cookie: No alcohol, dogs or horses.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_045600_723353_7DF0977D 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8036211121416971129=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8036211121416971129==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/3yNEOqWowh/8j+e"
Content-Disposition: inline


--/3yNEOqWowh/8j+e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 15, 2020 at 02:58:24PM +0800, Chuanhong Guo wrote:

> To keep patchset small for easier reviewing, there will be 3 patchsets
> including this one.
> 1. add the new driver, which is this patchset.
> 2. update existing dts for the new driver:
>    spi-max-frequency is missing in current mtk-quadspi binding. Old
>    driver parses child node manually so it doesn't need this, but
>    new spi-mem driver is probed via spi subsystem which requires the
>    presence of spi-max-frequency. Since this doesn't break old driver
>    support, I'll send this separately as a standalone patch.

This is an ABI break so you shouldn't be doing this, if the existing
binding works it should continue to work.

> 3. removing the old driver. I'll create this commit after 1 and 2 are
>    applied to avoid possible rebasing due to any changes in the old
>    driver.

This isn't great as it means we have a period with two drivers for the
same thing in tree which is at best going to be confusing.  There's no
advantage to splitting this out.

--/3yNEOqWowh/8j+e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5L3twACgkQJNaLcl1U
h9CQ0Af/bCSGtGQh9O/SezBLGjZ59DSJjcG/kJ2CB/e5Ub3WkveUKq3prcIpbWRZ
j7LZ1+3P0+IQJC2b4wWFTf6xOOoucP4Qb1qVBc1HyBt9SrqrrZ3SdEXzhbsYJ1Zq
tLGrQ37qdRhfSpspLm1N3FN+EBZuVW3tYPclxUjkHTE50mu0wmMAk4OXtrbyBKp7
H046klgqVPBXzTlP8mFTtp0/E/hYhrBUTqcEcUBTAw3nCMBMiVxUjdxRx+tB41CR
TBBlM9+VwbxRbrzZC9IL5S+l+Bi9EW2axbZ2zFG7vOTc+AoCIT/PxwyZBshr8Xoh
A7hM2b6D+BSbpRcPwjpZLi3E11d0ug==
=CyQ7
-----END PGP SIGNATURE-----

--/3yNEOqWowh/8j+e--


--===============8036211121416971129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8036211121416971129==--

