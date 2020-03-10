Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00C917F375
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 10:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h80LxvQwil9YZMG1leb0LoRKOMWqCl5RCZLQu7ioNs0=; b=k8TKS0j/rGeUYP
	+lRfBI/bFQtqEKbSd6ccsDFLk2c3+SMwZCqGx4yd1DIaHTw5UL7A5JSEHmvr9GAD82iz7YH6U0+GM
	Vfm2sqe4AQdd0UnzXsLpPr299ekathaHK+aSwxDx95Hov0ST58qT7Ar9io0IXKYy/HpNCtaTaArMX
	miPUG/sxd9J+1VSZlGXI9upJn/0EWq1n9qVbHseckNWf3IUNNU/cFXVQfsoZxCarATaqaoUmErf9s
	yciKwtfAXvxL929opobeNsDzTtTz9Hk16Gt1kx/jOHOCPxfv7VdWZwbLMbOUcY1H/Y2HnWnYnJCkB
	GarQVVWNPcrApg0TzC8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBb9A-0004te-6i; Tue, 10 Mar 2020 09:25:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBb92-0004t0-Oh
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 09:25:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jBb8q-00066g-Ok; Tue, 10 Mar 2020 10:25:36 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jBb8n-0006XS-8W; Tue, 10 Mar 2020 10:25:33 +0100
Date: Tue, 10 Mar 2020 10:25:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [RESEND v6  07/13] spi: imx: remove ERR009165 workaround on
 i.mx6ul
Message-ID: <20200310092533.GV3335@pengutronix.de>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
 <1583839922-22699-8-git-send-email-yibin.gong@nxp.com>
 <20200310080240.GS3335@pengutronix.de>
 <VE1PR04MB66384342F94C7B789C980F7A89FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB66384342F94C7B789C980F7A89FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:08:54 up 19 days, 16:39, 58 users,  load average: 0.05, 0.18, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_022548_802914_2E9F6534 
X-CRM114-Status: GOOD (  19.99  )
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

On Tue, Mar 10, 2020 at 08:43:10AM +0000, Robin Gong wrote:
> On 2020/03/10 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Tue, Mar 10, 2020 at 07:31:56PM +0800, Robin Gong wrote:
> > > ERR009165 fixed on i.mx6ul/6ull/6sll. All other i.mx6/7 and i.mx8m/8mm
> > > still need this errata. Please refer to nxp official errata document
> > > from
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.nx
> > p.com%2F&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7Cf73bfc11a68c4
> > 2f5f6d308d7c4c96efa%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C
> > 637194241755109112&amp;sdata=xzIUP8qZkrlDXX0yjTcUNZB6zDrevTdHFg1o4
> > PZZd8E%3D&amp;reserved=0 .
> > >
> > > For removing workaround on those chips. Add new i.mx6ul type.
> > >
> > > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > > Acked-by: Mark Brown <broonie@kernel.org>
> > > ---
> > >  drivers/spi/spi-imx.c | 50
> > > +++++++++++++++++++++++++++++++++++++++++++++-----
> > >  1 file changed, 45 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c index
> > > 842a86e..f7ee2ec 100644
> > > --- a/drivers/spi/spi-imx.c
> > > +++ b/drivers/spi/spi-imx.c
> > > @@ -57,6 +57,7 @@ enum spi_imx_devtype {
> > >  	IMX35_CSPI,	/* CSPI on all i.mx except above */
> > >  	IMX51_ECSPI,	/* ECSPI on i.mx51 */
> > >  	IMX53_ECSPI,	/* ECSPI on i.mx53 and later */
> > > +	IMX6UL_ECSPI,	/* ERR009165 fix from i.mx6ul */
> > >  };
> > >
> > >  struct spi_imx_data;
> > > @@ -75,6 +76,11 @@ struct spi_imx_devtype_data {
> > >  	bool has_slavemode;
> > >  	unsigned int fifo_size;
> > >  	bool dynamic_burst;
> > > +	/*
> > > +	 * ERR009165 fixed or not:
> > > +	 *
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.nx
> > p.com%2Fdocs%2Fen%2Ferrata%2FIMX6DQCE.pdf&amp;data=02%7C01%7Cyi
> > bin.gong%40nxp.com%7Cf73bfc11a68c42f5f6d308d7c4c96efa%7C686ea1d3bc
> > 2b4c6fa92cd99c5c301635%7C0%7C1%7C637194241755109112&amp;sdata=m
> > uw4HL5nMDjREJwVd885Wrxka0moMaaZ%2BhJgsAgY3eo%3D&amp;reserved=
> > 0
> > > +	 */
> > > +	bool tx_glitch_fixed;
> > >  	enum spi_imx_devtype devtype;
> > >  };
> > >
> > > @@ -128,7 +134,8 @@ static inline int is_imx35_cspi(struct
> > > spi_imx_data *d)
> > >
> > >  static inline int is_imx51_ecspi(struct spi_imx_data *d)  {
> > > -	return d->devtype_data->devtype == IMX51_ECSPI;
> > > +	return d->devtype_data->devtype == IMX51_ECSPI ||
> > > +	       d->devtype_data->devtype == IMX6UL_ECSPI;
> > >  }
> > 
> > Erm, no. A i.MX51 ECSPI is a i.MX51 ECSPI and not a i.MX6UL ECSPI. If you want
> > to handle them equally somewhere then explicitly test for i.MX6ul *and*
> > i.MX51 there.
> But all i.mx6 chips including i.MX53 ECSPI are almost same as i.MX51 ECSPI, and ERR00915 is fixed from i.mx6ul....

You introduce .devtype = IMX6UL_ECSPI in this series, so apparently it
is *not* the same as IMX51_ECSPI, then please also don't introduce a
function which claims they are the same.

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
