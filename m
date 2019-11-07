Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF45F3669
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 18:58:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fsUbH3WPZkpCs7WowNMENv9xci14kuaLXy84RBsY4E=; b=qutfHuTjV7N8EH
	9prkt0LcnS+/HaFtsgNu+2dxYdVwt4pBI9d94LZ330hEJBUyBxgT5X/ZmS3x1B4KZf+4auTzbY2pf
	+/ySzalbQCmwJ3SdMCAs/i1+fVVPKShy8deatyVbyO+yMPSdBxi6hIetZzB+UH0OG9+AAb6DLRsnB
	GGjjO1A+45/8Mv+JPGuOvvid7J1H3ghCyFADHWKshLlUVFFhF5W+i26D0PKmqsQuVRzqW0R41QSgO
	bf1w4sw7k8QZBgveNKCOpdbyrMwCqxr21mT1/Xvbs/BqMnUdRiofRFSPVo5ngGW2TezYVjM27+o54
	3Wko1/qrPPjOfb0AHg9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSm2p-0001ov-20; Thu, 07 Nov 2019 17:58:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSm2i-0001nv-Il
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 17:58:01 +0000
Received: from litschi.hi.pengutronix.de
 ([2001:67c:670:100:feaa:14ff:fe6a:8db5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <m.tretter@pengutronix.de>)
 id 1iSm2b-00008c-Ap; Thu, 07 Nov 2019 18:57:53 +0100
Date: Thu, 7 Nov 2019 18:57:51 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: Re: [PATCH] clk: zynqmp: Add support for clock with
 CLK_DIVIDER_POWER_OF_TWO flag
Message-ID: <20191107185751.4bb873d9@litschi.hi.pengutronix.de>
In-Reply-To: <1573116902-7240-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573116902-7240-1-git-send-email-rajan.vaja@xilinx.com>
Organization: Pengutronix
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:feaa:14ff:fe6a:8db5
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_095800_619110_2D6163C4 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, sboyd@kernel.org,
 mturquette@baylibre.com, Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, jollys@xilinx.com,
 kernel@pengutronix.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 07 Nov 2019 00:55:02 -0800, Rajan Vaja wrote:
> From: Tejas Patel <tejas.patel@xilinx.com>
> 
> Existing clock divider functions is not checking for
> base of divider. So, if any clock divider is power of 2
> then clock rate calculation will be wrong.
> 
> Add support to calculate divider value for the clocks
> with CLK_DIVIDER_POWER_OF_TWO flag.
> 
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---
>  drivers/clk/zynqmp/divider.c | 36 +++++++++++++++++++++++++++++++-----
>  1 file changed, 31 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
> index d8f5b70d..ce63cf5 100644
> --- a/drivers/clk/zynqmp/divider.c
> +++ b/drivers/clk/zynqmp/divider.c
> @@ -2,7 +2,7 @@
>  /*
>   * Zynq UltraScale+ MPSoC Divider support
>   *
> - *  Copyright (C) 2016-2018 Xilinx
> + *  Copyright (C) 2016-2019 Xilinx
>   *
>   * Adjustable divider clock implementation
>   */
> @@ -44,9 +44,26 @@ struct zynqmp_clk_divider {
>  };
>  
>  static inline int zynqmp_divider_get_val(unsigned long parent_rate,
> -					 unsigned long rate)
> +					 unsigned long rate, u16 flags)
>  {
> -	return DIV_ROUND_CLOSEST(parent_rate, rate);
> +	int up, down;
> +	unsigned long up_rate, down_rate;
> +
> +	if (flags & CLK_DIVIDER_POWER_OF_TWO) {
> +		up = DIV_ROUND_UP_ULL((u64)parent_rate, rate);
> +		down = parent_rate / rate;

Maybe use DIV_ROUND_DOWN_ULL()?

> +
> +		up = __roundup_pow_of_two(up);
> +		down = __rounddown_pow_of_two(down);
> +
> +		up_rate = DIV_ROUND_UP_ULL((u64)parent_rate, up);
> +		down_rate = DIV_ROUND_UP_ULL((u64)parent_rate, down);
> +
> +		return (rate - up_rate) <= (down_rate - rate) ? up : down;

The calculation looks correct. Maybe there could be a common helper
with the _div_round_closest() function?

> +
> +	} else {
> +		return DIV_ROUND_CLOSEST(parent_rate, rate);
> +	}
>  }
>  
>  /**
> @@ -78,6 +95,9 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
>  	else
>  		value = div >> 16;
>  
> +	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
> +		value = 1 << value;

Not sure, but I think a small helper similar to _get_div() would help
with the readability. Just hide the difference between the normal and
power of two divisors behind some helper functions.

Michael

> +
>  	if (!value) {
>  		WARN(!(divider->flags & CLK_DIVIDER_ALLOW_ZERO),
>  		     "%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
> @@ -120,10 +140,13 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
>  		else
>  			bestdiv  = bestdiv >> 16;
>  
> +		if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
> +			bestdiv = 1 << bestdiv;
> +
>  		return DIV_ROUND_UP_ULL((u64)*prate, bestdiv);
>  	}
>  
> -	bestdiv = zynqmp_divider_get_val(*prate, rate);
> +	bestdiv = zynqmp_divider_get_val(*prate, rate, divider->flags);
>  
>  	if ((clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && divider->is_frac)
>  		bestdiv = rate % *prate ? 1 : bestdiv;
> @@ -151,7 +174,7 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
>  	int ret;
>  	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
>  
> -	value = zynqmp_divider_get_val(parent_rate, rate);
> +	value = zynqmp_divider_get_val(parent_rate, rate, divider->flags);
>  	if (div_type == TYPE_DIV1) {
>  		div = value & 0xFFFF;
>  		div |= 0xffff << 16;
> @@ -160,6 +183,9 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
>  		div |= value << 16;
>  	}
>  
> +	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
> +		div = __ffs(div);
> +
>  	ret = eemi_ops->clock_setdivider(clk_id, div);
>  
>  	if (ret)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
