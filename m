Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A874C12A6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 03:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5SObCuBWB+wAjXUBRTMQ2gdM01w+u4hIAPLvWzJ9dw=; b=Ul82q/57ZdX6zY
	1OHtBZ6rcR47rQQEyP+bFs9zXVT4xfIDXXUanAT0MBZeqfiVsfdt40hWpYPH6XgTgFdFcKkp6yQTD
	AQEcLvzU6Iga2/cJcK7BDD0t/CMA9v2bfSJtt+Dgmqd2qtP8HXKZMXWLLrh5Z+MmH5foW18EX00u6
	ndW3A+aRojrdZ7cVoz8e+gJ/wH9BcD2VGAtywHMWYug8Y88zOlRpcXQiPQ9BDwl1/yA6hTrgQDaHT
	bSqC7wWhxpqRx4EeCfcSq6fT6LeoBGywbfOMuMhKKNgoVo69NODuL7Uxg8iN6YFdn/okxI1laXqvY
	K4pPIhsDw8aOLE8EuqJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iENly-0007Ii-9H; Sun, 29 Sep 2019 01:13:14 +0000
Received: from mail-eopbgr20042.outbound.protection.outlook.com ([40.107.2.42]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iENlo-0007Hh-27
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 01:13:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQhHYk4aRNBdq/YfP+7vQdttwm3ZcEPlS7fks6moIL2n1B1Q3PW36vKmwG02wmoJOzc204O+cauD/M5n0sPHTMkUhXycj1InIUHsbNhD1TpwjlNG06N/H72JcEzlsaBHIP3gEQihApYO7ZvKhxLCNK8QefnJXjxB1ctsywiGQjbmR3WMkcb9r7/tXlC+MZ6oLAy7agNgw3RR4Z9vTCWUBtXzNERFFP2Vk1Q3+hWmOYr4XfmzP7XNxUm8lZL/532b2e892K86ojus+dBkAci/ZY/f6d0Hyqnd7Xjg4ZimMR0zWuUUMkpjCyt+z/FcqJybZz2l1vOJrNXTzfDjBaEe5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d0rfWE9NhDLQGy/IThYSNVrqtPYuozVqMZgghShHS0E=;
 b=YLOOqASOAtO055LetssByThdcxwtbnOvqNi+VjmnrZwxxjkqMXbe12rWn8IucfCjzc7GkpHB4NouPCBj9Wgn9XMwta3qaIWnhyEkbD5DnkcWQwV0VugvUgeNnfYWu2z5pxn8IDveOUO4AekKK/pPuclfIPSBDPL/j9hwNcuaTCYlDdcMAp830JCLIeujICRL6P81pNmdMMvbNg8jFhD+w/2sqnckjdh+lnGSEufuYunB5AU1gOpINzNB3n3Px8fPmmDeb9deWPL34mtUn77fzC3me6wcCVLP33cFOQB/6sGz40suKYAM4lEUHoBx2ccuZG7fBOJTnlrC78f8/VXOlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d0rfWE9NhDLQGy/IThYSNVrqtPYuozVqMZgghShHS0E=;
 b=E4dqtpH7rypy7K+1D4dT8zGwcsfeTMYzB7F+o/XwH2P0ZDWXwiZm8O34zC19U4iry0hmGD5vF/ca+NsfcBcdFlnFyTt/Pyt3m6mdHu7aOBNSv+IVhkpG7QWUrk0wcie5gOsYJMqRiN9txCJkjEp6+8WATf6vKXCDs+UPqCe12BA=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3639.eurprd04.prod.outlook.com (52.133.28.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Sun, 29 Sep 2019 01:12:57 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::b0c2:4fbb:fae7:991]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::b0c2:4fbb:fae7:991%5]) with mapi id 15.20.2305.017; Sun, 29 Sep 2019
 01:12:57 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Marco Felsch
 <m.felsch@pengutronix.de>
