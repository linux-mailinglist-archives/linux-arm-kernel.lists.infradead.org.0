Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C71130A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RrmhLoWJZEmB/pORQd2n8Sm/ODPb1igQPmQzqm0aPVE=; b=hoDd0e/xf+eHX1siz84QaaUo/
	mUUqK1/TQwyvursxtGyWnVs0qNF5MJsqxUSGC51Jvv/fhtb7+E1r4elMIIBk+0Z3COlSUt3odx2ta
	M7QrpQ16w7uga0hW1SRldRa+Tvck2fcXiarJ6R0szmaBR74Zv3HzJ9IkLd9fwtuHnO549X6whpGOF
	+UNYVAK7shhTCW5UdirvArpq6Z3BcfGd5QqCXc4PPNjwrP81zTSFTeir3RkighE63uex0x2O2M+/v
	BMeeJq6SPJyvrQP/xoLdnTz33VP0QewW/+UFBq2aP0oZ3+4TrZLPtizqbaCAosMicW8Y3mE4/uQg3
	sRtQWGnyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZR1-0000Su-Uo; Fri, 03 May 2019 14:45:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZQr-0000EG-96
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 14:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5tUo0jxJJzPkBaigyPfhnbew6k0nh1dVcU4jZg7urrI=; b=MItAiuO+QM3KVcBakmDpiq+89
 o0DClGIPgkt+ftofn4/L0EdwncNsCuoJujZ6l3l4iHlh76eNBjOT5PBNv1p6nC7tWPHQjgcmGEcPC
 hdVfigZFfW7vU3wEtoaL17nZbD0q05B18z5z17LS0uEh2/2pHaSL7mKkGpUE1MM+vWKM2pxyuN901
 96Ps/rwfN1wkaGyC0phzTrpin5A4DwxTQ3wPEnBNjeh5BF2w8pbTzWLm1qO5PFxn5GWH404Qjfy/n
 NhY+39ZRF/nShvxeNR59Bbo4m0FZISBX8tZWSbiPpkxD96nyrjtF1KbXvD8x9G/IJoNlnct6Iwu5W
 f7NcUDnbQ==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZMi-0007Tm-Ou
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:40:46 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id A05781C0018;
 Fri,  3 May 2019 14:40:12 +0000 (UTC)
Date: Fri, 3 May 2019 16:40:12 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: allwinner: a64-oceanic-5205-5inmfd:
 Enable GT911 CTP
Message-ID: <20190503144012.hvbm54xjldyqysk4@flea>
References: <20190503104753.27562-1-jagan@amarulasolutions.com>
 <20190503104753.27562-3-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20190503104753.27562-3-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_154044_861539_E91C1280 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7276216258078926435=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7276216258078926435==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gxwv7dhu5oerttl5"
Content-Disposition: inline


--gxwv7dhu5oerttl5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 03, 2019 at 04:17:53PM +0530, Jagan Teki wrote:
> Goodix GT911 CTP is bound with Oceanic 5205 5inMFD board.
>
> The CTP connected to board with,
> - SDA, SCK from i2c0
> - GPIO-LD0 as AVDD28 supply
> - PH4 gpio as interrupt pin
> - PH11 gpio as reset pin
> - X axis is inverted
> - Y axis is inverted
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Applied all three for 5.3, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--gxwv7dhu5oerttl5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMxSzAAKCRDj7w1vZxhR
xYW7AP0dBgkeuoEAunfGpwjVDN2vcJEOdH+H8sPkHTrGOqStsQEA3CpzynjQPQOR
Wq/vO9MjeqFw6SmSCcX+zlG6SurG9Ac=
=s4aJ
-----END PGP SIGNATURE-----

--gxwv7dhu5oerttl5--


--===============7276216258078926435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7276216258078926435==--

