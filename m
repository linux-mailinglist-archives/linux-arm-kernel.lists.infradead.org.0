Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FA81D0BD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mc1MHb1Ty6KQhY/5zHWqOkk07HUTXr6uzQyaMnGrXXA=; b=EwWCTOSSIZr8uI
	yj95QbY3UR9DqGLb1s3Z4hI8IAwEnvNyzIsYbEosgXPD4qg1ar/5UeEGBQll14U6KiSTNLLEOuxS5
	xSVn8ULGnIAfb9GzJqrzQXK/0+QLcqO/ddhupAHDYLUQZA0kZQvmzj7+D2aWRF67xO3eDXgBNtftF
	jJRyC4V420eXvmbB0eivOF4AIrEplQmBPgY11H3OI7TMTlh12rYcE5Ow3AmwNP/qI3jsY2rI4rVCX
	BRVKJ5idQvX/eebRSoC+cIxykXztDrsJnBVJW9MAVO2mYCVGbTTML81/Vrw5VE/OFgVwtY7ihjRlG
	Js0vwoiUYGU33qwW8bBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnZ9-0000NY-OY; Wed, 13 May 2020 09:20:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnZ1-0000Mc-CO
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:20:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jYnYq-0005Ol-6U; Wed, 13 May 2020 11:20:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jYnYn-0006w7-Sj; Wed, 13 May 2020 11:20:17 +0200
Date: Wed, 13 May 2020 11:20:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Message-ID: <20200513092017.GQ5877@pengutronix.de>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-8-git-send-email-yibin.gong@nxp.com>
 <20200513073359.GM5877@pengutronix.de>
 <VE1PR04MB6638DE9AB1E51213DACCCA0F89BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB6638DE9AB1E51213DACCCA0F89BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:12:33 up 83 days, 16:43, 120 users,  load average: 0.19, 0.21,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_022031_418972_4DFD7E60 
X-CRM114-Status: GOOD (  23.66  )
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
 "festevam@gmail.com" <festevam@gmail.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 09:05:33AM +0000, Robin Gong wrote:
> On 2020/05/13 Sascha Hauer <s.hauer@pengutronix.de> wrote:d
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
> > 
> > In the next patch this is changed again to:
> > 
> > +       if (spi_imx->devtype_data->tx_glitch_fixed)
> > +               tx.dst_maxburst = spi_imx->wml;
> > +       else
> > +               tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
> > 
> > So with tx_glitch_fixed we end up with tx.dst_maxburst being the same as two
> > patches before which is rather confusing. Better introduce tx_glitch_fixed in
> > this patch, or maybe even merge this patch and the next one.
> Sorry confused you, I should repleace 'tx_wml=0' in the above comments
> with ' TX_THRESHOLD=0', which means tx transfer dma have to wait all
> the tx data in tx fifo transferred with ERR009165 rather than
> generically 'tx_wml' (for example --half fifo size used as
> TX_THRESHOLD). Obviously TX_THRESHOLD=0 would down performance, so
> enlarge dst_maxburst to fifo size as PIO with ERR009165. After
> ERR009165 fixed at HW level. TX_THRESHOLD could be used as common
> 'spi_imx->wml' so change it back. Will add more detail information in
> v8.

I am not confused, I meant the patches are confusing. What you are doing
is:

No patch:
	tx.dst_maxburst = a;

1st patch
	tx.dst_maxburst = b;

2nd patch:

	if (foo)
		tx.dst_maxburst = a;
	else
		tx.dst_maxburst = b;

It would be better readable and understandable if you did that in one
patch, because that would directly say "Under certain conditions we have
to choose a, otherwise b". That's much better than changing "a" to "b" and
then to "a or b"

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
