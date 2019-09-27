Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A9BBFCAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 03:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IBfrGmr16e8tZLnRHAlGZEBQMk3jnysigjSYNkJwRE=; b=l7mT6gOpD7V9Ym
	ZkN8p6hv8CdX3L2F+OjvpfjxBjyqtSPPiRVE4ugv529LIfF9RPVswmF6EUtQ9c1b9FBHmiGW7NOgx
	rLAC3jM4wBcyshlRsJz/iZNVL1PIakgQ4kEr9uK3HOTcyPn3EUQOMeJlqKgDFYPrXvvmP2OQgVc8T
	7f2E666liFwkmEfvL4lfo2E2tMOmI925/xlX2uWd2OolxE6w0Pz28/ILyXKPTSRyQ7p6lbPvBwiaE
	aNw7quHMMdvUJWPFZH6Gy5rExs4KACGQhRRUT/LlTsdFxXgASjT8t6d0meVhNfKJUMkvVCWwpi063
	WioW3t3nl1shFO45sjgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDevx-0007y7-MJ; Fri, 27 Sep 2019 01:20:33 +0000
Received: from mail-eopbgr140075.outbound.protection.outlook.com
 ([40.107.14.75] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDevn-0007xL-CA
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 01:20:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ql7VdHwyOn3rQse9E8HBpOy7nAH4n4Go2jDSqYuI7qqIMEQFbZL7nbjgjpBiZLwdQiJkt8I+Qe0U41QIXSIxbJ2gkNsaFz4ln9Ze1+X/oYbA++eDpv0xmhNwOszvKB332PFvUyDZ0fL5DMpmsHA3ucHYJAIc5MF2Hv4XHhY3+o7YD5oNaQkZxrr8vIoesSqj9VBzO/mJjZtqyxtrxnMLDjDg20TgmM9MXfNC2P5OTwK8uXLke6i5CAFrzIlCc9oBNbUpqExBK3iRhX8uFjhyJM+JWWPJX/zWJQcNS4NwdEixDHQX+Cy0XFEfYelSn+P2thnUpQdFqXFwwFwiAjA3XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JXmBSpXUKHDu0Em+Dia+VEzOiwGY0ytRP9L24v+/Z1Q=;
 b=YSKZqKLukNo9+p0L3aLdpYCyibbJjYORZWiGa6hS394lhEQPaMQzF7sGUqZ+9VxEIctVNkgUqnqbJEcYpcFbq0X2GF6jlEqb8sMIOAC5j40VQakOEcNJ0K8QZ7N3Q4mcOYqzZckgaROYxnORrO5G626LP+cUFcPTMawGYzdxzMeOKeFsjkC7XLqX1LM6RxkwefoWXEPXXqxb/LOafnm+wzgdiltFHmK9EDgP812spDofXg3ub50O6bA9gKeUMcfhnHo8f5dctJ+Gso2dbtSeaWou5qeUsk5C+xqB1sHLVEDR7+Vz1ThxR1Jl1tVHcGTIPusSIcj5EoK6r0OLCD8MxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JXmBSpXUKHDu0Em+Dia+VEzOiwGY0ytRP9L24v+/Z1Q=;
 b=gzWVkz8A6bR5w4xzjSstCntuCMllNGuJiyucWIrtY4/0JAqN5EjqNNwRv4wOYUb6zOBrcmhEhUmnpXCktCQq0xEaj7t9oCqSpPJYi7q7wCQGWQ/8xdyZJGhQw0ymm8gNKrjewLwvmweF/L6WuT+T6k/KMMRJ6UCKTX8CZoo6ayY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3753.eurprd04.prod.outlook.com (52.134.71.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.21; Fri, 27 Sep 2019 01:20:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.028; Fri, 27 Sep 2019
 01:20:17 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Marco Felsch
 <m.felsch@pengutronix.de>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: RE: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lT/ErvPybCJUCbZ2x7mLGjsqc+tdHg
Date: Fri, 27 Sep 2019 01:20:17 +0000
Message-ID: <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b45de280-eca6-471d-123d-08d742e8db3c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3753; 
x-ms-traffictypediagnostic: DB3PR0402MB3753:|DB3PR0402MB3753:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3753BB9ABF4240BB0D6C41C0F5810@DB3PR0402MB3753.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(199004)(189003)(6636002)(229853002)(476003)(26005)(55016002)(6246003)(71200400001)(74316002)(66556008)(64756008)(102836004)(2906002)(66476007)(71190400001)(316002)(186003)(8676002)(25786009)(9686003)(81156014)(66066001)(81166006)(99286004)(7696005)(76176011)(486006)(66446008)(44832011)(54906003)(446003)(7736002)(110136005)(33656002)(4326008)(8936002)(478600001)(52536014)(6436002)(305945005)(256004)(53546011)(5660300002)(6116002)(66946007)(11346002)(3846002)(6506007)(14454004)(76116006)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3753;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0ADiU2w0wLaQhm3rv+zbVR4ah1orAPlFkti3R3m193qHDALvcycWmQNrtpIY47quNYZIsYCOeafhwkKhrclTiN5gx/HXjCjwSCO4sI2FQuTrAv97QL791H3awcmRedwXWjee/23foycfdPgK8bQt/FBjLeWX4wpWPYLa1OB7Oo9+qgpJzdVqB7rKCoo5BuhNhS3Qyxx33duIS01quntpSIjPBEYt/kufUeelpqmuAnXet4HvAtsq+rX2DWDOOdrhFQrjbHR7a4LtfeGv8jLqSMYnX39gKjOL5sI8CYflpaoFCtrsnw8D3oJED2XAS6j5JAghubpZODQK1+B/pUIrIQBac24y4CZCpGMdXwaYlOiVBZhRiZzaxrEM5q0jthrUEa0gbL5LexjXajSd9b+q0+ZyOzBcPGSRuMj5eRmHVXY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b45de280-eca6-471d-123d-08d742e8db3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 01:20:17.3647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gyZV4f45O8OHhD5Hv9wCK1JfIKqq/bNH/PHhM57/VEO34WmBkUOC1Cl5xTCdVXHtArGjTlIO47CkBkG9wqaL4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3753
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_182023_620330_ABCA0A49 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

> On 2019-09-26 1:06 PM, Marco Felsch wrote:
> > On 19-09-26 08:03, Anson Huang wrote:
> >>> On 19-09-25 18:07, Anson Huang wrote:
> >>>> The SCU firmware does NOT always have return value stored in
> >>>> message header's function element even the API has response data,
> >>>> those special APIs are defined as void function in SCU firmware, so
> >>>> they should be treated as return success always.
> >>>>
> >>>> +static const struct imx_sc_rpc_msg whitelist[] = {
> >>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> >>> IMX_SC_MISC_FUNC_UNIQUE_ID },
> >>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> >>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> >>>
> >>> Is this going to be extended in the near future? I see some upcoming
> >>> problems here if someone uses a different scu-fw<->kernel
> >>> combination as nxp would suggest.
> >>
> >> Could be, but I checked the current APIs, ONLY these 2 will be used
> >> in Linux kernel, so I ONLY add these 2 APIs for now.
> >
> > Okay.
> >
> >> However, after rethink, maybe we should add another imx_sc_rpc API
> >> for those special APIs? To avoid checking it for all the APIs called which
> may impact some performance.
> >> Still under discussion, if you have better idea, please advise, thanks!
> 
> My suggestion is to refactor the code and add a new API for the this "no
> error value" convention. Internally they can call a common function with
> flags.

If I understand your point correctly, that means the loop check of whether the API
is with "no error value" for every API still NOT be skipped, it is just refactoring the code,
right?

> 
> > Adding a special api shouldn't be the right fix. Imagine if someone
> > (not a nxp-developer) wants to add a new driver. How could he be
> > expected to know which api he should use. The better abbroach would be
> > to fix the scu-fw instead of adding quirks..

Yes, fixing SCU FW is the best solution, but we have talked to SCU FW owner, the SCU
FW released has been finalized, so the API implementation can NOT be changed, but
they will pay attention to this issue for new added APIs later. That means the number
of APIs having this issue a very limited. 

> 
> Right now developers who want to make SCFW calls in upstream need to
> define the message struct in their driver based on protocol documentation.
> This includes:
> 
> * Binary layout of the message (a packed struct)
> * If the message has a response (already a bool flag)
> * If an error code is returned (this patch adds support for it)
> 
> Since callers are already exposed to the binary protocol exposing them to
> minor quirks of the calling convention also seems reasonable. Having the
> low-level IPC code peek at message IDs seems like a hack; this belong at a
> slightly higher level.

A little confused, so what you suggested is to add make the imx_scu_call_rpc()
becomes the "slightly higher level" API, then in this API, check the message IDs
to decide whether to return error value, then calls a new API which will have
the low-level IPC code, the this new API will have a flag passed from imx_scu_call_rpc()
function, am I right?

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
