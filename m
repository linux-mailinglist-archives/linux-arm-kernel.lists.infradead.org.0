Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D507A2C799
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1snVT3p1FuWSRyAq7c7xZFyw8nyxoin7Kis4H+SuRu0=; b=nyxvVOt20fUupFRufnR49N+an
	946iz60uAxy93CTSAEJqEDHG6D/UooNCzDtGLS7Vl+sDLAr0e80N4zG7pfghDxaKReguZY5viFffA
	rbSU8MPS6viPOkaN6H9o1gL2QGAgR7I4IzM8IRkq5tc1mZNLy/WMrmk3uP/druTjzoORFZP8Iiml8
	5Jp6l47rncGNJ2nPYBPQKC8zHP2mca+rwJdMZxLWHa/tNNNxpQvRftGZtX+subZyS59/gnOQLi2rf
	uhzSCXwL7S73w3E3WVgNnP7nW+7rdbH3VDF1JX2P82FcBuQEESnXK6OmIQOuU5r+SR5+FL0QDFsbB
	9DFCk1ZGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbx6-0008B6-HW; Tue, 28 May 2019 13:15:40 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbwy-0008AI-Nw; Tue, 28 May 2019 13:15:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BblpOpFREi2nfI7PrhAnSrsLHFooqML/drjwmo5tWZw=; b=ccqw3W6F00V3/DVzf6rsqL1qw
 unZI8FfF9dGo5mfzG31+24CCFTPT/z8Jv2dEJx7l9maiaMOoW3VDlw55OB++aE7jsLHZ1FrsYbjcl
 Uuyvx6Qrz/vomXuypGN9VLvd7LpNThJ/gfXFMZ66Q7dLNfGUVV8eo3XI1zpECkHO7XjUI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hVbwY-0002T8-2f; Tue, 28 May 2019 13:15:06 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 9E733440046; Tue, 28 May 2019 14:15:04 +0100 (BST)
Date: Tue, 28 May 2019 14:15:04 +0100
From: Mark Brown <broonie@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on
 rk3288-veyron-jaq
Message-ID: <20190528131504.GI2456@sirena.org.uk>
References: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com>
 <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
 <CAMuHMdUF1Csi1ZMccOj=kurijMLcA6G+TP_spsE+fnMvZR71Vw@mail.gmail.com>
 <de92e3bd-70e8-fcba-3c88-c04170704e7b@collabora.com>
 <CACRpkdb-Dv614V7STLRMpiLkmb_7NVyKnh2oUi=7Rx366tmZ-A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACRpkdb-Dv614V7STLRMpiLkmb_7NVyKnh2oUi=7Rx366tmZ-A@mail.gmail.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_061532_930055_5D682B52 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Guillaume Tucker <guillaume.tucker@collabora.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Hart <matthew.hart@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, mgalka@collabora.com,
 Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6655874360698763467=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6655874360698763467==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G3juXO9GfR42w+sw"
Content-Disposition: inline


--G3juXO9GfR42w+sw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 28, 2019 at 10:45:13AM +0200, Linus Walleij wrote:
> On Tue, May 28, 2019 at 10:36 AM Guillaume Tucker

> > Not really, so I've disabled bisections in the linux-gpio tree
> > and a few other maintainers' trees for now.  I'll see if we can
> > come up with a more systematic way of suppressing bisections in
> > similar cases (i.e. the issue has been fixed in mainline later
> > than the base commit for the branch being tested).

> I think this is what the zeroday autobuilder does because
> they never seem to show this problem. Thanks for looking
> into it!

I've got a feeling they do this by deduping after doing the bisection;
they also used to have a system where they'd merge a bunch of trees
together and do the bisect on that to save repeating bisects.

--G3juXO9GfR42w+sw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlztNFQACgkQJNaLcl1U
h9CnRwf/ee3CvNVsnpAeOOZn7++IRM1ltd0gFGJR8JS1aeptgeYX4Iy+LiyjV8CO
ocs2H9W1CPO8oNd45rV709U1T5MzUpy8dPN306+3dPtB+etG8MXvBGSfoSx3oX0t
wCZJaDgS/eakIS3nyhwsm4kYrFbOmG8hEjN22pcXugB6++1JPKXDQEC6bVxdJUVo
meiYp9AR6PrYDDALwLSw+Hr5PJxOchP/x0azRWqDQ8xqICHaNkhYo2kV1uTF2nBg
Y83I4nrNv4JOj+BSH+52Bys+uA8lT2daypGmuX3LVB/mILWA22w9R4uogPNk5uEg
hcNuHlAgis5PMVLlC8S8D6U3j4wUIw==
=/CjW
-----END PGP SIGNATURE-----

--G3juXO9GfR42w+sw--


--===============6655874360698763467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6655874360698763467==--

