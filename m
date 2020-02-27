Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 586CB171FCD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 15:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXOPhgtsdfqdlJL4jOEpQonc2KNJzKKE8OrUcQu7PeM=; b=iKTzTrQYDZhfIZ
	zPyfD9Npv0CewzPC0pRpLJlpIOymxna+Ucu1aynGwkhveWjcFVHIj+6xZaOLy8R/3RuG/Iiu+SBXU
	33fbpu5Ns1OyJ/5rFm0oPcJY9KaoPxZyxtnnXc2OjbjjdgslSUiB4voimdMNloVcnl2v4SnEN6BR+
	79NJuPagRLuXRy132ak4KsnWnF6lmRQ6dq3JznHE0s25bOLprpmGJTUT3y2Hk1qmsbb5ZLwrB0ElV
	Kf1H5ZEgCZwnJoJkqxiy8O5bjFFc0xnj+DQeAbSJvXtWmekRKRNTYIluWO0hXK9v0H2TdBwHYkZkb
	s/FrlvrGjyfMk9a/UrZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7KK6-0003If-Ln; Thu, 27 Feb 2020 14:39:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7KJv-0003Ha-HG
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 14:39:25 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7KJo-0007I7-MA; Thu, 27 Feb 2020 15:39:16 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7KJm-0001SU-GJ; Thu, 27 Feb 2020 15:39:14 +0100
Date: Thu, 27 Feb 2020 15:39:14 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Message-ID: <20200227143914.mi3vsltrtyo5sqed@pengutronix.de>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
 <20200227111838.GA24071@b29397-desktop>
 <20200227113539.gcx3nfwm2fbm3ukv@pengutronix.de>
 <20200227122045.GB24071@b29397-desktop>
 <20200227124406.6kbgu3dbru4qmews@pengutronix.de>
 <VI1PR04MB53270541BB66CAB1EB8F00008BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB53270541BB66CAB1EB8F00008BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:01:27 up 104 days,  5:20, 122 users,  load average: 0.24, 0.16,
 0.07
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_063923_574840_F65D8C2A 
X-CRM114-Status: GOOD (  23.24  )
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
Cc: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jun.li@freescale.com" <jun.li@freescale.com>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 20-02-27 13:30, Peter Chen wrote:
>   
> > > >
> > > > Note, I'm using a imx6q which has the CI_HDRC_TURN_VBUS_EARLY_ON set.
> > > >
> > >
> > > Do you have a VBUS regulator at your dts, and add it at controller's
> > > node? See: arch/arm/boot/dts/imx6qdl-sabresd.dtsi as an example please?
> > 
> > Yes, that's my use case too.
> > 
> > > If you have set CI_HDRC_TURN_VBUS_EARLY_ON, the VBUS is controlled by
> > > chipidea driver, not by USB core through PORTSC.PP (ehci_ci_portpower).
> > 
> > I know, pls have a look my the patches.
> > 
> > I had the problem that the vbus regulator wasn't turned off during a
> > suspend/resume logic. The first issue within the usb-core should be fixed by [1] (v2
> > RFC is on the way). You never run in that case if you don't fix this. After I fixed it
> > the port-power is called during suspend but obviously the regulator didn't get turned
> > off because we don't add it to the priv->reg_vbus.
> > 
> > This patchset should fix this and get rid of the CI_HDRC_TURN_VBUS_EARLY_ON
> > flag.
> > 
>  
> Hi Marco,
> 
> I may understand your case now. At old USB port design, the VBUS is never allowed to
> turned off to response the USB wakeup event. But the expected behavior has changed
> after pm_qos_no_power_off is introduced for USB port, it is allowed the port is powered off.

Luckily we have git :) and I my archeological findings are:

 0ero Patch 2012-07-07) 1530280084c3 usb: chipidea: add imx platform driver
 1st  Patch 2012-10-23) ae0fb4b72c8d PM / QoS: Introduce PM QoS device flags support
 2nd  Patch 2013-01-23) ad493e5e5805 usb: add usb port auto power off mechanism
 3th  Patch 2014-10-13) 11a7e5940514 usb: ehci: add ehci_port_power interface
 4th  Patch 2014-10-13) c8679a2fb8de usb: chipidea: host: add portpower override
 5th  Patch 2015-02-11) 6adb9b7b5fb6 usb: chipidea: add a flag for turn on vbus early for host
 6th  Patch 2015-02-11) 659459174188 usb: chipidea: host: turn on vbus before add hcd if early vbus on is required

A few more details:
- Since day 0 the imx chipidea driver supports the regulator but it was
  only used to turn it on (0ero Patch). Later the regulator support was
  shifted to the core and optional.
- 1-2 Patch added the pm_qos_no_power_off support
- 3-4 Patch adds the support to disable the regulator
- 5-6 Patch adding a workaround for patches 3-4 which breaks the
  regulator power-off support.

So as you can see the pm_qos_no_power_off was introduced before the gpio
regulator vbus power-off support was added.

> PORTSC.PP could be controlled by USB core, but USB VBUS's power is not controlled
> by this bit if the VBUS power enable pin is configured as GPIO function, that is your case.

Yep I know :)

> CI_HDRC_TURN_VBUS_EARLY_ON is introduced by fixing a bug that some i.mx USB
> controllers PHY's power is sourced from VBUS, the PHY's power need to be on before
> touch some ehci registers, otherwise, the USB signal will be wrong at some low speed
> devices use case. So, this flag can't be deleted, it may cause regression.

Pls check my archeological findings and again pls check my patches. I
deleted the flag because isn't required anymore afterwards.

> The solution I see is your may need to implement chipidea VBUS control flow by considering
> pm_qos_no_power_off at suspend situation. You may add .suspend API for ci_role_driver,
> and called by ci_controller_suspend/ci_controller_resume, of cos, better solution is welcome.

I fixed it within the core [1] and here at the chipidea side.

[1] https://lkml.org/lkml/2020/2/27/669

You will never enter the ehci_ci_portpower() during suspend without [1]
if you are using a vanilla kernel. So IMHO this case can't be tested,
sorry.

Kind regards,
  Marco

> Peter
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
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
