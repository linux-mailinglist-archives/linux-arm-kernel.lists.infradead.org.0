Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE9A11C323
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23ixvXHfC8uP9ujVz0A6tvhj+Sh+yMXLXa6ozext2WI=; b=b4ZPa7zJGA8iPT
	Vxuty5VfvMVb7WQCnf1WGTtpyPV8/8Qzt914d6YhFi8GyRXiI2OS6GIi67BYOc2sUIFWpb7Dkxerf
	DQvyMh5bdpdLIc3YXgePdqr8cvKMObzcZWzZ8WkVz/+5t5tjHacrO8z8lg5eWPW0rzkLqnadhr2pB
	eXptIxk6h7xIiYEnSkou6/+Sa5rXgMO2y9Ca6yz8x4BNXkUsRAdMFLtlPSKztOlg0og+m/KJ5k93e
	smijE/4wwwAPaPUwlVyby+BqF3eLOgrbAg3Clz1NanjzDfY5+85H8/3o/mktDlhMAON+98ImKwo4o
	CzuDaJ5wDqVePzk8ce0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifE5P-0003tu-9y; Thu, 12 Dec 2019 02:20:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifE5F-0003ME-LB
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:20:07 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C3A7208C3;
 Thu, 12 Dec 2019 02:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576117204;
 bh=WCnzKfA5mZ8iHgw9EUafDcJ6IlFqAjGtxuR1gUjVxto=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=odb/UIKlx4nrIjmRzmJOiScGwVsZi81CCIvw6Fru+s5tIZo2O5YvqT4A5HdCODp6L
 ts7vr/hsSOCKjh+Iuab/akV9I69OctM0tqmpaGD7owqUw2R1VMu7Us6bzUZ4rcUNPe
 WA75iUe1X4AMTvQn+Xf8iehsTImopA4lCPvYCIcI=
Date: Thu, 12 Dec 2019 10:19:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [v4 2/2] arm64: dts: ls1028a: Update edma compatible to fit eDMA
 driver
Message-ID: <20191212021950.GE15858@dragon>
References: <20191211080749.30751-1-peng.ma@nxp.com>
 <20191211080749.30751-2-peng.ma@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211080749.30751-2-peng.ma@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_182005_718786_36FD7BF3 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 Robin Gong <yibin.gong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 08:09:39AM +0000, Peng Ma wrote:
> The eDMA of LS1028A soc has a little bit different from others, So we
> should distinguish them in driver by compatible.
> 
> Signed-off-by: Peng Ma <peng.ma@nxp.com>
> ---
> Changed for v4
> 	- Add new change patch
> 
>  Documentation/devicetree/bindings/dma/fsl-edma.txt | 1 +

Please have bindings change as a separate patch.

Shawn

>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi     | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/dma/fsl-edma.txt b/Documentation/devicetree/bindings/dma/fsl-edma.txt
> index 29dd3ccb1235..e77b08ebcd06 100644
> --- a/Documentation/devicetree/bindings/dma/fsl-edma.txt
> +++ b/Documentation/devicetree/bindings/dma/fsl-edma.txt
> @@ -10,6 +10,7 @@ Required properties:
>  - compatible :
>  	- "fsl,vf610-edma" for eDMA used similar to that on Vybrid vf610 SoC
>  	- "fsl,imx7ulp-edma" for eDMA2 used similar to that on i.mx7ulp
> +	- "fsl,fsl,ls1028a-edma" for eDMA used similar to that on Vybrid vf610 SoC
>  - reg : Specifies base physical address(s) and size of the eDMA registers.
>  	The 1st region is eDMA control register's address and size.
>  	The 2nd and the 3rd regions are programmable channel multiplexing
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 8e8a77eb596a..b3716a89fa0d 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -316,7 +316,7 @@
>  
>  		edma0: dma-controller@22c0000 {
>  			#dma-cells = <2>;
> -			compatible = "fsl,vf610-edma";
> +			compatible = "fsl,ls1028a-edma";
>  			reg = <0x0 0x22c0000 0x0 0x10000>,
>  			      <0x0 0x22d0000 0x0 0x10000>,
>  			      <0x0 0x22e0000 0x0 0x10000>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
