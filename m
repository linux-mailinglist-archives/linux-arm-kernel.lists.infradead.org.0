Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008EFC1CA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XzXealamejJ0DFC2BvvXoeUEbuFesXz55W8edPffOl8=; b=rOx9F/zOPoz1DI
	lJ6vP63VMeuq17i8XBGWhj2Pan4SMD7OiNDuZvv8wo4iCQK1dQXmU4p+3osQZ0LV9C6fKXSV/4Yzb
	kStXAI9MNERyl7kJAR6VhHKBcsY4/Td9ldGCbo6T6d123/rofwwaB4PHOKosESKxk+Dm9GdMY+iA0
	cnBEq0hfr9s12CagTS2utXiaHlGdfoJYJhCuF9p2MU75jSud+mLsfQ0xuFGLcw7xGr5P/WTMHtSz+
	m0ADy9bkFf3/TR+Hks9SX3LgV9x3BiHo9blPot/IDSrUt49d/w3YOtLkvn0WRAKBGG+yJYLLitqsI
	wY1kgjrjNYcdGZoJg1vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqq5-0003AQ-DS; Mon, 30 Sep 2019 08:15:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqpQ-0001Vg-2F
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:14:45 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iEqpI-00012w-AU; Mon, 30 Sep 2019 10:14:36 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iEqpG-0002Dx-6y; Mon, 30 Sep 2019 10:14:34 +0200
Date: Mon, 30 Sep 2019 10:14:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Message-ID: <20190930081434.qrrv3yqczzxihntm@pengutronix.de>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <VI1PR04MB702322F2F020A527AD2F8DDEEE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB39169BC7E8DB3525A309034EF5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39169BC7E8DB3525A309034EF5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:49:54 up 135 days, 14:08, 87 users,  load average: 0.01, 0.02,
 0.07
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011444_148925_66C4CA27 
X-CRM114-Status: GOOD (  32.30  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson, Leonard,

On 19-09-30 07:42, Anson Huang wrote:
> Hi, Leonard
> 
> > On 2019-09-27 4:20 AM, Anson Huang wrote:
> > >> On 2019-09-26 1:06 PM, Marco Felsch wrote:
> > >>> On 19-09-26 08:03, Anson Huang wrote:
> > >>>>> On 19-09-25 18:07, Anson Huang wrote:
> > >>>>>> The SCU firmware does NOT always have return value stored in
> > >>>>>> message header's function element even the API has response data,
> > >>>>>> those special APIs are defined as void function in SCU firmware,
> > >>>>>> so they should be treated as return success always.
> > >>>>>>
> > >>>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
> > >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > >>>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
> > >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > >>>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> > >>>>>
> > >>>>> Is this going to be extended in the near future? I see some
> > >>>>> upcoming problems here if someone uses a different scu-fw<->kernel
> > >>>>> combination as nxp would suggest.
> > >>>>
> > >>>> Could be, but I checked the current APIs, ONLY these 2 will be used
> > >>>> in Linux kernel, so I ONLY add these 2 APIs for now.
> > >>>
> > >>> Okay.
> > >>>
> > >>>> However, after rethink, maybe we should add another imx_sc_rpc API
> > >>>> for those special APIs? To avoid checking it for all the APIs
> > >>>> called which
> > >> may impact some performance.
> > >>>> Still under discussion, if you have better idea, please advise, thanks!
> > >>
> > >> My suggestion is to refactor the code and add a new API for the this
> > >> "no error value" convention. Internally they can call a common
> > >> function with flags.
> > >
> > > If I understand your point correctly, that means the loop check of
> > > whether the API is with "no error value" for every API still NOT be
> > > skipped, it is just refactoring the code, right?
> > 
> > There would be no "loop" anywhere: the responsibility would fall on the call
> > to call the right RPC function. In the current layering scheme (drivers -> RPC ->
> > mailbox) the RPC layer treats all calls the same and it's up the the caller to
> > provide information about calling convention.
> > 
> > An example implementation:
> > * Rename imx_sc_rpc_call to __imx_sc_rpc_call_flags
> > * Make a tiny imx_sc_rpc_call wrapper which just converts resp/noresp to a
> > flag
> > * Make get button status call __imx_sc_rpc_call_flags with the
> > _IMX_SC_RPC_NOERROR flag
> > 
> > Hope this makes my suggestion clearer? Pushing this to the caller is a bit ugly
> > but I think it's worth preserving the fact that the imx rpc core treats services
> > in an uniform way.
> 
> It is clear now, so essentially it is same as 2 separate APIs, still need to change the
> button driver and uid driver to use the special flag, meanwhile, need to change the
> third parament of imx_sc_rpc_call() from bool to u32.
> 
> If no one opposes this approach, I will redo the patch together with the button driver
> and uid driver after holiday.

As Ansons said that are two approaches and in both ways the caller needs
to know if the error code is valid. Extending the flags seems better to
me but it looks still not that good. One question, does the scu-fw set
the error-msg to something? If not than why should we specify a flag or
a other api? Nowadays the caller needs to know that the error-msg-field isn't
set so if the caller sets the msg-packet to zero and fills the rpc-id
the error-msg-field shouldn't be touched by the firmware. So it should
be zero.

Regards,
  Marco

> Anson
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
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
