Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC3216233D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 10:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yA3O6N1IUNwzrArFaQlayuXw4uJKfjPaWYX7bfrmtoI=; b=heTp3+l12l1OG2
	NVzpbut+4P3Yz8t85KxY7I8faRvydJV7O0g2r9IsAYmVFpmiqFSUXcKE3KRZQKdDqtj1uVrB0BgCt
	xKQFGxniDwLJnbYSqTvh5HUYhf4nAd9MYL3NFEV1XJVHvoCjUfvvLXEGXZS4scyqKX/PViO2Am5MM
	GYeV7nYnhoGS7Yk6b/VtNHwp0so9VHquXjokD332q+1aSwpqTY2f/N/KXagzbtbKT0r/+9juGwdUP
	nt50VDjyQxTIYbIK6puPO8hUJ+ZxeuU/YPCZzQ3A6INmm1aHU7CkO9FlAj44bY3w2ANljWnXgCsLP
	auvdNnNWYcq/cu7zjJSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3z1m-0007PF-VT; Tue, 18 Feb 2020 09:18:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3z1d-0007Ou-1j
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 09:18:42 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1331321D7D;
 Tue, 18 Feb 2020 09:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582017520;
 bh=WDLKT1u/eZpoRYcR0EZB25T+ZUURdxqfLJomoJXA9B8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KxQdcdNXE9bbEEapbGIJeH6RMZTaUyfg/N5Fkb7XCzkcHvbvoCuiux3AOFlStTllp
 VdH2Eae5w/YC8wsB+61k+X/nVXRVnnJgMrzdnfD/PkPk/WoVCGW4ebxw1mv6jl00Sg
 BB5FUHHRvBZNYeWhnQvTaqpZg+oMj4uXwVEx61Ys=
Date: Tue, 18 Feb 2020 17:18:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] firmware: imx: Align imx SC msg structs to 4
Message-ID: <20200218091831.GB6075@dragon>
References: <3a8b6772a1edffdd7cdb54d6d50030b03ba0bebb.1581455751.git.leonard.crestez@nxp.com>
 <20200217062129.GB6790@dragon>
 <VI1PR04MB7023CDE9E4AD086F2E926495EE160@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB7023CDE9E4AD086F2E926495EE160@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_011841_116647_2F4DAB75 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>,
 "open list:PIN CONTROLLER - FREESCALE" <linux-gpio@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 08:37:45PM +0000, Leonard Crestez wrote:
> On 17.02.2020 08:21, Shawn Guo wrote:
> > On Tue, Feb 11, 2020 at 11:24:33PM +0200, Leonard Crestez wrote:
> >> The imx SC api strongly assumes that messages are composed out of
> >> 4-bytes words but some of our message structs have sizeof "6" and "7".
> >>
> >> This produces many oopses with CONFIG_KASAN=y:
> >>
> >> 	BUG: KASAN: stack-out-of-bounds in imx_mu_send_data+0x108/0x1f0
> >>
> >> It shouldn't cause an issues in normal use because these structs are
> >> always allocated on the stack.
> >>
> >> Cc: stable@vger.kernel.org
> > 
> > Should we have a fixes tag and send it for -rc?
> 
> I haven't check but this would probably have to be split into multiple 
> patches because the structs were not added all at once.

Or maybe we can just drop the stable tag, as it addresses a corner
case issue which could concern very few people?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
