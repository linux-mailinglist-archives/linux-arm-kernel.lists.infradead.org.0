Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7C976119
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JcFGUt9/UIirmePDm2LfSdHZnsMu3Pd72iGNfzSd64=; b=J7I1TRCD2jW4Wt
	cYo4H0QGR1iu0o1aC16D16LLeakMRe3Z8YnzjX8Dt2cjvXkZeCDBVeSyrlW6aGim03BDN3ML6uqKG
	z5TI0xQcjg9oHxGFobmSaSgwAtR19PBX9cbvMZXfGjEhmWasvex6qzFrI81zv1uRK0YwOSR9in7D4
	oQBU832gNYAUZ3Dxlb5eTtgyZX77fcnwQXV5ze7LI9ynTDOn3Ifr+lT+gkWKQVpduT9j2MxT1G769
	23AgCHqBNWu/aYG9U9cutXmh1mvAj2LsI9SA/Yf32IL2WS9kZxefwuKX/dJgHtGO5oP85UZxTZjOX
	0kiiAEjhATJDWCtjltUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvqR-0005jM-UU; Fri, 26 Jul 2019 08:44:56 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvq9-0005j1-MG
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 08:44:39 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6737E1A040A;
 Fri, 26 Jul 2019 10:44:36 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5AA7C1A000A;
 Fri, 26 Jul 2019 10:44:36 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 39A3C205E6;
 Fri, 26 Jul 2019 10:44:36 +0200 (CEST)
Date: Fri, 26 Jul 2019 11:44:36 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Fix boot hang at clk init
Message-ID: <20190726084436.mrpuvzezv3f4ohgo@fsr-ub1664-175>
References: <718c781b77081d6974fd91d5dff7b0f8737757b0.1564048197.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <718c781b77081d6974fd91d5dff7b0f8737757b0.1564048197.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_014437_869499_0741B3B2 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-25 12:50:53, Leonard Crestez wrote:
> The assigned-clock-rates property is incorrect (4 elements while
> assigned-clocks has length 5) and boot hangs while assigning some
> unexpected rates.
> 
> Fix by inserting another <400000000>, the intention is to assign both
> IMX8MM_CLK_AUDIO_AHB and IMX8MM_CLK_IPG_AUDIO_ROOT 400mhz.
> 
> Fixes: df1703896a17 ("arm64: dts: imx8mm: Init rates and parents configs for clocks")
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
> Changes since v1:
> * Insert and 400mhz instead of <0>
> Link to v1: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fpatch%2F11057515%2F&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C3ff24093579746ec316608d710e59733%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636996450584921930&amp;sdata=qEBAnihmelL3S5OK%2BcrNDo5cvno5oIuDWFTlingXFco%3D&amp;reserved=0
> 
> Should probably be squashed into df1703896a17
> 
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index c9a7c0054c5c..7bbdcebc6b57 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -461,10 +461,11 @@
>  						<&clk IMX8MM_SYS_PLL3>,
>  						<&clk IMX8MM_VIDEO_PLL1>;
>  				assigned-clock-parents = <&clk IMX8MM_SYS_PLL3_OUT>,
>  							 <&clk IMX8MM_SYS_PLL1_800M>;
>  				assigned-clock-rates = <0>,
> +							<400000000>,
>  							<400000000>,
>  							<750000000>,
>  							<594000000>;
>  			};
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
