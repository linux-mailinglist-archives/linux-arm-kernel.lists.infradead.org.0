Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B25F09B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 08:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I4X57DY55GhiqJeD05hz77w0r3YGHx/Lbn5vRozXEc=; b=GxYBFmBhfWmH4f
	2T4W0kjsGM/9TjR9tPDw6V1j8Ag32xAi7OM9cikRYwDSLAo0rLLCCGpq591kemVzZokzm2J+lG051
	E486QTp2TI61WyyeVpIDQ/J+UGFePxSPNc/lnd/G89ixPzmf7aLjG4Uxek5QKZZXOsO01lBMXjXV1
	CfKBH7FF5xd8y6u+dsnQkI1jPVQPVTVtkqcLJN77uu97fLcCOMpLxtu8t8Qcg+uYGjmHoYY4J3PJ0
	+5se4xTzvylakPWQi8H/4jphZNgBIfCL6YeMz3mUfm9BHI/JxAUTNd8Pn0KDeMO3a9lqAL5Am98Sm
	QnJemVRDXhZGPXcZv2dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLMPX-0003Mp-QH; Tue, 30 Apr 2019 06:38:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLMPP-0003Lp-Ua
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 06:38:33 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hLMPK-00082m-6Z; Tue, 30 Apr 2019 08:38:26 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hLMPG-0001N4-Gz; Tue, 30 Apr 2019 08:38:22 +0200
Date: Tue, 30 Apr 2019 08:38:22 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: i2c: add optional mul-value property to
 binding
Message-ID: <20190430063822.dk5nerqa2m36ua6x@pengutronix.de>
References: <20190430043242.29687-1-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430043242.29687-1-chuanhua.han@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_233832_141020_E46BF976 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sumit.batra@nxp.com,
 eha@deif.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 wsa+renesas@sang-engineering.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, kernel@pengutronix.de, l.stach@pengutronix.de,
 linux@rempel-privat.de, shawnguo@kernel.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:32:40PM +0800, Chuanhua Han wrote:
> NXP Layerscape SoC have up to three MUL options available for all
> divider values, we choice of MUL determines the internal monitor rate
> of the I2C bus (SCL and SDA signals):
> A lower MUL value results in a higher sampling rate of the I2C signals.
> A higher MUL value results in a lower sampling rate of the I2C signals.
> =

> So in Optional properties we added our custom mul-value property in the
> binding to select which mul option for the device tree i2c controller
> node.
> =

> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-imx.txt | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx.txt b/Document=
ation/devicetree/bindings/i2c/i2c-imx.txt
> index b967544590e8..ba8e7b7b3fa8 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-imx.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-imx.txt
> @@ -18,6 +18,9 @@ Optional properties:
>  - sda-gpios: specify the gpio related to SDA pin
>  - pinctrl: add extra pinctrl to configure i2c pins to gpio function for =
i2c
>    bus recovery, call it "gpio" state
> +- mul-value: NXP Layerscape SoC have up to three MUL options available f=
or
> +all I2C divider values, it describes which MUL we choose to use for the =
driver,
> +the values should be 1,2,4.

Indention is broken.

I wonder why this needs to be configurable on a per-machine/device
level. What is the trade-off?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
