Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E1F73EFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzBqBPQ3LxQ/kQteJZ4iMvAxi6HE6kY0QK2+GPmW17I=; b=LLMRm+K17VtW+B
	fU+aXLe2TEvFruTF19ZrC15/zu1/08DaVCMaItfKbINZuXoaIzikGIAoNWg7bX5bf+pMoFR1rbAci
	PPFNXpocsZqJWb39ylZstHMe8qxwwl4Dje/60WQ1OiznxuA+t+mXULpEwV+fEFrbpNCOIO0Hm/kVj
	1i/zrAPvCgUGv/weN9hkYS9BuWWLPC0ZXfMoCuIxKKBhkrWFE0av4PGz2dKh9eH9qzhCJMKQWvBny
	QmBSoIwr/sTjQm/9g2oGPJtjHkp9+UmnQHVqbhAPZNXqCBqhoCB8mR45WXKAFOPK0x4PO8ur4kjkS
	94rVU3RJtzYqRPgu24Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNsh-00016a-Oj; Wed, 24 Jul 2019 20:28:59 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNsU-0000mN-NJ
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 20:28:48 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 748EF200469;
 Wed, 24 Jul 2019 22:28:43 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 66A55200414;
 Wed, 24 Jul 2019 22:28:43 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 49864205D8;
 Wed, 24 Jul 2019 22:28:43 +0200 (CEST)
Date: Wed, 24 Jul 2019 23:28:43 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Fix boot hang at clk init
Message-ID: <20190724202843.o66jwjnid32vyx62@fsr-ub1664-175>
References: <62d9c73aafcdc171edcd9e03fa81f451a42d5227.1563995813.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62d9c73aafcdc171edcd9e03fa81f451a42d5227.1563995813.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_132846_903747_7A147C0A 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-24 22:17:15, Leonard Crestez wrote:
> The assigned-clock-rates property is incorrect (shorter than
> assigned-clocks) and boot hangs becuause incorrect rates are assigned.
> 
> Fix by inserting another <0>
> 
> Fixes: df1703896a17 ("arm64: dts: imx8mm: Init rates and parents configs for clocks")
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
> Found in next-20190724 because that's when df1703896a17 was included.
> Perhaps this should be squashed?
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index c9a7c0054c5c..8737f833cf9c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -461,10 +461,11 @@
>  						<&clk IMX8MM_SYS_PLL3>,
>  						<&clk IMX8MM_VIDEO_PLL1>;
>  				assigned-clock-parents = <&clk IMX8MM_SYS_PLL3_OUT>,
>  							 <&clk IMX8MM_SYS_PLL1_800M>;
>  				assigned-clock-rates = <0>,
> +							<0>,

In our tree we have this in the clock provider:

	clk_set_rate(clks[IMX8MM_CLK_AUDIO_AHB], 400000000);
	clk_set_rate(clks[IMX8MM_CLK_IPG_AUDIO_ROOT], 400000000);


So I guess instead of the newly added <0> you'll have to put <400000000>
which would be the rate for IMX8MM_CLK_IPG_AUDIO_ROOT.

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
