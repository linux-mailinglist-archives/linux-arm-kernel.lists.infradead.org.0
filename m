Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40147EFDCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6A/jRdvuXjjBvJy4T7SrCcSdnRzzMzF3x3manLizs+U=; b=uq0rdkAyGpfZXi
	h9Z97MHQQ387D7tSCQQKsJ5of1gjoorpZ/I2wBtEX4wArejfeu9ZZVx1DDXOSuy3T+awHLlhKJg2K
	CEWJ+BLmYk3drzac9ObwsjzpZFfBwzDpSmJffgIchXIzzu4wTm0sZvCaNe/6FbQZsJh8QlbqTxRB9
	jx6Er76AuJ0g91SUG76mHOPUWOhNsJmaQVe5Tw6FBEfjZKn6vAHEdx8O/JZ952er77ZNmH+ot5FVu
	x1hVQEcXODRJZ3pZIkz1A3T8ly/9M5DIQIdoyDR5pQN2nGNx3YbFADSn+jWmBmbeLj88yThNpxxeH
	G+Nqbcx1Q6ExPkCgKKDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyQe-0002tj-Ce; Tue, 05 Nov 2019 12:59:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyQY-0002tF-2w
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:59:19 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1iRyQW-0002wH-Ga; Tue, 05 Nov 2019 13:59:16 +0100
Subject: Re: [PATCH] clk: imx: pll14xx: initialize flags to 0
To: Peng Fan <peng.fan@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
References: <1572938372-7006-1-git-send-email-peng.fan@nxp.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7966140a-7fec-0a8f-6ced-e4fbccef51da@pengutronix.de>
Date: Tue, 5 Nov 2019 13:59:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1572938372-7006-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_045918_124205_57BC6661 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Peng,

On 11/5/19 8:21 AM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> init.flags is initialized with value from pll_clk->flags, however
> imx_1443x_pll and imx_1416x_pll are not static structure,

They don't have a static in front of them, but they still have static
storage duration.

> so flags
> might be random value. So let's initialize flags as 0 now.

I fail to see how. Members not listed in the { initializer-list } are
implicitly initialized as if they were static objects, so flags should
already be zero.

(I assumed this patch is based on Shawn's imx-clk-5.5 tag)                                     

Cheers
Ahmad


> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk-pll14xx.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index fa76e04251c4..a7f1c1abe664 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -65,12 +65,14 @@ struct imx_pll14xx_clk imx_1443x_pll = {
>  	.type = PLL_1443X,
>  	.rate_table = imx_pll1443x_tbl,
>  	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
> +	.flags = 0,
>  };
>  
>  struct imx_pll14xx_clk imx_1416x_pll = {
>  	.type = PLL_1416X,
>  	.rate_table = imx_pll1416x_tbl,
>  	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
> +	.flags = 0,
>  };
>  
>  static const struct imx_pll14xx_rate_table *imx_get_pll_settings(
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
