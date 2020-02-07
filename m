Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF6B1558CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 14:53:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JWwCdPi2Kor9dF68InV18yYjSaNhT2c5MiSwMR7hAT8=; b=P9l6+fr4cNaSMxTIesMSL7MZl
	CLbKs4H0IxOpix7liGr83cXEMarEV0IA7IiJZ5dfCxjC74YL+ASOvpYaswSVSt4mGp13+jlTSh0YY
	lo0UXlY/Ih3AGi2sjG6F3KpfCklqlyhaLzu6LI7vM6SilRiBKpNrZiY8eAc2hWzRT7bI6SnPPu1cY
	xOfLqAYmtC6JCcrMs/ACSxrXUp/EdZt6Ptv+lDRQnF+1rhc0RM73Uv61MIFC4wOAOVJGM12LOI1HQ
	3SKC01FSRQVGs+9m2GBZTd3NPZDoSjVztQdh11/h7KqmZr7mGjIwU3D2ioA/Q8XaySDnoWOaoX9AQ
	J7JqdjKTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j044B-0000xA-FK; Fri, 07 Feb 2020 13:53:07 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0444-0000wI-2Y; Fri, 07 Feb 2020 13:53:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alyssa) with ESMTPSA id 0478629567D
Date: Fri, 7 Feb 2020 08:52:51 -0500
From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
Message-ID: <20200207135251.GA2952@kevin>
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20200207052627.130118-6-drinkcat@chromium.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_055300_248437_46FFA728 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 ulf.hansson@linaro.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6475891154018386989=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6475891154018386989==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> +	for (i = 0; i < ARRAY_SIZE(pfdev->pm_domain_devs); i++) {
> +		if (!pfdev->pm_domain_devs[i])
> +			break;

I'm not totally familiar with this code, but should this be a break or
just a continue?


--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQ17gm7CvANAdqvY4/v5QWgr1WA0FAl49a6kACgkQ/v5QWgr1
WA1bjxAAnLaxUD3zjRv8cz282ucvOS+zEVrsYCEtVHJXAXsVa6qH9W4rTswmRCnU
0xfwIFqVmUch1QzZgxsqX42RrVZPNU20eN1qspQgEfXnIttVsTSzvgnEwHw22TCn
nr/f+tKDnIRFzz4PZ9ywTyzLBJNYJwR00QoMKTg//184tvoAWDrm0k0h7iVx7X96
mymCuf6jWpfB24TlTTvcXTCDUcoPVWZqJ1rppHtVV10E0a6VRKRURli75q6d4uBU
T4yqc02JSUvyaOm8KF5LNce0FOGeEMiQFfEG4jRP1y5FYVuPOoJciB3Gtv7JSeaa
Tg0PCBs7BYNbIlkLcxYyPjnwD60L5l1IxD5lKzF0DJJucuqoRQP1gpz5kZaLmEOj
kvXi8P0Bx87ZaF2ghgX+l/IKFLiwHpLfE4BzG6VMLUSE/Nher4Tcvz7+3AbsTBhD
pJ5tcommgF4KYUkEZ7rfNDD1G5f6h+c7yNMpeUOIadPyMY47NIpr3TBCpZJGiJ02
nSwt3k/7Y5Hig0OZxypHVgqyBD3FycMPoQpelBC4/gZH4w59DKlE42VBqc8977m/
dv1vv3QPS0w0RNKO4FnH+N63RnHovNNsUbNAsQkS7GldSGnbCQymGHXRniSdO7XT
cbs14xJbzZ09gdyTGmybAsL1RKMT1YqGG1/3RSeS7bSOwyFX8Wg=
=dMt0
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--


--===============6475891154018386989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6475891154018386989==--

