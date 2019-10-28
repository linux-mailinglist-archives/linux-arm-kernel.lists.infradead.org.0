Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D824EE72C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 14:41:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KluTZ+hwcl3y3m4VwX96mJwlHclfjK8jS1PkYgzCzAY=; b=KJtkG4bhgdcs8m
	d19KqxXyF1Cczz6kurTtaQwzfVLdQxTceO0OJA3ef0WdtIhcMaLtNtZcHCITblQtis4wR5gIUqQbY
	b2SHENokCKFQ7lJbf07CbedWD+e36X6ipy3j7vCNCy49IZslh2MF2/g5HMgJMRdUU6hlq5iYg4J9x
	p8ETAJYO8wqGiaDa6RHMcCjxujra8a0jgb+KauLbsWN1CMWFoQhFEd3cICYbjDD9zAVmnQW9Mw+E2
	kkLBZJepGuBaqjFTZng7h5oWepAiqAvxK4jUD/XuAGdxUAq24EX6GGaDTKsWkwUo8DHmTbzpP1pqn
	KckgA5oC5vEMQa40QXCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP5HH-0008BT-1i; Mon, 28 Oct 2019 13:41:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP5H9-0008AX-1E
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 13:41:40 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iP5H3-0006uL-5A; Mon, 28 Oct 2019 14:41:33 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iP5H1-0005La-MM; Mon, 28 Oct 2019 14:41:31 +0100
Date: Mon, 28 Oct 2019 14:41:31 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Biwen Li <biwen.li@nxp.com>
Subject: Re: [EXT] Re: [RESEND v2] i2c: imx: support slave mode for imx I2C
 driver
Message-ID: <20191028134131.5pq2vaqojx4gpfth@pengutronix.de>
References: <20191009101802.19309-1-biwen.li@nxp.com>
 <113865e9-e846-1079-6f58-7fddb245398c@pengutronix.de>
 <DB7PR04MB449066A02FB9FD0A795CFAFB8F650@DB7PR04MB4490.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB449066A02FB9FD0A795CFAFB8F650@DB7PR04MB4490.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_064139_074576_FDEB51C0 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Xiaobo Xie <xiaobo.xie@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Clark Wang <xiaoning.wang@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Jiafei Pan <jiafei.pan@nxp.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Fri, Oct 25, 2019 at 04:02:11AM +0000, Biwen Li wrote:
> > I'm trying to test you patch on i.MX6S RIoTBoard. So far I fail to get =
it
> > working with following setup:
> > 1. register i2c-gpio
> > 2. connect i2c-gpio SCL to i2c-imx SCL pin and i2c-gpio SDA to i2c-imx =
SDA
> > pin 3. run this command to register i2c slave eeprom on i2c-imx:
> > echo slave-24c02 0x1064 > /sys/bus/i2c/devices/i2c-3/new_device
> > 4. run "i2cdetect 4" on i2c-gpio to detect eeprom on i2c-imx slave.
> > =

> > So far, nothing was detected and even irq counter of i2c-imx didn't
> > increased.
> > =

> > Do I'm missing some thing? Please, help me to test you patch.
> You not miss anything, but the i2c-gpio driver from upstream is not
> workable on imx(I have tested the i2c-gpio driver with oscilloscope
> on imx8mm-evk, I cannot get any signal from the i2c-gpio bus).

In general the GPIOs are known to work, so I wonder what the problem is.
If it relies on being able to read the state of an output it might help
to set the SION bit on the related pins.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
