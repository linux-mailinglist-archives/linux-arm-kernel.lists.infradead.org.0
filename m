Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11FDBBA06
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXpTc762U1AVM5rbuA8RGgLYbWp3fwQh7PGdl04ktRo=; b=lXrcXSJt5oQsAG
	+jW6dHPzxqd8L/phjGHyZEPPlrsT1wFw1I6Uwss491p3S5+ogwM1sTg15W8ooFV6dn05P8vN0C1bK
	OK0hy7NNY3ytM0pYyQu6/1vFaoUOuG6G1/bjmGrMaDCsytAlmLcjiTKqyRfpwuFiAi9ltBNTv9397
	I9KC7TDV2B1LehVUTA0VEWFzSnTiCluak9r001uypeHGelVZ+nhhsCWxZnuu9Q8+oUCL5HAKSuk99
	A08IhWaAjzdF6nqZU+P3wOrojgyx4DJHAEaK56EICjSHNQ5lUDH7/Gk/01RzDcbqCc9DbCByP2T0i
	LqtAFRGIh2g2Pnfr6cdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCRc3-00027o-Au; Mon, 23 Sep 2019 16:54:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCRbo-00026j-Ky
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:54:45 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1B1C20882;
 Mon, 23 Sep 2019 16:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569257683;
 bh=WIRo18P9vD/7u8trD2h5S5GUAMjZkH6LD3wnIxh+LOU=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=fX3kSzm/O/ZTERhPGEutWFuA1d/8Ed2hikLwxeh5MenpYAXPjUKlP3dfXISawejj5
 xeQc8eKDua9XPOO55Rrz9O1fkhEVBinMe2ccKxfmk32T4jNVJEwGulEIAeRQ2UPToM
 y5+IBkiYLYvmn4dwpBZ97FWmejIAmww4YSNNsOXs=
MIME-Version: 1.0
In-Reply-To: <1569248002-2485-6-git-send-email-laurentiu.palcu@nxp.com>
References: <1569248002-2485-1-git-send-email-laurentiu.palcu@nxp.com>
 <1569248002-2485-6-git-send-email-laurentiu.palcu@nxp.com>
To: Fabio Estevam <festevam@gmail.com>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 5/5] arm64: dts: imx8mq: add DCSS node
User-Agent: alot/0.8.1
Date: Mon, 23 Sep 2019 09:54:42 -0700
Message-Id: <20190923165443.D1B1C20882@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_095444_714196_85B7D882 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, agx@sigxcpu.org, linux-kernel@vger.kernel.org,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Laurentiu Palcu (2019-09-23 07:13:19)
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 52aae34..d4aa778 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -871,6 +871,31 @@
>                                 interrupt-controller;
>                                 #interrupt-cells = <1>;
>                         };
> +
> +                       dcss: dcss@0x32e00000 {

Drop the 0x prefix on node names.

> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +                               compatible = "nxp,imx8mq-dcss";
> +                               reg = <0x32e00000 0x2D000>, <0x32e2f000 0x1000>;
> +                               interrupts = <6>, <8>, <9>;
> +                               interrupt-names = "ctx_ld", "ctxld_kick", "vblank";
> +                               interrupt-parent = <&irqsteer>;
> +                               clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>,
> +                                        <&clk IMX8MQ_CLK_DISP_AXI_ROOT>,
> +                                        <&clk IMX8MQ_CLK_DISP_RTRM_ROOT>,
> +                                        <&clk IMX8MQ_VIDEO2_PLL_OUT>,
> +                                        <&clk IMX8MQ_CLK_DISP_DTRC>;
> +                               clock-names = "apb", "axi", "rtrm", "pix", "dtrc";
> +                               assigned-clocks = <&clk IMX8MQ_CLK_DISP_AXI>,
> +                                                 <&clk IMX8MQ_CLK_DISP_RTRM>,
> +                                                 <&clk IMX8MQ_VIDEO2_PLL1_REF_SEL>;
> +                               assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_800M>,
> +                                                        <&clk IMX8MQ_SYS1_PLL_800M>,
> +                                                        <&clk IMX8MQ_CLK_27M>;
> +                               assigned-clock-rates = <800000000>,
> +                                                          <400000000>;
> +                               status = "disabled";
> +                       };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
