Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306BD60AD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 19:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k7L5rw6t/WIv0N7YQqAZjEwCbmTRP9uFIJSjsyYk0JY=; b=lO/2fJ96S+6BjC7QNEol52hGC
	wIaFH4EzHFjMEZkoS1Ou1GI7N8EnvTvSuKwXCYG2EN2fEzx49wjn11yXeF3ZvcXQGBNIwOsT1GTUD
	9xdOFNHqv3QfoVmCa7avTbjg42DHP1vB3gMfkn6/gRAnm9lHPb8s+S0CN9BMPxq3Tk7fS+7mxix/G
	r2w4u6RmsO9F7Jxf6hRh3zujidRfzF5fTXTuvg4oz1FouXXGhsNngyLZMIQH3Zp4QxBvl7nFcCTok
	jC7+OFI4bH3tbJOxQTN4ieRdilL6G7UXXiDnEpKT9Tz/7mL9DY5PxRH4MgCjChWBD16645/MTy6RU
	Cw1DbWOXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjRpC-00080s-IA; Fri, 05 Jul 2019 17:16:42 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjRp3-00080L-BZ; Fri, 05 Jul 2019 17:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HKEyNx+1XrxknoW82kLLhbqysgbib6tL6sBEaXoa+FI=; b=itGBlD/HeUPpNoN4qsN1uixLm
 5X32bE/IGmQQdOgCnkMiPo9HFqoCesf3SYKUlSgC3ipJfsqtATXfgH7PXzc02kiKHWbJzoJ2VfyUq
 Wns8aGyFJFVoGcbTpZOYFd/9Nvcm7wcmJ/SSeg8Gt2ueIgE9wBd62k6dDPvJm++5xqVlE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hjRop-0004YR-Ea; Fri, 05 Jul 2019 17:16:19 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C902F2742A29; Fri,  5 Jul 2019 18:16:18 +0100 (BST)
Date: Fri, 5 Jul 2019 18:16:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Cheng-yi Chiang <cychiang@chromium.org>
Subject: Re: [alsa-devel] [PATCH 2/4] drm: bridge: dw-hdmi: Report connector
 status using callback
Message-ID: <20190705171618.GA35842@sirena.org.uk>
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-3-cychiang@chromium.org>
 <VI1PR06MB41425D1F24AC653F08AFA463ACF50@VI1PR06MB4142.eurprd06.prod.outlook.com>
 <CAFv8NwJXbJo=z_NDj+JQHD9LOmnbfM8v_N1uHn4sdBzF-FZQfA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFv8NwJXbJo=z_NDj+JQHD9LOmnbfM8v_N1uHn4sdBzF-FZQfA@mail.gmail.com>
X-Cookie: Haste makes waste.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_101633_549349_B62CA24B 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "dianders@chromium.org" <dianders@chromium.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Takashi Iwai <tiwai@suse.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, "dgreid@chromium.org" <dgreid@chromium.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1223815091527162469=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1223815091527162469==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline


--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 05, 2019 at 03:31:24PM +0800, Cheng-yi Chiang wrote:

> It was a long discussion.
> I think the conclusion was that if we are only talking about
> hdmi-codec, then we just need to extend the ops exposed in hdmi-codec
> and don't need to use
> hdmi-notifier or drm_audio_component.

What I'd picked up from the bits of that discussion that I
followed was that there was some desire to come up with a unified
approach to ELD notification rather than having to go through
this discussion repeatedly?  That would certianly seem more
sensible.  Admittedly it was a long thread with lots of enormous
mails so I didn't follow the whole thing.

--AhhlLboLdkugWU4S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0fheEACgkQJNaLcl1U
h9BXfgf8Djh9t+tRCpOZtbD0eqLrC0mbgK6xvHKXz2Asdi73S29NTI0EsIjf8oZ3
Pz6/6L7lp75cOGU0EoQEzBtCuMIBCEXPI0gewu+FMjVlL3vhvV8svBfRuUZztzn9
12ImYdI/oGK5DDKw7UkhuSxjjoEdnStnEA7qmB/XjH5eH05C2P4xQBYLATEo52oh
jGMW1fSAh+dnQ8A3N9kAJLl9AF+f/eXzWfw3jfoelzQJPikX16xa5UE/U+ukQZ7F
B79Nr4Lp2n9ORhA+GXIk6HVSsoBDqUTOpjH4+zjgDXe9nYK+BBSJ5AX8aZlxBY7C
AP6VWjYU5x92p6hdgtNtqK0pmZ2SZA==
=5Rc/
-----END PGP SIGNATURE-----

--AhhlLboLdkugWU4S--


--===============1223815091527162469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1223815091527162469==--

