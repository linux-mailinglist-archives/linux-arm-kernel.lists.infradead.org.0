Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7A5D1179
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 16:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zm8zC2+m3WeWodPlHx1tIv7yLL0y54H67sr4+FXCE3A=; b=EypYLiSwI5dbmggi454k3XEOE
	styww4o5jkccj3h/FlevDxNKMccktT4p3oyiiU+lZQgb85rhbYejKHu6LE8ZtjnAIoZaxDsNQ3azp
	SsmWe7/4oYWC2dhx41NILJzaaxoz3mf/FSsru4bTNLmZlfEfAgr3cPsgIpTSE29MDgTX1uQutzJAP
	/rZVgQVvgMMCU+GsO/gOk7uAXkMl3dV8SSc974FecLER8q+5YsXsDqsh3C94DmO1DBQziJ4FcNqR4
	6+CuO9HtW7UXsGg0HIqU7qtkdm08YA8j61j2XT6jY+5GyGov7HRke1uwh+asTDdUYF2MAt/+IsdYW
	Ma/lLG6Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iID8O-0000C4-Qo; Wed, 09 Oct 2019 14:40:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iID8G-0007p1-Ut
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 14:40:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACEA1337;
 Wed,  9 Oct 2019 07:40:02 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 725A43F71A;
 Wed,  9 Oct 2019 07:40:01 -0700 (PDT)
Subject: Re: [PATCH] dts: Disable DMA support on the BK4 vf610 device's
 fsl_lpuart driver
To: Lukasz Majewski <lukma@denx.de>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>
References: <20191009143032.9261-1-lukma@denx.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b39b6860-9e9b-5cee-a07e-7b430c2e5119@arm.com>
Date: Wed, 9 Oct 2019 15:40:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191009143032.9261-1-lukma@denx.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_074005_043553_0E7876BA 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
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
 Sascha Hauer <s.hauer@pengutronix.de>, Stefan Agner <stefan@agner.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 15:30, Lukasz Majewski wrote:
> This change disables the DMA support (RX/TX) on the NXP's fsl_lpuart
> driver - the PIO mode is used instead. This change is necessary for better
> robustness of BK4's device use cases with many potentially interrupted
> short serial transfers.
> 
> Without it the driver hangs when some distortion happens on UART lines.
> 
> Signed-off-by: Lukasz Majewski <lukma@denx.de>
> ---
>   arch/arm/boot/dts/vf610-bk4.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/vf610-bk4.dts b/arch/arm/boot/dts/vf610-bk4.dts
> index 0f3870d3b099..ad20f3442d40 100644
> --- a/arch/arm/boot/dts/vf610-bk4.dts
> +++ b/arch/arm/boot/dts/vf610-bk4.dts
> @@ -259,24 +259,28 @@
>   &uart0 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pinctrl_uart0>;
> +	dma-names = "","";

This looks like a horrible hack - is there any reason not to just strip 
things at compile-time, i.e. "/delete-property/ dmas;"?

Robin.

>   	status = "okay";
>   };
>   
>   &uart1 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pinctrl_uart1>;
> +	dma-names = "","";
>   	status = "okay";
>   };
>   
>   &uart2 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pinctrl_uart2>;
> +	dma-names = "","";
>   	status = "okay";
>   };
>   
>   &uart3 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pinctrl_uart3>;
> +	dma-names = "","";
>   	status = "okay";
>   };
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
