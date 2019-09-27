Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9293C01C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lzZC40Gq5JPVeKuoJBHAYgRYMqUifpg1yUgFqTNMXY=; b=TsTFatFu3Ta39I
	QnmQhWY7fzQVWIwAnMaVZtfxXaRPEI0612kkfgWWMmEXv119IFzynulVYBidujOdqW4eFR/eGCu6U
	EdZBv+T5AnBC9qw/5DVtUpT5jJk6rwR27JAMGW2DdCqgTzOat7/7J8+hLCPhGjYi/TaH25SYK7ltr
	BxdymO7Vbr8Tv5i1Gwfl17OVzbbT4AC01yQmIWv0dWKHSG51fxOkpzXHE1TmECKbnMzZWVo4kPWYM
	hROAUW66TNXKAo+dIu7T1/Zl17bfA9lGM2jiW2Mim3Mkg5TKR/VLyczeMj09PIPxinS6KNBEmCJaL
	VnAbjLCHRyKyBTi9UFJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmCm-0007C3-Se; Fri, 27 Sep 2019 09:06:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmCe-00079O-A7
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:06:18 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iDmCY-0000x0-Co; Fri, 27 Sep 2019 11:06:10 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iDmCX-0008Rx-Qm; Fri, 27 Sep 2019 11:06:09 +0200
Date: Fri, 27 Sep 2019 11:06:09 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Message-ID: <20190927090609.fyxdekkzrco7memt@pengutronix.de>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:49:01 up 132 days, 15:07, 85 users,  load average: 0.03, 0.07,
 0.08
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_020616_350194_7B87547D 
X-CRM114-Status: GOOD (  30.30  )
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

Hi Anson, Leonard,

On 19-09-27 01:20, Anson Huang wrote:
> Hi, Leonard
> 
> > On 2019-09-26 1:06 PM, Marco Felsch wrote:
> > > On 19-09-26 08:03, Anson Huang wrote:
> > >>> On 19-09-25 18:07, Anson Huang wrote:
> > >>>> The SCU firmware does NOT always have return value stored in
> > >>>> message header's function element even the API has response data,
> > >>>> those special APIs are defined as void function in SCU firmware, so
> > >>>> they should be treated as return success always.
> > >>>>
> > >>>> +static const struct imx_sc_rpc_msg whitelist[] = {
> > >>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > >>> IMX_SC_MISC_FUNC_UNIQUE_ID },
> > >>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > >>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> > >>>
> > >>> Is this going to be extended in the near future? I see some upcoming
> > >>> problems here if someone uses a different scu-fw<->kernel
> > >>> combination as nxp would suggest.
> > >>
> > >> Could be, but I checked the current APIs, ONLY these 2 will be used
> > >> in Linux kernel, so I ONLY add these 2 APIs for now.
> > >
> > > Okay.
> > >
> > >> However, after rethink, maybe we should add another imx_sc_rpc API
> > >> for those special APIs? To avoid checking it for all the APIs called which
> > may impact some performance.
> > >> Still under discussion, if you have better idea, please advise, thanks!
> > 
> > My suggestion is to refactor the code and add a new API for the this "no
> > error value" convention. Internally they can call a common function with
> > flags.
> 
> If I understand your point correctly, that means the loop check of whether the API
> is with "no error value" for every API still NOT be skipped, it is just refactoring the code,
> right?

How makes this things easier?

> > > Adding a special api shouldn't be the right fix. Imagine if someone
> > > (not a nxp-developer) wants to add a new driver. How could he be
> > > expected to know which api he should use. The better abbroach would be
> > > to fix the scu-fw instead of adding quirks..
> 
> Yes, fixing SCU FW is the best solution, but we have talked to SCU FW owner, the SCU
> FW released has been finalized, so the API implementation can NOT be changed, but
> they will pay attention to this issue for new added APIs later. That means the number
> of APIs having this issue a very limited.

This means those APIs which already have this bug will not be fixed?
IMHO this sounds a bit weird since this is a changeable peace of code ;)

> > Right now developers who want to make SCFW calls in upstream need to
> > define the message struct in their driver based on protocol documentation.
> > This includes:
> > 
> > * Binary layout of the message (a packed struct)
> > * If the message has a response (already a bool flag)
> > * If an error code is returned (this patch adds support for it)

Why should I specify if a error code is returned?

Regards,
  Marco

> > Since callers are already exposed to the binary protocol exposing them to
> > minor quirks of the calling convention also seems reasonable. Having the
> > low-level IPC code peek at message IDs seems like a hack; this belong at a
> > slightly higher level.
> 
> A little confused, so what you suggested is to add make the imx_scu_call_rpc()
> becomes the "slightly higher level" API, then in this API, check the message IDs
> to decide whether to return error value, then calls a new API which will have
> the low-level IPC code, the this new API will have a flag passed from imx_scu_call_rpc()
> function, am I right?
> 
> Anson

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
