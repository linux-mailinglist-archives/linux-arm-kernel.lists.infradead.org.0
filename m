Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBD6CE18A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rffeb7gSAl9+TyzxIpvCd8EbTKgoNJ6zwBDCTzeVog=; b=nM0JqVFnaUaclx
	hTs7sXIFSkjR6fIXRYVHEJFloETFYtvejHk13mQLUZwQV+7Q8P7q+SwQ077+0dfuXLvFFhJWUPpzT
	Y58UwlK69Ta3JP8NnI1PxWsWpc9JxbHYx0f8cUJ5RPcV6xO9XX5k0h8oHQCuQLyKT3kMgmEjkwdgT
	YtyVivi/j6i4Ax/rb/aTs4pdgAE6yhbx7WXrHqzImZccTIkypkQAuDT4YSU1ydNiF+Q+OLmf/lFSL
	QXFT+B90xJGnccPSbxDLVuIg3uYDUQXomm3d+CyrH9Wun830DPp1lYYUWsWJ/DjVJgM6paeAFCbU8
	/N8TvXFeM867Yu1VHMyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHS3O-0002ll-JY; Mon, 07 Oct 2019 12:23:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHS3H-0002lI-H9
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:23:48 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F00DC206BB;
 Mon,  7 Oct 2019 12:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570451027;
 bh=SXqAzMkkc4rgzNayHQj7LNvsnRtyRLfX5eY3NLKcKak=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qgUEdVvE6ILZ+SX1qJ/WP/I3/T/K6UyTfnAfJAsBIdWPv9OxqkxTPuJAsiVm/GCXi
 9c4F2gtfA5FsMZCbjeGoajzqshrk+4I5vl8/9D5qViYJIjT9c2hgheFzTUTIIcCnUN
 y1EgmnPgB52j8rjMiw9/rTb2R0EsgaiIXn5An4KA=
Date: Mon, 7 Oct 2019 20:23:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm-evk: Add i2c3 support
Message-ID: <20191007122313.GJ7150@dragon>
References: <1568886408-18168-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568886408-18168-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_052347_591398_8F4B2630 
X-CRM114-Status: GOOD (  14.60  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ping.bai@nxp.com,
 daniel.baluta@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 05:46:47PM +0800, Anson Huang wrote:
> Enable i2c3 for i.MX8MM EVK board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index f7a15f3..7758c1c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -306,6 +306,13 @@
>  	};
>  };
>  
> +&i2c3 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +};
> +
>  &iomuxc {

The iomuxc node is being put at end of file because of its huge pinctrl
data.  I2C devices should be placed in alphabetical sort though.  Can
you please have a patch moving i2c1 and i2c2 to correct place first,
and then add i2c3?

Shawn

>  	pinctrl-names = "default";
>  
> @@ -355,6 +362,13 @@
>  		>;
>  	};
>  
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C3_SCL_I2C3_SCL			0x400001c3
> +			MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA			0x400001c3
> +		>;
> +	};
> +
>  	pinctrl_pmic: pmicirq {
>  		fsl,pins = <
>  			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x41
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
