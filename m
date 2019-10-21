Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595C6DE611
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 10:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WC/p9NY+4ZAOfBJMk8YmuljYdRG9jT5+DUD/qAq345k=; b=YtBU2/t3YSBCze
	zTwrmaiQVGLMh7asXWKJg+dZDHu7Vp8UMeWCpkRUunHeZspMoNnzwaQz5sjBZhYTs7RWxvcSKDySJ
	C0jL8jDinQ/WKcvRxB+VYnZbOe8s2IE6mDAh9wdYOI8CZXtDYyBry/HVq9F8kXq9cAjVH8NxnBj2j
	g2T6I0ZR1wFK6ol/ixeiHQ9TFuOKDkMdv3yLM/LOcRX1fVet/ItjH51o9pehsGcxcOx8hN+PTcRQH
	633+huUJTgA9Q/9QeTwJUi9sU63xXDP9rgyaL9IJIupxLDOaEk6zQvL5MjbZDFLxMsqf/CZKhHr6I
	L9PshGoj01XbAaw6Uyyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSqz-0006vr-Rg; Mon, 21 Oct 2019 08:15:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSqo-0006v6-LO
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 08:15:40 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iMSqi-0000ki-3p; Mon, 21 Oct 2019 10:15:32 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iMSqg-0008Os-FJ; Mon, 21 Oct 2019 10:15:30 +0200
Date: Mon, 21 Oct 2019 10:15:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH] ARM: dt: add fxos8700 on gateworks boards
Message-ID: <20191021081530.frhbez44x6gwosvi@pengutronix.de>
References: <20191018232049.4045-1-rjones@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018232049.4045-1-rjones@gateworks.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:09:31 up 156 days, 14:27, 97 users,  load average: 0.16, 0.12,
 0.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_011538_702810_C277730B 
X-CRM114-Status: GOOD (  16.69  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

please don't use 'ARM: dt: ..' instead you should name it 'ARM: dts:
imx6qdl-gw5x:'.

On 19-10-18 16:20, Robert Jones wrote:
> Add fxos8700 iio imu entries for Gateworks SBCs.
> 
> Signed-off-by: Robert Jones <rjones@gateworks.com>
> ---
>  arch/arm/boot/dts/imx6qdl-gw52xx.dtsi | 5 +++++
>  arch/arm/boot/dts/imx6qdl-gw53xx.dtsi | 5 +++++
>  arch/arm/boot/dts/imx6qdl-gw54xx.dtsi | 5 +++++
>  3 files changed, 15 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> index 1a9a9d9..ffc4449 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> @@ -306,6 +306,11 @@
>  		VDDIO-supply = <&reg_3p3v>;
>  	};
>  
> +	fxos8700@1e {
> +		compatible = "nxp,fxos8700";

I grep'd the whole tree and found no such compatible. I don't know the
rule but IMHO if there isn't a driver we shouldn't add the compatible
here.

Regards,
  Marco

> +		reg = <0x1e>;
> +	};
> +
>  	touchscreen: egalax_ts@4 {
>  		compatible = "eeti,egalax_ts";
>  		reg = <0x04>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> index 54b2bea..ebbd1c8 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> @@ -297,6 +297,11 @@
>  		VDDIO-supply = <&reg_3p3v>;
>  	};
>  
> +	fxos8700@1e {
> +		compatible = "nxp,fxos8700";
> +		reg = <0x1e>;
> +	};
> +
>  	touchscreen: egalax_ts@4 {
>  		compatible = "eeti,egalax_ts";
>  		reg = <0x04>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> index 1b6c133..67d4725 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> @@ -354,6 +354,11 @@
>  		VDDIO-supply = <&reg_3p3v>;
>  	};
>  
> +	fxos8700@1e {
> +		compatible = "nxp,fxos8700";
> +		reg = <0x1e>;
> +	};
> +
>  	touchscreen: egalax_ts@4 {
>  		compatible = "eeti,egalax_ts";
>  		reg = <0x04>;
> -- 
> 2.9.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
