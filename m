Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF98311A524
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:33:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sj2O9GmqUmXorE/+99O3UfvY/IKmS8xFeLoh1JiPDRM=; b=JRcmiwNuao+F9J
	2FUy4n9lMqgr6bLBlzcj6WBSSfFlEaNIwq6/6NPZCq1lxxbr/qAlriTeCHWRrsNe48CljWxmG4QRG
	IPWJBd9F8LRyGDQfqZ5Bo65Zo+Nv1iS1kTwJh/Llssz8e9Ux81NbOOYUDIV6+vlkPAh2JqSPXVqOv
	fUkV06tw5ALlC4SYUCTpu2/H+d+S973QtyFtF3hyXZhw+IcIhHF1eWobW1vArA7JWqP/YJh7rNUG1
	u52pROjWSCXLhp+SnYCnS9dMK+5u6TyBHMAy8e59xgi6Fc26CodowVbGmSPHCH/ZtVExWv5/7L8K8
	mHVCz62ENOkf2RA1xBdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iewVK-0003T8-2f; Wed, 11 Dec 2019 07:33:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iewVB-0003Sd-59
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 07:33:43 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 481F72054F;
 Wed, 11 Dec 2019 07:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576049620;
 bh=wqq8HXBEy6kKnW9r+Hvsm89s6WjUyuoqKasNSnB5z9g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NHj44Wu15jmo2iRTAz85IvchxlBdOCwYDSFxy+6nIgsr+YjswMDHpdEpcXbl65DuL
 mG5JVy5OIFLHkqyq6X/lgloXVAVayxLuxUal4pjCj7R0txuaq0IuDqfZSIq8cYthoM
 WM9r4pO+1yUXsOqglsnceKydti2pe189rgzw+wBU=
Date: Wed, 11 Dec 2019 15:33:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH 1/2] arm64: dts: lx2160a: add MDIO descriptions
Message-ID: <20191211073330.GO15858@dragon>
References: <20191209120010.GG25745@shell.armlinux.org.uk>
 <E1ieHiP-0004wT-2O@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1ieHiP-0004wT-2O@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_233341_213306_71BA0302 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jon Nettleton <jon@solid-run.com>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Rabeeh Khoury <rabeeh@solid-run.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 12:00:37PM +0000, Russell King wrote:
> Add MDIO descriptions to the lx2160a dtsi file, so we can use them in
> the SolidRun Clearfog CX platform.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 0bd98f179bfa..617e1f1a2339 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -863,6 +863,26 @@
>  			fsl,extts-fifo;
>  		};
>  
> +		emdio1: mdio@8b96000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x00 0x8b96000 0x00 0x1000>;
> +			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +			little-endian;
> +			#address-cells = <0x01>;
> +			#size-cells = <0x00>;
> +			status = "disabled";
> +		};
> +
> +		emdio2: mdio@8b97000 {
> +			compatible = "fsl,fman-memac-mdio";
> +			reg = <0x00 0x8b97000 0x00 0x1000>;
> +			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> +			little-endian;
> +			#address-cells = <0x01>;
> +			#size-cells = <0x00>;
> +			status = "disabled";
> +		};
> +

Ioana Ciornei already had a patch [1] adding emdio1, but unfortunately,
emdio2 was missing from there.

Shawn

[1] https://lkml.org/lkml/2019/12/4/675

>  		fsl_mc: fsl-mc@80c000000 {
>  			compatible = "fsl,qoriq-mc";
>  			reg = <0x00000008 0x0c000000 0 0x40>,
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
