Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E38E5BEF39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yV1Kk9r3jwQje4iW7Lv3HqqV4y9HHcG3Mc/Q9LDD7M=; b=sAPqTz35XnNFMl
	iT9tef5jaVpdyRavrQDMxbSt4i/8iOSKAH/W6NUlxKRs1CqxPSUbJKtmzN4UtNZmRPqJwq6E4clqc
	sSPwrpQwSWtr2NTGk5RjdwZoLTIgQyQiJU4SUD8uIYO1TXDOiBeHnXhLCBbKQJ7pawn2rYeZpyg9d
	xiOdvaA2WQGKq7S6OGGbKMklRKBK6XB6TNGDRdV0TS5ifY/DZAyXNKYHdfDN+nBq3CrcM3zdepsNx
	nH7spYX9nbqfmptyvlipq22OCb2wLUx9fdsl9PH/lqoWAf7nyodFkQZZkEG2HYUUFd03TfyH3dgXh
	3GEYDul/nuwwXCLgzfxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQf9-0006lY-U3; Thu, 26 Sep 2019 10:06:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQew-0006iA-43
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:06:03 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iDQet-0004yT-DP; Thu, 26 Sep 2019 12:05:59 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iDQes-000329-OD; Thu, 26 Sep 2019 12:05:58 +0200
Date: Thu, 26 Sep 2019 12:05:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Message-ID: <20190926100558.egils3ds37m3s5wo@pengutronix.de>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:11:00 up 131 days, 14:29, 85 users,  load average: 0.24, 0.16,
 0.14
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_030602_169556_A1400C96 
X-CRM114-Status: GOOD (  22.15  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On 19-09-26 08:03, Anson Huang wrote:
> Hi, Marco
> 
> > On 19-09-25 18:07, Anson Huang wrote:
> > > The SCU firmware does NOT always have return value stored in message
> > > header's function element even the API has response data, those
> > > special APIs are defined as void function in SCU firmware, so they
> > > should be treated as return success always.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > 	- This patch is based on the patch of
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> > >
> > hwork.kernel.org%2Fpatch%2F11129553%2F&amp;data=02%7C01%7Canson.
> > huang%
> > >
> > 40nxp.com%7C1f4108cc25eb4618f43c08d742576fa3%7C686ea1d3bc2b4c6fa
> > 92cd99
> > >
> > c5c301635%7C0%7C0%7C637050815608963707&amp;sdata=BZBg4cOR2rP%2
> > BRBNn15i
> > > Qq3%2FXBYwhuCLkgYzFRbfEgVU%3D&amp;reserved=0
> > > ---
> > >  drivers/firmware/imx/imx-scu.c | 34
> > > ++++++++++++++++++++++++++++++++--
> > >  1 file changed, 32 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/firmware/imx/imx-scu.c
> > > b/drivers/firmware/imx/imx-scu.c index 869be7a..ced5b12 100644
> > > --- a/drivers/firmware/imx/imx-scu.c
> > > +++ b/drivers/firmware/imx/imx-scu.c
> > > @@ -78,6 +78,11 @@ static int imx_sc_linux_errmap[IMX_SC_ERR_LAST] =
> > {
> > >  	-EIO,	 /* IMX_SC_ERR_FAIL */
> > >  };
> > >
> > > +static const struct imx_sc_rpc_msg whitelist[] = {
> > > +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > IMX_SC_MISC_FUNC_UNIQUE_ID },
> > > +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > > +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> > 
> > Is this going to be extended in the near future? I see some upcoming
> > problems here if someone uses a different scu-fw<->kernel combination as
> > nxp would suggest.
> 
> Could be, but I checked the current APIs, ONLY these 2 will be used in Linux kernel, so
> I ONLY add these 2 APIs for now.

Okay.

> However, after rethink, maybe we should add another imx_sc_rpc API for those special
> APIs? To avoid checking it for all the APIs called which may impact some performance.
> Still under discussion, if you have better idea, please advise, thanks!

Adding a special api shouldn't be the right fix. Imagine if someone (not
a nxp-developer) wants to add a new driver. How could he be expected to
know which api he should use. The better abbroach would be to fix the
scu-fw instead of adding quirks..

Regards,
  Marco


> 
> Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
