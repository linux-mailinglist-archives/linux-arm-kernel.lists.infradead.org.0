Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B250B11470
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 09:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xS82oNkJLfbcoPl/S0VcToneMgPMK6UaTtOLIKOvh3Y=; b=iGX58sPbYu9R73ro/AyhWuBWf
	v7Zd9k3SEQD90u3U/ubdUCrcquq/dgvAMlob4zvM1zpX5xl7sRjE+IFA5uUlkTPSuG5lohdD6NqSq
	k671SPpqoTMDW3u71M5WiBoB6NhapPNRphgHL5K8jerFkpZfnaYkDHOUGDEArsaUbSOR7Yfq3tfC0
	PjXr4Mhw31+QYetUvY88U0PQmlgxsnnhjZiNRgabui3yxvYr+RwQdBK9VlAUnsqkWr+p4R1pecuYS
	Bc9fpSChui2P9MGqyfIx33gbv9yYPLcPIgQmEfKA9bc9oq7SWNLfMcdAfota3BoBvTff9eM36F0iw
	Wa+4X3JNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6O0-0005w8-Rs; Thu, 02 May 2019 07:44:08 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6Nu-0005w2-Tb
 for linux-arm-kernel@bombadil.infradead.org; Thu, 02 May 2019 07:44:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1iDV2tZdAAgM8a/uGeFhpc4iqXIiipWUmOKL4Yc49LU=; b=dTENim/dqvxP2tzC6YMXJXSVz
 wrRV4WBwBv5bsx2goRBTpwJFbwTKDXEgsgYB4XfHR9mctMqiP9t47tMf5wpRC2+QhFAhYphqKfQcw
 Fo0NarmBQ11qK+qVuLYvcNN3HwEAfLKptVxgr3+JNgeeRKHRhj7XqZ7DoOJwJeDqk0RuumXttYERv
 UZc0sRir65vnjLHK+7aRrP3S9bQOg2dZyQGRh5AVQHeY3bwjWCAn6G0IzJiJ5pMT+7nzgYa3Q0Ky3
 qKhhZNeuI9Z0pC8noMc12Sl8g+Bj8PNpEidUGsQZEkeEzgl+SQvzke24CWUTOkZg0aqnqfugMn6A5
 1zu/o/AGg==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6Nr-0005Ol-9G
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 07:44:00 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id A683E1C0016;
 Thu,  2 May 2019 07:43:21 +0000 (UTC)
Date: Thu, 2 May 2019 09:43:21 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [RESEND][PATCH v3 6/6] drm/atmel-hclcdc: revert shift by 8
Message-ID: <20190502074321.6g26negwuqdjswrx@flea>
References: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
 <1556195748-11106-7-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
In-Reply-To: <1556195748-11106-7-git-send-email-claudiu.beznea@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_034359_421519_EC4F7869 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 bbrezillon@kernel.org, airlied@linux.ie, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 thierry.reding@gmail.com, daniel@ffwll.ch, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5995178792837602860=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5995178792837602860==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6uagg5yh6vlrxpcb"
Content-Disposition: inline


--6uagg5yh6vlrxpcb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 25, 2019 at 12:36:39PM +0000, Claudiu.Beznea@microchip.com wrote:
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
>
> Revert shift by 8 of state->base.alpha. This introduced regresion
> on planes.
>
> Fixes: 7f73c10b256b ("drm/atmel-hclcdc: Convert to the new generic alpha property")
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--6uagg5yh6vlrxpcb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMqfmQAKCRDj7w1vZxhR
xcseAP4vdJgH1hul/wM47RFdoRnyzZFVdLXER2Iuq1hWJ+PK0gEAtTag2QpyiY56
rGojbjlWkUYDM93h+BP6r0Fj5J5+4Q0=
=yTPE
-----END PGP SIGNATURE-----

--6uagg5yh6vlrxpcb--


--===============5995178792837602860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5995178792837602860==--

