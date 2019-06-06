Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B1537258
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 13:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cSW7OwYZHfomiPRjL7XI1i8cbynwu/GivuloG/fK+7g=; b=rlGnN793EaLqms0G0evcCUwmz
	ax63MDX9hAACWj3acQp71xNjxSdt1otC0b6p1/VvtL/vd5uI30pFq5xXoPdNMpcfhJSe8zlhDdhUk
	MbslayD4TSKkQVj1elNjJsuzQyjkvw81SjTpev7C7fZ6Ka/B5HYeDISOTYjW+9P2Huu24L5uovPOu
	9+dSU3VLCFzCdQsvVsrGKBS87r5bzRvMiPjLnEJG9kQ4aHXwdPo7+A0lvwXPzOitIhquCN/2buHcO
	UWdlc5chrbSXYwN8XOh8QS5qONlUvH3Sn267e53glon5E4E0LQv4At3UeO4TJLXSCyckPNB/7XvXR
	bnqPzELwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYq7x-0005LP-4Q; Thu, 06 Jun 2019 11:00:13 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYq7q-0004n9-Ue
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 11:00:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oYOXjRQFx1z+6E0ax1Zx11BDYlrCjP+RsMwp6EKLiOI=; b=VBDtL01GAkY/Njk3N1+4YBarr
 nqRuHuFxIQzaLsab8s4rUGOZcri4e+qIwZxuPxc/OLVKZZzNQpWNmtVd6VDXKqxpf8FWnFUmG8ZDo
 3zKZWtwFZqHgv4VDrv/7IdbEHbB5FChNwmygerYfXaq13TpYL7RuwPZVk2n19X0vEUpiA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hYq7f-0005Nj-Pk; Thu, 06 Jun 2019 10:59:55 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 450A6440046; Thu,  6 Jun 2019 11:59:55 +0100 (BST)
Date: Thu, 6 Jun 2019 11:59:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH 8/8] drivers: regulator: 88pm800: fix warning same module
 names
Message-ID: <20190606105954.GZ2456@sirena.org.uk>
References: <20190606094736.23970-1-anders.roxell@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20190606094736.23970-1-anders.roxell@linaro.org>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_040007_215154_C31E2A0F 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org, airlied@linux.ie,
 stefan@agner.ch, linux-kernel@vger.kernel.org, a.hajda@samsung.com,
 lee.jones@linaro.org, marex@denx.de, f.fainelli@gmail.com,
 vivien.didelot@gmail.com, linux-media@vger.kernel.org, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 dri-devel@lists.freedesktop.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 lgirdwood@gmail.com, p.zabel@pengutronix.de, shawnguo@kernel.org,
 davem@davemloft.net, hkallweit1@gmail.com
Content-Type: multipart/mixed; boundary="===============4364344118808554125=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4364344118808554125==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JbpSbCMiCLmwdpgc"
Content-Disposition: inline


--JbpSbCMiCLmwdpgc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 06, 2019 at 11:47:36AM +0200, Anders Roxell wrote:

>  obj-$(CONFIG_REGULATOR_88PG86X) += 88pg86x.o
> -obj-$(CONFIG_REGULATOR_88PM800) += 88pm800.o
> +obj-$(CONFIG_REGULATOR_88PM800) += 88pm800-regulator.o
> +88pm800-regulator-objs		:= 88pm800.o

Don't do this, no need for this driver to look different to all the
others in the Makefile - just rename the whole file.

--JbpSbCMiCLmwdpgc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz48ioACgkQJNaLcl1U
h9CG4wf+KwJtkqXwPsGULtOJI6nSm5LEkmrz72NfdgOqj1WW7rLXjWvVzFh/6QR4
Yx2iXClMJ3RT5wsgfK/nlN0mPPVrA7hVeHFDLig5RdvadGQZd0UdN6BgUYcZpZat
5jUkB6rgNxVOe+6kO4onKQn4RWHwkF3Sy7xlN0adWD2b2qqoZPMy3Sc62S+JtAb7
KcHORRkbS49Q1xEtsikUD7SZY3cgJOqjQ6ZQcd9dr1iEXZr8wQ3A8wAnBtqm+OEQ
ptNlJi9FmLI9Ihk1Ps82hCwgTT8hWRdQU0JxFV5ybOtLv5y24PoXCvdo2NNtRcdr
ysZl+LpymLjvpEgM2ByRehnnqcnyuQ==
=2HyU
-----END PGP SIGNATURE-----

--JbpSbCMiCLmwdpgc--


--===============4364344118808554125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4364344118808554125==--

