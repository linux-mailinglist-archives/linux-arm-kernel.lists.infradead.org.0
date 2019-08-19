Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7037192241
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dumYRYEOY+jVR+wWt/3Gm82jfzrQwAr6lDUF6OLvTk0=; b=Lx1B+Cotuj6zhe
	c3iEqZWl4ckcbnU07vmsRQP0yID2518oydtSckU/Dg83wFk/3K6mZ5CAjTln/bmfgREG/TyylIQl2
	teIR3kSvEzlxLd4T9uVIsNCv9/cFdmbB9UIdG7ziyMf0Qd5fC88n77W1v+941RN3SoP3d5gnAGoQQ
	0RsEPm9JAwKt5EVAvJwU4IyoM1wqnf/WO4d1f+Ch6ABQyBYdnbea8uOlcYGsIwmhUqf6+vkoxeExb
	2OKs+n74TPbpJrD/0+nEel8lUxMvFGgwNerCJzhHC4b2AGSb3XDO2wZWkSMJ8qvnQI9iNYl4rZh2s
	FI7izMmQJAwUfS/vOgOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfnZ-00072K-AU; Mon, 19 Aug 2019 11:26:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfnN-00071A-Q3
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:25:55 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC1DA2086C;
 Mon, 19 Aug 2019 11:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566213953;
 bh=clRxM38BHjVRnHIlDBTCGrVwSVY/3cgF0Ls2MuBJJaQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LCGerm8fY3g/P04NCRoiEKuYqX+8276xlU14NIbB5sZrNFwl+7icni9zUmmh0LxdG
 37ons1mvTwKrsMrKh3RTIysDDUzYp7fjGuTFok/rbm0Ytu8wSICvDKSdlNBADa5KVY
 rjiyUbOuG+EfIER+zg6Bau0BESopAPSbXGyrarFE=
Date: Mon, 19 Aug 2019 13:25:40 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 10/21] ARM: dts: imx6qdl-colibri: Add missing pin
 declaration in iomuxc
Message-ID: <20190819112539.GT5999@X250>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-11-philippe.schenker@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812142105.1995-11-philippe.schenker@toradex.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_042553_863407_791677E7 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Michal =?utf-8?B?Vm9rw6HEjQ==?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 02:21:29PM +0000, Philippe Schenker wrote:
> This adds the muxing for the optional pins usb-oc (overcurrent) and
> usb-id.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
> Changes in v4:
> - Add Marcel Ziswiler's Ack
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index 019dda6b88ad..9a63debab0b5 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -615,6 +615,13 @@
>  		>;
>  	};
>  
> +	pinctrl_usbh_oc_1: usbh_oc-1 {

Please name it consistently in the way like:

	pinctrl_xxx: xxxgrp {
		...
	};

Also, it doesn't need to be separate patch but can just be added
together with the device referring to it.

Shawn

> +		fsl,pins = <
> +			/* USBH_OC */
> +			MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x1b0b0
> +		>;
> +	};
> +
>  	pinctrl_spdif: spdifgrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_GPIO_17__SPDIF_OUT 0x1b0b0
> @@ -681,6 +688,13 @@
>  		>;
>  	};
>  
> +	pinctrl_usbc_id_1: usbc_id-1 {
> +		fsl,pins = <
> +			/* USBC_ID */
> +			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x1b0b0
> +		>;
> +	};
> +
>  	pinctrl_usdhc1: usdhc1grp {
>  		fsl,pins = <
>  			MX6QDL_PAD_SD1_CMD__SD1_CMD	0x17071
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
