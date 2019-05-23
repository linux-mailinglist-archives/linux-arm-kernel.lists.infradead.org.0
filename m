Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCBD27D21
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 14:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJ9u83okjOluzIFzPOTVvwss8l/FtezsdU2O8C0ctRA=; b=OOP7OFzV+LOrTh
	CYpWplwsZQ/wapKSsXDCFu35+uHvOU3bfAuQiZUmWKHPHILk5DscCycwuiKhEIJ2EYFKUHHH1E87V
	PwbD1GnrjI4Yqh2H2Gl3nPXy7Kji/U/5ycJvlZ0cLclba8sXBJcTPccEAoRYyONkmBCNw7JCIW48/
	997RQHxnl8v8j+/My85SihnsbEJBJLqlxYVk9Uk0Shfshz7xG3zQC8cZ0eTB+cUwYtomctxKgh9OR
	vkujcllaK2BPGXoXt6pXUKjn8vQe4JneLGgeTzPPrwCGDpvKJl9tXH+vvJ2uOawd3rkXiPmE5L4Fb
	I8/rlV51W/D01tENOX+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTn9p-0001Cm-K0; Thu, 23 May 2019 12:49:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTn9h-0001C2-PE
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 12:49:11 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B3F3821019;
 Thu, 23 May 2019 12:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558615749;
 bh=g7j2U62ETM/CfVTkfqNEarGmBDOCA3a/rrw2qe9DprM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PPW/6mG7vewO2NbAd0kFIjtyYvLRGdmge0Ey2nJ2ExENJxDwn1c3MKM6ZRxm1eknj
 gE/CRIT0hQ2bcizugjxoty17Y8C6NcLKmte0W8iKuw93ZJJzHOOwSP//JsU8BhA+bn
 eeZJ+LN928b4znRYwQpNUiKH09Klj/ZnJd9T+1WU=
Date: Thu, 23 May 2019 20:48:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Pankaj Bansal <pankaj.bansal@nxp.com>
Subject: Re: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
Message-ID: <20190523124806.GU9261@dragon>
References: <20190521150336.8409-1-pankaj.bansal@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521150336.8409-1-pankaj.bansal@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_054909_832184_67BF8650 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rajesh Bhagat <rajesh.bhagat@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Mingkai Hu <mingkai.hu@nxp.com>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 09:40:09AM +0000, Pankaj Bansal wrote:
> The qspi flash in ls1046a based QDS and RDB boards can operate
> at 50MHz frequency.
> Therefore, update the maximum supported freq in their respective
> dts files.
> 
> Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>

Do not use base64 encoding for patch posting.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts | 4 ++--
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 5 +++--
>  2 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> index eec62c63dafe..e441dbfbfb81 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> @@ -3,7 +3,7 @@
>   * Device Tree Include file for Freescale Layerscape-1046A family SoC.
>   *
>   * Copyright 2016 Freescale Semiconductor, Inc.
> - * Copyright 2018 NXP
> + * Copyright 2018-2019 NXP
>   *
>   * Shaohui Xie <Shaohui.Xie@nxp.com>
>   */
> @@ -169,7 +169,7 @@
>  		compatible = "spansion,m25p80";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -		spi-max-frequency = <20000000>;
> +		spi-max-frequency = <50000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
>  		reg = <0>;
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> index 6a6514d0e5a9..6f5411d09bb9 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> @@ -3,6 +3,7 @@
>   * Device Tree Include file for Freescale Layerscape-1046A family SoC.
>   *
>   * Copyright 2016 Freescale Semiconductor, Inc.
> + * Copyright 2019 NXP
>   *
>   * Mingkai Hu <mingkai.hu@nxp.com>
>   */
> @@ -105,7 +106,7 @@
>  		compatible = "spansion,m25p80";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -		spi-max-frequency = <20000000>;
> +		spi-max-frequency = <50000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
>  		reg = <0>;
> @@ -115,7 +116,7 @@
>  		compatible = "spansion,m25p80";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -		spi-max-frequency = <20000000>;
> +		spi-max-frequency = <50000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
>  		reg = <1>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
