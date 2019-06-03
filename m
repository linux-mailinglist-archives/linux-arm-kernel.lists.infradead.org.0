Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC2932ECC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UZK+XdZYDV6uvAV/hdmq2CqY1d/lA4Cly69QKrW9YQo=; b=dhVJUHtDEwZw5Z2iaoG16c/DS
	zNM3kZLZahZn+uwMhlOCCxXCwNB0GsFSXyLuMBsuXMiyTG6I1Tr4WWlVS40+w+Neauh0PW8cTN44C
	2R8kQmmKM2FibvggNtUw9f3yW+v8mZWUBBACHcApnSARaWl+88FzLS6MdRdBhqqZKCk2sQrQtd8cH
	28SaXkY1cKHFh6Fwwg4u6PfBEBKIFLsJhhsf/Npit0WN78CEgs9c8ktDM4x/rVhXbyFoMwahsRcRg
	y3yCBt5klkLIKdw+J6Re7Ofa1xhZkDz0Zji/dMSCoU/6sqQEYfI6FfId4pZuIIWd9rICCc0EUr2gw
	e7KgO4UXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlJ3-0003pN-6c; Mon, 03 Jun 2019 11:39:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlIy-0003om-Be
 for linux-arm-kernel@bombadil.infradead.org; Mon, 03 Jun 2019 11:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JON4Vx8jXWcPchmEDzAJPtGWnbiiHo6HXcFPLepHvPI=; b=BjKe86d/n+qK9MUOkGGQlO2fd
 Suv/q1OT8pDy7T5sRHUMgFVnR+tFQEqhblwqq/L+ijaGQ85AT62j5TX4Ap+KCNHUn9ITi6Nq/WACz
 o7StyNccAj69VR9w8zK4y1VYLdM1Wh9Ul4Bq8koLeydv1ARKWS+UMVWdMzwEcuAF9yHicqrC0+bsp
 N09oS5qYH7TirY3T28ASD/Hnbf6nfM4jZYM839sEhneZwiB6LSO0hTJpQAtaUaUgSEaWKXWchzGRS
 /UzPhbUJQoBwlpMBZoyXXDB7h9/4dpn6Yelzq+iikze66wsl43pzRgfvaX5Acevs5+LPXgkFSfeQa
 +yw5Sxb0Q==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlIt-0002Wt-Q4
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:39:05 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id C3B3D20014;
 Mon,  3 Jun 2019 11:38:27 +0000 (UTC)
Date: Mon, 3 Jun 2019 13:38:27 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/7] media: cedrus: Disable engine after each slice
 decoding
Message-ID: <20190603113827.2nmm5wkycf44aqox@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-2-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190530211516.1891-2-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_073903_948675_00144450 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8844744339296553413=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8844744339296553413==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jzwau3t2b77xs3xp"
Content-Disposition: inline


--jzwau3t2b77xs3xp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, May 30, 2019 at 11:15:10PM +0200, Jernej Skrabec wrote:
> libvdpau-sunxi always disables engine after each decoded slice.
> Do same in Cedrus driver.
>
> Presumably this also lowers power consumption which is always nice.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Is it fixing anything though?

I indeed saw that cedar did disable it everytime, but I couldn't find
a reason why.

Also, the power management improvement would need to be measured, it
can even create the opposite situation where the device will draw more
current from being woken up than if it had just remained disabled.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--jzwau3t2b77xs3xp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPUGswAKCRDj7w1vZxhR
xcoOAP9mzllurMZRL+0rmJfj1Ie1ewdM8HeuqLiB1e/Mm8M0VQD/ULwrfBAx5fRS
/tgzkYR2nXRMpj0jQ6+7xa2pyZdkdw0=
=lu1j
-----END PGP SIGNATURE-----

--jzwau3t2b77xs3xp--


--===============8844744339296553413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8844744339296553413==--

