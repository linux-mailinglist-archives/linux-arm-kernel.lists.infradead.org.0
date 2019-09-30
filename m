Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EAEC1D31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTtymCLXSTFVmUhsiUJ3CcViqFsvJO8D7qFvoD6irLQ=; b=B1Nmd8gHJaiFSc
	Sg1vkCSvcqcmNR0M71xAijb18HSUbVcRYPDZq9JGiJPHWT6suFW+Kw0MXKVimPf7KPqt4WfyS/Spr
	Fw7cXzELhEkBl7/MhN5pz1oN4tlRfvclkIntxZQSxMT41Vmoo90JITtGFuRLnCbCFe787LHL5sqKv
	l8jqpWW8lQtNJ555IevKHzz7mgVByvnjkM/JOI29qEofOm1bfCGBtoyRtbJ6nRtwWIWyFzdRbJU0T
	49aJnivW1nj5oVfaHAAPAYGEGbAKoFdnGGiulIARZHo7Lmu7n6I3nQEflyQxgrxUeUt7Fy0tIUH7l
	3gqsDRCSYh44OdrXd6IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEr6g-0006O0-1O; Mon, 30 Sep 2019 08:32:34 +0000
Received: from mail-eopbgr70053.outbound.protection.outlook.com ([40.107.7.53]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEr6Q-0006N1-Ab
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:32:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kkG1sBsZUoKtZR5YjnkpivMOR+JlL/NE+qCNfv4dOT8qHmomhebZcqDVTj8I75wOfaFRbBfQa0jSn5sSc9m9MAKgHZGz+8eRzH903jt/ZrfLdNX/UvunQ4tWdkiXjOQZ7OYcilWHBHxfHtLDp8vt69/OUIZRzLaLENJ+8AX/xMbpvuNqZaqoQt5UewYQ4n557U9OHoUV4YkiSWZuKc8SOkOpOk7xhQWXob9k5s9O3L0CG5diekNPv6iZj/kSz/V48VqpThNY/6NOcitNEDyPUSi7SyAqFfUCZV6J9YsPz9uLfEchc6/uzNC+Zl+vO4h2eSPnS/hd9Izm8beY35TWJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sVo4zqw3h2bYRHXOY3WXWgJhE0tXx25VO6yyzRj4DjM=;
 b=LtnYIOWu3CWYkHWA8MCUJA5RNHhPUOfx0W+ybSZKvz8q9/ik/zCoxXuQpstjq+6nazsHPubJ0wJNKeqj6oLaOai6dbHxt4utz6ztGAhezH937dN7G9QWenAKV1YPtN2r40F0Des3O8YeHviCdZp4dScLROr+oWd9R/L0LAk6j8P1tt+p1mNqav+EV9i+cJ4Ln8eA8i+MEIl1q45eyhSGZMv16JgC4yD6Ur2zXs+sN6t2STMdjODPttDSqi2KFwGluFrozev4uHyRl1JhJ2kIutqufPwK6FdKVoWfrmkqRQH+9bOee/FVpdfnJy6I3eWH3lQnm05iGQxppPdJEeFhIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sVo4zqw3h2bYRHXOY3WXWgJhE0tXx25VO6yyzRj4DjM=;
 b=N4LKLHL26TBrnUtlL3v/1hRnaNvPg0jV3fF4i3TPQ+Mkw17wJqoiMY/Nx/ADTzfimFTR/In7T4IGMDePG5d6qS6c2du7QXHaekZwysDAhzg/h3Q6M8RCQx8K6t6hZ0VXrk2oMUKD88UhS9HEwCpwZENLNl2fNzZPHjSsxJSyLL4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3692.eurprd04.prod.outlook.com (52.134.65.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Mon, 30 Sep 2019 08:32:14 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 08:32:14 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lT/ErvPybCJUCbZ2x7mLGjsqdD3BbwgAALBgCAAAI3gA==
Date: Mon, 30 Sep 2019 08:32:14 +0000
Message-ID: <DB3PR0402MB3916B2243D4B452B460EA892F5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <VI1PR04MB702322F2F020A527AD2F8DDEEE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB39169BC7E8DB3525A309034EF5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190930081434.qrrv3yqczzxihntm@pengutronix.de>
In-Reply-To: <20190930081434.qrrv3yqczzxihntm@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 115066d7-c6d9-49a8-0b42-08d74580b274
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3692:|DB3PR0402MB3692:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3692B14962CEBBDC43DBD80EF5820@DB3PR0402MB3692.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:626;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(366004)(396003)(189003)(199004)(6116002)(229853002)(446003)(4326008)(11346002)(5660300002)(52536014)(76176011)(7696005)(2906002)(26005)(33656002)(478600001)(14454004)(53546011)(186003)(6506007)(3846002)(99286004)(25786009)(66066001)(6246003)(44832011)(81156014)(81166006)(476003)(102836004)(55016002)(9686003)(54906003)(8936002)(71190400001)(66476007)(64756008)(486006)(8676002)(66946007)(74316002)(305945005)(76116006)(256004)(6436002)(66446008)(66556008)(7736002)(6916009)(316002)(86362001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3692;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VljTYCERxZbfnLIVQyvkc2mRwMldY/WXFuoLOVhVkT0nu9OUKm1punHun9AZpQ7QPXIJ/nnQlBjS3++pg/PTUD3zXUhNsETvvcYFB3trzPa7Qit23jO1LvSJ/S09oLe0eI6Ec1UdOsUsf+RSNxoqHEEEeqDWhIl+tadMUkRooZAPAc/hFki+Fy9qSeS3OTVjC7HRuqtZStFGnOVGXphLRhynrcQWmymOLJTyQJTSw76B7TGpzCMCPmKHzI7i8cvd8HlxPbrJdvDoJPzdPXHohT7CKP5GmXN8Sa6R4qKiRxc5w4PFIfzXgb73pTwnZ8IdDyS2tDlCEtD1RyHMCsFe+oPBnLl+Y3bycKWAmWmuHpr17oklo8D8YAxY6oQ0XsxDU8LXBh7luISEn1lMgV36Y9w/nZBvxTEW2cgosPxFEwc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 115066d7-c6d9-49a8-0b42-08d74580b274
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 08:32:14.7954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7c/rIv8nQZjyZY3tB0NAFFVmo60NdLQpB9lpMNUyQCFvOc+WvrWeWmcm1Sew6p/PPePosXx57lMNPmt0thkNLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3692
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_013218_466225_412A550C 
X-CRM114-Status: GOOD (  35.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi, Marco

> On 19-09-30 07:42, Anson Huang wrote:
> > Hi, Leonard
> >
> > > On 2019-09-27 4:20 AM, Anson Huang wrote:
> > > >> On 2019-09-26 1:06 PM, Marco Felsch wrote:
> > > >>> On 19-09-26 08:03, Anson Huang wrote:
> > > >>>>> On 19-09-25 18:07, Anson Huang wrote:
> > > >>>>>> The SCU firmware does NOT always have return value stored in
> > > >>>>>> message header's function element even the API has response
> > > >>>>>> data, those special APIs are defined as void function in SCU
> > > >>>>>> firmware, so they should be treated as return success always.
> > > >>>>>>
> > > >>>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
> > > >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > > >>>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
> > > >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > > >>>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> > > >>>>>
> > > >>>>> Is this going to be extended in the near future? I see some
> > > >>>>> upcoming problems here if someone uses a different
> > > >>>>> scu-fw<->kernel combination as nxp would suggest.
> > > >>>>
> > > >>>> Could be, but I checked the current APIs, ONLY these 2 will be
> > > >>>> used in Linux kernel, so I ONLY add these 2 APIs for now.
> > > >>>
> > > >>> Okay.
> > > >>>
> > > >>>> However, after rethink, maybe we should add another imx_sc_rpc
> > > >>>> API for those special APIs? To avoid checking it for all the
> > > >>>> APIs called which
> > > >> may impact some performance.
> > > >>>> Still under discussion, if you have better idea, please advise, thanks!
> > > >>
> > > >> My suggestion is to refactor the code and add a new API for the
> > > >> this "no error value" convention. Internally they can call a
> > > >> common function with flags.
> > > >
> > > > If I understand your point correctly, that means the loop check of
> > > > whether the API is with "no error value" for every API still NOT
> > > > be skipped, it is just refactoring the code, right?
> > >
> > > There would be no "loop" anywhere: the responsibility would fall on
> > > the call to call the right RPC function. In the current layering
> > > scheme (drivers -> RPC ->
> > > mailbox) the RPC layer treats all calls the same and it's up the the
> > > caller to provide information about calling convention.
> > >
> > > An example implementation:
> > > * Rename imx_sc_rpc_call to __imx_sc_rpc_call_flags
> > > * Make a tiny imx_sc_rpc_call wrapper which just converts
> > > resp/noresp to a flag
> > > * Make get button status call __imx_sc_rpc_call_flags with the
> > > _IMX_SC_RPC_NOERROR flag
> > >
> > > Hope this makes my suggestion clearer? Pushing this to the caller is
> > > a bit ugly but I think it's worth preserving the fact that the imx
> > > rpc core treats services in an uniform way.
> >
> > It is clear now, so essentially it is same as 2 separate APIs, still
> > need to change the button driver and uid driver to use the special
> > flag, meanwhile, need to change the third parament of imx_sc_rpc_call()
> from bool to u32.
> >
> > If no one opposes this approach, I will redo the patch together with
> > the button driver and uid driver after holiday.
> 
> As Ansons said that are two approaches and in both ways the caller needs to
> know if the error code is valid. Extending the flags seems better to me but it
> looks still not that good. One question, does the scu-fw set the error-msg to
> something? If not than why should we specify a flag or a other api?
> Nowadays the caller needs to know that the error-msg-field isn't set so if the
> caller sets the msg-packet to zero and fills the rpc-id the error-msg-field
> shouldn't be touched by the firmware. So it should be zero.

The flow are as below for those special APIs with response data but no return value from SCU FW:

1. caller sends msg with a header field and data field, the header field has svc ID and function ID;
2. SCU FW will service the caller and then clear the SVC ID before return, the response data will be
Put in msg data field, and if the APIs has return value, SCU FW will put the return value in function ID of msg;  

The caller has no chance to set the msg-packet to zero and rpc-id, it needs to pass correct rpc-id to SCU FW and
Get response data from SCU FW, and for those special APIs has function ID NOT over-written by SCU FW's return
Value, but the function ID is a unsigned int, and the SCU FW return value is also a unsigned int, so we have no
idea to separate them for no-return value API or error-return API.

With new approach, I can use below 2 flags, the ugly point is user need to know which API to call.

+++ b/include/linux/firmware/imx/ipc.h
@@ -35,6 +35,11 @@ struct imx_sc_rpc_msg {
        uint8_t func;
 };

+#define IMX_SC_RPC_HAVE_RESP   BIT(0) /* caller has response data */
+#define IMX_SC_RPC_NOERROR     BIT(1) /* caller has response data but no return value from SCU FW */
+
+int imx_scu_call_rpc_flags(struct imx_sc_ipc *ipc, void *msg, u32 flags);

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
