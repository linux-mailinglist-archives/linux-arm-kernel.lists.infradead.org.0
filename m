Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78E089752
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 08:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSHhv8GigpgvGBpAYih0ov0PPWd6D2QfjfP8WWtqo3g=; b=tYTZ+Z3M943ufd
	K/xSrVLY7tW5BYDdBb8aSa6OOYifbJbI/mEG+pEYid0nXNyHkGWUOvVeIswTsOCulBueHhvVyj+h1
	h5jGzozCVx+hzfbKl4YhxRrtM4JMI2mCGN1/mwc393hgRd74EDODOxl7haiQI16tlkMLJwHRT5xkM
	MCMjgCAY6r9laUKDxVkRD1qvYHGPRAVDvcV5qXLOgToE1N8RAjAfZYwRMkkbiBz6V7VMqcHlNxs2D
	xUm0aYURi0Xk8TjWpKcBnjDPfkbxqu2dZyVJ2EWbqZdOuf0booCKWtMd/1gL1bvZ1nNwrcpBwvl6E
	5RtPzRh7gSh6PKlvrOzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx48A-0005rf-OM; Mon, 12 Aug 2019 06:48:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx47w-0005rL-RX
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 06:48:22 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hx47p-0006k9-HG; Mon, 12 Aug 2019 08:48:13 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hx47n-00025n-RF; Mon, 12 Aug 2019 08:48:11 +0200
Date: Mon, 12 Aug 2019 08:48:11 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v1] MAINTAINERS: i2c-imx: take over maintainership
Message-ID: <20190812064811.427cy7ahim54odkk@pengutronix.de>
References: <20190812050817.23279-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812050817.23279-1-o.rempel@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_234820_935309_7406289A 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Wolfram Sang <wsa@the-dreams.de>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-i2c@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 07:08:17AM +0200, Oleksij Rempel wrote:
> I would like to maintain the i2c-imx driver. Since I work with
> different i.MX variants and have access to the hardware, I can spend
> some time on the reviewing of this driver.
> =

> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> =

> diff --git a/MAINTAINERS b/MAINTAINERS
> index e81e60bd7c26..ddc1cf5cb0b9 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6441,6 +6441,14 @@ S:	Maintained
>  F:	drivers/perf/fsl_imx8_ddr_perf.c
>  F:	Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
>  =

> +FREESCALE IMX I2C DRIVER
> +M:	Oleksij Rempel <o.rempel@pengutronix.de>
> +R:	Pengutronix Kernel Team <kernel@pengutronix.de>
> +L:	linux-i2c@vger.kernel.org
> +S:	Maintained
> +F:	drivers/i2c/busses/i2c-imx.c
> +F:	Documentation/devicetree/bindings/i2c/i2c-imx.txt
> +

Even without this patch the generic "ARM/FREESCALE IMX / MXC ARM
ARCHITECTURE" entry matches the i2c-imx driver. Maybe it is worth to
point that out in the commit log?

Other than that arch/arm/mach-imx/devices/platform-imx-i2c.c might be
related, but not sure this is still used at all.

Great you pick that up.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
