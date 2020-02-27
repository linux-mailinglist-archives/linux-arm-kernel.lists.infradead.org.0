Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6326E1717BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wONXT5NlJQiakLYPNsrUP13IffAvoXE2jFSbgK+GM7U=; b=BJIXhMmxmoh5on
	XF3uWi/aLSeBRlW1gRKsHBm8Vio8BFGn7syXa/t8P5fv8kppu7YDMa/OK9mSXYvIEpYy+F2awVQ9+
	Bb/sFn8fQR2jeUSgekOgVjFUmwZz05PYkkuYcKqaxzv1HTjFtBNRUqUOP2bdHV3nTJpPoWPttDLsh
	H9ThsBxO6TaRoRUnpolVcgo+aMZsgo3ConeLib3vkPsn14YUZyO0TqK/XzdI9nj/4nTFR9G+f4AC/
	8fVKuZvw+mv/A5+p47grQn0TsZLD+N3IIR9nLGK20XaIc9eP2uRHo+fTnpYwtT+4xhnO91A/+uBEz
	JV2LJpch9UR/rXvZ0vGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IWf-000785-C8; Thu, 27 Feb 2020 12:44:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IWU-00077Y-PF
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:44:16 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7IWO-00013u-U9; Thu, 27 Feb 2020 13:44:08 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7IWN-000615-15; Thu, 27 Feb 2020 13:44:07 +0100
Date: Thu, 27 Feb 2020 13:44:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Message-ID: <20200227124406.6kbgu3dbru4qmews@pengutronix.de>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
 <20200227111838.GA24071@b29397-desktop>
 <20200227113539.gcx3nfwm2fbm3ukv@pengutronix.de>
 <20200227122045.GB24071@b29397-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227122045.GB24071@b29397-desktop>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:34:01 up 104 days,  3:52, 122 users,  load average: 0.03, 0.05,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_044414_822537_9E0A0A72 
X-CRM114-Status: GOOD (  18.34  )
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

On 20-02-27 12:20, Peter Chen wrote:
> On 20-02-27 12:35:39, Marco Felsch wrote:
> > Hi Peter,
> > 
> > thanks for your fast reply :)
> > 
> > On 20-02-27 11:18, Peter Chen wrote:
> > > On 20-02-27 11:42:09, Marco Felsch wrote:
> > > > Hi,
> > > > 
> > > > the gpio-based port power is broken since commit [1,2]. I changed the
> > > > core behaviour to to cleanup the code and avoid local workaround fixes.
> > > 
> > > Many i.mx series evk boards work well for gpio-based port power control,
> > > what problem you have found, would you please list it detail?
> > 
> > Hm.. who could that work? I picked the important parts:
> > 
> > static int ehci_ci_portpower(struct usb_hcd *hcd, int portnum, bool enable)
> > {
> > 	...
> > 
> > 	if (priv->reg_vbus && enable != priv->enabled) {
> > 
> > 		...
> > 
> > 		if (enable)
> > 			ret = regulator_enable(priv->reg_vbus);
> > 		else
> > 			ret = regulator_disable(priv->reg_vbus);
> > 
> > 		...
> > 	}
> > 
> > 	...
> > }
> > 
> > static int host_start(struct ci_hdrc *ci)
> > {
> > 	...
> > 
> > 	priv->reg_vbus = NULL;
> > 
> > 	if (ci->platdata->reg_vbus && !ci_otg_is_fsm_mode(ci)) {
> > 		if (ci->platdata->flags & CI_HDRC_TURN_VBUS_EARLY_ON) {
> > 			ret = regulator_enable(ci->platdata->reg_vbus);
> > 			if (ret) {
> > 				dev_err(ci->dev,
> > 				"Failed to enable vbus regulator, ret=%d\n",
> > 									ret);
> > 				goto put_hcd;
> > 			}
> > 		} else {
> > 			priv->reg_vbus = ci->platdata->reg_vbus;
> > 		}
> > 	}
> > 
> > 	...
> > }
> > 
> > Note, I'm using a imx6q which has the CI_HDRC_TURN_VBUS_EARLY_ON set.
> > 
> 
> Do you have a VBUS regulator at your dts, and add it at controller's
> node? See: arch/arm/boot/dts/imx6qdl-sabresd.dtsi as an example please?

Yes, that's my use case too.

> If you have set CI_HDRC_TURN_VBUS_EARLY_ON, the VBUS is controlled by
> chipidea driver, not by USB core through PORTSC.PP (ehci_ci_portpower).

I know, pls have a look my the patches.

I had the problem that the vbus regulator wasn't turned off during a
suspend/resume logic. The first issue within the usb-core should be
fixed by [1] (v2 RFC is on the way). You never run in that case if you
don't fix this. After I fixed it the port-power is called during suspend
but obviously the regulator didn't get turned off because we don't add
it to the priv->reg_vbus.

This patchset should fix this and get rid of the
CI_HDRC_TURN_VBUS_EARLY_ON flag.

Regards,
  Marco

> -- 
> 
> Thanks,
> Peter Chen

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
