Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C5F1865F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 09:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIofM3FRGWC/SIs6xnkNve+7Vxf+Tk44526zxYu6ksg=; b=R1J/vQSjchVWkP
	BJs08Y4Idf/mea6Um4vdC/mKi5uQgahECSE91oYtBdCouuCnMaZeXqnU8uwFG+8opJiI0/sy6rXbx
	hscK7YQMWpjSJkwcAJHH5m9fFR79snA4PX1QUd5tHMtwrn1CCym1bdwjImMjuUC7CBrIjygTu4juy
	LHF5TTWbTxk5+4+L+ezAUlvk/2DA0avVKqEyz+m/sv4bodZNfyG+uH31AawT59DQYMzeHvVOPm2vs
	Osn5cARgoPN8FGBFgRbynTDW3AHr8TOLpbkvVTFGMEpSut6hwkCQM/oYURAmf4sTo4gFrebGpA/U/
	KPB0JChan6bWilRcad+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOdnt-0007U6-Ko; Thu, 09 May 2019 07:49:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOdnc-0007Te-3D
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 07:49:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hOdnX-00031q-S8; Thu, 09 May 2019 09:48:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hOdnP-0006Aw-4v; Thu, 09 May 2019 09:48:51 +0200
Date: Thu, 9 May 2019 09:48:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sumit Batra <sumit.batra@nxp.com>
Subject: Re: [EXT] Re: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider
 I2C_IPGCLK_SEL RCW bit when using ls1046a SoC
Message-ID: <20190509074851.czcjlpfm2iooqjv4@pengutronix.de>
References: <20190430044719.30720-1-chuanhua.han@nxp.com>
 <20190430125043.weqwzim4gpsvtkfe@pengutronix.de>
 <AM6PR04MB43571B8D52C1FE9ED20DBA1D97360@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <20190506073735.ctzybytamu44pbvv@pengutronix.de>
 <AM0PR04MB43534A9B1A146DEFA929844C97320@AM0PR04MB4353.eurprd04.prod.outlook.com>
 <AM6PR04MB4629DEDAAA6559EBBD20E974EF330@AM6PR04MB4629.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR04MB4629DEDAAA6559EBBD20E974EF330@AM6PR04MB4629.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:43:29 up 51 days, 18:54, 79 users,  load average: 1.01, 1.06, 1.08
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_004904_297252_5AF28D82 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "eha@deif.com" <eha@deif.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Chuanhua Han <chuanhua.han@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 04:35:33AM +0000, Sumit Batra wrote:
> > > > So the clock driver reports the wrong clock. Please fix the clock driver then.
> > > No, this is a problem with the i2c driver. It is not a problem with 
> > > the clock driver, so the i2c driver needs to be modified.
> > 
> > So how does this RCW bit get evaluated? 
> According to the reference manual
> > only one clock goes to the i2c module (described as 1/2 Platform
> > Clock) and the i2c module only takes one clock. So it seems there must 
> > be a /2 divider somewhere, either in each i2c module or somewhere 
> > outside. Can your IC guys tell you where it is?
> I need to confirm this with the IC team

[Reformated a bit to make it readable]:

> There are 2 places where clock division takes place -
> 
> 1) There is a clock divider outside of I2C block, which makes the clock reaching
>    I2C module as - Platform Clock/2
> 2) There is another clock divider which specifically divides the clock to the I2C block,
>    based on RCW bit 424 (if 424th bit is 0 then the baud clock source is Platform Clock/4,
>    if 424th bit is 1 then it remains Platform Clock/2)

So there is a clock divider which based on RCW bit 424 divides the clock
*to* the i2c module. This suggests the divider is outside of the i2c
module itself and thus part of the clock module.

We could argue that this divider sits between the clock module and the
i2c module, but for sure it's not in the i2c module. I really suggest to
put this SoC specific into the SoC specific clock driver rather than
littering the i2c driver with it.

Sascha

> 
> Now based on the what is the desired SCL value (100KHz etc) and the clock which is
> received by I2C block, there is a calculation that goes on inside the I2C driver
> module which is used to map a value in this imx_i2c_clk_div table. This value is used
> to program the IMX_I2C_IFDR register of the I2C block. Now if we don't consider the
> RCW bit 424 in our I2C driver calculation then the IMX_I2C_IFDR value that gets set
> makes SCL half of what is desired by the user. This is because if you make the RCW
> 424th bit as 0 then anyhow I2C block (hardware) will receive Platform Clock/4, but
> the driver (since it has not considered this bit) will consider it as Platform Clock/2
> so it'll program a bigger divider from the imx_i2c_clk_div table

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
