Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1141AD62
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3zSicDYvw1UdLgegYHmLWrEKsySkWKNIVnHV3Y6z7Eo=; b=Y9vAkYCX73HiVOcZ8FWLlvCkr
	+EI9Vn2dhH4aVbbLA4wx/5BeI2v4Q6GAf8nadYvWvXDJ4Wr5pqy7ggOnBzIex1QleAR2YxVoRDygl
	l9XKaSay1z3a+1+/NiAyibXn557h0CQ0GZO8DMUQ4AEUKdMLhVBUEtdfW12UfZs36w9xGxiWZ2e/k
	LB6vEugz0QY0FT0jPvOuzPedGHHlr4qWo9oBReo4wvou+fN4If5FLmxXRL5QSxg6DKeKGfzWVOs9n
	zGFDoSRey4GkMgYtX4HQn1p3Ws625ITgG+s+dq0bmd76wKMYqsEzJsCd42HeyDjcA/gIwFQrhoIHF
	zAGCeikvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPrvn-0000yr-Qf; Sun, 12 May 2019 17:06:35 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPrv2-0008QW-Rb
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9HMs6CFMH8EU8RkzgWGBu0MKVwuwgXnq0J4Rp8C3PBM=; b=kVo2FL0u92pisbUZ8qm0jj+af
 upIAewvYpAZOIs/oaH3emVc/79v5kuI85PG0MY/aVGoH1H5P/7qYMngw3I0DXCu+z9tA6PeG3vsDJ
 VAMcxzyYfxEdLK2QtkJp5Ar37wdVSg/uLZF7sTVaGcGOQtay0AqUCCdfZwbhuAldLK9r0=;
Received: from [81.145.206.43] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hPruu-00044d-8y; Sun, 12 May 2019 17:05:40 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id DE14D440066; Sun, 12 May 2019 10:16:18 +0100 (BST)
Date: Sun, 12 May 2019 18:16:18 +0900
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v3 06/14] spi: imx: fix ERR009165
Message-ID: <20190512091618.GP21483@sirena.org.uk>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
 <1557249513-4903-7-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1557249513-4903-7-git-send-email-yibin.gong@nxp.com>
X-Cookie: HOST SYSTEM RESPONDING, PROBABLY UP...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_100549_248103_370FA0F2 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============8171012033906009974=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8171012033906009974==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h9WqFG8zn/Mwlkpe"
Content-Disposition: inline


--h9WqFG8zn/Mwlkpe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 07, 2019 at 09:16:13AM +0000, Robin Gong wrote:
> Change to XCH  mode even in dma mode, please refer to the below
> errata:
> https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf

Acked-by: Mark Brown <broonie@kernel.org>

--h9WqFG8zn/Mwlkpe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzX5GIACgkQJNaLcl1U
h9Ax/Qf9F9Mm2dXsW6BETnXLb+haskxu5BW0ouwrc02+EmnMZCpk+eK2JWSx/BVA
hHEAVO5EpQ0txbRvSYWbDxfOheX1M6BYaA2ROjxHirVL+HT52VRa+dYja6OcK/LY
PDXYdW6hHB3YqCBFcV+/oXF94jjke9Rh+pnUIs5YEdRnd5MoZiYSCzvJKVcsDaHl
FAzP/LhX8HAupSbLbGojE7NKqKj2SuOeaKsD10zBEdo0eVFzCCsKwkNvmTlweDgy
VXujenPsoeAsM9VNu5En2yvrMtAN+7oe2mo5HZvOvdF4deOUS4HqR87fFEzT4Zad
IWZBFcTVrdqXuUinn5daxLAhu/5Rjg==
=9X9u
-----END PGP SIGNATURE-----

--h9WqFG8zn/Mwlkpe--


--===============8171012033906009974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8171012033906009974==--

