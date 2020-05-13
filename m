Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C8E1D0B32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2D01DRyUJUEkm+ogawRSoXGHkAtYEsnGZRECdg5D0Y=; b=JzjrHO+um7pXkY
	qL110i1IPbPpwgX23ENiF1UnMFM4bvwiPyhru506+JzLDifjar/KfNHy/gs6J3cN80X/l6JT0kM/r
	6XmHt5bxdtScbHvBfDegjq1q8SLV28obmzAsUyc/05UjQkb0xtI3XNcQ9dNYAw67s/RafOoly975M
	ziyAZTzxWvx1H7LUtGfXgk0M1yZO2A8ioxrFbaBRl+msbxLFSmMjAhn8ko1akNDMD4jWB7C4jKjsU
	WczvOa1otdRON7/75tUgEvNHbkXqPz8h+qdv1tS+x0p+GzZyjLsVVJJtEkS/oQlmiPmQDN6bc1K8w
	XNuG4z1DWTjCtBzG9ifQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYn49-0002HD-BJ; Wed, 13 May 2020 08:48:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYn40-0002Gi-Es
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 08:48:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jYn3q-0001N6-Uw; Wed, 13 May 2020 10:48:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jYn3n-0004Li-U1; Wed, 13 May 2020 10:48:15 +0200
Date: Wed, 13 May 2020 10:48:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Message-ID: <20200513084815.GP5877@pengutronix.de>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-8-git-send-email-yibin.gong@nxp.com>
 <20200513072132.GL5877@pengutronix.de>
 <VE1PR04MB6638F5096376BA0AF204C64189BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB6638F5096376BA0AF204C64189BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:46:44 up 83 days, 16:17, 114 users,  load average: 0.22, 0.15,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_014828_496990_D66609C3 
X-CRM114-Status: GOOD (  24.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 08:38:26AM +0000, Robin Gong wrote:
> On 2020/05/13 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > This patch is the one bisecting will end up with when somebody uses an older
> > SDMA firmware or the ROM scripts. It should have a better description what
> > happens and what should be done about it.
> Emm..That's true. Timeout will be caught in such case, hence, maybe we can fall back it to pio always.

With my patch applied sdma_load_context() will fail. I don't know how
exactly this hits into the SPI driver, but it won't be a timeout.

Sascha

> > >
> > > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > > Acked-by: Mark Brown <broonie@kernel.org>
> > > ---
> > >  drivers/spi/spi-imx.c | 16 ++++++++--------
> > >  1 file changed, 8 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c index
> > > f4f28a4..70df8e6 100644
> > > --- a/drivers/spi/spi-imx.c
> > > +++ b/drivers/spi/spi-imx.c
> > > @@ -585,8 +585,8 @@ static int mx51_ecspi_prepare_transfer(struct
> > spi_imx_data *spi_imx,
> > >  	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
> > >  	spi_imx->spi_bus_clk = clk;
> > >
> > > -	if (spi_imx->usedma)
> > > -		ctrl |= MX51_ECSPI_CTRL_SMC;
> > > +	/* ERR009165: work in XHC mode as PIO */
> > > +	ctrl &= ~MX51_ECSPI_CTRL_SMC;
> > >
> > >  	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
> > >
> > > @@ -617,7 +617,7 @@ static void mx51_setup_wml(struct spi_imx_data
> > *spi_imx)
> > >  	 * and enable DMA request.
> > >  	 */
> > >  	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
> > > -		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
> > > +		MX51_ECSPI_DMA_TX_WML(0) |
> > >  		MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
> > >  		MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
> > >  		MX51_ECSPI_DMA_RXTDEN, spi_imx->base + MX51_ECSPI_DMA);
> > @@ -1171,7
> > > +1171,11 @@ static int spi_imx_dma_configure(struct spi_master *master)
> > >  	tx.direction = DMA_MEM_TO_DEV;
> > >  	tx.dst_addr = spi_imx->base_phys + MXC_CSPITXDATA;
> > >  	tx.dst_addr_width = buswidth;
> > > -	tx.dst_maxburst = spi_imx->wml;
> > > +	/*
> > > +	 * For ERR009165 with tx_wml = 0 could enlarge burst size to fifo size
> > > +	 * to speed up fifo filling as possible.
> > > +	 */
> > > +	tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
> > >  	ret = dmaengine_slave_config(master->dma_tx, &tx);
> > >  	if (ret) {
> > >  		dev_err(spi_imx->dev, "TX dma configuration failed with %d\n",
> > > ret); @@ -1265,10 +1269,6 @@ static int spi_imx_sdma_init(struct
> > > device *dev, struct spi_imx_data *spi_imx,  {
> > >  	int ret;
> > >
> > > -	/* use pio mode for i.mx6dl chip TKT238285 */
> > > -	if (of_machine_is_compatible("fsl,imx6dl"))
> > > -		return 0;
> > > -
> > >  	spi_imx->wml = spi_imx->devtype_data->fifo_size / 2;
> > >
> > >  	/* Prepare for TX DMA: */
> > > --
> > > 2.7.4
> > >
> > >
> > 
> > --
> > Pengutronix e.K.                           |
> > |
> > Steuerwalder Str. 21                       |
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pe
> > ngutronix.de%2F&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7C2f49309
> > 819cc4c45418108d7f70e46fb%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%
> > 7C1%7C637249513003506970&amp;sdata=RoLVnDaCfG20i88OmmlpbMH6lZu
> > qqW2CJv4VSSDkPcM%3D&amp;reserved=0  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0
> > |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:
> > +49-5121-206917-5555 |
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
