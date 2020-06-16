Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFAB1FBC65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=btZ/lE0Q6UP6PGwPjeLGnw4jzSjrMNG8qG/9wwINkO0=; b=ezEFkXIG6esssx2kEk3ydcbBF
	HIAjFiB0J9Aro5OtAHkoI1HTdJ0prhHZbLvPKye7CjDZhAbGfvqczfKOWV1rf22P2c0BmHPSuJ42n
	fJC9DeA1vPgAyX2/zje8vbbLYVIjfT1VpB8A9gxAOVxBetzhPH7b69KSduQ7R22uvP8bslqpjdctG
	H67p5YriQ93M86XtvmObHAQDZ+OcVULMcZ6KE/LwT/yo2CmFODBjNqPIn8fJXNSnGyh+9ebIRDord
	aZ4Q4oKi/GHxbEWgDjuRl7UYEKTsRN+lUPusKPOumMZXM1iqeqLyVCTKWe2M9tXwZ5jVtB/+RDMne
	jqrK3GjDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlF3j-0001QS-Te; Tue, 16 Jun 2020 17:07:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlF3X-0001Pz-Ar
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:07:28 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 455C020B1F;
 Tue, 16 Jun 2020 17:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592327246;
 bh=t0dF5gqUwXzjgY8Hq7zWYu2xi/32wRxgBLr94n6++N4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UeWaa3CMea0W+DXMha2w5q/BvYwDS0MFzufsW4NHfPyCD7SgYxsiu7t8o+z8DdhRS
 WhshWRASYNuLR2pCz/NbsJx/UwnVRMjAWIxwbEAQlfd7UdgmIVmls5jW9PrAlzlfUx
 EU+TS2HtHhZzuuQgAt09iaQSRE4q+w+e85TY1H0Q=
Date: Tue, 16 Jun 2020 18:07:24 +0100
From: Mark Brown <broonie@kernel.org>
To: =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v3 2/4] spi: bcm63xx-spi: allow building for BMIPS
Message-ID: <20200616170724.GT4447@sirena.org.uk>
References: <20200616070223.3401282-1-noltari@gmail.com>
 <20200616070223.3401282-3-noltari@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200616070223.3401282-3-noltari@gmail.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_100727_403564_06CB3DF3 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 p.zabel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1509514825367403803=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1509514825367403803==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zRW3mUn8fSI0is1a"
Content-Disposition: inline


--zRW3mUn8fSI0is1a
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 16, 2020 at 09:02:21AM +0200, =C1lvaro Fern=E1ndez Rojas wrote:
> bcm63xx-spi controller is present on several BMIPS SoCs (BCM6358, BCM6362,
> BCM6368 and BCM63268).

Please do not submit new versions of already applied patches, please
submit incremental updates to the existing code.  Modifying existing
commits creates problems for other users building on top of those
commits so it's best practice to only change pubished git commits if
absolutely essential.

--zRW3mUn8fSI0is1a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7o/EsACgkQJNaLcl1U
h9DsuAf+JzDVfdxvzclLEL9j69hB/V/w7Fom3MnMJuSBdrOBXlSvGR8yENQthQ5E
t2HDh+xMBncUP4yab1SLVL7YFqAe0CIf+B5F+dbwTHqWmzNlDW7pnSldJtxb5XlG
T4GxSiK5HksPFQm5AAiUxiGJsmNjXfYvDshqyfyhqlnkMzEhz/GMOPq6rdEOa3tE
b9HnmAZsukGNPPuDf2Q/WORbGMsTr0X/fmz0oHFAsbSCjMdl/VDZuylKWdWYq+fo
xQJYrR5KHfcfZBvj4GXM47Lqx5CFfioELYew/+BeO0/bmPhmrVERjCPXxj8W+rti
HRGT9h8idQyfwy1Vo12Pjbus5bvFkg==
=ojte
-----END PGP SIGNATURE-----

--zRW3mUn8fSI0is1a--


--===============1509514825367403803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1509514825367403803==--

