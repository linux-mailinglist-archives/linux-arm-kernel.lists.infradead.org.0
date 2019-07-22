Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6576F7FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 05:35:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTGSZtjaX81NH/Aju97rPnKa84sPmrjLkii7g+wajlg=; b=OiEsTn1nygBrlg
	/v+WBfsrF7dJja+dhgAl8D3RP5oUaDJaHeaFf/did8eG7bAMsfKto3aZkUg5mCOqDPP2ilGBpB5ZT
	XypOOrtGZajr+jh7XbbESwIr4wMVkHXeqkN0lj3K35a1xghKpOZCciR3WXotrzoSTuTqadPTfZYpU
	W/qPT6IAtl+IvlpqTcIRpzTi6nVzaWOvlmcZ3Npfmpp5Pdrd3lws6sM+V4oGhCtuiQuRH0XhAlvxs
	foK9qAlG6cpnDXLBLiHbVrMI0qbVCEyJyMOGyaomToKfTzr7up7jufR2vTecsnUfAjUSvWi+2u2iv
	gXeuHPqoY/7qZwZRK+Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpP6T-0006xW-FO; Mon, 22 Jul 2019 03:35:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpP66-0006ws-Sf
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 03:34:48 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74CAB20821;
 Mon, 22 Jul 2019 03:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563766486;
 bh=KOxZPjyK9INnzYcIKi8Kw5IoLDhXg2vltv5ZVrxbMxM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XLWFiu9I+GRhAgwOajCy/jahWvlNp0VbvlmGCPVCn7KrwLgzbhPMYPctTP6ptiOU6
 YvXZNLGgovVynGo5k2VM3qUA9/ZH6gJARzOjJ4L/9pr4J3jvUr/TrInrXBzj5bfq1I
 8T4oWnuQoEtwoDtXutRtBgvxB+Cu1FP3HUrTWNMc=
Date: Mon, 22 Jul 2019 11:34:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: jun.li@nxp.com
Subject: Re: [PATCH 3/5] clk: imx8mm: correct the usb1_ctrl parent to be
 usb_bus
Message-ID: <20190722033418.GX3738@dragon>
References: <20190703072327.38165-1-jun.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703072327.38165-1-jun.li@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_203446_949315_F51F1000 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Peter.Chen@nxp.com, peng.fan@nxp.com,
 ping.bai@nxp.com, Anson.Huang@nxp.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, daniel.baluta@nxp.com, s.hauer@pengutronix.de,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, aisheng.dong@nxp.com, leonard.crestez@nxp.com,
 festevam@gmail.com, mturquette@baylibre.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 03:23:25PM +0800, jun.li@nxp.com wrote:
> From: Li Jun <jun.li@nxp.com>
> 
> Per latest imx8mm datasheet of CCM, the parent of usb1_ctrl_root_clk
> should be usb_bus.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>

I only received 3 patches as a series.  In that case, the patches should
have subject prefix like '[PATCH 1/3]' ...

The patches look good to me.  Applied all 3, thanks.

Shawn

> ---
>  drivers/clk/imx/clk-imx8mm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 6b8e75d..735cf9d 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -631,7 +631,7 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
>  	clks[IMX8MM_CLK_UART2_ROOT] = imx_clk_gate4("uart2_root_clk", "uart2", base + 0x44a0, 0);
>  	clks[IMX8MM_CLK_UART3_ROOT] = imx_clk_gate4("uart3_root_clk", "uart3", base + 0x44b0, 0);
>  	clks[IMX8MM_CLK_UART4_ROOT] = imx_clk_gate4("uart4_root_clk", "uart4", base + 0x44c0, 0);
> -	clks[IMX8MM_CLK_USB1_CTRL_ROOT] = imx_clk_gate4("usb1_ctrl_root_clk", "usb_core_ref", base + 0x44d0, 0);
> +	clks[IMX8MM_CLK_USB1_CTRL_ROOT] = imx_clk_gate4("usb1_ctrl_root_clk", "usb_bus", base + 0x44d0, 0);
>  	clks[IMX8MM_CLK_GPU3D_ROOT] = imx_clk_gate4("gpu3d_root_clk", "gpu3d_div", base + 0x44f0, 0);
>  	clks[IMX8MM_CLK_USDHC1_ROOT] = imx_clk_gate4("usdhc1_root_clk", "usdhc1", base + 0x4510, 0);
>  	clks[IMX8MM_CLK_USDHC2_ROOT] = imx_clk_gate4("usdhc2_root_clk", "usdhc2", base + 0x4520, 0);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
