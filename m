Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936EE13A069
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 06:05:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EtAy3G4U2ilHH4MLbP5Pa5tSSEAmt6O6QYSgX8IHjQ=; b=t/TK7IcOl1xOPe
	mB1nyGot2DqrhzhrzEh0iYze/tvKuMiDWfMaN9vfn0Qj5ZIteQLU+sBDbtkyusxgNNsKUlhTnsMeq
	khXcqEd7tAdDhL28psyDWqBkCKf2fISQrwyTX6fAY5XYiOP/syXBE67t1yhgUcQxVO1BQanbbLzEi
	NuYalM/4Ztgf7qCHAuAzPcuKDMDNMBad+beeDT7SVlo7o9nBWys3ZogrEiG/An+VJk8qd2mhZSkvW
	ufbhoGoc+ipLNuRPfPuy7AXrol81NBrxGbgQ/cIpRkQruYMg24O2YM1hm/9mo/FvPL9JaaAIeMfS3
	QCmJwFi+MEeVzufw7/OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irEON-0002Qv-LQ; Tue, 14 Jan 2020 05:05:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irEOG-0002Q2-UX; Tue, 14 Jan 2020 05:05:22 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3C40222C3;
 Tue, 14 Jan 2020 05:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578978318;
 bh=INba1xdEIwGsxg5/+8HUTWAWDyD5+1mPLHM16YWCq7c=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=M99tkshMFr0pBW9/iJtP0EuYu8ctbwBfQGSff/xDKd54TT8VlA4efJqny4g1mjL3f
 GPx2wdQffDodKpq6CIejkhJplIL0zrhzNgxbuawv+ORKnzwgej6xRJwF1yAzc6+S68
 M5Y60z4QqkHyoAFc9OAD+PSyonPu1g3TrjT2hB0o=
MIME-Version: 1.0
In-Reply-To: <20200113152656.2313846-1-heiko@sntech.de>
References: <20200113152656.2313846-1-heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: convert rk3036 pll type to use internal
 lock status
To: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 13 Jan 2020 21:05:18 -0800
Message-Id: <20200114050518.D3C40222C3@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_210521_014993_149FBE49 
X-CRM114-Status: GOOD (  10.61  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 mturquette@baylibre.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Heiko Stuebner (2020-01-13 07:26:56)
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index 198417d56300..37378ded0993 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -118,12 +118,30 @@ static int rockchip_pll_wait_lock(struct rockchip_clk_pll *pll)
>  #define RK3036_PLLCON1_REFDIV_SHIFT            0
>  #define RK3036_PLLCON1_POSTDIV2_MASK           0x7
>  #define RK3036_PLLCON1_POSTDIV2_SHIFT          6
> +#define RK3036_PLLCON1_LOCK_STATUS             BIT(10)
>  #define RK3036_PLLCON1_DSMPD_MASK              0x1
>  #define RK3036_PLLCON1_DSMPD_SHIFT             12
> +#define RK3036_PLLCON1_PWRDOWN                 BIT(13)
>  #define RK3036_PLLCON2_FRAC_MASK               0xffffff
>  #define RK3036_PLLCON2_FRAC_SHIFT              0
>  
> -#define RK3036_PLLCON1_PWRDOWN                 (1 << 13)
> +static int rockchip_rk3036_pll_wait_lock(struct rockchip_clk_pll *pll)
> +{
> +       u32 pllcon;
> +       int delay = 24000000;
> +
> +       /* poll check the lock status in rk3399 xPLLCON2 */
> +       while (delay > 0) {
> +               pllcon = readl_relaxed(pll->reg_base + RK3036_PLLCON(1));
> +               if (pllcon & RK3036_PLLCON1_LOCK_STATUS)
> +                       return 0;
> +
> +               delay--;

There isn't any udelay here. So the timeout is just as fast as the CPU
can churn through this? Why not use an actual time? Or use the
readl_poll_timeout() APIs?

> +       }
> +
> +       pr_err("%s: timeout waiting for pll to lock\n", __func__);
> +       return -ETIMEDOUT;
> +}
>  
>  static void rockchip_rk3036_pll_get_params(struct rockchip_clk_pll *pll,
>                                         struct rockchip_pll_rate_table *rate)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
