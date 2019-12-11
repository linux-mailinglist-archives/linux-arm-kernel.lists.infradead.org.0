Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2D311A97B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 12:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FxO0LK8ZbN06BD/RiLqEw217qvmaK7S2yL1luvTF5mg=; b=gFy3KAOiy6bSEpsc5AJTNx9Pt
	GHkdPBXN7XEuSst1gYrYH9obt0uat5SK80ls/GKyrtmimz5j/IbOIBQrLRHZjsCmemjB7SyzKkqVh
	guFIz4zG2gMhDFdv7cEsBbHHFS/qlYNSjeAnBPxeGIAJn3hSxfnWseqrQavdF53w5eg0xBsdCLfJE
	g0TGq0cgB96uJD5aYOf9VVxjnnkSxG+cZXwglIKoWipyEOvN3nhJh+OuNhzxm3+yqikDKMhLDV3mI
	a3VqijRo3MXXOsMSvLbEtW43G1xtI2u6+ag3MW9mbelBvTo/OpRVKDOjRnP75PVMtWzTyqGAdTizF
	Qp9vpXv3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezjk-0006Tz-IC; Wed, 11 Dec 2019 11:00:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieziy-0005ZX-Sz
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 11:00:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 075D21FB;
 Wed, 11 Dec 2019 03:00:08 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B8D53F6CF;
 Wed, 11 Dec 2019 03:00:07 -0800 (PST)
Date: Wed, 11 Dec 2019 11:00:05 +0000
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.4 197/350] ASoC: SOF: imx: fix reverse
 CONFIG_SND_SOC_SOF_OF dependency
Message-ID: <20191211110005.GC3870@sirena.org.uk>
References: <20191210210735.9077-1-sashal@kernel.org>
 <20191210210735.9077-158-sashal@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191210210735.9077-158-sashal@kernel.org>
X-Cookie: NOBODY EXPECTS THE SPANISH INQUISITION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_030009_026913_694585D2 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8919867548498816277=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8919867548498816277==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4jXrM3lyYWu4nBt5"
Content-Disposition: inline


--4jXrM3lyYWu4nBt5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 10, 2019 at 04:05:02PM -0500, Sasha Levin wrote:
> From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
>=20
> [ Upstream commit f9ad75468453b019b92c5296e6a04bf7c37f49e4 ]
>=20
> updated solution to the problem reported with randconfig:
>=20
> CONFIG_SND_SOC_SOF_IMX depends on CONFIG_SND_SOC_SOF, but is in
> turn referenced by the sof-of-dev driver. This creates a reverse
> dependency that manifests in a link error when CONFIG_SND_SOC_SOF_OF
> is built-in but CONFIG_SND_SOC_SOF_IMX=3Dm:

Are you sure this doesn't depend on any other Kconfig changes?

--4jXrM3lyYWu4nBt5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3wzDQACgkQJNaLcl1U
h9DlBgf/e35F0BWGMvhT5FNlVpGj/p8IkGszXFooKQx4BsGuvOs6c+gXEwfuEPoR
7bZ56PB4XPlg7EF84n9F+kj+tkim0Ra+nK1cizh6S40bWn6aL2K181WhXcJx2ECu
2eF8SEbahQEAHrabJyjQ7Mhzo+GWe3Clt9t+GGZy3ZMfS3gKVR7An7P/T8DzrPx1
yLyUCKMXuXKIodZTic06E2ZEZYndjaEBNQfR2Dvhm2tNn1pRv7MG0IypgboGu2XH
NAOHagDVS35dY7ODpkP4fVY15WFK7nIBAUrYTaVt2cSpoeKe+uxBJ4Asfh/YhGdF
L33+OFWUVb7aKiWfIgqyLv1CHov2gw==
=l1W0
-----END PGP SIGNATURE-----

--4jXrM3lyYWu4nBt5--


--===============8919867548498816277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8919867548498816277==--

