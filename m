Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0255D1B0EF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vrfceP+Sd/uoZinMgQm6N3fn2chFeWYUIFc18rrTCU=; b=Mhw6aDkMwS9efH
	y7s/nwsbvILJylX5KHUvQswUqhyX+m7AQpUke0XAFDv+PYl3LTDfoEoBfV5zVSXHCKRyMnjpwS46y
	aZJhol/MMqBGInFLX6FQJxqB9IqeTwgazsQkbikJeLT3eABJM/kP2BcP5jS934KPfMTAl58UYRD5E
	9v9uMd1cWKnavWC0wvJ3BUMW2bmRKqCPduqkgE8stTvuFziLHUbF9o7gCGM32wVi9uIG1XstMfz8w
	DgslY6o2yechZ7g0u8mB6TGXVlqKr9NHToOr6oCZv4f6weW/xWDJ4c68LEMERmKPO4FsOuhyNCYyq
	vtPVL/n+fx4Rr6iBE90g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXpP-00012n-Dq; Mon, 20 Apr 2020 14:55:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXpC-0000Go-Io
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:55:08 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D72C3206F6;
 Mon, 20 Apr 2020 14:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587394506;
 bh=mVEx3XY90SEpTFNM9MsmAdX5zzmMS+Pek1Ko35DoHGc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RjI9Q0xUzkfvTN4Kl2yjClEdUmVRl9wkGgCHQIjBTGpti48OHUrnXIwAtcnY+TGJ1
 9c1mfV8JXFmKyr7PbNilidjiX2RPiCQYR+Bz1afYm2EobOfyfB/z0BFBkF7j1v9wtV
 RX3F1IqZghJwU5oA/IbEwz88bIti8eYUQXgrdW5I=
Date: Mon, 20 Apr 2020 22:54:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH] arm64: dts: imx8mq-librem5-devkit: Use 0.9V for VDD_GPU
Message-ID: <20200420145459.GE32419@dragon>
References: <d9bfb11e3d66376792089d54d7d52fe3778efa33.1584636213.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9bfb11e3d66376792089d54d7d52fe3778efa33.1584636213.git.agx@sigxcpu.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_075506_681117_5016B10D 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Martin Kepplinger <martink@posteo.de>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 05:46:02PM +0100, Guido G=FCnther wrote:
> According to the imx8mq data sheet running VDD_GPU at 0.9V is enough
> when not overclocking to 1GHz (which we currently don't do).
> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>

It doesn't apply to my branch.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/ar=
ch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index c47a26cf8e43..736b250bc9c2 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -318,7 +318,7 @@
>  				regulator-min-microvolt =3D <700000>;
>  				regulator-max-microvolt =3D <1300000>;
>  				regulator-always-on;
> -				rohm,dvs-run-voltage =3D <1000000>;
> +				rohm,dvs-run-voltage =3D <900000>;
>  			};
>  =

>  			buck4_reg: BUCK4 {
> -- =

> 2.23.0
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
