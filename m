Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F6215A8B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lgJo2wMll/m+a1jf0q9Y29Kkbidpk8bHr9hO1qIxinI=; b=ltBgMbvJrw7qE0uqkdJL0MieG
	T2lRbDuFQhzXeZk+JfMnqZPKaym+BZnZiu+jbXIVvNDMnyUJaROerljLdn17oknb8X6azBKt/Lkie
	5gb7tSBRTLLOqk4u4U0crxz0V96Bc8VcfUV9X9pO0hURWBXf9o+C/SjDBrxg29UbKC0Jb+bvfy0FZ
	1lb5NIS8I6iX/nQbV+Z6vPkyprHpgk1owDRfL685Lyy38nxGGVK1jqNDRikOqODyClhSFf4jsACek
	JB40aPkTgsKgdlpj9kXFcvkJjaBqsY+UK/LK7k98JpOHJ4MXAfbaVHuJhJNrFf3wGe4C+WdkF2HwC
	F75AXYisQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ql4-0001sq-SH; Wed, 12 Feb 2020 12:04:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qkN-0001Mc-Uj
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:04:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D12930E;
 Wed, 12 Feb 2020 04:04:03 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A209D3F6CF;
 Wed, 12 Feb 2020 04:04:02 -0800 (PST)
Date: Wed, 12 Feb 2020 12:04:01 +0000
From: Mark Brown <broonie@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V2 3/5] spi: spi-nxp-fspi: Enable the Octal Mode in MCR0
Message-ID: <20200212120401.GE4028@sirena.org.uk>
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-3-aford173@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200202125950.1825013-3-aford173@gmail.com>
X-Cookie: Violence is molding.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_040404_044908_75500225 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ashish Kumar <ashish.kumar@nxp.com>, linux-spi@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3996655998897377457=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3996655998897377457==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HeFlAV5LIbMFYYuh"
Content-Disposition: inline


--HeFlAV5LIbMFYYuh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 02, 2020 at 06:59:48AM -0600, Adam Ford wrote:
> From: Han Xu <han.xu@nxp.com>
>=20
> Apply patch from NXP upstream repo to
> Enable the octal combination mode in MCR0

Why?

--HeFlAV5LIbMFYYuh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5D6bAACgkQJNaLcl1U
h9CgIwf/ezMdwaoI7eWJb0kxbrsXR4Iu1+k+a35+9ByMGx1XZCagF3G3bVKNnLpf
0SaPpCaTClK59wSe0U2dOhAl2RPWPALmBIbtkNZBBQ1PNCi9OLoE73wdIvYQG7sD
aODE6m2N3Cx35vwzIPiZi3q69DUmemTm06FUhLA6rJCS8p5tbb2fPl+uA0RHiesY
zI/4Zzc+0p0c4I0OA18OeqJ7bOXkxnI1rlsO/rKXl678EHczD/dcM2nDO9dgt2sW
G2dKA26ZoqVHwhy3RLiumLJBUztzC0+ct3UN5pgwcb8xfvm7fQPIalWj/M+v1Vri
L0bPRl9ffdKp87t3H8yGyH2nzS50Iw==
=rjjn
-----END PGP SIGNATURE-----

--HeFlAV5LIbMFYYuh--


--===============3996655998897377457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3996655998897377457==--

