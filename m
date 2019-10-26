Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4F7E5981
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 11:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3D3qgefdOil1qWRePPJ8+UUATYu9SRuc0Rgc6M8NBEQ=; b=lUwaYuFmNpbfn/
	7oCKnoZd8RaZlRxiwxub3NEWZoC2Ld0RbtfJ+mRTGoZ5olc3K0P1nqmrf7zk9uHBDd9HjdAKenjjc
	y2vn6oaOR8eALqSk96Y2NpyJOKZPe/R0yoj3+KNL65jwZufCABiv5nKEGOjPyQ41CwoUE1pvHnh28
	3ewl25OjGTWYJZXb2vzBzo5Nx1GK2+dfHKd5Ezft6+jUhr4G5jbKZ1qgP7f8wbtM+niLXSc3Of6U2
	mvO5CwNldd67V8prsMOSGh3G/FMhP9BFxu4waNZNDURucIvcISrB/Aomg0FjBRVJREYDbPAoVqpZi
	5VnVRTmNa1xNx2ns/O/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOIi7-0003AR-Nh; Sat, 26 Oct 2019 09:50:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOIhw-0002gl-9R
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 09:50:05 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 688CA206DD;
 Sat, 26 Oct 2019 09:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572083403;
 bh=6X+7o3nYmXTXsHrt3fJpGLQ4D2YmwYsckeqeO0iyPBE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VRfM6GkFHiFz61bDBM1gZY69z7MtzF0lhmhYj/eXjcQ/3FGz6yMI0tMvsNaOG0r4T
 tREbXMfsrNdWjxpN/sYtg/TanaasGqIJTPS0eCvYt/Y6Rw2lceE7UqFtQkXiXxeoFC
 AxaPOhTjmcu1phFfy+9LUeH0rmHB/WGEyePbiXE0=
Date: Sat, 26 Oct 2019 17:49:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Wen He <wen.he_1@nxp.com>
Subject: Re: [v3] arm64: dts: ls1028a: Update the property of the DT node dpclk
Message-ID: <20191026094948.GF14401@dragon>
References: <20191014071327.28961-1-wen.he_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014071327.28961-1-wen.he_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_025004_356693_6077DD2F 
X-CRM114-Status: GOOD (  13.88  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 linux-devel@linux.nxdi.nxp.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 03:13:27PM +0800, Wen He wrote:
> Update the property #clock-cells = <1> to #clock-cells = <0> of the
> dpclk, since the Display output pixel clock driver provides single
> clock output.
> 
> Signed-off-by: Wen He <wen.he_1@nxp.com>

The patch subject can be more specific like:

  arm64: dts: ls1028a: Update #clock-cells of dpclk node

I updated it and applied patch.

Shawn

> ---
> change in v3:
>         - according the maintainer correction node name
>         - update the commit message
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 51fa8f57fdac..616b150a15aa 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -82,7 +82,7 @@
>  	dpclk: clock-controller@f1f0000 {
>  		compatible = "fsl,ls1028a-plldig";
>  		reg = <0x0 0xf1f0000 0x0 0xffff>;
> -		#clock-cells = <1>;
> +		#clock-cells = <0>;
>  		clocks = <&osc_27m>;
>  	};
>  
> @@ -665,7 +665,7 @@
>  		interrupts = <0 222 IRQ_TYPE_LEVEL_HIGH>,
>  			     <0 223 IRQ_TYPE_LEVEL_HIGH>;
>  		interrupt-names = "DE", "SE";
> -		clocks = <&dpclk 0>, <&clockgen 2 2>, <&clockgen 2 2>,
> +		clocks = <&dpclk>, <&clockgen 2 2>, <&clockgen 2 2>,
>  			 <&clockgen 2 2>;
>  		clock-names = "pxlclk", "mclk", "aclk", "pclk";
>  		arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
