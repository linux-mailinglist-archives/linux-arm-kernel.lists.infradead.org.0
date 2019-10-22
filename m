Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA804E0836
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AORMfdO2fQoQjN9ZMoeFjy8wI6J4chdX9az++Ig4Zqc=; b=BB1ZdGuc05y2gf
	WUVFLSVX5OlXTLCDDl27wKAbdlIyreY+c8tfNVpxB2iHpEpwqHe3P+4KZmZExV9SmdJEkeuJqGQaz
	f9dyYUxf7mRediuC615B0/XS/aEq1QXKiV6CucqnXmLeoFQfGTL8E5ZJLtn0LgcNTxl/zmg+xoSZ5
	LxPrpHAYxdlTXiimoODz+zzWgPcZe4SJckKSUrGItzZpmLQJMObLCw5QHwFQleW3VB+xTdGLTlPb4
	dsx9KqrEEhAqt2oIEz22Z/Rq7SYcGUuKrfJOB/6iQJVBdtdLAbCM9pAVyUP1PyfrLEBl7tkl2pzmv
	N5s65G0giSDAkHTyV9Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMweo-0004XV-Vq; Tue, 22 Oct 2019 16:05:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwea-0004Qu-EP
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:05:01 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iMweW-0007t2-Bf; Tue, 22 Oct 2019 18:04:59 +0200
Message-ID: <1ef138bcb511bdfeff798edf93b9aa8bd06d6e22.camel@pengutronix.de>
Subject: Re: [PATCH 2/3] ARM: dts: imx6qdl-zii-rdu2: Fix accelerometer
 interrupt-names
From: Lucas Stach <l.stach@pengutronix.de>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, 
 linux-arm-kernel@lists.infradead.org
Date: Tue, 22 Oct 2019 18:04:25 +0200
In-Reply-To: <20191022040500.18548-2-andrew.smirnov@gmail.com>
References: <20191022040500.18548-1-andrew.smirnov@gmail.com>
 <20191022040500.18548-2-andrew.smirnov@gmail.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_090500_481336_9A6F8189 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, den 21.10.2019, 21:04 -0700 schrieb Andrey Smirnov:
> According to Documentation/devicetree/bindings/iio/accel/mma8452.txt,
> the correct interrupt-names are "INT1" and "INT2", so fix them
> accordingly.
> 
> While at it, modify the node to only specify "INT2" since providing
> two interrupts is not necessary or useful (the driver will only use
> one).
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> [andrew.smirnov@gmail.com modified the patch to drop INT1]
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org,
> Cc: linux-kernel@vger.kernel.org
> ---
> 
> Original patch from Fabio can be seen here:
> 
> https://lore.kernel.org/linux-arm-kernel/20191010125300.2822-1-festevam@gmail.com/
> 
>  arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> index 8d46f7b2722b..a8c86e621b49 100644
> --- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> @@ -358,8 +358,8 @@
>  		compatible = "fsl,mma8451";
>  		reg = <0x1c>;
>  		interrupt-parent = <&gpio1>;
> -		interrupt-names = "int1", "int2";
> -		interrupts = <18 IRQ_TYPE_LEVEL_LOW>, <20 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-names = "INT2";
> +		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
>  	};
>  
>  	hpa2: amp@60 {
> @@ -849,7 +849,6 @@
>  &iomuxc {
>  	pinctrl_accel: accelgrp {
>  		fsl,pins = <
> -			MX6QDL_PAD_SD1_CMD__GPIO1_IO18		0x4001b000
>  			MX6QDL_PAD_SD1_CLK__GPIO1_IO20		0x4001b000
>  		>;
>  	};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
