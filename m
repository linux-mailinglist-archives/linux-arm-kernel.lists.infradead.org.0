Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9696DC025C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Y0GHr7RX1wqFR35bwsR92VE5ZzbbOOpbjI3HA36r8c=; b=EVbq50f/enrirp
	T3s2qog3HT7EijRCWUEd8LEZ4eUXdRKZN3YrQFFZlXT5vHzwA5eWHtbWnVorLj1acEmVBP1LFfJ08
	4+iaoXiPz472lhg2Rfmhib7zVLQt/3/hLihpF2X1n/0aOswgz58udD3M2oABDFmSl/ORPa1D+wpzM
	foYKxZP9W9U11utu9rAkbw2Fj5MQT5lGsj0sf6iyxrN8mbDr9qaaQiom2TBg511yO6RN/D4W7KRAD
	oa4uPQlWA3dMUI5sWZlqVGvG7urqHGjHxCfCTGiW/mrM3Ugzl6U+9TB5e/zB6xcEvSIynU7L4cs6Y
	EnQHrNECOAYSRFbdINyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmZ0-0001du-Re; Fri, 27 Sep 2019 09:29:22 +0000
Received: from mail-eopbgr60060.outbound.protection.outlook.com ([40.107.6.60]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmXS-0000Id-Qi
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:27:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FJE4X238/k6xSETN6OySj08CPBr7bq2eERxApAplEKgueqRv0IL0/RE0CvN4LahgcUVrC5zEiY9De3qo4jUQ8B3gYBD+r/eEy0PhJwItEDCen83JbQt9/XusSI8uxntU00nt/P1PsdWbZt/9dhFhV/51SbUWh9wpek9V/bxCB8vITc2N5HkPWMVlfpv/grCdHmtFi4lGYIlVp2PklDs3MpQytvNLIqsKBbvPudZSaefNy1faIyy/DuaQr4H00ySWtAnX9tuj7xTCS+cDmztjDThtDSBZTdgkEDB4hEF1lQVt+udSMC3MvQYO1bw6GvoIadd7gkcPtOtryn0RIZUu3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dzjXXP5fNfhxdwQJR454GPRrg3qmYBOoBArY/dHaitI=;
 b=ChvSQufEvAabGnKGHkZrZpFEswYIPSY24uyMgVV2XnL6jzPQTuKXLGG5Q0ObQ+GuRtDL69WToOHZD+0W+rOZH/YzfKdu1EgxCY+7Bh6eq9JSqq9X7TP6HIUZJgU+s7lmYVheIwk1afylH8Z3K9unjOt0mV3AFfRGxnvXgMmCEUtRPl0e8DnWSMYCztFFJvB4URL3paGpeg95UpJHbYO714w2c34OHd7G0EeqpdJn0X8e4/RXcxzJvPn8rMuTXjKm0n+9VEZ4bmxDCemYXUZL0Qh8KAyKA1un8VK1I05DPRMepGzmjOJhLzM5r+qrMkq3uf0fOvvNoqjCoOBuJIg0pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dzjXXP5fNfhxdwQJR454GPRrg3qmYBOoBArY/dHaitI=;
 b=SSVxy7Z4gMjgDcZm9J9btoDemnNT0v9qcEbll7Gm6ShNEen5k2bu6JuknAkoRC4GSeUZc7qKCNxkTbd6ZON2lG7vBG1knBd8Pp/FzGvcSsuPitf9ioDKFR2BpUmYS2exQp7GZUdEHTeE4oKdgS35QKxfaJXRzzAqWkmwWRxCqI0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Fri, 27 Sep 2019 09:27:43 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.028; Fri, 27 Sep 2019
 09:27:43 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lT/ErvPybCJUCbZ2x7mLGjsqc+tdHggACItoCAAATDMA==
Date: Fri, 27 Sep 2019 09:27:43 +0000
Message-ID: <DB3PR0402MB3916C99B60D4F7843CAB9C43F5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190927090609.fyxdekkzrco7memt@pengutronix.de>
In-Reply-To: <20190927090609.fyxdekkzrco7memt@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2a61edb-6d7e-4e9b-7a4c-08d7432cf35b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3947; 
x-ms-traffictypediagnostic: DB3PR0402MB3947:|DB3PR0402MB3947:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB394738FE266A1DF6D47C3674F5810@DB3PR0402MB3947.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(199004)(189003)(33656002)(7736002)(99286004)(4326008)(55016002)(66946007)(52536014)(25786009)(305945005)(66476007)(66556008)(66446008)(64756008)(6246003)(446003)(7696005)(81156014)(2906002)(86362001)(14454004)(81166006)(9686003)(76176011)(6506007)(26005)(53546011)(11346002)(102836004)(8936002)(3846002)(76116006)(186003)(6116002)(8676002)(74316002)(486006)(478600001)(44832011)(71200400001)(71190400001)(54906003)(256004)(316002)(6436002)(476003)(6916009)(5660300002)(229853002)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3947;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: s7q7E9naMGg/h66KWEfFIMDFuOC9epwrl609VmNwH/qDEOGaJyQafOfymj6ULl3ll2JdCG9ujJJF6THK+RslWgJQJmlcmwYBlxcS9C/zvW/Hq1+SDPDcaLGaCj1XlR51qi4pY3qTMICgEcKQpyJZiCBwSZOVDy9/p/yHm5J1bt2iUyhnym9ZIxskqDXM11BQHRcuv2u50jrTQRm9Tr1QqlNy31RIWObkppNzF1erhXFiBJIwLMDwW/Se4mLHss0wMKXH1b50pIveJjF2utQDDu2OUjf45uldYENxlmN7Xe9zHnjlkDyv1yJHHabg3e11VHBzMWuUr4NJZZ17bxSSnYbzawrd0cPfmRTVQWIqv3GjsopMAvqTudRguN/8YxU4meWk9R9M2TZRQae0TGr3fdq/qodc3Yo2XfchWyBALLY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2a61edb-6d7e-4e9b-7a4c-08d7432cf35b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 09:27:43.5485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: opUbC4mH2LkJGohKcp1d9ZiS+T4pZivXE1XaxaYNzPqMIsaXcEav0X6hZ2fswKjvW0rmC8B944FAzty3iY/y8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_022746_940227_1C6811D2 
X-CRM114-Status: GOOD (  27.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> On 19-09-27 01:20, Anson Huang wrote:
> > Hi, Leonard
> >
> > > On 2019-09-26 1:06 PM, Marco Felsch wrote:
> > > > On 19-09-26 08:03, Anson Huang wrote:
> > > >>> On 19-09-25 18:07, Anson Huang wrote:
> > > >>>> The SCU firmware does NOT always have return value stored in
> > > >>>> message header's function element even the API has response
> > > >>>> data, those special APIs are defined as void function in SCU
> > > >>>> firmware, so they should be treated as return success always.
> > > >>>>
> > > >>>> +static const struct imx_sc_rpc_msg whitelist[] = {
> > > >>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > > >>> IMX_SC_MISC_FUNC_UNIQUE_ID },
> > > >>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > > >>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> > > >>>
> > > >>> Is this going to be extended in the near future? I see some
> > > >>> upcoming problems here if someone uses a different
> > > >>> scu-fw<->kernel combination as nxp would suggest.
> > > >>
> > > >> Could be, but I checked the current APIs, ONLY these 2 will be
> > > >> used in Linux kernel, so I ONLY add these 2 APIs for now.
> > > >
> > > > Okay.
> > > >
> > > >> However, after rethink, maybe we should add another imx_sc_rpc
> > > >> API for those special APIs? To avoid checking it for all the APIs
> > > >> called which
> > > may impact some performance.
> > > >> Still under discussion, if you have better idea, please advise, thanks!
> > >
> > > My suggestion is to refactor the code and add a new API for the this
> > > "no error value" convention. Internally they can call a common
> > > function with flags.
> >
> > If I understand your point correctly, that means the loop check of
> > whether the API is with "no error value" for every API still NOT be
> > skipped, it is just refactoring the code, right?
> 
> How makes this things easier?

I think it is just for making a better SW layer.

> 
> > > > Adding a special api shouldn't be the right fix. Imagine if
> > > > someone (not a nxp-developer) wants to add a new driver. How could
> > > > he be expected to know which api he should use. The better
> > > > abbroach would be to fix the scu-fw instead of adding quirks..
> >
> > Yes, fixing SCU FW is the best solution, but we have talked to SCU FW
> > owner, the SCU FW released has been finalized, so the API
> > implementation can NOT be changed, but they will pay attention to this
> > issue for new added APIs later. That means the number of APIs having this
> issue a very limited.
> 
> This means those APIs which already have this bug will not be fixed?
> IMHO this sounds a bit weird since this is a changeable peace of code ;)

We can't say it is a bug, the SCU FW owner design it in this way, there are
some void function in SCU FW API, and once there is response data from SCU,
that means the API call is successful, and void function does NOT have a return
value for caller.
So it is just current SCU IPC driver in kernel NOT 100% matching SCU FW, those
void function has such return value issue.

Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
