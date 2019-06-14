Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFF646784
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 20:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nr8V+NSuKF7qEYMhovKaFdD2QyfWh7YtFTJpGo5H8qk=; b=Eus3Mr4lSdtuydD+vkhmVvX6o
	bkffPpL7JZtAIQ0X2zE3xzkQJhCmF1ewOB1t/Oe8W+/RPotYUEp93G9ttkTUDhAGL/7qxcmFPSvTw
	DKk68DSRU7ohryuncNm4z1didpwATr7aD6EwW0PDSKvZw+2aEER12JEdGjUAZLzYgpcwTL0wMbVYC
	I+QStFTDKPUOX2G8na1oEp8wqDTLKhRpoKLqFlJi5Jx9nrmdMbl+G37n6ObNsqv8qBqQZ7EQuMV82
	sd8Vn752joS0sxQCjZu8gZcdvbvqXmKH4cOrQt35ahQxCPODbeVdY5KBSzh37Mak2hUzHhfplxj5I
	f+6VugFBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqsS-000570-F8; Fri, 14 Jun 2019 18:24:40 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqsI-00056d-3J; Fri, 14 Jun 2019 18:24:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TC1DIbwZfF3TMyvcbViFGCwFe/sxI0poVP7S8t8eBkE=; b=L6PAY7gXR8eXr6P33xSeUZj+U
 yEIp9AKwS4nTSsPfdUPjwRMP48ZS7U/8yvWHno2h4fIzlKQ9aKM19v210bkKioSACeA45EYDl4+D5
 xIx3jMGWULyRK88mfuEkTVuSrFOIYGx5X60j6jbLHlAu4EnbdQzheeuxK6QcxUXRMGdDg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hbqsA-0000FE-Fg; Fri, 14 Jun 2019 18:24:22 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id CA8F3440046; Fri, 14 Jun 2019 19:24:21 +0100 (BST)
Date: Fri, 14 Jun 2019 19:24:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Tony Xie <tony.xie@rock-chips.com>
Subject: Re: [PATCH v9 3/6] regulator: rk808: add RK809 and RK817 support.
Message-ID: <20190614182421.GI5316@sirena.org.uk>
References: <20190614031425.15741-1-tony.xie@rock-chips.com>
 <20190614031425.15741-4-tony.xie@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20190614031425.15741-4-tony.xie@rock-chips.com>
X-Cookie: Editing is a rewording activity.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_112430_287326_4B33A21C 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 huangtao@rock-chips.com, heiko@sntech.de, devicetree@vger.kernel.org,
 sboyd@kernel.org, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 xsf@rock-chips.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 chenjh@rock-chips.com, lee.jones@linaro.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4936034655781031333=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4936034655781031333==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="je2i5r69C8+2chMc"
Content-Disposition: inline


--je2i5r69C8+2chMc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 13, 2019 at 11:14:22PM -0400, Tony Xie wrote:
>     Add support for the rk809 and rk817 regulator driver.
>     Their specifications are as follows=EF=BC=9A
>     1. The RK809 and RK809 consist of 5 DCDCs, 9 LDOs
>        and have the same registers for these components except dcdc5.
>     2. The dcdc5 is a boost dcdc for RK817 and is a buck for RK809.
>     3. The RK817 has one switch but The Rk809 has two.
>=20
>     The output voltages are configurable and are meant to supply power
>     to the main processor and other components.

Acked-by: Mark Brown <broonie@kernel.org>

--je2i5r69C8+2chMc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0D5lQACgkQJNaLcl1U
h9Cg3gf+PI+oNUSN6SISGiEj0NLwGYqM6Zuaotd0ItoKH0gSxFrTbuNhIGdsI/mN
fjDHx3QiGEsRBgKLaae3GP35+L2B7d4sUs7+ZpVC0DrldSFUQ3G6xbsez1CKm5wB
o3u5dBWZSKGHHxjJV/VH27wu6BonLndiAbFuwA/vjB2tTr7003bRMYeVDoI3uPik
o7vU+ZwFhCGUuh4TmPusYRWepB5cyGCuo9j/IX+HfWnLeVvcOlz0qtIVcr0DARzF
ZPAxMHqtm2lvyldzgU456YAA1wTVihRwRvhSyz3hAKgZLzlngjGxPrrgszbJJ05I
SUAgVqBJ/phpgaL6BBLqlGNDtUXPmg==
=Qfnw
-----END PGP SIGNATURE-----

--je2i5r69C8+2chMc--


--===============4936034655781031333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4936034655781031333==--

