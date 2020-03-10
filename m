Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260DF17F38D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 10:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yYAb9yQ3+tJsP2P1jcZRpgU8s57W+e4P6X1dAEFDLQ=; b=Qc8aNGSrbl1H5U
	xrArh9O9l9xwMuUqgAaiw+3jbEHKcgCRTrKWd4a1Org7tJnT+DuLy1MIpRN3106WR/qJlcGSOaC4u
	qsD2cnZkRapl7EpzitN0I9Qx4Jqy9OKs6qLajFpK08R0nlN5LDP8qpEFL2FvT+S7wS7Mc6FM2oKZa
	ZfcDGAlFsayYaxjXlVrsbXb8Dhv8OXO9VE9F6egzjbA2uSPPowbfk7lxzfh04iGmANeX9cu3BHZKp
	mGClXQaWE531vsSg+AsMsUH8bK6vvEx6bY0dzCn8sBgJ5T6rCy+7/eLBkfUIpAJkY+RojKL1A6Anj
	rTpvgH1jgJCIi4iMcC4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbBY-0005XL-P4; Tue, 10 Mar 2020 09:28:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbBQ-0005Wy-Qo
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 09:28:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jBbBE-0006N3-GD; Tue, 10 Mar 2020 10:28:04 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jBbBE-0006Yx-0M; Tue, 10 Mar 2020 10:28:04 +0100
Date: Tue, 10 Mar 2020 10:28:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [RESEND v6  09/13] dmaengine: imx-sdma: remove ERR009165 on
 i.mx6ul
Message-ID: <20200310092803.GW3335@pengutronix.de>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
 <1583839922-22699-10-git-send-email-yibin.gong@nxp.com>
 <20200310081925.GT3335@pengutronix.de>
 <VE1PR04MB6638029458AFDE3005C6E4A489FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB6638029458AFDE3005C6E4A489FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:25:44 up 19 days, 16:56, 51 users,  load average: 0.30, 0.15, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_022816_869232_DB9C6D03 
X-CRM114-Status: GOOD (  21.26  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
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

On Tue, Mar 10, 2020 at 08:59:03AM +0000, Robin Gong wrote:
> On 2020/03/10 Sascha Hauer <s.hauer@pengutronix.de> wrote: 
> > On Tue, Mar 10, 2020 at 07:31:58PM +0800, Robin Gong wrote:
> > > ECSPI issue fixed from i.mx6ul at hardware level, no need
> > > ERR009165 anymore on those chips such as i.mx8mq. Add i.mx6sx from
> > > where i.mx6ul source.
> > >
> > > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > > Acked-by: Vinod Koul <vkoul@kernel.org>
> > > ---
> > >  drivers/dma/imx-sdma.c | 51
> > > +++++++++++++++++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 50 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c index
> > > 56288d8..5ae7237 100644
> > > --- a/drivers/dma/imx-sdma.c
> > > +++ b/drivers/dma/imx-sdma.c
> > > @@ -419,6 +419,13 @@ struct sdma_driver_data {
> > >  	int num_events;
> > >  	struct sdma_script_start_addrs	*script_addrs;
> > >  	bool check_ratio;
> > > +	/*
> > > +	 * ecspi ERR009165 fixed should be done in sdma script
> > > +	 * and it has been fixed in soc from i.mx6ul.
> > > +	 * please get more information from the below link:
> > > +	 *
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.nx
> > p.com%2Fdocs%2Fen%2Ferrata%2FIMX6DQCE.pdf&amp;data=02%7C01%7Cyi
> > bin.gong%40nxp.com%7C91d42046e6894501d48508d7c4cbcae2%7C686ea1d3
> > bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637194251876090170&amp;sdata=
> > T6LA4xz9CUFlNpnyjHSThEQb8i1rhbY9e1nUyxIGD5Q%3D&amp;reserved=0
> > > +	 */
> > > +	bool ecspi_fixed;
> > >  };
> > >
> > >  struct sdma_engine {
> > > @@ -539,6 +546,31 @@ static struct sdma_driver_data sdma_imx6q = {
> > >  	.script_addrs = &sdma_script_imx6q,
> > >  };
> > >
> > > +static struct sdma_script_start_addrs sdma_script_imx6sx = {
> > > +	.ap_2_ap_addr = 642,
> > > +	.uart_2_mcu_addr = 817,
> > > +	.mcu_2_app_addr = 747,
> > > +	.uartsh_2_mcu_addr = 1032,
> > > +	.mcu_2_shp_addr = 960,
> > > +	.app_2_mcu_addr = 683,
> > > +	.shp_2_mcu_addr = 891,
> > > +	.spdif_2_mcu_addr = 1100,
> > > +	.mcu_2_spdif_addr = 1134,
> > > +};
> > > +
> > > +static struct sdma_driver_data sdma_imx6sx = {
> > > +	.chnenbl0 = SDMA_CHNENBL0_IMX35,
> > > +	.num_events = 48,
> > > +	.script_addrs = &sdma_script_imx6sx, };
> > > +
> > > +static struct sdma_driver_data sdma_imx6ul = {
> > > +	.chnenbl0 = SDMA_CHNENBL0_IMX35,
> > > +	.num_events = 48,
> > > +	.script_addrs = &sdma_script_imx6sx,
> > > +	.ecspi_fixed = true,
> > > +};
> > > +
> > >  static struct sdma_script_start_addrs sdma_script_imx7d = {
> > >  	.ap_2_ap_addr = 644,
> > >  	.uart_2_mcu_addr = 819,
> > > @@ -584,9 +616,15 @@ static const struct platform_device_id
> > sdma_devtypes[] = {
> > >  		.name = "imx6q-sdma",
> > >  		.driver_data = (unsigned long)&sdma_imx6q,
> > >  	}, {
> > > +		.name = "imx6sx-sdma",
> > > +		.driver_data = (unsigned long)&sdma_imx6sx,
> > > +	}, {
> > 
> > Now the i.MX6sx uses a new sdma_script_start_addrs entry which is the same
> > as the i.MX6q one we used before with one exception: it lacks the
> > per_2_per_addr = 6331 entry. This is only used for IMX_DMATYPE_ASRC and
> Totally same script for i.mx6 chips whatever i.MX6sx, i.MX6q or i.MX6ul. 

When it's the same then use it.

> > IMX_DMATYPE_ASRC_SP, both are entirely unused in the mainline kernel. So
> > why must the i.MX6sx changed here and what has this to do with ECSPI?
> i.MX6ul is based on i.MX6sx, so adding i.MX6sx could keep good shape on our i.MX family evolution.

My point is that there is no difference between i.MX6q and i.MX6sx here,
so do not artificially introduce i.MX6sx support when all you do is
copying the i.MX6q support.

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
