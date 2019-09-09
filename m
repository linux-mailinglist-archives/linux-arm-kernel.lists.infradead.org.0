Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB0BADA88
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0CY3khNJAIOiiWBiyw1ja/88mIZ8DLrVG9Iuf4kIqrA=; b=jQ3Ihj0jbUTSuZ4ieMHvLVMP4
	eXrQq2J926BJn1w6S0xcbz3K2jIy7OzfpHN/Xr6DjoHvww/0Kkx9vwHfDCfVVAAZFwpBGE5le3G+r
	RhTb3EJP3LEEpAXqACweRp24J3JYax8lQIqzataQj0UY0q0qBVtE6M4V+Fl2mKlniM4PP5UKUR9xQ
	7PrFSxw4F4cw8EJmlzszHKv1tQr2hX1WRXQTsoztXBXyCbUhvTrLqMMdvFgvGQpvGhBE6mo+dEAE/
	VA7HppODkFJJa5BPHPGcaqAcmHLqK0GwugkiKL/MVtIMpRGudSD/0XYPqv8WLqqOiHoaWZOVxlPvE
	310Ei78Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7K7Z-0007tZ-Hc; Mon, 09 Sep 2019 13:54:21 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7K7K-0007t2-KM; Mon, 09 Sep 2019 13:54:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cm68PPNUL9hpa20Iuq3N78KfFV9ZNG1FxC3bFlrLNBo=; b=SfCG2GghXvnLx5hk7+p07alq7
 rAtpln77hLd/I2OhSW53ZOqioUNmYHSKcBbb8mqu7CPtaK7xrY8P/BZAFJBwcbiTIiUNImLxvpA9q
 IP7v7eZk/iX6XwTN/nXk4BeApdZCIIVXbmK2eaCvwgK/XZDmHpv2JXbcjR+Uqt4JyETi8=;
Received: from [148.69.85.38] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i7K71-0002ZE-GF; Mon, 09 Sep 2019 13:53:47 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id DB8BCD02D3E; Mon,  9 Sep 2019 14:53:46 +0100 (BST)
Date: Mon, 9 Sep 2019 14:53:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
Message-ID: <20190909135346.GG2036@sirena.org.uk>
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
 <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
 <7019a223-cc97-e1c6-907b-e6b3d626164f@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <7019a223-cc97-e1c6-907b-e6b3d626164f@baylibre.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_065406_673510_56CA8FFF 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Cheng-yi Chiang <cychiang@chromium.org>, linux-rockchip@lists.infradead.org,
 Takashi Iwai <tiwai@suse.com>, Tzung-Bi Shih <tzungbi@google.com>,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Russell King <rmk+kernel@armlinux.org.uk>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Douglas Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: multipart/mixed; boundary="===============5434906452321866123=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5434906452321866123==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1XWsVB21DFCvn2e8"
Content-Disposition: inline


--1XWsVB21DFCvn2e8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 09, 2019 at 09:37:14AM +0200, Neil Armstrong wrote:

> I'd like some review from ASoC people and other drm bridge reviewers,
> Jernej, Jonas & Andrzej.

> Jonas could have some comments on the overall patchset.

The ASoC bits look basically fine, I've gone ahead and applied
patch 1 as is since we're just before the merge window and that
way we reduce potential cross tree issues.  I know there's a lot
of discussion on the DRM side about how they want to handle
things with jacks, I'm not 100% sure what the latest thinking is
there.

--1XWsVB21DFCvn2e8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl12WWoACgkQJNaLcl1U
h9B58gf/azL9m1nPkR4phZ6A1RIN6d+L25pbHNjtM6SvzmLQ2nOUKncgKEgrHCE5
mcWbRDcvUMGOQFMG4agAnXPvWxyTzLKs8YJ6inLI7FzsF9cGKN4eKz9wDl3QsikV
ObslZLrhqTPe29AtSfIKfC9A3GRt9L0E6gG/D6YYa+ZzPEcJOSRMSsPQ+GXeHh1x
uM7ntqIIEWytr2RkEDT+QJHAqgPWz9yI1L9ynlcZfp9OXt/sO2rWPkpFhNyyjeBs
YFUpXp0aMmVtolJYrljTBVJ+DZeTX5JifotTePHJYEpavbMXJ9lcyTIMGL0bB94R
o4rqAkYpM8kK2jGNg2ojes7W5qdjlA==
=a5GI
-----END PGP SIGNATURE-----

--1XWsVB21DFCvn2e8--


--===============5434906452321866123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5434906452321866123==--

