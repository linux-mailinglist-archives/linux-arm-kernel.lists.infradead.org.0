Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EECC186389
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 04:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZrZWjJTXlM7DMVnkGmX0DLGaAGzTGTeSsc3ndYk+uw=; b=uQ8ZYiGUPXI1pQ
	U8U8Tn/U/qA454YU/La9m97RkGuJeAzMbaIZNw9wcNlHof3QOv1HGsD/8YiQefi+0DkAxfcKqei4p
	AMsHr4xOdLILJ+nq6972ei/kjNIZ4075VVn9NqV53hgmQn0zS5DnL6wPs2iDy/P4f7JdSy5IFL8Ia
	koP6ZH7rPb03D/PVfcUB8SSOk+veLM5NDOTilvhR7j56IqlYu+vCo3m1iS3b5Q1qaMh5rjmL3OUBN
	kxnY2itpbcrUgDih30c+pXWxenHY0RJVVCOK9PBKXXMe6YfCNw17te3ailyuXQZhRqKQRZc4oyGSX
	CYqZEyH/WfU+bEBcAdkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDg6w-0003Ck-9b; Mon, 16 Mar 2020 03:08:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDg6j-0003Bi-0R
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 03:08:02 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B83B420409;
 Mon, 16 Mar 2020 03:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584328079;
 bh=Ta/7YQGMbWyIGTwkBfx9j6N2DjoHmcD3pjam5ZHomYo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YuPz9BDeEmfsDued5suhi+F0CzjEaeD6rv51BFRYQ1JaiZD34V1qqxHrXeYsPG8zj
 XJXVKJ1sBrjUt3Ir53ZsoMrcqk/HSbkX4EXZp3wKxeD2iUNhqlSKLac+Dt3aXcpzLA
 Kjjwq/qCLJvbt4xwZRgKKwRuuvh3evpEwRSh3zWY=
Date: Mon, 16 Mar 2020 11:07:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Message-ID: <20200316030744.GC17221@dragon>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4481F087AC3CDA691300710288FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316005219.GD17221@dragon>
 <AM0PR04MB44819E4A9E027F1555C33D0B88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB44819E4A9E027F1555C33D0B88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_200801_094523_43BA3C1C 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 Anson Huang <anson.huang@nxp.com>,
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
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 02:51:47AM +0000, Peng Fan wrote:
> Hi Shawn,
> 
> > Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> > case
> > 
> > On Mon, Mar 09, 2020 at 01:40:18PM +0000, Peng Fan wrote:
> > > > Subject: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> > > > case
> > >
> > > I have one patch pending reviewing.
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> > >
> > hwork.kernel.org%2Fpatch%2F11395247%2F&amp;data=02%7C01%7Cpeng.f
> > an%40n
> > >
> > xp.com%7C995815002e2b490791e008d7c9445133%7C686ea1d3bc2b4c6fa9
> > 2cd99c5c
> > >
> > 301635%7C0%7C0%7C637199167574579419&amp;sdata=RM4Mtwl8LZ3ft9
> > 3uL3FQPcHT
> > > 9lPHSqBOgugozkcLvag%3D&amp;reserved=0
> > 
> > I dropped that patch from my queue and picked patch #2 from this series as
> > the favor.
> 
> I think dropping that patch might cause Linux-next build fail as previously showed,
> because IMX_SCU_SOC depends on COMPILE_TEST. If you drop that patch,
> also need to drop COMPILE_TEST from IMX_SCU_SOC.
> 
>  ld: drivers/soc/imx/soc-imx-scu.o: in function `.imx_scu_soc_probe':
>  soc-imx-scu.c:(.text.imx_scu_soc_probe+0x44): undefined reference to 
> `.imx_scu_get_handle'
>  ld: soc-imx-scu.c:(.text.imx_scu_soc_probe+0x134): undefined reference 
>  to `.imx_scu_call_rpc'
>  ld: soc-imx-scu.c:(.text.imx_scu_soc_probe+0x20c): undefined reference 
>  to `.imx_scu_call_rpc'
>  
>  Caused by commit
>  
>    68c189e3a93c ("soc: imx: increase build coverage for imx8m soc 
>  driver")
> 
> What do you prefer? I personally think dummy functions would be good.

I would rather drop COMPILE_TEST from IMX_SCU_SOC.  Could you send a
patch for that shortly?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
