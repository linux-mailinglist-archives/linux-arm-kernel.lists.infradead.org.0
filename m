Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AD9A1964
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYMK8Dg994ArJ7cAjH8q1JOfaW5+mf5Zgv302YOma+0=; b=EPsJF2xF/LdkIM
	gd/Tbhp6SJmW8upjqRb8sTxg+9gHmZM+Qs3WcX9IeSi0YkjSHm+vGqEvxq3NNRu1DcGNs+eUlolE9
	Vo7+mDWWQZnyNEIav1eBSAzmoFMxYyvfOwZjAtgvA5m+8F8R+/vrbkdiDqH8NhS79TfiwnVllOtFE
	zeodl1rQ+gZNYdkRKVfKKY4jxtloJ5mzvfO/F5xi2gTAiNNWCZKDZldWTZCST0sg/xdnZf545BrLE
	5GcU5fyhlC9aRUgrS6omYRpsSeET5CAj9+D/H6XW4B3Y7o4l+A1B8hTzhZl6XFe2YW8nIHp2cLrgU
	qz5MEpWtLrlglyQIdKww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IxU-0005Lo-SO; Thu, 29 Aug 2019 11:51:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IxG-0005Kl-0h
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:51:08 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1i3Ix4-0002md-Ut; Thu, 29 Aug 2019 13:50:54 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1i3Ix2-0007yd-A0; Thu, 29 Aug 2019 13:50:52 +0200
Date: Thu, 29 Aug 2019 13:50:52 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v2 1/2] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Message-ID: <20190829115052.s2m4jw4p3rknqoxb@pengutronix.de>
References: <20190827123216.32728-1-robin@protonic.nl>
 <20190828091550.pdc57wanu6twew5p@pengutronix.de>
 <6d353af709ea545cc34abca5c40674e3@protonic.nl>
 <20190829081712.timamprawezzbesn@pengutronix.de>
 <VE1PR04MB6638A54664EE3FFE16BD419189A20@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB6638A54664EE3FFE16BD419189A20@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:49:36 up 103 days, 18:07, 63 users,  load average: 0.02, 0.01,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_045106_062781_562F1EB7 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, robin <robin@protonic.nl>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 Adam Ford <aford173@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-08-29 09:11, Robin Gong wrote:
> 
> On 2019-08-29 16:17, Marco Felsch wrote:
> > > > While reading the rm it seems that
> > > > the snvs block has a dedicated version register. IMHO this could be
> > > > a better way to apply the change also to existing devices with old
> > > > firmware.
> > >
> > > I thought the same thing, and fully agree with you. However I do not
> > > have a way to determine which versions are out there. Since I couldn't
> > > find any documentation on this, and I only have i.MX6 S/DL, D/Q and UL
> > laying around.
> > 
> > @NXP Kernel Team
> > Can we get some more information here?
> Go ahead, please. That snvs version register SNVS_HPVIDR1 should work as expect.
> MINOR_REV checking is enough, none-zero means for soc after i.mx6sx, but
> Zero means i.mx6q/dl/sl elder soc.

Thanks. Robin can you integrate that so we can drop the different
dt-handling?

Regards,
  Marco

> > 
> > Regards,
> >   Marco
> > 
> > > Regards,
> > > Robin van der Gracht
> > >
> > 
> > --
> > Pengutronix e.K.                           |
> > |
> > Industrial Linux Solutions                 |
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.p
> > engutronix.de%2F&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7C8d4e1
> > 0cd77bd4652f3eb08d72c594e76%7C686ea1d3bc2b4c6fa92cd99c5c301635%7
> > C0%7C0%7C637026634390359345&amp;sdata=mhXlUxmLWg8qtwhPQfkJZm
> > VAn4QQ3YybLOSh83uf27E%3D&amp;reserved=0  |
> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> > |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:
> > +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
