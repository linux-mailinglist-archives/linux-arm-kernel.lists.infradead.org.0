Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869A113D91B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:36:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHMcOkWXfg7NqI7tnn9VRpTGPJeqEij5DLw+k2rJuJA=; b=mvk+Wskb1MyTsI
	/fAmoccfAgNemD2tG5QsP1m+F0j54ZeGIqtf8/AyiuXLNhoHhC/Tg2we2jCGQX0dm7CjF/zha2sYX
	0U2SsKpWBAxHfTjWLq5fCnYSxf8d1yw8RABIRE75p1O16DkeVVWd0+Y8Us+i/eObPYaNYOCCDpFrU
	IX4rRzSEzn7Es7vrLKccQeU3gVKsF5OsaNHBYmMP1zqaoWyAFsZwntN/e/NaqFmrTp+EcK6FGlamE
	1Gde168peatxuw2clN3db1siiph9cF1VONulO8vDwPiH0Bdrc11J6vySP/dm+C9u9lS/7YdFwObFn
	GvLM/sBLFLXvTAo9vZZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3RX-0001DC-78; Thu, 16 Jan 2020 11:36:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3RL-0001CX-U3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:36:00 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1is3R7-00072N-2n; Thu, 16 Jan 2020 12:35:41 +0100
Message-ID: <d3b02f79be206a14d7810c42e08ab9e224f40ae2.camel@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: colibri-imx7: fix ethernet performance
From: Lucas Stach <l.stach@pengutronix.de>
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>, 
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>
Date: Thu, 16 Jan 2020 12:35:40 +0100
In-Reply-To: <20200116101313.2524795-1-oleksandr.suvorov@toradex.com>
References: <20200116101313.2524795-1-oleksandr.suvorov@toradex.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_033555_972163_EDEC7740 
X-CRM114-Status: GOOD (  13.66  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Igor Opanyuk <igor.opanyuk@toradex.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Do, 2020-01-16 at 10:13 +0000, Oleksandr Suvorov wrote:
> Performance test of ethernet interface shows extremely low result:
> 
> === w/o fix =================
> Connecting to host 192.168.x.x, port 5201
> [  5] local 192.168.x.y port59020 connected to 192.168.x.x port 5201
> ...
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.00  sec  2.78 MBytes  2.33 Mbits/sec  337      sender
> [  5]   0.00-10.00  sec  2.66 MBytes  2.23
> Mbits/sec           receiver
> =============================
> 
> Adding correct settings of the mdio bus with the respective phy
> fixes this issue.

So what's the actual issue being fixed here? High packet loss due to
trying to force GBit speeds through 100MBit magnetics? So the addition
of "max-speed = <100>;" is the real core of the fix?

The commit log should mention this.

Regards,
Lucas

> 
> === after fix ===============
> iperf3 -c 192.168.x.x
> Connecting to host 192.168.x.x, port 5201
> [  5] local 192.168.x.y port 50702 connected to 192.168.x.x port 5201
> ...
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.00  sec   114 MBytes  95.4 Mbits/sec   56      sender
> [  5]   0.00-10.00  sec   112 MBytes  94.1
> Mbits/sec           receiver
> =============================
> 
> Fixed: commit b326629f25b7 ("ARM: dts: imx7: add Toradex Colibri
>                     iMX7S/iMX7D support")
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> 
> ---
> 
>  arch/arm/boot/dts/imx7-colibri.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> b/arch/arm/boot/dts/imx7-colibri.dtsi
> index d05be3f0e2a7..7b6a7c124345 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -115,7 +115,20 @@ &fec1 {
>  	assigned-clock-rates = <0>, <100000000>;
>  	phy-mode = "rmii";
>  	phy-supply = <&reg_LDO1>;
> +	phy-handle = <&ethphy0>;
>  	fsl,magic-packet;
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			max-speed = <100>;
> +			micrel,led-mode = <0>;
> +			reg = <0>;
> +		};
> +	};
>  };
>  
>  &flexcan1 {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
