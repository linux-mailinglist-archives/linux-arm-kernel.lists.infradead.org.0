Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D65AE5A5A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 14:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MH3RnzxtZoP+UmApedZFN/NuUwWg/rZ3CCu6vchwgsI=; b=Ok3LfHUfEso8GM
	qX3V3hUepH+kK0TkdZPI/36Gi6qfkv6soKjjkgkjmHefCn7bT0Oz787gRfIIx/UbNPwth9DpoJ/FS
	n7fDSCGQiW/zniduN9TkNJAAYHYacV+OcmO6rfKlzPeFcWFsE5k/PMeH5qIScvSsGb+cv6mzWmikB
	NzxxqxgCPwvmvEaE8Yc2BJEkBku7DBitZQszZg3pCLz7dkUp/SsNYnwb9H5TR3T4aRDQBLR+65PTC
	ugXwR4C2ubgWnZmnEoS+FddB2vq+cuLYtiJnD7PA8knMucOXI4Y0kns4aSAmq5a0tZ2T4xve/xi7n
	E4cvvPz8Rd0XCGUniFuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOKpT-0008Cv-F8; Sat, 26 Oct 2019 12:05:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOKpK-0008CT-ID
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 12:05:51 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99A1D20863;
 Sat, 26 Oct 2019 12:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572091550;
 bh=vEeuAbF0jGSLicUYjS282y4gW60r15/l1Ux0W++rJnE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=umLw596aInWYaJRO3tahHmflItaumE6EkVRvKxXosp1whMOMGE/Lqz4WHoB4+BL8j
 V7hXopcDzTjYbRw+h6qHi4wsEXMDXszu6dU3HCVeVQGf1BNLdv0+RrwpZD6a/F2oZC
 GROa7ECNsXgxL9CfQCOjE6WW05BFcW71VFLZUYHM=
Date: Sat, 26 Oct 2019 20:05:36 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul-14x14-evk.dtsi: configure USBOTG1
 ID pinctrl
Message-ID: <20191026120534.GK14401@dragon>
References: <1571214665-26402-1-git-send-email-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571214665-26402-1-git-send-email-peter.chen@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_050550_623558_40A69DC2 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 04:31:05PM +0800, Peter Chen wrote:
> Without configuring this pinctrl, the ID value can't be got correctly,
> then, the dual-role switch can't work well.
> 
> Reviewed-by: Jun Li <jun.li@nxp.com>
> Signed-off-by: Peter Chen <peter.chen@nxp.com>

Reviewed-by should generally go after Signed-off-by, as you create patch
first and then people review it.

I flipped the order and applied the patch.

Shawn

> ---
>  arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> index c2a9dd57e56a..ed3d993c25f7 100644
> --- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> @@ -266,6 +266,8 @@
>  
>  &usbotg1 {
>  	dr_mode = "otg";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usb_otg1>;
>  	status = "okay";
>  };
>  
> @@ -499,6 +501,12 @@
>  		>;
>  	};
>  
> +	pinctrl_usb_otg1: usbotg1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x17059
> +		>;
> +	};
> +
>  	pinctrl_usdhc1: usdhc1grp {
>  		fsl,pins = <
>  			MX6UL_PAD_SD1_CMD__USDHC1_CMD     	0x17059
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
