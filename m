Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5679F4586F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pTT0ZozdeFY5ZHYmCx42vMPdofc4SCd2VSXwaqM2xQ=; b=Y/u+z/A1YdtFP0
	hY1jXCcgX0Er/fclEUsvaKVEFbtt2leXRLKLkqXU97B5QmqBJ8DAR/C74bJL2vSrKC5xFduuse23m
	YBWO1pzU0vUs8lSAt+5jqod7N7v+vQa87pu/C1JElBK/EmUjNIyp1oyX9CyB/PyTIMIKWysyw8vrk
	0iz/NEHKunyT3JvpMA88PIXn1tSQ7knrY0i+elMGeZlH6KmskFYYqVXcyy0V4u5oMHrJapDQhv5cm
	lgy9puPBrdKZLYwi0Dofh+2RCIrepKqtF3Va7P/8bNKLj3f7cfwL3Wp2HuLSM7Njq4QwZGdPkAuwa
	67+7v85uxYXwQhMEtZ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiLx-0005fs-SL; Fri, 14 Jun 2019 09:18:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiLc-0005fK-22; Fri, 14 Jun 2019 09:18:13 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbiLY-00041V-D9; Fri, 14 Jun 2019 11:18:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH] clk: rockchip: select hdmiphy clock source for rk3228
Date: Fri, 14 Jun 2019 11:18:07 +0200
Message-ID: <4689860.tqrvb1PrOO@phil>
In-Reply-To: <20190612133343.28309-1-justin.swartz@risingedge.co.za>
References: <20190612133343.28309-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_021812_250626_54E21C3F 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Mittwoch, 12. Juni 2019, 15:33:43 CEST schrieb Justin Swartz:
> Unless explictly configured by a bootloader, the hdmiphy clock parent
> defaults to the xin24m clock source. This configuration does not yield
> any HDMI video output, so let hdmiphy_phy (the HDMI PHY output clock)
> be the parent instead.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

Mainly for having breadcrumbs for people skimming the lists,
I've adapted this to use assigned-clocks instead of hardcoding.

See the dts-thread for further infos:
https://lore.kernel.org/linux-arm-kernel/1854794.0zkvb3x0FP@phil/T/#mf86ab45e07442ab2b25c67f423ebc4130259f6b0

Heiko


> ---
>  drivers/clk/rockchip/clk-rk3228.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
> index 1c5267d134ee..00a195e6c014 100644
> --- a/drivers/clk/rockchip/clk-rk3228.c
> +++ b/drivers/clk/rockchip/clk-rk3228.c
> @@ -699,6 +699,9 @@ static void __init rk3228_clk_init(struct device_node *np)
>  		return;
>  	}
>  
> +	/* Let hdmiphy_phy be the parent of the hdmiphy clock. */
> +	writel_relaxed(HIWORD_UPDATE(0, 1, 13), reg_base + RK2928_MISC_CON);
> +
>  	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
>  	if (IS_ERR(ctx)) {
>  		pr_err("%s: rockchip clk init failed\n", __func__);
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
