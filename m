Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBD9183CF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 00:01:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDIIXL9ai2R5Zpew0d0XQOXI1G37fw0B+0TxBcgP3qg=; b=O2Ms0VLaJVUjCp
	3Muik2jFC2kwKcv4j72WsGLLnlqYbY3AMm9SCCdT5/vHTcsfZ2ipdoDrQBWcdC9Ta0LtuwYWy58y6
	0wgH0s1DjazQt8YUrPtz0rnMwqQ5zDuSBoKMvBNIjL+GzPtRVG54FUA7zmTaIuJSI4+iPXzshil4Q
	7x1wVj6IwlcNaVdgdYftNw1PfRJ3zBgvSEfJhhBqKayrnp/IaXHxwYoBHolnpuYdx7bVCldYiC5LP
	s8Zg0srpNuLbdqDTCp7tTGFYx9IqMTDh9OYN2AUQNAFuvWIkx8OxupBMEcW/lXVBFlSfCIk6quZqp
	pqy0G8pwd6Z/jDSo9aQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWpF-0001La-TK; Thu, 12 Mar 2020 23:01:13 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWp9-0001Kj-07
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 23:01:08 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0EB8E5F;
 Fri, 13 Mar 2020 00:00:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584054055;
 bh=jnmOzIxaCTZh1F1zNSt0BgEhkqnAzDOwvfCybQjDan8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nLveb5QcQBAu4GpysEGt6gXx3fDGzyxucsJXf77FqzvYBnyukI3CNdTOgqTGWljmm
 Xd8xT0JYCJk0uT7dXNeXlNsQ+vWy/dj/gNzi5x9j0xtJL3Qy7HhP9ZrdN7Xkks4Uy5
 d28ZIca83jrqkAZVN6CChdChqYy4yPi5QLT5Xgp8=
Date: Fri, 13 Mar 2020 01:00:51 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v2 2/3] media: i2c: ov5645: Switch to assigned-clock-rates
Message-ID: <20200312230051.GA30932@pendragon.ideasonboard.com>
References: <1584047552-20166-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584047552-20166-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584047552-20166-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_160107_194997_77BD8500 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabakhar,

Thank you for the patch.

On Thu, Mar 12, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> This patch switches to assigned-clock-rates for specifying the clock rate.
> The clk-conf.c internally handles setting the clock rate when
> assigned-clock-rates is passed.
> 
> The driver now sets the clock frequency only if the deprecated property
> clock-frequency is defined instead assigned-clock-rates, this is to avoid
> breakage with existing DT binaries.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/media/i2c/ov5645.c | 24 +++++++++++++++++-------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> index a6c17d1..6cd16c5 100644
> --- a/drivers/media/i2c/ov5645.c
> +++ b/drivers/media/i2c/ov5645.c
> @@ -1055,6 +1055,7 @@ static int ov5645_probe(struct i2c_client *client)
>  	struct device_node *endpoint;
>  	struct ov5645 *ov5645;
>  	u8 chip_id_high, chip_id_low;
> +	bool set_clk = false;
>  	unsigned int i;
>  	u32 xclk_freq;
>  	int ret;
> @@ -1094,10 +1095,17 @@ static int ov5645_probe(struct i2c_client *client)
>  		return PTR_ERR(ov5645->xclk);
>  	}
>  
> -	ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
> +	ret = of_property_read_u32(dev->of_node, "assigned-clock-rates",
> +				   &xclk_freq);

You shouldn't read the assigned-clock-rates property, you should instead
get the rate from the clock with clk_get_rate().

>  	if (ret) {
> -		dev_err(dev, "could not get xclk frequency\n");
> -		return ret;
> +		/* check if deprecated property clock-frequency is defined */
> +		ret = of_property_read_u32(dev->of_node, "clock-frequency",
> +					   &xclk_freq);
> +		if (ret) {
> +			dev_err(dev, "could not get xclk frequency\n");
> +			return ret;
> +		}
> +		set_clk = true;
>  	}
>  
>  	/* external clock must be 24MHz, allow 1% tolerance */
> @@ -1107,10 +1115,12 @@ static int ov5645_probe(struct i2c_client *client)
>  		return -EINVAL;
>  	}
>  
> -	ret = clk_set_rate(ov5645->xclk, xclk_freq);
> -	if (ret) {
> -		dev_err(dev, "could not set xclk frequency\n");
> -		return ret;
> +	if (set_clk) {
> +		ret = clk_set_rate(ov5645->xclk, xclk_freq);
> +		if (ret) {
> +			dev_err(dev, "could not set xclk frequency\n");
> +			return ret;
> +		}
>  	}
>  
>  	for (i = 0; i < OV5645_NUM_SUPPLIES; i++)

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
