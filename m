Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78B3196C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 04:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPndoxZgt9tWwvGDcesegt34yy5ixeWBsOgY//1Gupc=; b=a6c/jHAKfxwbJ9
	IZZjZ/Lt5gO44cbduKRlyuZa32SAGe4hdQZIY1kL5Jh8pFIRiZU38wzsjUoPynQ4rjDA06Ld1A5M5
	UiZOarPyqU5kl1u7y/L7UJ1oYF4OUPq8NDpTCdZJvzJwDg/i4iyw5GxVSzoCktrOw9dqyGqxKrO87
	JPt2xFychXRHj0WWEMo4KU4RwOFpir/c4U4MXUVqrnbJiPOv7Kf1Mhxa0iAPL9K4K/sVkXyFqg/M2
	1y3IgzSn6hyqC/NjX50Pdrftfr8QVySWLxzJXSWzRtr9VTYmLvAjk1+sn1ot5cdz4b5kNiFFnhDbv
	+iHnZBpM32MYiYipilig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOvV0-0004Ff-Pa; Fri, 10 May 2019 02:43:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOvUt-0004Eo-VK
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 02:42:57 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4708E20645;
 Fri, 10 May 2019 02:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557456173;
 bh=pZ/RYhQiiXIobOqGJuOmMUFqoqiojXjUHDEaqT4DJ7k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1EUSEGfLrYMAEAVek3nO0AAeZnER9ELE2yjPxiIqL5XMPgas/6nyjek8DCuJ+kOyJ
 uYzAjeS50aEtM/vdV89aQX8QO0voL7+I6wxLHbPQ1USI7EuB7PnBB2mXHQjEy2ZQ2z
 2vH97kNHNhvpvV92QMpq8An5OaGaDQzxEyVcZQ2Y=
Date: Fri, 10 May 2019 10:42:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 1/2] soc: imx-sc: add i.MX system controller soc driver
 support
Message-ID: <20190510024215.GA15856@dragon>
References: <1554965048-19450-1-git-send-email-Anson.Huang@nxp.com>
 <20190421073958.GC19962@dragon> <20190421074152.GD19962@dragon>
 <DB3PR0402MB39161C0DDFF0EEA6D8A90378F5220@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB39164B30B26CAF62EE807168F5220@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <VI1PR04MB5533CED52723AE8292CFC305EE220@VI1PR04MB5533.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB5533CED52723AE8292CFC305EE220@VI1PR04MB5533.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_194256_040378_3B582664 
X-CRM114-Status: GOOD (  26.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "heiko@sntech.de" <heiko@sntech.de>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "stefan.wahren@i2se.com" <stefan.wahren@i2se.com>,
 "robh@kernel.org" <robh@kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "ezequiel@collabora.com" <ezequiel@collabora.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 22, 2019 at 08:48:56AM +0000, Leonard Crestez wrote:
> On 4/22/2019 9:46 AM, Anson Huang wrote:
> >> -----Original Message-----
> >> From: Anson Huang
> >>> From: Shawn Guo [mailto:shawnguo@kernel.org]
> >>> On Sun, Apr 21, 2019 at 03:40:00PM +0800, Shawn Guo wrote:
> >>>> On Thu, Apr 11, 2019 at 06:49:12AM +0000, Anson Huang wrote:
> >>>>> i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
> >>>>> inside, the system controller is in charge of controlling power,
> >>>>> clock and fuse etc..
> >>>>>
> >>>>> This patch adds i.MX system controller soc driver support, Linux
> >>>>> kernel has to communicate with system controller via MU (message
> >>>>> unit) IPC to get soc revision, uid etc..
> >>>>>
> >>>>> With this patch, soc info can be read from sysfs:
> >>>>>
> >>>>>   drivers/soc/imx/Kconfig      |   7 ++
> >>>>>   drivers/soc/imx/Makefile     |   1 +
> >>>>>   drivers/soc/imx/soc-imx-sc.c | 220
> >>>>> +++++++++++++++++++++++++++++++++++++++++++
> >>>>>   3 files changed, 228 insertions(+)  create mode 100644
> >>>>> drivers/soc/imx/soc-imx-sc.c
> >>>>
> >>>> Rather than creating a new driver, please take a look at Abel's
> >>>> generic
> >>>> i.MX8 SoC driver, and see if it can be extended to cover i.MX8QXP.
> >>
> >> Got it, I didn't notice that this patch bas been accepted, I will redo the patch
> >> based on it, thanks.
> > 
> > I have sent the new patch set to support i.MX8QXP SoC revision based on generic i.MX8
> > SoC driver, however, the Kconfig modification is NOT good, it may break i.MX8MQ if IMX_SCU
> > is NOT enabled, although we can add some warp function for SCU firmware API call to fix it,
> > but after further thought and discussion with Dong Aisheng, I think we may need to roll back to
> > use this patch series to create a new SoC driver dedicated for i.MX8 SoCs
> > with system controller inside, such as i.MX8QXP, i.MX8QM etc., the reason are as below:
> > 
> > For i.MX8MQ/i.MX8MM:
> > 	1. SoC driver does NOT depends on i.MX SCU firmware, so no need to use platform driver
> > 	     probe model, just device_init phase call is good enough;
> > 	2. The SoC driver no need to depends on IMX_SCU, so it can be always built in, no need to
> > 	     check IMX_SCU config;
> > 	3. The fuse check for CPU speed grading, HDCP status, NoC settings etc. could be added to this driver,
> > 	    but they are ONLY for i.MX8MQ/i.MX8MM etc..
> > For i.MX8QXP/i.MX8QM:
> > 	1. SoC driver MUST depends on IMX_SCU;
> > 	2. MUST use platform model to support defer probe;
> > 	3. No fuse check for CPU speed grading.
> > 
> > So, I guess the reused code for i.MX8MQ and i.MX8QXP is ONLY those part of creating SoC id device node (less than
> > 30% I think), all other functions are implemented in total different ways, that is why I created the imx_sc_soc driver
> > in this patch series, so do you think we can add new SoC driver for i.MX8 SoC with SCU inside? Putting 2 different architecture
> > SoCs' driver into 1 file looks like NOT making enough sense.
> 
> +1 for separate SOC driver. The 8mq/8mm and 8qm/8qxp families are very 
> different, they just happen to share the imx8 prefix.
> 
> It makes sense to allow people to compile one without the other and this 
> is easier with distinct SOC drivers.

Leonard, Abel,

Can you guys help review the patch?  Thanks.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
