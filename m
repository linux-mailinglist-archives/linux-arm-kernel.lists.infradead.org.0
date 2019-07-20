Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FF96EEC2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7pocs4Tv/ZQ6Jx1hu/4kBHMY4prlKMoLKufz++3zwNg=; b=V4QJyfPgGdim51mKdIMRs7VS2
	17o76pYO5hg9vYbnHs0sbgOdSj+kK+qaTkJFOkVrnDIwtmqLWxloM/qU9F+qv4EBXm1Ld9+Z9IgNi
	+r4TmmIZ3iL02zOAo9z0TfMIt6q/UjWMWEUXRl+5A2YmkOdqKbG7uI7gYkyfc7dg82Mkr63ehibPL
	WJG4IN49MLzUAD7AbRECRq8+dfkFUiJ//GhRp8UEyZJEmESKQ1q//+nh3zYmd/1CjxKCIVL7qTWoC
	nhJRu8e1OD/dbHyqObZqWcdEvcyQjryRC1fFeFqp7FOzll3yoBloRp0yPybTLy4vC6aR4rmX3lxPW
	HJZuhay8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holv4-0002Kq-Ap; Sat, 20 Jul 2019 09:44:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holuW-00028A-Vm
 for linux-arm-kernel@bombadil.infradead.org; Sat, 20 Jul 2019 09:44:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3FP2YQ3RhmW/JEw2/1veriF866faSUb6OuqSTR1BFWo=; b=cdVPJgpQeXyddNOtgGp3q3CWb
 l4MadL6aq7nXVApng0ztuHwQS0j+vvcFYupo21rZQ+hHbGjr/6qfHTA2C4rmttuEYN9zKbA2N7Y9a
 rAKFeJUhzUOkEHFFyPrISYssxO+ukgsMncfRx5F4sQPjGDxXejwVRFql/ypUquFla6mGRjWGBQwt1
 4w0MerWUboljEbhMkjD77ipwiVw1n+CeSbMRbx7ESWqlzuJ/D12eo937oimnGJn8BOo6jPwmJE7Uz
 cjM/sgrJQ/Y25gR3vEFGbb0Nng7JUe8dXKn1ysHgwfxMh++O0IR4CHziwovL8UYZNoHJa6XS1JWwN
 BU/MikpSA==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holuc-0000RV-Vx
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:44:20 +0000
X-Originating-IP: 91.163.65.175
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id A30E71BF20F;
 Sat, 20 Jul 2019 09:43:36 +0000 (UTC)
Date: Sat, 20 Jul 2019 11:43:36 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 2/8] clk: sunxi-ng: v3s: add the missing PLL_DDR1
Message-ID: <20190720094335.io2dkgen5y4ywgs5@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-3-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190713034634.44585-3-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_104419_083872_D208AE41 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2276592503254832682=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2276592503254832682==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s7mdyzoknhwpwznj"
Content-Disposition: inline


--s7mdyzoknhwpwznj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 13, 2019 at 11:46:28AM +0800, Icenowy Zheng wrote:
> The user manual of V3/V3s/S3 declares a PLL_DDR1, however it's forgot
> when developing the V3s CCU driver.
>
> Add back the missing PLL_DDR1.
>
> Fixes: d0f11d14b0bc ("clk: sunxi-ng: add support for V3s CCU")
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>

queued for 5.4, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--s7mdyzoknhwpwznj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTLiRwAKCRDj7w1vZxhR
xV+7AP9wparIVlR4HJLuIV3Qi0DHxN7b3DwLLLyxUw6BxiRHmgD/RPzX9h3vcxY+
LkFkH6ROEu0Lo+wThyHdl83xvlmHoQU=
=J37S
-----END PGP SIGNATURE-----

--s7mdyzoknhwpwznj--


--===============2276592503254832682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2276592503254832682==--

