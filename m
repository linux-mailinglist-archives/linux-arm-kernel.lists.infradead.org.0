Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4144811A515
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:27:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mc2qhnNxdWw6QpsCw+66H9+/DYynsV/PO97sLKU/a3g=; b=TcEqG3mxbPplfH
	52oNmUOx2VUExQeO6xf8tyj5byNEZ9wztIPR26ri9TKkO7O8JR+3rCS7Kbiy1iOOJj9RXSFkkApoX
	2Ji6llXq9oedFpd2Ow2NsIr0RGxanhC1cXg8u/RbPBh9GqBbzhLk4dz8kmOhXJukN9p8NjBzl8C9E
	Q11pbvoX88SyML4aNbGbmqWf/leSJP0iOAwRbvLZ6wcoWGS1BNCNvyCDczD9aFXydQOM5NZmdg5PH
	UEh5/XQxbpJhy3+Q90d0+6w7gYV4KLWde69MvJ9XD1l5B7YSrlSNMxW4QYbUxhbyVp8udQuMEMjLh
	8AKQG4tgIpdq0RKruyZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iewPN-0000yB-04; Wed, 11 Dec 2019 07:27:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iewPE-0000xK-Et
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 07:27:33 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iewP4-0006T3-E2; Wed, 11 Dec 2019 08:27:22 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iewP3-0004Eh-6N; Wed, 11 Dec 2019 08:27:21 +0100
Date: Wed, 11 Dec 2019 08:27:21 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 1/3] ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
 regulator
Message-ID: <20191211072721.ze6yn2felxyae5eb@pengutronix.de>
References: <1571906920-29966-1-git-send-email-Anson.Huang@nxp.com>
 <VI1PR04MB7023CD288FCC57806F067FD9EE5B0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916D3DB4C0CE0017FC2D4B1F55A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916D3DB4C0CE0017FC2D4B1F55A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:22:06 up 25 days, 22:40, 33 users,  load average: 0.00, 0.00, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_232732_498675_B0C071A3 
X-CRM114-Status: GOOD (  16.46  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-12-11 01:06, Anson Huang wrote:
> 
> 
> > Subject: Re: [PATCH 1/3] ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
> > regulator
> > 
> > On 24.10.2019 11:51, Anson Huang wrote:
> > > On i.MX6UL 14x14 EVK board, sensors' power are controlled by
> > > GPIO5_IO02, add GPIO regulator for sensors to manage their power.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > 
> > For me this breaks network boot on imx6ul evk, relevant log snippet is this:
> > 
> >      fec 20b4000.ethernet eth0: Unable to connect to phy
> >      IP-Config: Failed to open eth0
> > 
> > Looking at schematics (SPF-28616_C2.pdf) I see that SNVS_TAMPER2 pin is
> > connected to PERI_PWREN which controls VPERI_3V3 which is used across
> > the board:
> >   * Sensors (VSENSOR_3V3)
> >   * Ethernet (VENET_3V3)
> >   * Bluetooth
> >   * CAN
> >   * Arduino header
> >   * Camera
> > 
> > Maybe there are board revision differences? As far as I can tell this regulator
> > is not specific to sensors so it should be always on.
> 
> You are correct, this regulator controls many other peripherals, I should make it always ON for now
> to make sure NOT break other peripheral, and after all other peripherals controlled
> by this regulator have added this regulator management, then the always ON can be
> removed.

IMHO marking the regulator as always on shouldn't be the fix. Is it to
much work to add all required regulators? At least please add a comment
which describes the need of the always-on property.

Regards,
  Marco 

> Thanks,
> Anson

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
