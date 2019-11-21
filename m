Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7221D1054B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVTYZRdgvZIzTAiWDG9T/BLDcFNVcTHo0g8DibYLhEE=; b=Lr9yFTW+jIvyD8
	8Nz02BLROu7kuiOy1EVyw4uMWxW9+iwIg0759JvoBC74277yMWEZQtFLA3bv4NBL5A1RDaspzyI33
	Lr3Uea6224rJgcR3rXK+VyxjvVn1V1FlaInYaKqYMJY2achVTuOtviJTO5g4/sNt+IE+nIe5P2rK1
	sPJCkpj4GOVw39e3jf4xpusjAz7wzIWtcReGYZD82TSm/RIBdwRDGcyrGi2IUaIfgyoWMPd1xe8Zl
	ByhrMIq+tngz5SUPziwNblOQFCaEpBqYZCSFr38vpZ215GtcrpSLullAheMtc792ptNUbtPtIO/je
	/cuvZQesX7x1s1XIP4Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnet-0005pB-Ms; Thu, 21 Nov 2019 14:42:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXneg-0005oL-4b
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:41:59 +0000
Received: from litschi.hi.pengutronix.de
 ([2001:67c:670:100:feaa:14ff:fe6a:8db5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <m.tretter@pengutronix.de>)
 id 1iXneJ-000425-JC; Thu, 21 Nov 2019 15:41:35 +0100
Date: Thu, 21 Nov 2019 15:41:34 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: Re: [PATCH 7/7] clk: zynqmp: Fix fractional clock check
Message-ID: <20191121154134.404304c9@litschi.hi.pengutronix.de>
In-Reply-To: <1573564580-9006-8-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
 <1573564580-9006-8-git-send-email-rajan.vaja@xilinx.com>
Organization: Pengutronix
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:feaa:14ff:fe6a:8db5
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_064158_180378_EDF3796A 
X-CRM114-Status: GOOD (  18.68  )
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
Cc: mark.rutland@arm.com, tejas.patel@xilinx.com, gustavo@embeddedor.com,
 sboyd@kernel.org, nava.manne@xilinx.com, mturquette@baylibre.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 jolly.shah@xilinx.com, m.tretter@pengutronix.de, linux-clk@vger.kernel.org,
 dan.carpenter@oracle.com, ravi.patel@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 05:16:20 -0800, Rajan Vaja wrote:
> Firmware driver sets BIT(4) to BIT(7) as custom type flags. To make
> divider as fractional divider firmware sets BIT(4). So add support
> for custom type flag and use BIT(4) of custom type flag as CLOCK_FRAC
> bit.
> 
> Add a new field to the clock_topology to store custom type flags.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---
>  drivers/clk/zynqmp/clk-zynqmp.h | 1 +
>  drivers/clk/zynqmp/clkc.c       | 4 ++++
>  drivers/clk/zynqmp/divider.c    | 7 +++----
>  3 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/zynqmp/clk-zynqmp.h b/drivers/clk/zynqmp/clk-zynqmp.h
> index fec9a15..5beeb41 100644
> --- a/drivers/clk/zynqmp/clk-zynqmp.h
> +++ b/drivers/clk/zynqmp/clk-zynqmp.h
> @@ -30,6 +30,7 @@ struct clock_topology {
>  	u32 type;
>  	u32 flag;
>  	u32 type_flag;
> +	u8 custom_type_flag;
>  };
>  
>  struct clk_hw *zynqmp_clk_register_pll(const char *name, u32 clk_id,
> diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
> index 10e89f2..4dd8413 100644
> --- a/drivers/clk/zynqmp/clkc.c
> +++ b/drivers/clk/zynqmp/clkc.c
> @@ -84,6 +84,7 @@ struct name_resp {
>  
>  struct topology_resp {
>  #define CLK_TOPOLOGY_TYPE		GENMASK(3, 0)
> +#define CLK_TOPOLOGY_CUSTOM_TYPE_FLAGS	GENMASK(7, 4)
>  #define CLK_TOPOLOGY_FLAGS		GENMASK(23, 8)
>  #define CLK_TOPOLOGY_TYPE_FLAGS		GENMASK(31, 24)
>  	u32 topology[CLK_GET_TOPOLOGY_RESP_WORDS];
> @@ -396,6 +397,9 @@ static int __zynqmp_clock_get_topology(struct clock_topology *topology,
>  		topology[*nnodes].type_flag =
>  				FIELD_GET(CLK_TOPOLOGY_TYPE_FLAGS,
>  					  response->topology[i]);
> +		topology[*nnodes].custom_type_flag =
> +			FIELD_GET(CLK_TOPOLOGY_CUSTOM_TYPE_FLAGS,
> +				  response->topology[i]);
>  		(*nnodes)++;
>  	}
>  
> diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
> index 67aa88c..e700504 100644
> --- a/drivers/clk/zynqmp/divider.c
> +++ b/drivers/clk/zynqmp/divider.c
> @@ -25,7 +25,7 @@
>  #define to_zynqmp_clk_divider(_hw)		\
>  	container_of(_hw, struct zynqmp_clk_divider, hw)
>  
> -#define CLK_FRAC	BIT(13) /* has a fractional parent */
> +#define CLK_FRAC	BIT(4) /* has a fractional parent */

Still NACK. This breaks the compatibility with the mainline TF-A. The
bit is now a different from the bit than in the previous version of
that patch. Moving the flag to custom_type_flags is fine, but please
make sure that you stay backwards compatible to existing versions of the
TF-A.

Michael

>  
>  /**
>   * struct zynqmp_clk_divider - adjustable divider clock
> @@ -279,13 +279,12 @@ struct clk_hw *zynqmp_clk_register_divider(const char *name,
>  
>  	init.name = name;
>  	init.ops = &zynqmp_clk_divider_ops;
> -	/* CLK_FRAC is not defined in the common clk framework */
> -	init.flags = nodes->flag & ~CLK_FRAC;
> +	init.flags = nodes->flag;
>  	init.parent_names = parents;
>  	init.num_parents = 1;
>  
>  	/* struct clk_divider assignments */
> -	div->is_frac = !!(nodes->flag & CLK_FRAC);
> +	div->is_frac = !!(nodes->custom_type_flag & CLK_FRAC);
>  	div->flags = nodes->type_flag;
>  	div->hw.init = &init;
>  	div->clk_id = clk_id;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