Subject: RE: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lT/ErvPybCJUCbZ2x7mLGjsqdB1xcg
Date: Sun, 29 Sep 2019 01:12:57 +0000
Message-ID: <AM6PR0402MB39115E54D8879FFBFF5CB798F5830@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190927090609.fyxdekkzrco7memt@pengutronix.de>
 <VI1PR04MB702397C54519DC27CFF05A78EE810@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB702397C54519DC27CFF05A78EE810@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba4101f0-bd5b-4d15-c2e8-08d7447a29e4
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM6PR0402MB3639:|AM6PR0402MB3639:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB3639CFEE384C0E2D80C98C8BF5830@AM6PR0402MB3639.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 017589626D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(376002)(396003)(39860400002)(189003)(199004)(8936002)(66476007)(110136005)(54906003)(66946007)(66556008)(71200400001)(71190400001)(486006)(74316002)(7696005)(99286004)(3846002)(6116002)(11346002)(5660300002)(76176011)(446003)(44832011)(186003)(476003)(256004)(66446008)(64756008)(76116006)(25786009)(9686003)(81166006)(81156014)(229853002)(6246003)(66066001)(102836004)(33656002)(26005)(53546011)(86362001)(6506007)(478600001)(316002)(4326008)(55016002)(52536014)(2906002)(6436002)(14454004)(7736002)(305945005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3639;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R9heKuEaNZwdhHRRa5pi42DGB+ji0IYjCMwJWUF0Zvi9H0NzW1xU/DJx6KxV/xBd3hqf80oWyHp+AiUipQQAhcMrhJ9lRa9Xy6c1fVmX9WxTpSoNX0c0fM6l+AH5nF8j4XWsDKofK+nYmkCRv3gOnxbRKplwT3A1nDd1gXnQNivx18F1bk/u53Lw+jTgb66v0IYSrcAXcRHHSegZOnPW9A8BaRqySFVvJON2NayvDKRIraF8a06hhij2Z9+T1ZZUqWdzlCCXih1cu2ZCHyuzIC0CqSa2bU8WjG25q/N6hYdK74G+q8cLY95pob+0Ha1FF2cEuU4x+GOhXgILEOz/Cnod3oKkiGoQIM8WbzSE/HsBEWsNwitnOAryW/UtYoT9DJFTmpqg4rr9LtJD9U1thB8lH490ccPSSvqj37HR/XY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba4101f0-bd5b-4d15-c2e8-08d7447a29e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2019 01:12:57.4122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1X8mqCX2xXQaPcFKsc6gZTYbD+U2Rr6Jqx4VCK78EGc+NUUCO/pxIf28mLYzQPQzpVH1OUeB2hE0W/ImL3Ex9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3639
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_181304_212513_91F7706A 
X-CRM114-Status: GOOD (  28.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
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

Hi, Leonard/Marco
	I think we should get aligned first, my original thought is to let SCU API caller NOT aware of those special APIs, so have to do the special handling in imx_scu_call_rpc(). And the short loop check has to be used which would impact the performance a little bit I think. But Leonard stated the caller should know the SCU FW API's usage, if so, then I think the special callers can just skip the return value check, adding a comment to describe the reason, would it be much more easier than changing the imx_scu_call_rpc()? Or any other suggestion?

Anson

> On 27.09.2019 12:06, Marco Felsch wrote:
> > Hi Anson, Leonard,
> >
> > On 19-09-27 01:20, Anson Huang wrote:
> >> Hi, Leonard
> >>
> >>> On 2019-09-26 1:06 PM, Marco Felsch wrote:
> >>>> On 19-09-26 08:03, Anson Huang wrote:
> >>>>>> On 19-09-25 18:07, Anson Huang wrote:
> >>>>>>> The SCU firmware does NOT always have return value stored in
> >>>>>>> message header's function element even the API has response
> >>>>>>> data, those special APIs are defined as void function in SCU
> >>>>>>> firmware, so they should be treated as return success always.
> >>>>>>>
> >>>>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
> >>>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> >>>>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
> >>>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> >>>>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> >>>>>>
> >>>>>> Is this going to be extended in the near future? I see some
> >>>>>> upcoming problems here if someone uses a different
> >>>>>> scu-fw<->kernel combination as nxp would suggest.
> >>>>>
> >>>>> Could be, but I checked the current APIs, ONLY these 2 will be
> >>>>> used in Linux kernel, so I ONLY add these 2 APIs for now.
> >>>>
> >>>> Okay.
> >>>>
> >>>>> However, after rethink, maybe we should add another imx_sc_rpc API
> >>>>> for those special APIs? To avoid checking it for all the APIs
> >>>>> called which
> >>> may impact some performance.
> >>>>> Still under discussion, if you have better idea, please advise, thanks!
> >>>
> >>> My suggestion is to refactor the code and add a new API for the this
> >>> "no error value" convention. Internally they can call a common
> >>> function with flags.
> >>
> >>>> Adding a special api shouldn't be the right fix. Imagine if someone
> >>>> (not a nxp-developer) wants to add a new driver. How could he be
> >>>> expected to know which api he should use. The better abbroach would
> >>>> be to fix the scu-fw instead of adding quirks..
> >>
> >> Yes, fixing SCU FW is the best solution, but we have talked to SCU FW
> >> owner, the SCU FW released has been finalized, so the API
> >> implementation can NOT be changed, but they will pay attention to
> >> this issue for new added APIs later. That means the number of APIs having
> this issue a very limited.
> >
> > This means those APIs which already have this bug will not be fixed?
> > IMHO this sounds a bit weird since this is a changeable peace of code
> > ;)
> 
> It's not a bug, it's a documented feature ;)
> 
> >>> Right now developers who want to make SCFW calls in upstream need to
> >>> define the message struct in their driver based on protocol
> documentation.
> >>> This includes:
> >>>
> >>> * Binary layout of the message (a packed struct)
> >>> * If the message has a response (already a bool flag)
> >>> * If an error code is returned (this patch adds support for it)
> >
> > Why should I specify if a error code is returned?
> 
> Because you're already defining the message struct and you're already
> specifying if a response is required.
> 
> The assumption is that anyone adding a SCFW call to a driver is already
> looking at SCFW documentation which describes the binary message format.
> 
> --
> Regards,
> Leonard
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
