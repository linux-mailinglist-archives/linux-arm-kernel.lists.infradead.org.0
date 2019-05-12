Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17ED51AC62
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 15:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zjkdPOfAHy6m1Kapkb4lZcyhyhwAYzOGNRlAJIZCWJI=; b=o7ZgFo/+klxitxgPfwmiLs94v
	BlA2l7WGr0gSq2/Bq4QQuee4TaNrl/xjaiB6jZaiStrtfiSeta9yTTr68ZxJW86+Hsl5Dp+AEW6vX
	5yk5V4xI8ZOesAOFH4jTHLfmIrvx3Tm/5GSEij7JRnwZB1nA6SxPdn2ZUZpXI8c7E+POX41fhFUyN
	/lrsk0USXSDgax9mluAIBxlnkzX2Sn0cSXy0tY6O5NkIUAf046L0vbfzttcKmq5UvH7V2d390oXMA
	HNC5K765JMftaKcwOXlCe8O40P5/5KEtXqTNK3N9PAzcKuFsEOc8uVMPKKIdj1e+Th3VGnwOnyssM
	7UO4UDBQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPoUe-0001jc-0v; Sun, 12 May 2019 13:26:20 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPoUX-0001ij-42
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 13:26:14 +0000
X-Originating-IP: 109.190.253.16
Received: from localhost (unknown [109.190.253.16])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 7E9D0FF803;
 Sun, 12 May 2019 13:26:00 +0000 (UTC)
Date: Sun, 12 May 2019 15:25:58 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 1/3] arm64: defconfig: add allwinner sid support
Message-ID: <20190512132558.745wbonxn6qrwvke@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190512082614.9045-2-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_062613_308042_0D1B8C1F 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, daniel.lezcano@linaro.org, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org, mchehab+samsung@kernel.org,
 paulmck@linux.ibm.com, stefan.wahren@i2se.com, linux-pm@vger.kernel.org,
 wens@csie.org, jagan@amarulasolutions.com, andy.gross@linaro.org,
 rui.zhang@intel.com, devicetree@vger.kernel.org, marc.w.gonzalez@free.fr,
 edubezval@gmail.com, enric.balletbo@collabora.com, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, olof@lixom.net,
 davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============2108068814439238911=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2108068814439238911==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lbhyzlowgxdvkbq7"
Content-Disposition: inline


--lbhyzlowgxdvkbq7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, May 12, 2019 at 04:26:12AM -0400, Yangtao Li wrote:
> Sid contains speedbin information and temperature sensor
> calibration information and more, which are important for SOC.
>
> This patch enables CONFIG_NVMEM_SUNXI_SID by default.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Applied for 5.3, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--lbhyzlowgxdvkbq7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXNge5gAKCRDj7w1vZxhR
xeJXAP0WWHx9kGrJrvMvq9Mm+3L1Sd+z+4KFnlWWGuQScu8bXwD/d3EK/qKg46B+
ztgYKIXbsBFk0dYQ8tOvMmeB84JBkQw=
=kR0R
-----END PGP SIGNATURE-----

--lbhyzlowgxdvkbq7--


--===============2108068814439238911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2108068814439238911==--

