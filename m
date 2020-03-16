Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F92F186152
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10h0B9CfaeqnpT0B/cTbZ/aDBiI81VIwP+cZoSh36vA=; b=SieW8hkmByOKqR
	Ln/EkqSMxb7VqDF/wSJhVpaW67rLDxaAjs6So4c4QatYt8cniSA8pgKXy9TB6DLD/U5fY2161zTl7
	PD+Y2OsePgRcApLokci9ZEvxD6KUGPeX1/3BM7weqIQ3T78h3TUuRynVdizvdqmtS/57ePVXYzgrP
	Cf0c+a8cBxx+ZwWo4c4ktR/O68d2P2rMZpfhGznPF4+F8dPII59H0Ib2vZ9LApccgu/X+vhJ9aVQJ
	rScJ7CGR/LVt9gpEdGo4P8l+bhe/yHCxBAxCHVCeTXUUd6D4uGrDuTDkI2ElLeqq8FzRhVDDQFBta
	mQt8LdwKk787Xvtcvrsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDeam-0005Xk-Cu; Mon, 16 Mar 2020 01:30:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDeae-0005XN-5g
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:30:50 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31ABF206B1;
 Mon, 16 Mar 2020 01:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584322247;
 bh=zZKQ9YwlKWPHfhFtOXe3H4O7p6GdPJugvBJuFtTtUb0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gUW6gXYKPfHASRklWFLVF1IuaUU0CcIRDuhBguscxJo/YZfgjAxX2MdhbyDh2fDgr
 94IPqZdpfvsXwRQte0a5pNoK78i1+Qqb90d9+Onth77feP2VATLVG6TJg3WUNI07fx
 q5wbWpfM9dG63QOZAs2uVG86Tu8Wz9aAMI0LTjjU=
Date: Mon, 16 Mar 2020 09:30:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Waibel Georg <Georg.Waibel@wiedemann-group.com>
Subject: Re: [PATCH] clk: imx: imx6ul: change flexcan clock to support CiA
 bitrates
Message-ID: <20200316013040.GP17221@dragon>
References: <1583928220724.65021@wiedemann-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583928220724.65021@wiedemann-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_183048_258009_AF6B519C 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Michel Alex <Alex.Michel@wiedemann-group.com>,
 Appelt Andreas <Andreas.Appelt@wiedemann-group.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 12:03:40PM +0000, Waibel Georg wrote:
> Setting a CAN bitrate of 800kbit/s fails with a bitrate error of 1.3% if the
> flexcan module is clocked at 30MHz (CAN_CLK_ROOT). This patch changes the clock
> frequency from 30MHz to 40MHz which allows to support all bitrates recommended

But code changes IMX6UL_CLK_PLL3_60M to IMX6UL_CLK_PLL3_80M?  Or
IMX6UL_CLK_CAN_SEL is different from CAN_CLK_ROOT in the context?

Shawn

> by CiA.
> 
> Background:
> CAN in Automation document 102 (CiA102) recommends the CAN bitrates 10, 20, 50,
> 125, 250, 500, 800 and 1000kbit/s.
> 
> With the flexcan serial clock at 30MHz (original value) setting some common
> bitrates ("ip link set canX type can bitrate <bitrate>") gives the following
> results:
> requested value / actually set value
> 5000: bitrate 5000 sample-point 0.708
> 10000: bitrate 10000 sample-point 0.866
> 20000: bitrate 20000 sample-point 0.866
> 40000: bitrate 40000 sample-point 0.866
> 50000: bitrate 50000 sample-point 0.866
> 80000: bitrate 80000 sample-point 0.866
> 100000: bitrate 100000 sample-point 0.866
> 125000: bitrate 125000 sample-point 0.875
> 250000: bitrate 250000 sample-point 0.866
> 400000: bitrate 400000 sample-point 0.866
> 500000: bitrate 500000 sample-point 0.866
> 666666: bitrate 666666 sample-point 0.800
> 800000: bitrate 789473 sample-point 0.789 !!!bitrate error 1.3%
> 1000000: bitrate 1000000 sample-point 0.733
> 
> With the flexcan serial clock at 40MHz (new value) we get this:
> 5000: no more possible
> 10000: bitrate 10000 sample-point 0.875
> 20000: bitrate 20000 sample-point 0.875
> 40000: bitrate 40000 sample-point 0.850
> 50000: bitrate 50000 sample-point 0.875
> 80000: bitrate 80000 sample-point 0.850
> 100000: bitrate 100000 sample-point 0.875
> 125000: bitrate 125000 sample-point 0.875
> 250000: bitrate 250000 sample-point 0.875
> 400000: bitrate 400000 sample-point 0.850
> 500000: bitrate 500000 sample-point 0.875
> 666666: bitrate 666666 sample-point 0.800
> 800000: bitrate 800000 sample-point 0.800
> 1000000: bitrate 1000000 sample-point 0.750
> 
> A drawback of the modification is that 5kbit/s is no more supported.
> 
> Setting the flexcan serial clock to 60MHz or 80MHz would produce similar
> results but with losing even more bitrates at the lower end.
> 
> Changing the flexcan serial clock to 40MHz might apply for other SoCs
> using the flaxcan module as well (e.g. imx6q/d/s..). But since I don't
> have such hardware to test I did not add this to the patch.
> 
> Signed-off-by: Georg Waibel <georg.waibel@wiedemann-group.de>
> ---
>  drivers/clk/imx/clk-imx6ul.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
> index dafc8806b03e..5dbb6a937732 100644
> --- a/drivers/clk/imx/clk-imx6ul.c
> +++ b/drivers/clk/imx/clk-imx6ul.c
> @@ -503,7 +503,7 @@ static void __init imx6ul_clocks_init(struct device_node *ccm_node)
>  		clk_prepare_enable(hws[IMX6UL_CLK_USBPHY2_GATE]->clk);
>  	}
>  
> -	clk_set_parent(hws[IMX6UL_CLK_CAN_SEL]->clk, hws[IMX6UL_CLK_PLL3_60M]->clk);
> +	clk_set_parent(hws[IMX6UL_CLK_CAN_SEL]->clk, hws[IMX6UL_CLK_PLL3_80M]->clk);
>  	if (clk_on_imx6ul())
>  		clk_set_parent(hws[IMX6UL_CLK_SIM_PRE_SEL]->clk, hws[IMX6UL_CLK_PLL3_USB_OTG]->clk);
>  	else if (clk_on_imx6ull())
> -- 
> 2.17.1
> 
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
