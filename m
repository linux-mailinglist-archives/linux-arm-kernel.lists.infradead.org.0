Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E62C22E0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V/6O/8HGCXrqfdFrmYbkLJh+mXJ92oLNKwYt81TroEo=; b=oduvJLz2jk4cPoEZ/WsPSHz5Y
	2HAOZGI/x4FfvdYybIdoGWEadsTGFawnXZAlLrZlSgPSgm84c0CwgJzx51/4a0Tly6e6BFqBmLML3
	sTFu/luUaN8xLVXejUl4167d+K8kPPt6lLjuvlKf6+AWNw9s7qaZPksRoPFgLrveSR5EiACy25qSH
	z74nq02x6WnI+FMNc4RhB4vZ7x/r9csIUURouezH9xSvQXMedYV9YeZUy+irReXnbF5hGLvjA6FaJ
	QLnjvYFg8fIP/EsO8vjdFfqLw6aUkLpBam9L17I8CZgJ189etOirG3Wb3bLLK4Dd6G33/Gc5mYSw2
	uJ4M6ecbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdNz-0000OC-7h; Mon, 20 May 2019 08:11:07 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdJN-00028V-DD
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:06:37 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 51B4C60003;
 Mon, 20 May 2019 08:06:17 +0000 (UTC)
Date: Mon, 20 May 2019 10:06:16 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] media: cedrus: Allow different mod clock rates
Message-ID: <20190520080616.qlkpru5ypmtsiob6@flea>
References: <20190518174415.17795-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190518174415.17795-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010622_127720_251E452E 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7651086084806524007=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7651086084806524007==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z4svvflxvz3jxhmz"
Content-Disposition: inline


--z4svvflxvz3jxhmz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 18, 2019 at 07:44:15PM +0200, Jernej Skrabec wrote:
> Some VPU variants may run at higher clock speeds. They actually need
> extra speed to be capable of decoding more complex codecs like HEVC or
> bigger image sizes (4K).
>
> Expand variant structure with mod_rate information.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--z4svvflxvz3jxhmz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOJf+AAKCRDj7w1vZxhR
xYO1AP4hYgh/ydYRZ1dLOpWjomwTaBIE4ZTTvdBGUDoMiNB7vgD/TN9xyBUVpRON
FUBwqbdUlEFesY7PSvrMnKR0eobJYwg=
=1oN6
-----END PGP SIGNATURE-----

--z4svvflxvz3jxhmz--


--===============7651086084806524007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7651086084806524007==--

