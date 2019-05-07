Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64B816164
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SJuP7LrQxnRSEl8DutVRDu9x77DbH4y/j1e2NWgIo6s=; b=gxmGRpkTLQbeD5I3/v4loM7La
	YovNDnrBlwqAlW8Qyl3y58wZQXhqSJuUZBYa9yXsVKqW7YKHTku3rGqG5LaOypTciu6SY/isOU39a
	EI7jM6D+ED0kcYpkGgHYsUsqhAWcK7m6G72/qzNRevYs/qahRirkmmPbA4Qo9aepSuU+80Lws2F7j
	5hoU94NNZPjkAJijJPWhP7jcayQtcvPe3dINiziSa+Tw6BO5Du+BNDuzSsdmWlvwmDPHaeW3ykLE3
	R5/fcRpdEyJHWRvtJnksfWFPkaYSE4LJUuOW7IuRPsWwvu4RdEJTLj9LLVCn9PgEyxa0TXs8GtH1w
	WCuEAcH5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwiY-0003tz-Kc; Tue, 07 May 2019 09:48:58 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwiL-0003rp-8g
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:48:47 +0000
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id A650D100005;
 Tue,  7 May 2019 09:48:34 +0000 (UTC)
Date: Tue, 7 May 2019 11:48:34 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>, mark.rutland@arm.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 wens@csie.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: allwinner: h6: Enable HDMI output on
 orangepi 3
Message-ID: <20190507094834.i6cj3ht37bqovn6c@flea>
References: <20190420145240.27400-1-tiny.windzz@gmail.com>
 <20190502073401.3l3fl4alicyzpud7@flea>
 <20190507093535.uapqhxduwtbdgbtq@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20190507093535.uapqhxduwtbdgbtq@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_024845_875851_F157A539 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============4644864335264599428=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4644864335264599428==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kbuqvbgavmodme4h"
Content-Disposition: inline


--kbuqvbgavmodme4h
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 07, 2019 at 11:35:35AM +0200, Ond=C5=99ej Jirman wrote:
> Hi Maxime,
>
> On Thu, May 02, 2019 at 09:34:01AM +0200, Maxime Ripard wrote:
> > On Sat, Apr 20, 2019 at 10:52:40AM -0400, Yangtao Li wrote:
> > > Orangepi 3 has HDMI type A connector.
> > >
> > > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> >
> > Queued for 5.3, thanks!
> > Maxime
>
> This patch is not enough. HDMI support on Orange Pi 3 also needs to
> enable DDC IO. While the SoC will feed some default output singal
> into the display, without DDC enabled it will not work reliably.
>
> That support is part of my Orange Pi 3 series, and will be reworked
> for v5 of that series.
>
> While I can rebase on top of this, it would be easier if you dropped
> this patch until the propper support is ready. I don't see any reason
> why this should be rushed with half-working solution.

ACK, consider it dropped.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--kbuqvbgavmodme4h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXNFUcQAKCRDj7w1vZxhR
xRC6AQCarXhXeoier2SFZd5W+nAp7LskYqHAVzQJWKXlWvdsAAEA5ewi2CIOkpfW
D2p0TKo40WynsYAFuFD/Ug75A2IFbQ4=
=Qui5
-----END PGP SIGNATURE-----

--kbuqvbgavmodme4h--


--===============4644864335264599428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4644864335264599428==--

