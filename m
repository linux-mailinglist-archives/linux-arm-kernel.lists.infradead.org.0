Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9E989743
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 08:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aufUFnLmJFY5gnVm767O74VlWB/V7wMaJ387aCmg4I=; b=WUN6HU6Q2qvT+r
	GdbrRS3p0o2ZPj+FlFvAX+GwAXc5Jx/nYEGvtxnjNoJrYr/uZTXApVqUhzmZ5OBe2vQwpcHsNTzq1
	adOSvt9u0nTSMcWodjtVbEoWG6hcxYvb28RexohyIbDGGaOCZz8C1H8vUCrmh0cqrmakkAidjVgl5
	Z8N9kzoH0FC3YxhLACBtaXaa2uh4iU71CJMqoMFMaxA79mIr2dlNoPEKrjOpInqnpdpz4BUgqw89c
	/yJ7hi22ZmxgFSe9oHN7wt+uKGHiu55uKcO0Cx3RbJpOqPIbABKjob9/ELRI70tUZK/gIpXDqkfP+
	YEeBYOuV7cuMFyfilrHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx3yi-0002Aw-Th; Mon, 12 Aug 2019 06:38:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx3yO-0002A7-OS
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 06:38:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hx3yJ-0005o4-HU; Mon, 12 Aug 2019 08:38:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hx3yI-0001gf-KU; Mon, 12 Aug 2019 08:38:22 +0200
Date: Mon, 12 Aug 2019 08:38:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Biwen Li <biwen.li@nxp.com>
Subject: Re: [EXT] Re: i2c: imx: support slave mode for imx I2C driver
Message-ID: <20190812063822.7odhnj5ueqjam3g6@pengutronix.de>
References: <20190808035343.34120-1-biwen.li@nxp.com>
 <20190808141814.wr4hlmbaek6p7dy2@pengutronix.de>
 <DB7PR04MB4490F2C2C4B69F0F011420C98FD60@DB7PR04MB4490.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB4490F2C2C4B69F0F011420C98FD60@DB7PR04MB4490.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:36:37 up 35 days, 12:46, 41 users,  load average: 0.19, 0.15, 0.11
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_233828_798274_911D4A62 
X-CRM114-Status: GOOD (  17.47  )
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
Cc: "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 04:04:45AM +0000, Biwen Li wrote:
> > 
> > Hi,
> > 
> > On Thu, Aug 08, 2019 at 11:53:43AM +0800, Biwen Li wrote:
> > > The patch supports slave mode for imx I2C driver
> > >
> > > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > > ---
> > >  drivers/i2c/busses/i2c-imx.c | 199
> > > ++++++++++++++++++++++++++++++++---
> > >  1 file changed, 185 insertions(+), 14 deletions(-)
> > >
> > > diff --git a/drivers/i2c/busses/i2c-imx.c
> > > b/drivers/i2c/busses/i2c-imx.c index b1b8b938d7f4..f7583a9fa56f 100644
> > > --- a/drivers/i2c/busses/i2c-imx.c
> > > +++ b/drivers/i2c/busses/i2c-imx.c
> > > @@ -202,6 +202,9 @@ struct imx_i2c_struct {
> > >       struct pinctrl_state *pinctrl_pins_gpio;
> > >
> > >       struct imx_i2c_dma      *dma;
> > > +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> > > +     struct i2c_client               *slave;
> > > +#endif /* CONFIG_I2C_SLAVE */
> > 
> > Other drivers just do a "select I2C_SLAVE" in Kconfig to get rid of these #ifs. We
> > should do the same.
> Hi sascha, I don't know your meaning, could you let it clearer?

Other drivers have "select I2C_SLAVE" in Kconfig, so they do not need
any #ifdef CONFIG_I2C_SLAVE as this is always true.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
