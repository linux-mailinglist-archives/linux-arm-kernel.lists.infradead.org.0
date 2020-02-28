Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5269C17320E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 08:49:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hlf/ofY1mveiZeTIwbckrsnTSMhEsJuB0N3P5/Sxkqg=; b=AE2unNlJWjP8Xr
	/AfbEvWvymhOWwOWSYNFQYlv1kURBVqq7foZrsktHojn8y9YumcTaTfMKAnOVc3xjoomCpmNgdJi8
	9CmM0ZpF/IjxRjdLGHGsPB2RT5YVmK+aR6khcR2C9g+1y92vObW3A5plKMN5MrQXPLOQVW1YqC0f8
	mV0zArD/HyVP8RAbUzGlxTOoUR4GUno2wwGD8MQEFTFjWs/SSLfxslFVvELuOgxpeaRE+B2Xg43qO
	nxWrRii/IAFbtP1rgIqHkGSTW+abEEDlCePbjrIT3LoEX9yCp/3BtGFdMXtvVmeM8PruCndSUdJJA
	u8xdM5PTyZXiN5a/9Bdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7aOb-0000AG-Bk; Fri, 28 Feb 2020 07:49:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7aOP-00009X-CF
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 07:49:07 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7aOI-0002VD-9t; Fri, 28 Feb 2020 08:48:58 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7aOG-0001nf-9z; Fri, 28 Feb 2020 08:48:56 +0100
Date: Fri, 28 Feb 2020 08:48:56 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Message-ID: <20200228074856.gomzgtoxwzj4eele@pengutronix.de>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
 <20200227111838.GA24071@b29397-desktop>
 <20200227113539.gcx3nfwm2fbm3ukv@pengutronix.de>
 <20200227122045.GB24071@b29397-desktop>
 <20200227124406.6kbgu3dbru4qmews@pengutronix.de>
 <VI1PR04MB53270541BB66CAB1EB8F00008BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
 <20200227143914.mi3vsltrtyo5sqed@pengutronix.de>
 <20200228025129.GA31815@b29397-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228025129.GA31815@b29397-desktop>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:18:19 up 104 days, 22:36, 122 users,  load average: 0.23, 0.56,
 0.38
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_234905_418065_81AC2876 
X-CRM114-Status: GOOD (  16.55  )
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

On 20-02-28 02:51, Peter Chen wrote:

...

> > > CI_HDRC_TURN_VBUS_EARLY_ON is introduced by fixing a bug that some i.mx USB
> > > controllers PHY's power is sourced from VBUS, the PHY's power need to be on before
> > > touch some ehci registers, otherwise, the USB signal will be wrong at some low speed
> > > devices use case. So, this flag can't be deleted, it may cause regression.
> > 
> > Pls check my archeological findings and again pls check my patches. I
> > deleted the flag because isn't required anymore afterwards.
> 
> I have already checked your patch, your patch deletes CI_HDRC_TURN_VBUS_EARLY_ON
> quirk, and it may cause regression.

Arg, sorry now I see what you mean. Thanks for your explanation :)
Since the 'struct ehci_ci_priv' contains now an enabled state we can
git rid of the flag. To get it right, the writing the ehci PORT_POWER
must be done before or after we enabled the VBUS? I'm asking because
we can drop the 1st patch of this series.

> > > The solution I see is your may need to implement chipidea VBUS control flow by considering
> > > pm_qos_no_power_off at suspend situation. You may add .suspend API for ci_role_driver,
> > > and called by ci_controller_suspend/ci_controller_resume, of cos, better solution is welcome.
> > 
> > I fixed it within the core [1] and here at the chipidea side.
> > 
> > [1] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2020%2F2%2F27%2F669&amp;data=02%7C01%7Cpeter.chen%40nxp.com%7Cad9b3833ae2f433d93ef08d7bb92d4a0%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637184111614326500&amp;sdata=SPwwBEGBco6IdP8ufmAnJeeRxuAXGLa0xzYlzFA%2FAvg%3D&amp;reserved=0
> > 
> > You will never enter the ehci_ci_portpower() during suspend without [1]
> > if you are using a vanilla kernel. So IMHO this case can't be tested,
> > sorry.
> > 
> 
> Through set pm_qos_no_power_off as 0, the VBUS will be off. You
> never need to call .ehci_ci_portpower again. You may try my second
> suggestion for fix chipidea issue. I will reply your RFC patch for
> USB core.

Many thanks for testing =)

Regards,
  Marco

> -- 
> 
> Thanks,
> Peter Chen

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
