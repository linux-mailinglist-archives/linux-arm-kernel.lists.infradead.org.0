Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDCA1D09DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 09:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+Hw8lRqefNgrjesvJkKqIZlp3hWjc7u5DpZZ3CrZ5Q=; b=ZzhlrYFLbHfWMa
	jeG3lj+0Rma1ulWvmNe5abNnqnGftAnXIO6etyNf50P69qwRlnFtUCrlu8sUO6LqmQEL17MHQoR6z
	eA8xlBjBV+5YtEr3Hl4uM1BPJ9bkwvCf7zQkXn6DVd+mVpIP0drIUbkdHQDkBn6fwJTJ9uo1HlqVz
	Xw+3e5o+04LBgJnxXc33/UIfvYrjfEc4nWyckpfJlWTZoXMWIY6wCMbSZBezmS6R4iLHuDsFDzPxI
	O3rBTXd3eXLtFWGdjNJUDnm4NXx4gO9RyY7aUNVyuFP3A+zKPI+cSV/GaLfwYiEJj9rtl5BirGLiL
	YSw6i1lonlUeOstI6zFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYliA-0003qL-ML; Wed, 13 May 2020 07:21:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYlhz-0003pz-HU
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 07:21:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jYlhs-00012g-PP; Wed, 13 May 2020 09:21:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jYlhs-0008Jd-7d; Wed, 13 May 2020 09:21:32 +0200
Date: Wed, 13 May 2020 09:21:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Message-ID: <20200513072132.GL5877@pengutronix.de>
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
X-Uptime: 08:06:09 up 83 days, 13:36, 88 users,  load average: 0.20, 0.23, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_002139_579843_480D752E 
X-CRM114-Status: GOOD (  22.17  )
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

This patch is the one bisecting will end up with when somebody uses an
older SDMA firmware or the ROM scripts. It should have a better
description what happens and what should be done about it.

Sascha

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
>  	ret = dmaengine_slave_config(master->dma_tx, &tx);
>  	if (ret) {
>  		dev_err(spi_imx->dev, "TX dma configuration failed with %d\n", ret);
> @@ -1265,10 +1269,6 @@ static int spi_imx_sdma_init(struct device *dev, struct spi_imx_data *spi_imx,
>  {
>  	int ret;
>  
> -	/* use pio mode for i.mx6dl chip TKT238285 */
> -	if (of_machine_is_compatible("fsl,imx6dl"))
> -		return 0;
> -
>  	spi_imx->wml = spi_imx->devtype_data->fifo_size / 2;
>  
>  	/* Prepare for TX DMA: */
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
