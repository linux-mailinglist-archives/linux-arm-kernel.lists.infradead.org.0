Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB14E17C7B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 22:16:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQm+QRXOeZxQmGxUub69cMwuQUSeDWoJKe1eiq78Kg0=; b=HcjcwyKIwikqCc
	PQCCmRu2FUt95AUBMFhhCh81cV1JybQrEq/lVFK6+HvyaejSWmzIpMLg6yeDkksa+Wt4QkqDw9rQt
	q9lp9GSlESksIFl05suKBObxIv8zFZhaQ+uRSuKtcB11VAyiAgECFSfXNJ5bzkLezKVCpVR0Ynh0d
	fNQvdoXAiQmDrN4ur5u1xj0smZL28C56RAiOt+I6X/nMmYR1EVZbFbgcIcWlSZi2x7dXEjV9/tJJb
	0LCRz+oLDD3zO0BNiCy8gNMVA+5eCGY2obR/ulmRMgk0ZXspULirlOaIgAXJWXdAhu3lCfDZGrcMS
	+c1+5GYDhLkahd3xrh7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAKKt-00074q-7G; Fri, 06 Mar 2020 21:16:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAKKm-00074i-OM
 for linux-arm-kernel@bombadil.infradead.org; Fri, 06 Mar 2020 21:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Fiq7axgzh0RUrugcOKjvyttD936DCekPEbQPi1o9w0s=; b=dZpxTWmIzAqC1fuQTRcvsLYKzk
 /ymi1CjTU+qJyUwJCGdmzqUqxf1q88Sa06ZXA0P/6MqatHMDlGy6PRQPSOOqOOzAh6K2HaBs1bocR
 3arMRIW00psXilVWc5Hx6tFFQem2FgflgQEFGi9N0dT+NIfVCebu90ylaGftB4B0shsDWDVZwbAwh
 3UXRYmo7jnUqtgLQwbs+jBYH4+4WyzNhm27U6eQCRiPRwM4s8CgYckldFgB9q4BgI/CNdHbkDZr/z
 xslTtlBAyOxdR1fx7/uKxhfoAutgQ/Hfcjsq25nR23+/Iywx82q1B/oXFywEMLgtLTlP2hInVxar4
 m64za3ig==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAKKW-0000eI-Eq
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 21:16:39 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id BAEA6240006;
 Fri,  6 Mar 2020 21:15:38 +0000 (UTC)
Date: Fri, 6 Mar 2020 22:15:38 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Message-ID: <20200306211538.GA8060@piout.net>
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
 <1583509356-8265-3-git-send-email-Anson.Huang@nxp.com>
 <20200306193310.GI217608@dtor-ws>
 <CAKdAkRRhXE6Hviqx90_5hWmP7YQnKO2QLJgDYnzt_CPjeH7D0A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKdAkRRhXE6Hviqx90_5hWmP7YQnKO2QLJgDYnzt_CPjeH7D0A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_211624_662502_B6A88180 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marco Felsch <m.felsch@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 linux-rtc@vger.kernel.org, amit.kucheria@verdurent.com, wim@linux-watchdog.org,
 Anson Huang <Anson.Huang@nxp.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
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
 lkml <linux-kernel@vger.kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/03/2020 12:05:42-0800, Dmitry Torokhov wrote:
> On Fri, Mar 6, 2020 at 11:33 AM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > On Fri, Mar 06, 2020 at 11:42:34PM +0800, Anson Huang wrote:
> > > Add COMPILE_TEST support to i.MX SC keyboard driver for better compile
> > > testing coverage.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> > Applied, thank you.
> 
> Actually, not:
> 
> ERROR: "imx_scu_irq_register_notifier"
> [drivers/input/keyboard/imx_sc_key.ko] undefined!
> ERROR: "imx_scu_get_handle" [drivers/input/keyboard/imx_sc_key.ko] undefined!
> ERROR: "imx_scu_call_rpc" [drivers/input/keyboard/imx_sc_key.ko] undefined!
> ERROR: "imx_scu_irq_unregister_notifier"
> [drivers/input/keyboard/imx_sc_key.ko] undefined!
> ERROR: "imx_scu_irq_group_enable"
> [drivers/input/keyboard/imx_sc_key.ko] undefined!
> make[1]: *** [scripts/Makefile.modpost:94: __modpost] Error 1
> make: *** [Makefile:1282: modules] Error 2
> 
> If you want to enable compile test coverage you need to provide stubs
> for the above functions.
> 

or select IMX_SCU

or leave out COMPILE_TEST from the individual drivers as having
COMPILE_TEST for IMX_SCU is enough to be able to select the drivers.

> Thanks.
> 
> -- 
> Dmitry

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
