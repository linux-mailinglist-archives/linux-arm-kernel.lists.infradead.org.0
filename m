Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816C1CE14D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bohLKTGQhrvQbbmu4/m+ohE5FGMnfY7y5o2rQbsRAqA=; b=sZymfpSk6+knNe
	HTKj6aQWAaN3HU1/OUuXzhWmDMJkPvsUEVv4cvPS/+mxKFw/nqws7RYEUsvJx2EFNdgo58bp7N4AX
	QI22qUGFglf/Rsmn8yXpW30LkETivPwNswuUJN4rAif/aGJunNZ3b/+IeDpp+oQWWzp3yxlKX6+qx
	HVOUR6Q8qU034WErZDuRTfyAJVnu/PsqRJImyV8oXdM8FHIfbbxzd9VrTPFb6VzVLrC5B+JiN1cFN
	4e1VN7ayUwWuyBGC5ClTNBdP0iDRV3C/M/D/0gLz4pJw1aWkXvQ3iJSH4DfYCqjDTkVX9GRVRe74q
	vaKWvv2PFRmcFlhMBjvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRsx-000720-LX; Mon, 07 Oct 2019 12:13:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRsV-0006sO-Vc
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:12:41 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF39520867;
 Mon,  7 Oct 2019 12:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570450359;
 bh=g8uLw0ZQWgRMfDcfqOp79RUp0c5KxxYpTy2Z6/fqPZw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L9lGLL4yFcC16MaugULe+6KFErOlKULLqKFENCoEI9pcqsOrsNJhXNI/joTrefpbc
 hNgjk5Ez0AqLgP1fq0t1KAfbM1TUMEOIgkTPhDnyzJNWYtU/6msoploZJQENFnuZH+
 Qun7anLot6A/Yd3prD7gkOt68NFNVWnimKpv06kg=
Date: Mon, 7 Oct 2019 20:12:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/3] arm64: dts: imx8mq: Use correct clock for usdhc's
 ipg clk
Message-ID: <20191007121204.GI7150@dragon>
References: <1568869559-28611-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568869559-28611-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_051240_172026_2FC6BBEE 
X-CRM114-Status: GOOD (  13.56  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, angus@akkea.ca,
 ping.bai@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 daniel.baluta@nxp.com, s.hauer@pengutronix.de, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, abel.vesa@nxp.com, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 01:05:57PM +0800, Anson Huang wrote:
> On i.MX8MQ, usdhc's ipg clock is from IMX8MQ_CLK_IPG_ROOT,
> assign it explicitly instead of using IMX8MQ_CLK_DUMMY.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Fixes tag?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index fd42bee..e2c95ad 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -850,7 +850,7 @@
>  				             "fsl,imx7d-usdhc";
>  				reg = <0x30b40000 0x10000>;
>  				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clk IMX8MQ_CLK_DUMMY>,
> +				clocks = <&clk IMX8MQ_CLK_IPG_ROOT>,
>  				         <&clk IMX8MQ_CLK_NAND_USDHC_BUS>,
>  				         <&clk IMX8MQ_CLK_USDHC1_ROOT>;
>  				clock-names = "ipg", "ahb", "per";
> @@ -867,7 +867,7 @@
>  				             "fsl,imx7d-usdhc";
>  				reg = <0x30b50000 0x10000>;
>  				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clk IMX8MQ_CLK_DUMMY>,
> +				clocks = <&clk IMX8MQ_CLK_IPG_ROOT>,
>  				         <&clk IMX8MQ_CLK_NAND_USDHC_BUS>,
>  				         <&clk IMX8MQ_CLK_USDHC2_ROOT>;
>  				clock-names = "ipg", "ahb", "per";
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
