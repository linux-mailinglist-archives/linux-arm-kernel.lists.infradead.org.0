Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229971D09F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 09:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9S2zGd4cZtn1djSQTGqbkomQDmRvy2zwLdSRE9shun8=; b=XkPSFBbq7NixMF
	KMMQ2xf5akLNsURke1KjMpiHyDemyK2vVfjFvFHJMeEtCtHXy8ByF/2gNyWN9tLYb1GzvKIi8UuxL
	48eFizN6FR40NrFJ2Lk7cWnWKOY8rfwaIBd/DqHXfnwiuqMfYaOVQg8QBnjSPO8Fs/ho1BpLJe5pi
	KNA66tmLifCJ0NJtGtPNRO7OZgh2QFuLCJl2cqB5zNlxDVM2GrpPnV/0WJ7eyV3srLQTHDVayRgZe
	Zy6UY7B6WxTCtL5X6kSF0vx1GmwQka8x87CFlCrTECoC/wVUwKPMSvwtxOjopSI8poqcuQU6sGxZs
	CLoS+m+TgKFv+xixrHCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYluF-0002OY-K4; Wed, 13 May 2020 07:34:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYlu8-0002O3-3W
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 07:34:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jYltx-00026z-If; Wed, 13 May 2020 09:34:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jYltv-0000FZ-40; Wed, 13 May 2020 09:33:59 +0200
Date: Wed, 13 May 2020 09:33:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Message-ID: <20200513073359.GM5877@pengutronix.de>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-8-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589218356-17475-8-git-send-email-yibin.gong@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:27:29 up 83 days, 14:57, 110 users,  load average: 0.19, 0.20,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_003412_145021_76DEEEA7 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 kernel@pengutronix.de, shawnguo@kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, vkoul@kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, martin.fuzzey@flowbird.group,
 u.kleine-koenig@pengutronix.de, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 01:32:30AM +0800, Robin Gong wrote:
> Change to XCH  mode even in dma mode, please refer to the below
> errata:
> https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> Acked-by: Mark Brown <broonie@kernel.org>
> ---
>  drivers/spi/spi-imx.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
> index f4f28a4..70df8e6 100644
> --- a/drivers/spi/spi-imx.c
> +++ b/drivers/spi/spi-imx.c
> @@ -585,8 +585,8 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
>  	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
>  	spi_imx->spi_bus_clk = clk;
>  
> -	if (spi_imx->usedma)
> -		ctrl |= MX51_ECSPI_CTRL_SMC;
> +	/* ERR009165: work in XHC mode as PIO */
> +	ctrl &= ~MX51_ECSPI_CTRL_SMC;
>  
>  	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
>  
> @@ -617,7 +617,7 @@ static void mx51_setup_wml(struct spi_imx_data *spi_imx)
>  	 * and enable DMA request.
>  	 */
>  	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
> -		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
> +		MX51_ECSPI_DMA_TX_WML(0) |
>  		MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
>  		MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
>  		MX51_ECSPI_DMA_RXTDEN, spi_imx->base + MX51_ECSPI_DMA);
> @@ -1171,7 +1171,11 @@ static int spi_imx_dma_configure(struct spi_master *master)
>  	tx.direction = DMA_MEM_TO_DEV;
>  	tx.dst_addr = spi_imx->base_phys + MXC_CSPITXDATA;
>  	tx.dst_addr_width = buswidth;
> -	tx.dst_maxburst = spi_imx->wml;
> +	/*
> +	 * For ERR009165 with tx_wml = 0 could enlarge burst size to fifo size
> +	 * to speed up fifo filling as possible.
> +	 */
> +	tx.dst_maxburst = spi_imx->devtype_data->fifo_size;

In the next patch this is changed again to:

+       if (spi_imx->devtype_data->tx_glitch_fixed)
+               tx.dst_maxburst = spi_imx->wml;
+       else
+               tx.dst_maxburst = spi_imx->devtype_data->fifo_size;

So with tx_glitch_fixed we end up with tx.dst_maxburst being the same
as two patches before which is rather confusing. Better introduce
tx_glitch_fixed in this patch, or maybe even merge this patch and the
next one.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
