Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0737717F1AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 09:20:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJfsUkIf60kaOxYzk6QK0XoQOCQYxP1vRH7zue+BHLU=; b=jf5K/SWpK+ar5n
	cHij82Px4fazpgJyVI08+vqP2D8AiVteNv9jR5+MJLRZRpg3I7PC3du4Bu5NSDpXsEZiIE1smOxH9
	SsTywJc4GGc+VYbRk3MUnEZQKKzbwuDnKzBsKiizP9r7PvBmGTKCnyafH4oil+vqVJQa497sFxQUW
	5vBAaU+fpnSLq5nbwzxYA54PWt+roCXFhZMp8EvClxwSldxEILh/I+hNblJhQOtDWsTI7o0j7qWST
	ZyEdG4JVjbozsCqB8dnH2wqopwlTyj5f+sRp+9wtvzJx+qmDrM+42HPb9rMdgbeKnEYK5MbZicNgc
	SGg3gK1noQlUk042rf6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBa7D-000895-0n; Tue, 10 Mar 2020 08:19:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBa75-00088e-2r
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 08:19:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jBa6p-00069G-Gm; Tue, 10 Mar 2020 09:19:27 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jBa6n-0002TP-9h; Tue, 10 Mar 2020 09:19:25 +0100
Date: Tue, 10 Mar 2020 09:19:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [RESEND v6  09/13] dmaengine: imx-sdma: remove ERR009165 on
 i.mx6ul
Message-ID: <20200310081925.GT3335@pengutronix.de>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
 <1583839922-22699-10-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583839922-22699-10-git-send-email-yibin.gong@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:04:16 up 19 days, 15:34, 45 users,  load average: 0.11, 0.18, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_011943_127319_6646504C 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 kernel@pengutronix.de, shawnguo@kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, broonie@kernel.org, linux-imx@nxp.com,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 07:31:58PM +0800, Robin Gong wrote:
> ECSPI issue fixed from i.mx6ul at hardware level, no need
> ERR009165 anymore on those chips such as i.mx8mq. Add i.mx6sx
> from where i.mx6ul source.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> Acked-by: Vinod Koul <vkoul@kernel.org>
> ---
>  drivers/dma/imx-sdma.c | 51 +++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 50 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index 56288d8..5ae7237 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -419,6 +419,13 @@ struct sdma_driver_data {
>  	int num_events;
>  	struct sdma_script_start_addrs	*script_addrs;
>  	bool check_ratio;
> +	/*
> +	 * ecspi ERR009165 fixed should be done in sdma script
> +	 * and it has been fixed in soc from i.mx6ul.
> +	 * please get more information from the below link:
> +	 * https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf
> +	 */
> +	bool ecspi_fixed;
>  };
>  
>  struct sdma_engine {
> @@ -539,6 +546,31 @@ static struct sdma_driver_data sdma_imx6q = {
>  	.script_addrs = &sdma_script_imx6q,
>  };
>  
> +static struct sdma_script_start_addrs sdma_script_imx6sx = {
> +	.ap_2_ap_addr = 642,
> +	.uart_2_mcu_addr = 817,
> +	.mcu_2_app_addr = 747,
> +	.uartsh_2_mcu_addr = 1032,
> +	.mcu_2_shp_addr = 960,
> +	.app_2_mcu_addr = 683,
> +	.shp_2_mcu_addr = 891,
> +	.spdif_2_mcu_addr = 1100,
> +	.mcu_2_spdif_addr = 1134,
> +};
> +
> +static struct sdma_driver_data sdma_imx6sx = {
> +	.chnenbl0 = SDMA_CHNENBL0_IMX35,
> +	.num_events = 48,
> +	.script_addrs = &sdma_script_imx6sx,
> +};
> +
> +static struct sdma_driver_data sdma_imx6ul = {
> +	.chnenbl0 = SDMA_CHNENBL0_IMX35,
> +	.num_events = 48,
> +	.script_addrs = &sdma_script_imx6sx,
> +	.ecspi_fixed = true,
> +};
> +
>  static struct sdma_script_start_addrs sdma_script_imx7d = {
>  	.ap_2_ap_addr = 644,
>  	.uart_2_mcu_addr = 819,
> @@ -584,9 +616,15 @@ static const struct platform_device_id sdma_devtypes[] = {
>  		.name = "imx6q-sdma",
>  		.driver_data = (unsigned long)&sdma_imx6q,
>  	}, {
> +		.name = "imx6sx-sdma",
> +		.driver_data = (unsigned long)&sdma_imx6sx,
> +	}, {

Now the i.MX6sx uses a new sdma_script_start_addrs entry which is the same
as the i.MX6q one we used before with one exception: it lacks the
per_2_per_addr = 6331 entry. This is only used for IMX_DMATYPE_ASRC and
IMX_DMATYPE_ASRC_SP, both are entirely unused in the mainline kernel. So
why must the i.MX6sx changed here and what has this to do with ECSPI?

Sascha

>  		.name = "imx7d-sdma",
>  		.driver_data = (unsigned long)&sdma_imx7d,
>  	}, {
> +		.name = "imx6ul-sdma",
> +		.driver_data = (unsigned long)&sdma_imx6ul,
> +	}, {
>  		.name = "imx8mq-sdma",
>  		.driver_data = (unsigned long)&sdma_imx8mq,
>  	}, {
> @@ -602,7 +640,9 @@ static const struct of_device_id sdma_dt_ids[] = {
>  	{ .compatible = "fsl,imx35-sdma", .data = &sdma_imx35, },
>  	{ .compatible = "fsl,imx31-sdma", .data = &sdma_imx31, },
>  	{ .compatible = "fsl,imx25-sdma", .data = &sdma_imx25, },
> +	{ .compatible = "fsl,imx6sx-sdma", .data = &sdma_imx6sx, },
>  	{ .compatible = "fsl,imx7d-sdma", .data = &sdma_imx7d, },
> +	{ .compatible = "fsl,imx6ul-sdma", .data = &sdma_imx6ul, },
>  	{ .compatible = "fsl,imx8mq-sdma", .data = &sdma_imx8mq, },
>  	{ /* sentinel */ }
>  };
> @@ -1169,8 +1209,17 @@ static int sdma_config_channel(struct dma_chan *chan)
>  			if (sdmac->peripheral_type == IMX_DMATYPE_ASRC_SP ||
>  			    sdmac->peripheral_type == IMX_DMATYPE_ASRC)
>  				sdma_set_watermarklevel_for_p2p(sdmac);
> -		} else
> +		} else {
> +			/*
> +			 * ERR009165 fixed from i.mx6ul, no errata need,
> +			 * set bit31 to let sdma script skip the errata.
> +			 */
> +			if (sdmac->peripheral_type == IMX_DMATYPE_CSPI &&
> +			    sdmac->direction == DMA_MEM_TO_DEV &&
> +			    sdmac->sdma->drvdata->ecspi_fixed)
> +				__set_bit(31, &sdmac->watermark_level);
>  			__set_bit(sdmac->event_id0, sdmac->event_mask);
> +		}
>  
>  		/* Address */
>  		sdmac->shp_addr = sdmac->per_address;
> -- 
> 2.7.4
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
