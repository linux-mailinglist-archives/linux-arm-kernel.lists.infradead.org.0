Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1195F17161D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xeEUesPKDyDw5PZnXcWGNKmKCb3lchefCisFpuPzZ4=; b=Jck6qkkqISQiuu
	IC+Vf+cgZgtQ9pJ5J6YmVBEKxGhUpZ0mzqphBDEH0uUAuTeK2fIxOHC5zT5H3J4VEuZ2WMmgapogO
	52fOyUD//OoAHCrKSIMdZfeZ85YO0I8w3QqCLL+O6DReUcwy1PJ86Hf94XstbxK9S5oeSivyBy1Mk
	AKkCOoS1z00m/6EuE/O62kUqyYIyvGNDL+r0imb6UmOXRVae9kjl2knzBZ/nRj9L2CkB4ufdKCrAP
	gUhOBu8MsJxPrJkxtVTzp+fUOFIKQyrIybp+94/dMo4vYwSplsEk2IUddjC1B0i3aXF+sfroHS17f
	lODiCQrngMY2eryv+wPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7HSP-0007ml-0k; Thu, 27 Feb 2020 11:35:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7HSE-0007m9-8g
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:35:47 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7HS8-0001mn-Pt; Thu, 27 Feb 2020 12:35:40 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7HS7-0003vJ-Lw; Thu, 27 Feb 2020 12:35:39 +0100
Date: Thu, 27 Feb 2020 12:35:39 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Message-ID: <20200227113539.gcx3nfwm2fbm3ukv@pengutronix.de>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
 <20200227111838.GA24071@b29397-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227111838.GA24071@b29397-desktop>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:28:58 up 104 days,  2:47, 122 users,  load average: 0.00, 0.01,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_033546_380217_0F026B89 
X-CRM114-Status: GOOD (  16.97  )
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
Cc: "jun.li@freescale.com" <jun.li@freescale.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
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

thanks for your fast reply :)

On 20-02-27 11:18, Peter Chen wrote:
> On 20-02-27 11:42:09, Marco Felsch wrote:
> > Hi,
> > 
> > the gpio-based port power is broken since commit [1,2]. I changed the
> > core behaviour to to cleanup the code and avoid local workaround fixes.
> 
> Many i.mx series evk boards work well for gpio-based port power control,
> what problem you have found, would you please list it detail?

Hm.. who could that work? I picked the important parts:

static int ehci_ci_portpower(struct usb_hcd *hcd, int portnum, bool enable)
{
	...

	if (priv->reg_vbus && enable != priv->enabled) {

		...

		if (enable)
			ret = regulator_enable(priv->reg_vbus);
		else
			ret = regulator_disable(priv->reg_vbus);

		...
	}

	...
}

static int host_start(struct ci_hdrc *ci)
{
	...

	priv->reg_vbus = NULL;

	if (ci->platdata->reg_vbus && !ci_otg_is_fsm_mode(ci)) {
		if (ci->platdata->flags & CI_HDRC_TURN_VBUS_EARLY_ON) {
			ret = regulator_enable(ci->platdata->reg_vbus);
			if (ret) {
				dev_err(ci->dev,
				"Failed to enable vbus regulator, ret=%d\n",
									ret);
				goto put_hcd;
			}
		} else {
			priv->reg_vbus = ci->platdata->reg_vbus;
		}
	}

	...
}

Note, I'm using a imx6q which has the CI_HDRC_TURN_VBUS_EARLY_ON set.

Regards,
  Marco

> Peter
> > 
> > With this series and [3] I'am now able to disable the port completely
> > after I disbaled the pm_qos_no_power_off flag.
> > 
> > [1] 6adb9b7b5fb6 ("usb: chipidea: add a flag for turn on vbus early for host")
> > [2] 659459174188 ("usb: chipidea: host: turn on vbus before add hcd if early vbus on is required")
> > [3] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2020%2F2%2F27%2F198&amp;data=02%7C01%7Cpeter.chen%40nxp.com%7Cc1b3094e826b49b572cb08d7bb71b6bc%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637183969379126557&amp;sdata=i7O7vBqiVCb2opVNva7ffxIdqFb%2BvGzV5Qsy5wwarbQ%3D&amp;reserved=0
> > 
> > Regards,
> >   Marco
> > 
> > Marco Felsch (3):
> >   USB: ehci-hub: let port_power() override the ehci_port_power()
> >   Partially Revert "usb: chipidea: host: turn on vbus before add hcd if
> >     early vbus on is required"
> >   Revert "usb: chipidea: add a flag for turn on vbus early for host"
> > 
> >  drivers/usb/chipidea/ci_hdrc_imx.c | 10 ++--------
> >  drivers/usb/chipidea/host.c        | 31 ++++++++++--------------------
> >  drivers/usb/host/ehci-hub.c        |  6 +++---
> >  include/linux/usb/chipidea.h       | 17 ++++++++--------
> >  4 files changed, 23 insertions(+), 41 deletions(-)
> > 
> > -- 
> > 2.20.1
> > 
> 
> -- 
> 
> Thanks,
> Peter Chen
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
