Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5469CF34F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 17:50:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFK4hEATK4TcnMi9r0H/CLh9+6psZ5+VrQ5OhiyW4Yk=; b=XTA/ZxQIPZV0GO
	6cT3WIbuuySr+oyiNhOMb5ETtakveAXF99U3fDDRw1MgsFWaT9l3RXYrS93kbHBwgOFIc8/mLWNy2
	2KAdiR7LQastFPOfknUWpOQxfrQOHMC0tdGHq0AJdmsnjPVrsVzcl097QIZ36iJFYRnUhR2luCeQd
	guGlz2DU5IqTJJxhFuRt6NJlTADQKOnR+lqQu/MOT1h0YWZPaqlhuXvWy/zt3Ne/Sglewb6clbke/
	yzk/7bUFNknhm5rqVoEu6yjt0aNGRUuUZBLAJwGT7SqRHh3RF7wDCEzsnNqu2D3TJwniTQmdxg41l
	4UYyLCou+YmLJVi6TUWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkyt-0007VB-96; Thu, 07 Nov 2019 16:49:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkyl-0007UG-IW
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 16:49:53 +0000
Received: from litschi.hi.pengutronix.de
 ([2001:67c:670:100:feaa:14ff:fe6a:8db5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <m.tretter@pengutronix.de>)
 id 1iSkyR-0001OE-Fq; Thu, 07 Nov 2019 17:49:31 +0100
Date: Thu, 7 Nov 2019 17:49:28 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: Re: [PATCH] clk: zynqmp: Add support for custom type flags
Message-ID: <20191107174928.71a921f0@litschi.hi.pengutronix.de>
In-Reply-To: <1573117086-7405-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573117086-7405-1-git-send-email-rajan.vaja@xilinx.com>
Organization: Pengutronix
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:feaa:14ff:fe6a:8db5
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_084951_610421_EAD2AF5B 
X-CRM114-Status: GOOD (  19.53  )
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
Cc: gustavo@embeddedor.com, sboyd@kernel.org, mturquette@baylibre.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 jolly.shah@xilinx.com, linux-clk@vger.kernel.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 07 Nov 2019 00:58:06 -0800, Rajan Vaja wrote:
> Store extra custom type flags received from firmware.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>  drivers/clk/zynqmp/clkc.c    | 8 +++++++-
>  drivers/clk/zynqmp/divider.c | 4 ++--
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
> index a11f93e..0dea55e 100644
> --- a/drivers/clk/zynqmp/clkc.c
> +++ b/drivers/clk/zynqmp/clkc.c
> @@ -2,7 +2,7 @@
>  /*
>   * Zynq UltraScale+ MPSoC clock controller
>   *
> - *  Copyright (C) 2016-2018 Xilinx
> + *  Copyright (C) 2016-2019 Xilinx
>   *
>   * Based on drivers/clk/zynq/clkc.c
>   */
> @@ -86,6 +86,8 @@ struct topology_resp {
>  #define CLK_TOPOLOGY_TYPE		GENMASK(3, 0)
>  #define CLK_TOPOLOGY_FLAGS		GENMASK(23, 8)
>  #define CLK_TOPOLOGY_TYPE_FLAGS		GENMASK(31, 24)
> +#define CLK_TOPOLOGY_TYPE_FLAG2		GENMASK(7, 4)

What kind of function do these flags indicate? The name is really not
obvious to me.

I would prefer if the defines are kept in the order of the bits in the
field, i.e., the new define should go between CLK_TOPOLOGY_TYPE and
CLK_TOPOLOGY_FLAGS.

> +#define CLK_TOPOLOGY_TYPE_FLAG_BITS	8
>  	u32 topology[CLK_GET_TOPOLOGY_RESP_WORDS];
>  };
>  
> @@ -396,6 +398,10 @@ static int __zynqmp_clock_get_topology(struct clock_topology *topology,
>  		topology[*nnodes].type_flag =
>  				FIELD_GET(CLK_TOPOLOGY_TYPE_FLAGS,
>  					  response->topology[i]);
> +		topology[*nnodes].type_flag |=
> +			FIELD_GET(CLK_TOPOLOGY_TYPE_FLAG2,
> +				  response->topology[i]) <<
> +			CLK_TOPOLOGY_TYPE_FLAG_BITS;

Shifting the new flags into the existing type_flag field seems like a
source for code that is really difficult to read. Maybe use a new field
in the topology for the new flags with a proper name?

>  		(*nnodes)++;
>  	}
>  
> diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
> index d8f5b70d..d376529 100644
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
> @@ -37,7 +37,7 @@
>   */
>  struct zynqmp_clk_divider {
>  	struct clk_hw hw;
> -	u8 flags;
> +	u16 flags;

This change looks unrelated to the remaining patch.

Michael

>  	bool is_frac;
>  	u32 clk_id;
>  	u32 div_type;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
