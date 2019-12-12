Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DA611CBB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 12:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MCdwJBtu0xWKwNgXtngNORW19BfOdqujAQpswwQ6G+s=; b=jPJH0CmWgPtD2p
	xlPWiwSPysG5aA3iZ/Ml+0QglTRkoxYwppWkzxc4gafrdbZyDvlXTR+D5jvqnX+Jjesi8SLpoNKJd
	SrbBmtrxlfeUvV3+Vsxd/YFL0UdGiO8ojSqKA9l4bjnO+e3zvlwCWKwSIno6TB8WGb9OS51q4A43j
	mTJcSrFIin8xjGBkKSkJxxYFkIyj4Q1olvdW3zXqkkYlArFAbb+kRyRqEsjW7M6NqUuPYCiRM6Yl2
	sJ/Xr1KV69o7U6s01Ez0w22QedvX27V/LcFNBxXAU2ywllp4qmi7RYeDRYYV3M8YI1nHlk/DTRNBM
	dAROw9/J8Ma3ba5Qx0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifMEX-0005sS-64; Thu, 12 Dec 2019 11:02:13 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifMEP-0003ij-Hs
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 11:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NVAO4NsxMosCRBEylhmBkoWn6ov2knzY5pHJsDnfa7I=; b=dxnweIl6bWU44iMtkgtbb38WH
 6Vgw7Mw7Cu9YmlufX1PCxC7DkzrkiObt0ibqAu2qHWg8CWherkYCL/OOlpK/Hcco8xv4lK3oG+iuW
 zNhtrtSGbIbEf9d1Ej2O93OhTmuzb5Bf1Pxw0qBtg6hPgwJbak5e9FYncgBY/8zWdbQGGbnkxuXC+
 Bq3GMPxQQJiIb6VsUisaqLrr+MMCKiche4wSnBWEabM0Ot9YzV3mUuFNUAfy4CSFfE9vu+Q4O7obn
 o8yEl0cgPKmybjZEMxc+ffqN60M781lzWdLro9IA37tup/D2o+EZM+Ig97HD2+De7HLoOoWVZY4An
 R3IdArweg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:51932)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ifMBS-00069r-91; Thu, 12 Dec 2019 10:59:02 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ifMBN-0006gn-MP; Thu, 12 Dec 2019 10:58:57 +0000
Date: Thu, 12 Dec 2019 10:58:57 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [EXT] Re: [PATCH] i2c: imx: Defer probing if EDMA not available
Message-ID: <20191212105857.GE25745@shell.armlinux.org.uk>
References: <20191127071136.5240-1-peng.ma@nxp.com>
 <20191128100613.GI25745@shell.armlinux.org.uk>
 <VI1PR04MB4431CF7F051F9439C84F84FAED5A0@VI1PR04MB4431.eurprd04.prod.outlook.com>
 <20191211104347.GA25745@shell.armlinux.org.uk>
 <VI1PR04MB44313AA19A4F81BA1AD9BC5CED5A0@VI1PR04MB4431.eurprd04.prod.outlook.com>
 <20191211114230.GC25745@shell.armlinux.org.uk>
 <VI1PR04MB4431DF2E270FC45A6CC878A9ED550@VI1PR04MB4431.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB4431DF2E270FC45A6CC878A9ED550@VI1PR04MB4431.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_030205_589215_A91D8817 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Chen <peter.chen@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Leo Zhang <leo.zhang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mirela Rabulea <mirela.rabulea@nxp.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Mircea Pop <mircea.pop@nxp.com>, Fancy Fang <chen.fang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, Robin Gong <yibin.gong@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 BOUGH CHEN <haibo.chen@nxp.com>, Ying Liu <victor.liu@nxp.com>,
 Shenwei Wang <shenwei.wang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>,
 Viorel Suman <viorel.suman@nxp.com>, Robert Chiras <robert.chiras@nxp.com>,
 Iuliana Prodan <iuliana.prodan@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Zening Wang <zening.wang@nxp.com>, Han Xu <han.xu@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Horia Geanta <horia.geanta@nxp.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 Ranjani Vaidyanathan <ranjani.vaidyanathan@nxp.com>,
 Bogdan Florin Vlad <bogdan.vlad@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 03:09:32AM +0000, Peng Ma wrote:
> Hello Russell,
> 
> Thanks very much for your strict guidance and comments.
> I realized it is hard to us that we want to i2c used edma when edma
> probe after i2c probe.

I have no problem with that aim.  I'm just very concerned by the
proposed implementation, especially when it has already been proven
to cause regressions in the kernel. I seem to remember that the
infinite loop caused other issues, such as the system being unable
to complete booting.

> I look forward to discussing with you as below, if you like.
> Thanks.
> 
> You say I could do this:
> "So, if you want to do this (and yes, I'd also encourage it to be
> conditional on EDMA being built-in, as I2C is commonly used as a way
> to get at RTCs, which are read before kernel modules can be loaded)
> then you MUST move
> i2c_imx_dma_request() before
> i2c_add_numbered_adapter() to avoid the infinite loop."
> 
> Even if I do this, It's hard to avoid the infinite loop of i2c probe caused by EDMA(build-in) initialization failure.

It isn't clear what you mean here.

If EDMA fails to probe (because fsl_edma_probe() returns an error other
than EPROBE_DEFER) then of_dma_find_controller() will return NULL. That
will be propagated down through i2c_imx_dma_request(). This is no
different from the case where EDMA is built as a module. It is also no
different from the case where EDMA hasn't yet been probed.

If i2c_imx_dma_request() is placed after i2c_add_numbered_adapter(),
and EPROBE_DEFER is propagated out of i2c_imx_probe(), then _yes_, it
will cause an infinite loop, because you are replicating the exact
conditions that caused the attempt to propagate i2c_imx_dma_request()'s
return value to be reverted last time - which brought the kernel to a
grinding halt.

If i2c_imx_dma_request() is placed before i2c_add_numbered_adapter(),
then there is no infinite deferred probing loop - yes, i2c_imx_probe()
will be called as a result of other drivers successfully probing, and
each time it will return EPROBE_DEFER, but the _key_ point is that
the action of i2c_imx_probe() will not _self trigger_ the deferred
probing _and_ place itself onto the deferred probe list.

Please, rather than continuing to send emails arguing over this point,
investigate the stated issue with some practical tests:

1. Make i2c_imx_probe() propagate i2c_imx_dma_request()'s return value,
   as it did in the original patch.
2. Build i2c-imx into the kernel.
3. Build edma as a module.
4. Build and test boot the kernel and check what happens.
5. Move i2c_imx_dma_request() before i2c_add_numbered_adapter()
6. Build and test boot the resulting kernel and note any differences.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
