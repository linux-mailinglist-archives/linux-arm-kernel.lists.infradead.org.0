Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFE0CDCD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 10:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8YX+D9oDe5luWrnGMG86DCVwHS7yrkAiZVjtrNexi+A=; b=WMvqEvgAHXo9JZ
	KHnHvQ08JrGUvfw5kQSC9pJ18w1jHxx4hm3Ix+Y1Hi8PXgS8Hbu2MEvhrBDNudKTsUY7VL8boelvN
	dY/ibNzQ51aDNw9DQ5Gcp+nO/5i6cEM/rxxGKOYElSYp1ehmlbq944W5U4jIlEK4/hYL7DnH28U+Y
	kP4IkIjkHp4xEpe0b5HWIQ8nicOucg8aK8DLn+JiXpOwJHDhxEp8LefmKscw1ZgYq72AcF3w4IHKj
	lRrOIZg88IDH+oPgLg26jdDWYIGXTPxY9LbJIvaNPZTCzwxWqOdWjEWt3Vde1Qd/aVDZn+YKzOQ4d
	9A63aIpyFz0bsep2qZwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHO3X-0007ak-En; Mon, 07 Oct 2019 08:07:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHO3P-0007Zv-P2
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 08:07:42 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iHO3H-0002rt-Kp; Mon, 07 Oct 2019 10:07:31 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iHO3F-0004Fn-Uk; Mon, 07 Oct 2019 10:07:29 +0200
Date: Mon, 7 Oct 2019 10:07:29 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Message-ID: <20191007080729.6ltbgwz4e7t4wpm4@pengutronix.de>
References: <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <VI1PR04MB702322F2F020A527AD2F8DDEEE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB39169BC7E8DB3525A309034EF5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190930081434.qrrv3yqczzxihntm@pengutronix.de>
 <DB3PR0402MB3916B2243D4B452B460EA892F5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190930100222.p2cx6xspjeunsm54@pengutronix.de>
 <DB3PR0402MB39166F09D84D20CA3DBFDDE6F59B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39166F09D84D20CA3DBFDDE6F59B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:05:52 up 142 days, 14:24, 94 users,  load average: 0.09, 0.14,
 0.13
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_010740_154201_DA6F1952 
X-CRM114-Status: GOOD (  46.10  )
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

