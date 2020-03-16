Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA275186742
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:01:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VxNngHjGHDmiCIkjHa2FgDKENrCv86y8hr0v85hRjk=; b=nwbsGy2BA8yX0D
	50pysBkw9tI0lUgueyCnmJt4vr9GTDTdLY0akUcoHaeyK/TeVtaaEbb/lQyOixYIuajrlJZBV8y8p
	e8VJvsnTdgqGklvrgo3GYVriAwF3Fpf8J86TDGnPa0WIL/y9CJrT1uv9otxvZolZzu9WQA1pOrU+o
	DtfDtmAZT4BQBHzppaVVKXCLPmepGDmV14VeJTyCq4RoRikM006X/tPWQu2bNDKEXu5TQ042m6ySF
	QAZAI1kWyma/vJ65L/lSMYhJ3OXa4PLzngNsFxvmQhgBpsgSeQ/d7ycLmcCyGgOURfB9CwYsBVjXy
	BAj1ti9rK9nOcZYy8Lnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlcU-0007Ur-F3; Mon, 16 Mar 2020 09:01:10 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlcK-0007Th-13
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:01:02 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id B1587240004;
 Mon, 16 Mar 2020 09:00:53 +0000 (UTC)
Date: Mon, 16 Mar 2020 10:00:53 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Message-ID: <20200316090053.GH4518@piout.net>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4481F087AC3CDA691300710288FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316005219.GD17221@dragon>
 <AM0PR04MB44819E4A9E027F1555C33D0B88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316030744.GC17221@dragon>
 <AM0PR04MB44817A48746601EADA4E06BC88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316033447.GE17221@dragon>
 <DB3PR0402MB3916DA9F0F175B9D2E9E684FF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316084056.GG4518@piout.net>
 <DB3PR0402MB391663DB37A8D241092AD708F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB391663DB37A8D241092AD708F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_020100_342139_A4A59DBA 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Peng Fan <peng.fan@nxp.com>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "a.zummo@towertech.it" <a.zummo@towertech.it>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/03/2020 08:44:10+0000, Anson Huang wrote:
> 
> 
> > Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> > case
> > 
> > On 16/03/2020 08:04:17+0000, Anson Huang wrote:
> > > Hi, Shawn
> > >
> > > > Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for
> > > > !CONFIG_IMX_SCU case
> > > >
> > > > On Mon, Mar 16, 2020 at 03:18:43AM +0000, Peng Fan wrote:
> > > > > Just sent out. One more thing, I think all drivers depends on
> > > > > IMX_SCU should not have COMPILE_TEST if we plan not to add dummy
> > > > > functions. I see you picked up Anson's patch in imx/drivers branch,
> > please check more.
> > > >
> > > > Ha, yes. COMPILE_TEST should be dropped for IMX_SCU_PD in Anson's
> > patch.
> > > > Thanks for reminding.
> > >
> > > I still NOT quite understand why we won't support COMPILE_TEST for SCU
> > > drivers, with whose stubs, the build should be OK, if there is any
> > > build error, we should try to fix it, NOT just remove the COMPILE_TEST
> > support, any special reason?
> > >
> > 
> > COMPILE_TEST is supported as long as IMX_SCU is selected like is it for any
> > driver depending on any bus.
> 
> But without having " || COMPILE_TEST " in kconfig, COMPILE_TEST will NOT be supported,
> I think as long as we have stubs for those SCU APIs, all drivers depending on IMX_SCU can
> support COMPILE_TEST independently.
> 


Why do you absolutely need to compile them independently? From a code
coverage point of view, having:

COMPILE_TEST=y
CONFIG_IMX_SCU=y

is enough to select and compile the remaining drivers.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
