Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA07933180
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 15:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ry02wiylczn/8t37B9NxKX6rkcd5Sk41oCTdz342B2Y=; b=TZNpVpJ5lf0ZL03JOHgJFWnXs
	ZhwPMRgooE6vWQmgA5+IVKuK7jK5q4e2/kwtNmuAOLd38bbKMQf7TRg1Ge8fdx+3M+1ss08mALB0m
	VhRkRgFv5gLA9upcg//W70ZD/rC9p3qoCpWuHc0J9gZBlQhRaoKNpqZAePh6bbCB49OFQuuXvndSB
	Y2PAfDOdvcbfJgzwvHpD3scFL60k1Z2Cf4yrm2kC+osmkvAz4I/ZVtZZSjki75XQ801hF5oCt7Bl/
	YU8tGhYAg1Wb9cDJ1cQ1GI6BrJnRDAU59FTt+LBw3xV00dMcf96gq4Pvj9lp3pPtfzrafeknxLsnj
	GJCBwOQyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnLI-0006BN-Uz; Mon, 03 Jun 2019 13:49:41 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnL1-0005vf-Mv
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 13:49:30 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 6670A1BF205;
 Mon,  3 Jun 2019 13:49:08 +0000 (UTC)
Date: Mon, 3 Jun 2019 15:49:07 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v10 09/11] drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI
 regulator support
Message-ID: <20190603134907.lh5rdpucbrzrsdps@flea>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-10-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20190520090318.27570-10-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_064924_371276_3AD72300 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bshah@mykolab.com, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, powerpan@qq.com, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8351975466745458772=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8351975466745458772==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2trpzmkxqvxmxm5n"
Content-Disposition: inline


--2trpzmkxqvxmxm5n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 20, 2019 at 02:33:16PM +0530, Jagan Teki wrote:
> Allwinner MIPI DSI controllers are supplied with SoC
> DSI power rails via VCC-DSI pin.
>
> Add support for this supply pin by adding voltage
> regulator handling code to MIPI DSI driver.
>
> Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

This creates a lot of warnings at boot time on my board this is
missing vcc-dsi-supply.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--2trpzmkxqvxmxm5n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPUlUwAKCRDj7w1vZxhR
xSZ5AP43IgKaIr/p5/Gjo6oF9Ue3I+oWwJZbLyNFgh2oN9mw1QEA6PQIqgMXkKM4
cIW0qgxT/pqGVx3/w7T2Q9HObKfCpgI=
=aqhG
-----END PGP SIGNATURE-----

--2trpzmkxqvxmxm5n--


--===============8351975466745458772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8351975466745458772==--

