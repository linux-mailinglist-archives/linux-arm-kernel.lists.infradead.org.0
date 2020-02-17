Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD7216156A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sKPz533PLwnRGOOJ3KTY59Qw+d7eRdWrWsgDyn7h5Go=; b=kkU/cgVGrQPltDmC29eDDxA2m
	4ZSSUiDuB/SnYnYBZ+fnzHcco4xigRukQQtTSRkDQilp79UL1fi6IDW8LzLMR9K4/8dd0ps2YdHr1
	GGZbB3IuyOPUa+JjmTNsgO+UsT9qGdJXRem45JLk0W/A1j8lSPejuNGDOlRLG4/WREadFp3kuVGen
	+yQ3gq8kXUFKxFW+Ak0gHome8yYW7sWJf2oKPLcJZJVcdfGWJ8YOeexUaGVQdT0909ZuYFIbwNn9D
	0TcQS5XfFYjhC+NUgCIbA9x1K+mnwqQ9fq2gHfCHoEd/bWsJrsSBX1vKlfcmpwYDxd0/NHZBQ0g/B
	PEw3EkF/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hug-00088S-AW; Mon, 17 Feb 2020 15:02:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3huW-000886-Eq
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:02:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CD3730E;
 Mon, 17 Feb 2020 07:02:10 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FF8C3F703;
 Mon, 17 Feb 2020 07:02:09 -0800 (PST)
Date: Mon, 17 Feb 2020 15:02:08 +0000
From: Mark Brown <broonie@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 05/34] ASoC: sun8i-codec: Remove incorrect
 SND_SOC_DAIFMT_DSP_B
Message-ID: <20200217150208.GG9304@sirena.org.uk>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-6-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200217064250.15516-6-samuel@sholland.org>
X-Cookie: There was a phone call for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_070212_541827_96DC1605 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@free-electrons.com>,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5091413271364732259=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5091413271364732259==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xjyYRNSh/RebjC6o"
Content-Disposition: inline


--xjyYRNSh/RebjC6o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 17, 2020 at 12:42:21AM -0600, Samuel Holland wrote:
> DSP_A and DSP_B are not interchangeable. The timing used by the codec in
> DSP mode is consistent with DSP_A. This is verified with an EG25-G modem
> connected to AIF2, as well as by comparing with the BSP driver.
>=20
> Remove the DSP_B option, as it is not supported by the hardware.
>=20
> Cc: stable@kernel.org
> Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")

This can only break things for existing systems using stable, if they
haven't noticed a problem with DSP B they'll certainly notice failing to
set up the DAI at all without it.

--xjyYRNSh/RebjC6o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5Kqu8ACgkQJNaLcl1U
h9BrrQf8Cpji+kb3X7isTpniyau/SbCQwZlUb8Csww/ottxImXAngZtFxVJ223Tb
sRxaUEFcUFbKuAx1BOMaW70RQ6qQskiNlrtvd2GxnKYNpGcSk6TsMHY185iiTu2s
EeozYIThsqRXhDCrv0hRArGLf5kBFM1OaSm9idhJJgfY8gjO+aBsPJqz8mp0gxWN
3jGVVLz7aNTaOxwTl6CcTvMm+7xj4f1tsYTkC7jYTysRVrf6rXkV9KBL7euDjMrg
JTa3RdwK0VAKZus8KiAecYZfI5K+F8Kj8Stk4R9GtMpIbVDR4Sxy5giVnrY+XVoF
hq2TJ94ZfIBzhexsmd+tDPsvUDHHtQ==
=eNti
-----END PGP SIGNATURE-----

--xjyYRNSh/RebjC6o--


--===============5091413271364732259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5091413271364732259==--

