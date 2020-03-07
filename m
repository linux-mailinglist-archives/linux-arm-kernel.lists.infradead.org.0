Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A010A17CB60
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 03:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TDdEuK01PcMSsChjjbaEvJStPpzl53UXqRBNRJO+DM=; b=uMWflD2yiesOS4
	JqJDSWPomhiAIlF8n/1IzqXKDFp+Avp0jZ0VuzBKsfIbLtWSDieJZrthftgsAst6OnjRIi5GljvfQ
	vDnD2z3R5RqeeMlE8Aq6MEXkSlDHJ4D2AiZAxWbjCtA1Se9An92M4jGfxcBVtrwaw5tnrVrnO2lr4
	9ilfVN9eoR5UIN0rk2reH5IsS/m84KzgezfN2BGCyE9i0pEMzzY3SE+yVmV7frl+DYk+VsLL8hLXg
	ExCJp4bJHYEUGyZd7vbp0WGvUt64tAqmNXlf7q0PUnyLPFL04sskfhrZxNr921h/AICWxSVeQ3+re
	t7oCKPUjIl690DztShGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAPfH-0000vD-Go; Sat, 07 Mar 2020 02:58:11 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAPfD-0000v5-L1
 for linux-arm-kernel@bombadil.infradead.org; Sat, 07 Mar 2020 02:58:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oNocI03EYs1Z+pGvwVoMrM4xrMbRGicYCCbHzVDgI7M=; b=0nNKKNRhhM2jfNWckowCqdVcCK
 N++fCSv1ixpFrfyUQXythe7twzL8WVzusDxseU53ZvduFun2oolGUOwUXlNO4R5HVPWf1J/ErTd7z
 ob6gfmlTDQFdQULfbQkh/7ryGSJw6fZhcl38PZBjZXhDsxliXV+fp5km/Ql97syTWHllmVKil6UcE
 rPH+ZpF6FZxD4NfavrwOLAhYd55V2Eh+OEaXlV5b237D8gpcIBXs1zoNwu425M8mNGpSWzwvOC33C
 lvc4SLyazUGatLZcLStoazfBjvADNEw+Q5xn6KfZh4t6bcpia/KWyNd0A0CAqowKnv5DeCNxjQrwQ
 WRX/5K0A==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAPf9-0007YL-I2
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 02:58:04 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E1D1F200002;
 Sat,  7 Mar 2020 02:57:20 +0000 (UTC)
Date: Sat, 7 Mar 2020 03:57:20 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Message-ID: <20200307025720.GA52231@piout.net>
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
 <1583509356-8265-3-git-send-email-Anson.Huang@nxp.com>
 <20200306193310.GI217608@dtor-ws>
 <CAKdAkRRhXE6Hviqx90_5hWmP7YQnKO2QLJgDYnzt_CPjeH7D0A@mail.gmail.com>
 <20200306211538.GA8060@piout.net>
 <DB3PR0402MB39164192146D17327A45DA6CF5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39164192146D17327A45DA6CF5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Marco Felsch <m.felsch@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 Ronald =?iso-8859-1?Q?Tschal=E4r?= <ronald@innovation.ch>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/03/2020 01:36:39+0000, Anson Huang wrote:
> Hi, Alexandre
> 
> > Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
> > KEYBOARD_IMX_SC_KEY
> > 
> > On 06/03/2020 12:05:42-0800, Dmitry Torokhov wrote:
> > > On Fri, Mar 6, 2020 at 11:33 AM Dmitry Torokhov
> > > <dmitry.torokhov@gmail.com> wrote:
> > > >
> > > > On Fri, Mar 06, 2020 at 11:42:34PM +0800, Anson Huang wrote:
> > > > > Add COMPILE_TEST support to i.MX SC keyboard driver for better
> > > > > compile testing coverage.
> > > > >
> > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > >
> > > > Applied, thank you.
> > >
> > > Actually, not:
> > >
> > > ERROR: "imx_scu_irq_register_notifier"
> > > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > > ERROR: "imx_scu_get_handle" [drivers/input/keyboard/imx_sc_key.ko]
> > undefined!
> > > ERROR: "imx_scu_call_rpc" [drivers/input/keyboard/imx_sc_key.ko]
> > undefined!
> > > ERROR: "imx_scu_irq_unregister_notifier"
> > > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > > ERROR: "imx_scu_irq_group_enable"
> > > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > > make[1]: *** [scripts/Makefile.modpost:94: __modpost] Error 1
> > > make: *** [Makefile:1282: modules] Error 2
> > >
> > > If you want to enable compile test coverage you need to provide stubs
> > > for the above functions.
> > >
> > 
> > or select IMX_SCU
> > 
> > or leave out COMPILE_TEST from the individual drivers as having
> > COMPILE_TEST for IMX_SCU is enough to be able to select the drivers.
> 
> Thanks, I already added the COMPILE_TEST for IMX_SCU which is in this same patch series,
> without that IMX_SCU COMPILE_TEST patch, the build will failed, so in V2, I also added
> the stubs into those IMX SCU APIs to make sure even IMX_SCU is NOT enabled, modules
> with COMPILE_TEST can still pass build, please help review V2 patch set.
> 

My point is that there is no need for the stubs. Simply have
COMPILE_TEST for IMX_SCU as this is enough to extend coverage to all the
drivers and significantly reduces the code size versus what you did in
v2.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