On 19-10-07 01:21, Anson Huang wrote:
> Hi, Marco
> 
> > On 19-09-30 08:32, Anson Huang wrote:
> > > Hi, Marco
> > >
> > > > On 19-09-30 07:42, Anson Huang wrote:
> > > > > Hi, Leonard
> > > > >
> > > > > > On 2019-09-27 4:20 AM, Anson Huang wrote:
> > > > > > >> On 2019-09-26 1:06 PM, Marco Felsch wrote:
> > > > > > >>> On 19-09-26 08:03, Anson Huang wrote:
> > > > > > >>>>> On 19-09-25 18:07, Anson Huang wrote:
> > > > > > >>>>>> The SCU firmware does NOT always have return value stored
> > > > > > >>>>>> in message header's function element even the API has
> > > > > > >>>>>> response data, those special APIs are defined as void
> > > > > > >>>>>> function in SCU firmware, so they should be treated as return
> > success always.
> > > > > > >>>>>>
> > > > > > >>>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
> > > > > > >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > > > > > >>>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
> > > > > > >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > > > > > >>>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> > > > > > >>>>>
> > > > > > >>>>> Is this going to be extended in the near future? I see
> > > > > > >>>>> some upcoming problems here if someone uses a different
> > > > > > >>>>> scu-fw<->kernel combination as nxp would suggest.
> > > > > > >>>>
> > > > > > >>>> Could be, but I checked the current APIs, ONLY these 2 will
> > > > > > >>>> be used in Linux kernel, so I ONLY add these 2 APIs for now.
> > > > > > >>>
> > > > > > >>> Okay.
> > > > > > >>>
> > > > > > >>>> However, after rethink, maybe we should add another
> > > > > > >>>> imx_sc_rpc API for those special APIs? To avoid checking it
> > > > > > >>>> for all the APIs called which
> > > > > > >> may impact some performance.
> > > > > > >>>> Still under discussion, if you have better idea, please advise,
> > thanks!
> > > > > > >>
> > > > > > >> My suggestion is to refactor the code and add a new API for
> > > > > > >> the this "no error value" convention. Internally they can
> > > > > > >> call a common function with flags.
> > > > > > >
> > > > > > > If I understand your point correctly, that means the loop
> > > > > > > check of whether the API is with "no error value" for every
> > > > > > > API still NOT be skipped, it is just refactoring the code, right?
> > > > > >
> > > > > > There would be no "loop" anywhere: the responsibility would fall
> > > > > > on the call to call the right RPC function. In the current
> > > > > > layering scheme (drivers -> RPC ->
> > > > > > mailbox) the RPC layer treats all calls the same and it's up the
> > > > > > the caller to provide information about calling convention.
> > > > > >
> > > > > > An example implementation:
> > > > > > * Rename imx_sc_rpc_call to __imx_sc_rpc_call_flags
> > > > > > * Make a tiny imx_sc_rpc_call wrapper which just converts
> > > > > > resp/noresp to a flag
> > > > > > * Make get button status call __imx_sc_rpc_call_flags with the
> > > > > > _IMX_SC_RPC_NOERROR flag
> > > > > >
> > > > > > Hope this makes my suggestion clearer? Pushing this to the
> > > > > > caller is a bit ugly but I think it's worth preserving the fact
> > > > > > that the imx rpc core treats services in an uniform way.
> > > > >
> > > > > It is clear now, so essentially it is same as 2 separate APIs,
> > > > > still need to change the button driver and uid driver to use the
> > > > > special flag, meanwhile, need to change the third parament of
> > > > > imx_sc_rpc_call()
> > > > from bool to u32.
> > > > >
> > > > > If no one opposes this approach, I will redo the patch together
> > > > > with the button driver and uid driver after holiday.
> > > >
> > > > As Ansons said that are two approaches and in both ways the caller
> > > > needs to know if the error code is valid. Extending the flags seems
> > > > better to me but it looks still not that good. One question, does
> > > > the scu-fw set the error-msg to something? If not than why should we
> > specify a flag or a other api?
> > > > Nowadays the caller needs to know that the error-msg-field isn't set
> > > > so if the caller sets the msg-packet to zero and fills the rpc-id
> > > > the error-msg-field shouldn't be touched by the firmware. So it should be
> > zero.
> > >
> > > The flow are as below for those special APIs with response data but no
> > return value from SCU FW:
> > >
> > > 1. caller sends msg with a header field and data field, the header
> > > field has svc ID and function ID; 2. SCU FW will service the caller
> > > and then clear the SVC ID before return, the response data will be Put
> > > in msg data field, and if the APIs has return value, SCU FW will put
> > > the return value in function ID of msg;
> > 
> > Thanks for the declaration :)
> > 
> > > The caller has no chance to set the msg-packet to zero and rpc-id, it
> > > needs to pass correct rpc-id to SCU FW and Get response data from SCU
> > > FW, and for those special APIs has function ID NOT over-written by SCU
> > > FW's return Value, but the function ID is a unsigned int, and the SCU FW
> > return value is also a unsigned int, so we have no idea to separate them for
> > no-return value API or error-return API.
> > 
> > I see.
> > 
> > > With new approach, I can use below 2 flags, the ugly point is user need to
> > know which API to call.
> > 
> > I don't see any improve using flags because the caller still needs to know if
> > the scu-fw works (sorry for that) correctly. So we should go to adapt your
> > approach to handle that within the core and improve the caller usage.
> > 
> > What about this:
> > 
> > 8<-------------------------------------------------------------------------------
> > 
> > diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-
> > scu.c index 04a24a863d6e..8f406a0784a4 100644
> > --- a/drivers/firmware/imx/imx-scu.c
> > +++ b/drivers/firmware/imx/imx-scu.c
> > @@ -184,6 +184,16 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void
> > *msg, bool have_resp)
> >  		/* response status is stored in hdr->func field */
> >  		hdr = msg;
> >  		ret = hdr->func;
> > +
> > +		/*
> > +		 * Some special SCU firmware APIs do NOT have return value
> > +		 * in hdr->func, but they do have response data, those
> > special
> > +		 * APIs are defined as void function in SCU firmware, so they
> > +		 * should be treated as return success always.
> > +		 */
> > +		if (hdr->func == IMX_SC_MISC_FUNC_UNIQUE_ID ||
> > +		    hdr->func == IMX_SC_MISC_FUNC_GET_BUTTON_STATUS)
> > +			ret = 0;
> >  	}
> > 
> >  out:
> > 8<-------------------------------------------------------------------------------
> > 
> > As you and Leonard said, this scu-fw behaviour is intended. So this will be
> > not changed over the time else we need a scu-fw version check too.
> > Also as you said those special functions shouldn't be extended I think a
> > simple if-statement should work and no performance regressions are
> > expected.
> > 
> 
> I agree to just check the special APIs in the imx_scu_call_rpc() function, it can avoid calling
> another function to check as my V1 patch did, also no need to add another API for users, so
> that users no need to know which API to call. But I can NOT use the example you listed upper
> directly, the return value from SCU FW could be an error value which is same as the hdr->func,

I tought the SCU FW won't touch this field.

> so I need to saved the original hdr->func and compare them, see below, please help review V2
> patch, thanks.

I did :)

Regards,
  Marco

> 
> 38 +       if (have_resp) {
>  39                 sc_ipc->msg = msg;
>  40 +               saved_svc = ((struct imx_sc_rpc_msg *)msg)->svc;
>  41 +               saved_func = ((struct imx_sc_rpc_msg *)msg)->func;
>  42 +       }
> 
> 50 +               /*
>  51 +                * Some special SCU firmware APIs do NOT have return value
>  52 +                * in hdr->func, but they do have response data, those special
>  53 +                * APIs are defined as void function in SCU firmware, so they
>  54 +                * should be treated as return success always.
>  55 +                */
>  56 +               if ((saved_svc == IMX_SC_RPC_SVC_MISC) &&
>  57 +                       (saved_func == IMX_SC_MISC_FUNC_UNIQUE_ID ||
>  58 +                        saved_func == IMX_SC_MISC_FUNC_GET_BUTTON_STATUS))
>  59 +                       ret = 0;  
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
