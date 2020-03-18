Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE0D189A52
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+C6li6hOUb2BxnuYYKzPUHIeDBEihieZYpn06VIeyA=; b=bLPVMBfpLGqiZN
	RE98uwKMFBcDgpEDyyR8Eb3Ys2tTg0it9JcTIWY2vlq3k/S8FXrcykUStYMfaU7xtkjO4Ag4WMoA2
	7GIMZOF+jaKwp89kIi7EZabG2aDn8rneC1FMjx3N8CiLlts6F+rELaln4Zltj1HVIg1ShBgOwxLcq
	QWCTpAmK+XRT3tnnKAy4vI+SYcbVS3TmAJ9IQvR7peURIgfPiyTusq7R/oa7Y/d0K+YK+TAU9eBgK
	2W9tiVExGdc38852VQyxhviMAO5OzkxlI4i07WfMXJQynNzOrDpkd5EmBNqAUL8dag2dX7TQoS7vO
	RuuB1rhldVD+8gQtqMhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWeK-0005j8-EK; Wed, 18 Mar 2020 11:14:12 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWeA-0005iZ-Bl
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:14:03 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E43852003C6;
 Wed, 18 Mar 2020 12:14:00 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D4F96201205;
 Wed, 18 Mar 2020 12:14:00 +0100 (CET)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id BA35820506;
 Wed, 18 Mar 2020 12:14:00 +0100 (CET)
Date: Wed, 18 Mar 2020 13:14:00 +0200
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx: clk-pllv3: Use readl_poll_timeout() for PLL
 lock wait
Message-ID: <20200318111400.ynpazqpzmeyhuyy3@fsr-ub1664-175>
References: <1584502004-11349-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584502004-11349-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_041402_557155_BCB8D15E 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: kstewart@linuxfoundation.org, gustavo@embeddedor.com, sboyd@kernel.org,
 shawnguo@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, tglx@linutronix.de, festevam@gmail.com,
 s.hauer@pengutronix.de, allison@lohutok.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-03-18 11:26:44, Anson Huang wrote:
> Use readl_poll_timeout() for PLL lock wait which can simplify the
> code a lot.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-pllv3.c | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
> index df91a82..3dfa9c3 100644
> --- a/drivers/clk/imx/clk-pllv3.c
> +++ b/drivers/clk/imx/clk-pllv3.c
> @@ -7,6 +7,7 @@
>  #include <linux/clk-provider.h>
>  #include <linux/delay.h>
>  #include <linux/io.h>
> +#include <linux/iopoll.h>
>  #include <linux/slab.h>
>  #include <linux/jiffies.h>
>  #include <linux/err.h>
> @@ -25,6 +26,8 @@
>  #define IMX7_ENET_PLL_POWER	(0x1 << 5)
>  #define IMX7_DDR_PLL_POWER	(0x1 << 20)
>  
> +#define PLL_LOCK_TIMEOUT	10000
> +
>  /**
>   * struct clk_pllv3 - IMX PLL clock version 3
>   * @clk_hw:	 clock source
> @@ -53,23 +56,14 @@ struct clk_pllv3 {
>  
>  static int clk_pllv3_wait_lock(struct clk_pllv3 *pll)
>  {
> -	unsigned long timeout = jiffies + msecs_to_jiffies(10);
>  	u32 val = readl_relaxed(pll->base) & pll->power_bit;
>  
>  	/* No need to wait for lock when pll is not powered up */
>  	if ((pll->powerup_set && !val) || (!pll->powerup_set && val))
>  		return 0;
>  
> -	/* Wait for PLL to lock */
> -	do {
> -		if (readl_relaxed(pll->base) & BM_PLL_LOCK)
> -			break;
> -		if (time_after(jiffies, timeout))
> -			break;
> -		usleep_range(50, 500);
> -	} while (1);
> -
> -	return readl_relaxed(pll->base) & BM_PLL_LOCK ? 0 : -ETIMEDOUT;
> +	return readl_poll_timeout(pll->base, val, val & BM_PLL_LOCK, 500,
> +				  PLL_LOCK_TIMEOUT);
>  }
>  
>  static int clk_pllv3_prepare(struct clk_hw *hw)
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
