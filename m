Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565767D8E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 11:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtlXOJqnzCub5mFAsXAgxOi8RwmZPwzcky3nBjcelxA=; b=Y+cAmzVF6bQQso
	gXNGQxtRJFa1aVWa9ohA9SrxFuCLtZ+r4GyCkZsL5Z4EPqWm5ECbvEb4IA2zWBmdJ+GkXs87QQEuy
	Ld5lFa93Qwu2JIPT/GOIvjowyI29Ac7GuKOs7CXLNq2HUNtZfUnNtZTp33WM9b2FUfeOKQ3bjPR0F
	nUh3SebrxomYtx99LKqWq8Ntq4U4sSUST+9MH/e3FFA5FebexP2+W6eLSZW10TgeB6m1xyoLPr/sk
	pPCdy9YDTlzDrP1/1C+9JksEf5z6fRa8v3JV0P1GRkzCmvStxaP4nIaVM4tnme7KeRag3SDZeQsbI
	DFyEgUqC2d5CTNoq1VgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht7oC-00061I-Nc; Thu, 01 Aug 2019 09:55:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7o7-00060s-57
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 09:55:36 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ht7o3-0000nO-Dh; Thu, 01 Aug 2019 11:55:31 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ht7o1-0006Fm-FK; Thu, 01 Aug 2019 11:55:29 +0200
Date: Thu, 1 Aug 2019 11:55:29 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH] serial: imx: Avoid probe failure in case of missing
 gpiolib
Message-ID: <20190801095529.dm3pvgts6cy6mbiq@pengutronix.de>
References: <20190801081524.22577-1-frieder.schrempf@kontron.de>
 <20190801084827.m42ci3amo37hmesi@pengutronix.de>
 <0674d68b-99fa-3408-1dd1-22dc84144b43@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0674d68b-99fa-3408-1dd1-22dc84144b43@kontron.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_025535_199810_2EC1EAB7 
X-CRM114-Status: GOOD (  17.60  )
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 09:28:33AM +0000, Schrempf Frieder wrote:
> Hi Uwe,
> =

> On 01.08.19 10:48, Uwe Kleine-K=F6nig wrote:
> > On Thu, Aug 01, 2019 at 08:18:05AM +0000, Schrempf Frieder wrote:
> >> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> >>
> >> If CONFIG_GPIOLIB is not enabled, mctrl_gpio_init() will return
> >> -ENOSYS and cause the probing of the imx UART to fail. As the
> >> GPIOs are optional, we should continue probing in this case.
> > =

> > Is this really still the case? On which version did you hit this
> > problem?
> =

> Yes, I think it is. I used v5.2.5, that already has d99482673f95.
> =

> > =

> > I would expect that is gone with
> > d99482673f950817b30caf3fcdfb31179b050ce1 if not earlier.
> =

> I think this is a different problem. If CONFIG_GPIOLIB is disabled, =

> mctrl_gpio_init() returns -ENOSYS unconditionally here: [1]. The =

> existing patch (d99482673f95) seems to handle the case when =

> CONFIG_GPIOLIB is enabled, but no or not all GPIOs are given in the dtb.

Ah, I see.

I don't think we should handle this on a per-driver basis. So my
suggestion is to drop the dummy implementation for mctrl_gpio if GPIOLIB
is disabled. Then the behaviour should be consistant with the gpio stuff
returning NULL in this case. (Or alternatively adapt the dummy
implementation to shortcut and behave identically.)

(Having said that I don't like gpiolib's behaviour of returning NULL for
the optional calls if it's disabled, but having mctrl_gpio behave
differently is worse.)

> The sh-sci.c driver has a similar check to skip this case: [2].

This should than be dropped, too.

Best regards
Uwe

> [1] =

> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/d=
rivers/tty/serial/serial_mctrl_gpio.h#n121
> [2] =

> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/d=
rivers/tty/serial/sh-sci.c#n3290

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
