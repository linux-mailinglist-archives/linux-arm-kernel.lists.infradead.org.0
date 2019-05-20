Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB8922D55
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lnWfcYg1BiGQcaaeWYZmr6qwwCXI1ASGHC4rXaKh98E=; b=DBvkaB1YcruN39UeYuueNdNm+
	/FILN2AmbyeU0feOMKpwwO7AyBhr7pPSk6airC2G2tFl0oZfFMGsETbPbAzCQz1edz25DVRTZ7h7R
	fSDVej59jd/gmCX2+kdz9yN7D9y0xsoon7VcjPnGFVqa9fsF15gMeIV/uVBnIz1eEzBq743SQ5Ucc
	D/NkQNc068O7wIzEw2Fx205UJKMNR72O13TmQuaFBxONIVWG4X2zyCQza0BBAs6UpIIwbfyjvtxsW
	fXAe0djAaVvzMckZvOnjWgaR9ElBpmD5vOTJZBFJnP6xL/qsiVRYMI67qYV4UpW/+VNaHex/8VB/c
	mWeP6bhig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScwv-0006MQ-KZ; Mon, 20 May 2019 07:43:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScwo-0006MF-EQ
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 May 2019 07:43:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EHmwYBCM68yqhDMr8kwfGr9Xlo99bUSmoph6MCQKnfI=; b=EdIk0ofbjsMogFs6EYWl88EzH
 Q/5/hDiB8G0w5J8a6Bh5BtrzUZyCzExopetslmN+3MtscgORo+mF8VoHLmSMt5h570/ZJC8xfVPRK
 xFOOMPyCZAilozaKYBeyIfRK4Dyd9TkidlIqEUeB0FghKwc39CAyjF5IsL8OP+HRmU0yax1CjG1+c
 /+FLQoaCU36bCakQE/Vp3IBqNXlX5VsZzRLB8uzSkz+KT+DiypMZUVbrN7Z/V8eOn7ndyLM/u4JNe
 4HEjFP8RirWVf95JBDdhYEXvUfLT36KaNe/g11Jr+GkHLtVFVi0cqOYlLZuYUg4W/6KcDqzSU4DP6
 5nz/HGf8A==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScwk-0003nn-Gt
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:43:00 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 5047A60003;
 Mon, 20 May 2019 07:42:11 +0000 (UTC)
Date: Mon, 20 May 2019 09:42:11 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v2 1/4] arm64: DTS: allwinner: a64: Add pinmux for RGB666
 LCD
Message-ID: <20190520074211.mq2au6gt7tyxijrv@flea>
References: <20190516154943.239E668B05@newverein.lst.de>
 <20190516155130.8A52768B20@newverein.lst.de>
MIME-Version: 1.0
In-Reply-To: <20190516155130.8A52768B20@newverein.lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_034258_706565_BEA72245 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============8630214224478275355=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8630214224478275355==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nmucr3o54tqc5cok"
Content-Disposition: inline


--nmucr3o54tqc5cok
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 16, 2019 at 05:51:30PM +0200, Torsten Duwe wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
>
> Allwinner A64's TCON0 can output RGB666 LCD signal.
>
> Add its pinmux.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Torsten Duwe <duwe@suse.de>

Applied, with sed/DTS/dts/ in the commit title

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--nmucr3o54tqc5cok
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOJaUwAKCRDj7w1vZxhR
xeRpAP9JHeg2w3hIcKAnJSqyT4MAdUGk3w86iyTzdo8MN3q3FwEAiizS3iTsBbIV
WSkjcMS/7QscOwCwAxJe8Na87XN4owM=
=CwT1
-----END PGP SIGNATURE-----

--nmucr3o54tqc5cok--


--===============8630214224478275355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8630214224478275355==--

