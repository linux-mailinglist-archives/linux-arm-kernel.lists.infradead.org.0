Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F4914A93D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 18:48:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VvowKxfUripqipsJ1ImVG6BaEgnNEeU85nuArf/hl1o=; b=FQQ9fhGoLBgzLy/X5BPVDpJH/
	jQqavuaqT5wIi/5eb6MO1XogkvaRs2oyFyJqTYpJpd9iUdkeX+4Qyt4FRiBTHlrD2wcy87Lvs3u2P
	D2Flzb4vm1hFChoMAKnTBJUThBfAD+xTLh2ECJLgXvxeQyIQwtC4641rFQzF7UwufIwMi2yVmSa+6
	9vuEa0ScyceHGNZB3q1PZP87ipmBBtotyMZlaxdjw/DtoWGdA+NNXwycPvpNwA9utON7uDU6wbzyn
	xMXeoakGbsaxkislDs8tE5fKYwi60t8UTjjg5Um+ewkMveiWw2AnJ8qK37TpF0iISDhu5rPt0R8OP
	f70ENyshQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw8UP-0005qn-3U; Mon, 27 Jan 2020 17:47:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw8UD-0005q0-Fa
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 17:47:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DBF0231B;
 Mon, 27 Jan 2020 09:47:38 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6462C3F67D;
 Mon, 27 Jan 2020 09:47:37 -0800 (PST)
Date: Mon, 27 Jan 2020 17:47:36 +0000
From: Mark Brown <broonie@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 1/5] spi: fspi: enable fspi on imx8qxp and imx8mm
Message-ID: <20200127174736.GE3763@sirena.org.uk>
References: <20200126140913.2139260-1-aford173@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200126140913.2139260-1-aford173@gmail.com>
X-Cookie: Hangover, n.:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_094745_564488_426B526D 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ashish Kumar <ashish.kumar@nxp.com>, linux-spi@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, han.xu@nxp.com,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1591460814494772690=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1591460814494772690==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="47eKBCiAZYFK5l32"
Content-Disposition: inline


--47eKBCiAZYFK5l32
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 26, 2020 at 08:09:08AM -0600, Adam Ford wrote:
> From: Han Xu <han.xu@nxp.com>
>=20
> Pull in this patch from NXP's upstream repo to
> enable fspi on imx8qxp and imx8mm
>=20
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Signed-off-by: Han Xu <han.xu@nxp.com>

If you're sending a patch from someone else your signoff is supposed to
go after theirs to show the chain of people who forwarded the patch.

--47eKBCiAZYFK5l32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4vIjcACgkQJNaLcl1U
h9A2iAf9E/LfcLBnilsSxkzczDqr1cpeIKWq/wymH+9z0UeY97TMIJB53KX8wO/U
MqeJv4vs1mbnFr9nTYm5Fwgbw+HzCpW/bzFRGQYZZIMc0ANudhUdpLMwUirsnGOo
YU/t5uPyi1TRJlh53nGXj9qFN5HhDBNbgT1wmGY6EzsqlSW0f4foJCR1qxoneyX7
1arf2u6JnQIe10iFkoOQAoSPs4iuoZ6P3MtUZolBL86j31R9GnC0IlWaZJJQrcbO
SCcgqGywY9mjN4aGc89RsKyMMPSIXoW1CCJ9NQC+Widz6IM6YIGI0OobQDKP+hSl
/88QWVJtZljwIHJ1jCETbEpXoJns+g==
=aRZ3
-----END PGP SIGNATURE-----

--47eKBCiAZYFK5l32--


--===============1591460814494772690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1591460814494772690==--

