Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D57C1C61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 09:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBu9aAa9zfqldbVZTCbSrbN2rjlfKtlZ5FEgMFveCf4=; b=oW8X8goT/ZcjyA
	xlY6Dd/Of3dbdJxSy8aa63z82tIwYYjgsN2Xx5UB2mPbxGxUNzJp6WoqLxyt+9zpdYbVtMUMuKpW3
	GeRK8V93EwqpusIfGi+5Du/mrPAW53dYFEGCGqUKCiO7dThRJmsWVfObAj62OJ6yVopd/gM5Xa0IB
	oWB8U67zPZxhWcKfEcZCu0oOwq3Y8qr/X7hJweVjFV1Nlo8KX5Mwt8DdmLoR8Ol5n1tdkRMnre5ut
	k/CgGD9H5yPhOJowVLsEk6hd3iBFFGjwL+Z4d67iQmkdQF+Ze3QnOSBC9A54mtXobH5peGjNUTw8A
	8wyZlNe/+l8CCqn7sDdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqVm-0002Pv-7R; Mon, 30 Sep 2019 07:54:26 +0000
Received: from mail-eopbgr30064.outbound.protection.outlook.com ([40.107.3.64]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqVa-0002Ou-NJ
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 07:54:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B62w/XCtyoSTokWTb51iWJvA5eypCijaBE9M2YrEkXhL+iGFK1bKkgeitkfPF4I22veUdugPIHm1Kad7RsG5PqmoKq770uttXMJg6XdwnuOfltrpslhbYM628dgkdT9Tc7UNNgm5tWPME16ZylGuLQNGzfM74uPezH+I+yuiM9Fgaw4q9ZUPWzEbUPFiAYlj7YhWj8T8GrW4y7SdClsRYuqSzM+2Dlf1k0DkBTZZMelv2WKCy5umQyWCoC7q2wkH3vX15edzM8G5WAWt8h3O2EVku4J8HORBDawYD1vgvEKDmVALkIr/nKA2xhikOsMbpBorWktRlVSEAJ3N1V8LUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DVYuVKFrzvKLNSDUd2SSC4SQN2rgKURfC+0IJTWbNlk=;
 b=BUQVIVucBV5HqGBrrlfK4FcnC5ZPZRzT1K7XQ6ywsjL374PRHRMEypb3BRMlral5pfpJz5B20G3McYqlmZaWKZwLFn4ZWe47fmRqOmKOwoLRhD3s2m3sAv8dpDmKtQILOLCIykWOSvyx6Juz09boFz0qgUg6bw5cXBYK7PVZu6Py4kMZmEo2BZfXFZ+/8AmoZy/xz9KEgTdaYRmZvtdB32Z6Ei7NKW3QLSU5LBowkkQhNnwwfNferzq+Q2fN07NOY7PGFLJlCU8qvyqsOiaLUmHmp6PkZk2BQlZ2uDi8uSF/xhcoFmiOfSCnijug6/619R9eG2k7MUs2wFLevDZHXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DVYuVKFrzvKLNSDUd2SSC4SQN2rgKURfC+0IJTWbNlk=;
 b=Goab1upz/Nm2dP+ML59JrrLv5oP/PF+Cju9BCmgFVhP0I9IGBR/h2QeZY647aOhviEFRjdzaRC87YJrdk/fgXxkNdil2J2DgtbE6C96Oc+cwxBVbBscBzeCoxFkLewWeGtigLVbT3q/HawRbrax7zj4l0nDV7+8g/3AV0EosiqU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 30 Sep 2019 07:54:09 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 07:54:09 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Marco Felsch
 <m.felsch@pengutronix.de>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: RE: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lT/ErvPybCJUCbZ2x7mLGjsqdD3BbwgAAEytA=
Date: Mon, 30 Sep 2019 07:54:09 +0000
Message-ID: <DB3PR0402MB391609C4C6A928E2E2F987C5F5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <VI1PR04MB702322F2F020A527AD2F8DDEEE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB39169BC7E8DB3525A309034EF5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39169BC7E8DB3525A309034EF5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9bbeed7d-a146-4f95-924e-08d7457b6056
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3916:|DB3PR0402MB3916:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3916521234E5B368940914EEF5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(136003)(39860400002)(376002)(396003)(199004)(189003)(5660300002)(7696005)(26005)(486006)(66946007)(52536014)(7736002)(64756008)(66556008)(33656002)(66476007)(476003)(6506007)(99286004)(446003)(76116006)(53546011)(11346002)(305945005)(6246003)(66066001)(76176011)(25786009)(74316002)(102836004)(478600001)(66446008)(86362001)(81156014)(71200400001)(229853002)(71190400001)(55016002)(6116002)(8676002)(256004)(8936002)(4326008)(81166006)(44832011)(186003)(2940100002)(6436002)(110136005)(6636002)(316002)(54906003)(9686003)(14454004)(3846002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3916;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pp40Oa/D4dqARl5U0sW5/4hwpm6pyD2t2gpcyUJjVywhcRh1Ko41LCobVZdMMeFw8O45Fs8jiPrOZ9aWBul8SCUSf2V1jYSC58fb30TH7Sl11CrGTGGapitzfWIVP8wAmHMQEdN3/6zrlIKAv4HyJDL1z0/q8uRTYIFizvVeqHk0N4+WvrRG/D09MSZb3OUFSqp6u4kj4tP+/jKiH9vzS3jRnCwyzMdu4nopkgHNnneo4nKZeBILysfbiNbu4IVoKHYQrti1MfBFIJA6zkV/g9Rt76RQH3xDNsp9uRmURcNggWEYJhz6cthToXWXRUx9OXF7T4PxjUJ470mYN7K7nPhdFXAFPMr+SM8G3G7zBlz58utLZlkHmsl9xkIAUWXMQNayWjHzrto9uhk2v4PcySyIHISYsUzY+VVdUSoEmsA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bbeed7d-a146-4f95-924e-08d7457b6056
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 07:54:09.4895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3m9b+cxHIHSK3xejFaYcfdvH7ZM8NDcpqnQNgkbZgPIEt/foWwHGUz1ZhZolR9MnuFpTbOblZoLUSJUlp+9dMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3916
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_005414_768642_4A25432C 
X-CRM114-Status: GOOD (  28.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.64 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> > On 2019-09-27 4:20 AM, Anson Huang wrote:
> > >> On 2019-09-26 1:06 PM, Marco Felsch wrote:
> > >>> On 19-09-26 08:03, Anson Huang wrote:
> > >>>>> On 19-09-25 18:07, Anson Huang wrote:
> > >>>>>> The SCU firmware does NOT always have return value stored in
> > >>>>>> message header's function element even the API has response
> > >>>>>> data, those special APIs are defined as void function in SCU
> > >>>>>> firmware, so they should be treated as return success always.
> > >>>>>>
> > >>>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
> > >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > >>>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
> > >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > >>>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> > >>>>>
> > >>>>> Is this going to be extended in the near future? I see some
> > >>>>> upcoming problems here if someone uses a different
> > >>>>> scu-fw<->kernel combination as nxp would suggest.
> > >>>>
> > >>>> Could be, but I checked the current APIs, ONLY these 2 will be
> > >>>> used in Linux kernel, so I ONLY add these 2 APIs for now.
> > >>>
> > >>> Okay.
> > >>>
> > >>>> However, after rethink, maybe we should add another imx_sc_rpc
> > >>>> API for those special APIs? To avoid checking it for all the APIs
> > >>>> called which
> > >> may impact some performance.
> > >>>> Still under discussion, if you have better idea, please advise, thanks!
> > >>
> > >> My suggestion is to refactor the code and add a new API for the
> > >> this "no error value" convention. Internally they can call a common
> > >> function with flags.
> > >
> > > If I understand your point correctly, that means the loop check of
> > > whether the API is with "no error value" for every API still NOT be
> > > skipped, it is just refactoring the code, right?
> >
> > There would be no "loop" anywhere: the responsibility would fall on
> > the call to call the right RPC function. In the current layering
> > scheme (drivers -> RPC ->
> > mailbox) the RPC layer treats all calls the same and it's up the the
> > caller to provide information about calling convention.
> >
> > An example implementation:
> > * Rename imx_sc_rpc_call to __imx_sc_rpc_call_flags
> > * Make a tiny imx_sc_rpc_call wrapper which just converts resp/noresp
> > to a flag
> > * Make get button status call __imx_sc_rpc_call_flags with the
> > _IMX_SC_RPC_NOERROR flag
> >
> > Hope this makes my suggestion clearer? Pushing this to the caller is a
> > bit ugly but I think it's worth preserving the fact that the imx rpc
> > core treats services in an uniform way.
> 
> It is clear now, so essentially it is same as 2 separate APIs, still need to change
> the button driver and uid driver to use the special flag, meanwhile, need to
> change the third parament of imx_sc_rpc_call() from bool to u32.

Correct one thing, no need to change the parameter of imx_sc_rpc_call(), just add
another API using the flag as parameter, and imx_sc_rpc_call() calls the new API.

Anson 

> 
> If no one opposes this approach, I will redo the patch together with the
> button driver and uid driver after holiday.
> 
> Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
