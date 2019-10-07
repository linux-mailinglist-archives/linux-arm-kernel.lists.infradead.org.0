Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B51CDA1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 03:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4VN0HeDb+txix/ba7SU8V0X4sO3PkRNINiQ7PCDcEM=; b=TDOa0qWnLbXyHt
	LX9di3Fjwx/00CGafWDK5XexkjsY+SrQjpRe0/eD/81HdNVTSQu8SiJ/Jes6ly6RMtig2wz1OyuFK
	7+FhGYZbk8iss43D5smfyyzQMzKj398d7YVHdgorSq1FOwG78/LrqDNNQ0ryF0zW6ubZwqtGODC0H
	Ody3fajaxX+Tz2FX2vpqLeATX4J/d6q7q5zbeUkeoGXaoPam7NpsSDVIpfj6Arl7vxRGOgsTiqm5U
	5iiGuN6PreuxprOYsP3ppi8pP5xKL57V6FNGsXwTmWn0hM087DWvT/WRfDxG71AGgTT1LKMD5RWjD
	+TfNFugEaGY19CF1slcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHHiI-0005ne-JU; Mon, 07 Oct 2019 01:21:26 +0000
Received: from mail-eopbgr00082.outbound.protection.outlook.com ([40.107.0.82]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHHi9-0005mw-D4
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 01:21:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AGslY9gdxJ34cdNnJZ+nCpYq2uGMf7xxa7yBlMokjicP/bJs/20zTtaAvz5RKFkKhwvOBpTBlVDiQfMmxe8jilx+pU4oDoWb6cj7eGcu+kT+RwEnbw18nsZ01OVtt7+VZJAxWEigGJhHq85nhGR71kCj2VEufE5fa3fMARiZQ1ExqxKPZ5RFYbv4SOg+CTkeUZ8JkIuE4mP/pOdGiJJwMlc4Rq2M1/rlW5qd/g9AoxBrV47LejeIfQjzBh3qbzUjWGvGpsyEFFRMoXnkvE8Oyj8SYh+0Ca8zcM4I1tJvmmTsvjgDHuCfoo69/mbzFpsipVePUjJeDYvrR/2Vuovb7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vqXhgFONIuB0blGGoFxehzYwnXU9DLOXoWFVY8CLyhw=;
 b=j3RfhU81HH5PfzuJGo75BImfLUHoCbeAo040WZgc9mRxk7xy6KGMU92KN8YdxJ4iW1Dmps6AEkDCvQw+CbcCuAim11smx6wtZosRThqNBCOD7/RGsbAFWbfgdDdB4J9pUrQisJyudCwxas+QWrZNP6DaEmk3K6jMYPnJRCG1yKE6UeAXme8go9sYnnCaVqZ/CUrqdyuQR8KKrKzv34/MidHcLx48EmiZvS7qc7VaujbhHEo0Rphxye4NmxgronKrjkY7KH5VO3a8G1cTfCGFccvt715VU4z/GkvFpQBv4jOuDI3njyWmkrBdU0Gx7C+rTVRZy/8AQ+E/qOplPS3jWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vqXhgFONIuB0blGGoFxehzYwnXU9DLOXoWFVY8CLyhw=;
 b=GlMmcnRK51XI3kN/75JRkiMJ+cUDdbEbSQLa6SLCfSBhDF90iOG7eIiDGIxUThh7ONPM/QXGSRwqNCSIdav+kORoHS3K7uVxtvUd9fLh69Pd5POqiZWRQe9lNKl60lD/sQG1Ny3Rpe8jt9rBHV+1+Zfh7qYW8lR0bt8lkfDeFzs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3803.eurprd04.prod.outlook.com (52.134.71.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 7 Oct 2019 01:21:14 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2305.023; Mon, 7 Oct 2019
 01:21:14 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lT/ErvPybCJUCbZ2x7mLGjsqdD3BbwgAALBgCAAAI3gIAAG+gAgAptEEA=
Date: Mon, 7 Oct 2019 01:21:14 +0000
Message-ID: <DB3PR0402MB39166F09D84D20CA3DBFDDE6F59B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <VI1PR04MB702322F2F020A527AD2F8DDEEE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB39169BC7E8DB3525A309034EF5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190930081434.qrrv3yqczzxihntm@pengutronix.de>
 <DB3PR0402MB3916B2243D4B452B460EA892F5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190930100222.p2cx6xspjeunsm54@pengutronix.de>
In-Reply-To: <20190930100222.p2cx6xspjeunsm54@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 843b2745-9b8f-4d1b-6e7f-08d74ac4a557
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3803:|DB3PR0402MB3803:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3803B158D3A0C0A6E3DC427BF59B0@DB3PR0402MB3803.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(366004)(39860400002)(136003)(199004)(189003)(51914003)(81156014)(6506007)(53546011)(76116006)(71200400001)(8676002)(6916009)(476003)(86362001)(11346002)(71190400001)(64756008)(66556008)(66476007)(66946007)(66446008)(66066001)(54906003)(102836004)(76176011)(186003)(7696005)(44832011)(26005)(486006)(316002)(81166006)(99286004)(446003)(52536014)(8936002)(55016002)(229853002)(305945005)(256004)(9686003)(74316002)(7736002)(478600001)(4326008)(6436002)(6116002)(3846002)(14454004)(33656002)(5660300002)(2906002)(25786009)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3803;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JACsB30+Z8x+UME3P4O/izOrfhWj58AzbD7voIdJKKlz2jcXh9OBagtA6xofG4Tfy3iddnjM4HzI0ImNcF0vCZDktk95c/X6fsO8EWGQil6DTStXljTfKak0VQ4AVAHx9k1qV1wDvTtdWxeJXQEhu8S6Gl+Xpf/JSPT653YDRzzSJwberRd7Y61upDb969ygCb41psOlZ5Q5Yj/zW/dqBjsTLdM/HVYhnGzkzbehOlYYgjqfzynbEMHdI+CRJFLihaEnX8JoFklUfCVby9Iftdo6wdY2Iy6l3aTll3HlZonlZWA8EP50QQYNrvs016Vs1FtC9sgvtrCFGVyYf353RBYC2YCftAAOWLwJedrg1+eyvMA8e4al2OMW8pNoJHhjxlQckiEw5TtZjiqDWSa6nIDKCeuZB+H3bNV2AeiAT9g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 843b2745-9b8f-4d1b-6e7f-08d74ac4a557
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 01:21:14.2551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D2MB5Vx2D5aLpDl/6lPInBDDaJLRRpMRFcDRhBA9FFwdftZi7efqeomU2Qqe93dWuiYeiQkrcRxRcjU4XBCkfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3803
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_182117_593995_E9CAC210 
X-CRM114-Status: GOOD (  45.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi, Marco

> On 19-09-30 08:32, Anson Huang wrote:
> > Hi, Marco
> >
> > > On 19-09-30 07:42, Anson Huang wrote:
> > > > Hi, Leonard
> > > >
> > > > > On 2019-09-27 4:20 AM, Anson Huang wrote:
> > > > > >> On 2019-09-26 1:06 PM, Marco Felsch wrote:
> > > > > >>> On 19-09-26 08:03, Anson Huang wrote:
> > > > > >>>>> On 19-09-25 18:07, Anson Huang wrote:
> > > > > >>>>>> The SCU firmware does NOT always have return value stored
> > > > > >>>>>> in message header's function element even the API has
> > > > > >>>>>> response data, those special APIs are defined as void
> > > > > >>>>>> function in SCU firmware, so they should be treated as return
> success always.
> > > > > >>>>>>
> > > > > >>>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
> > > > > >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > > > > >>>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
> > > > > >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > > > > >>>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> > > > > >>>>>
> > > > > >>>>> Is this going to be extended in the near future? I see
> > > > > >>>>> some upcoming problems here if someone uses a different
> > > > > >>>>> scu-fw<->kernel combination as nxp would suggest.
> > > > > >>>>
> > > > > >>>> Could be, but I checked the current APIs, ONLY these 2 will
> > > > > >>>> be used in Linux kernel, so I ONLY add these 2 APIs for now.
> > > > > >>>
> > > > > >>> Okay.
> > > > > >>>
> > > > > >>>> However, after rethink, maybe we should add another
> > > > > >>>> imx_sc_rpc API for those special APIs? To avoid checking it
> > > > > >>>> for all the APIs called which
> > > > > >> may impact some performance.
> > > > > >>>> Still under discussion, if you have better idea, please advise,
> thanks!
> > > > > >>
> > > > > >> My suggestion is to refactor the code and add a new API for
> > > > > >> the this "no error value" convention. Internally they can
> > > > > >> call a common function with flags.
> > > > > >
> > > > > > If I understand your point correctly, that means the loop
> > > > > > check of whether the API is with "no error value" for every
> > > > > > API still NOT be skipped, it is just refactoring the code, right?
> > > > >
> > > > > There would be no "loop" anywhere: the responsibility would fall
> > > > > on the call to call the right RPC function. In the current
> > > > > layering scheme (drivers -> RPC ->
> > > > > mailbox) the RPC layer treats all calls the same and it's up the
> > > > > the caller to provide information about calling convention.
> > > > >
> > > > > An example implementation:
> > > > > * Rename imx_sc_rpc_call to __imx_sc_rpc_call_flags
> > > > > * Make a tiny imx_sc_rpc_call wrapper which just converts
> > > > > resp/noresp to a flag
> > > > > * Make get button status call __imx_sc_rpc_call_flags with the
> > > > > _IMX_SC_RPC_NOERROR flag
> > > > >
> > > > > Hope this makes my suggestion clearer? Pushing this to the
> > > > > caller is a bit ugly but I think it's worth preserving the fact
> > > > > that the imx rpc core treats services in an uniform way.
> > > >
> > > > It is clear now, so essentially it is same as 2 separate APIs,
> > > > still need to change the button driver and uid driver to use the
> > > > special flag, meanwhile, need to change the third parament of
> > > > imx_sc_rpc_call()
> > > from bool to u32.
> > > >
> > > > If no one opposes this approach, I will redo the patch together
> > > > with the button driver and uid driver after holiday.
> > >
> > > As Ansons said that are two approaches and in both ways the caller
> > > needs to know if the error code is valid. Extending the flags seems
> > > better to me but it looks still not that good. One question, does
> > > the scu-fw set the error-msg to something? If not than why should we
> specify a flag or a other api?
> > > Nowadays the caller needs to know that the error-msg-field isn't set
> > > so if the caller sets the msg-packet to zero and fills the rpc-id
> > > the error-msg-field shouldn't be touched by the firmware. So it should be
> zero.
> >
> > The flow are as below for those special APIs with response data but no
> return value from SCU FW:
> >
> > 1. caller sends msg with a header field and data field, the header
> > field has svc ID and function ID; 2. SCU FW will service the caller
> > and then clear the SVC ID before return, the response data will be Put
> > in msg data field, and if the APIs has return value, SCU FW will put
> > the return value in function ID of msg;
> 
> Thanks for the declaration :)
> 
> > The caller has no chance to set the msg-packet to zero and rpc-id, it
> > needs to pass correct rpc-id to SCU FW and Get response data from SCU
> > FW, and for those special APIs has function ID NOT over-written by SCU
> > FW's return Value, but the function ID is a unsigned int, and the SCU FW
> return value is also a unsigned int, so we have no idea to separate them for
> no-return value API or error-return API.
> 
> I see.
> 
> > With new approach, I can use below 2 flags, the ugly point is user need to
> know which API to call.
> 
> I don't see any improve using flags because the caller still needs to know if
> the scu-fw works (sorry for that) correctly. So we should go to adapt your
> approach to handle that within the core and improve the caller usage.
> 
> What about this:
> 
> 8<-------------------------------------------------------------------------------
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-
> scu.c index 04a24a863d6e..8f406a0784a4 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -184,6 +184,16 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void
> *msg, bool have_resp)
>  		/* response status is stored in hdr->func field */
>  		hdr = msg;
>  		ret = hdr->func;
> +
> +		/*
> +		 * Some special SCU firmware APIs do NOT have return value
> +		 * in hdr->func, but they do have response data, those
> special
> +		 * APIs are defined as void function in SCU firmware, so they
> +		 * should be treated as return success always.
> +		 */
> +		if (hdr->func == IMX_SC_MISC_FUNC_UNIQUE_ID ||
> +		    hdr->func == IMX_SC_MISC_FUNC_GET_BUTTON_STATUS)
> +			ret = 0;
>  	}
> 
>  out:
> 8<-------------------------------------------------------------------------------
> 
> As you and Leonard said, this scu-fw behaviour is intended. So this will be
> not changed over the time else we need a scu-fw version check too.
> Also as you said those special functions shouldn't be extended I think a
> simple if-statement should work and no performance regressions are
> expected.
> 

I agree to just check the special APIs in the imx_scu_call_rpc() function, it can avoid calling
another function to check as my V1 patch did, also no need to add another API for users, so
that users no need to know which API to call. But I can NOT use the example you listed upper
directly, the return value from SCU FW could be an error value which is same as the hdr->func,
so I need to saved the original hdr->func and compare them, see below, please help review V2
patch, thanks.

38 +       if (have_resp) {
 39                 sc_ipc->msg = msg;
 40 +               saved_svc = ((struct imx_sc_rpc_msg *)msg)->svc;
 41 +               saved_func = ((struct imx_sc_rpc_msg *)msg)->func;
 42 +       }

50 +               /*
 51 +                * Some special SCU firmware APIs do NOT have return value
 52 +                * in hdr->func, but they do have response data, those special
 53 +                * APIs are defined as void function in SCU firmware, so they
 54 +                * should be treated as return success always.
 55 +                */
 56 +               if ((saved_svc == IMX_SC_RPC_SVC_MISC) &&
 57 +                       (saved_func == IMX_SC_MISC_FUNC_UNIQUE_ID ||
 58 +                        saved_func == IMX_SC_MISC_FUNC_GET_BUTTON_STATUS))
 59 +                       ret = 0;  

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
