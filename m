Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C3EC1C33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 09:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9YM7KvVp2bdzBEMM7IqF08KCBnT8qQjRCmEtXSi3VE=; b=KQQGQzlUQ4pyQb
	xBhTydJjBjtZJxCCH1gZDpR7rW7y4LqmAKBgToqQMPtld9HtAfxOZHUP5qR7QQTRQBi2jU4JBvK24
	bCOn6rk9K1+RKlC5UJNCl492vHhPNowagdRNKO42OUQJW4Gs5wwTf0jIEXPU5k1XQsjf2tBKt/JEC
	vqoENabuu4YBNZZ9fY/AFxEE8/VxsekFJVsginSnhdsT0B74p0bZ0JTHtoS+vrystyDtiSFfB0jxm
	aZNRR8zctRd5/Hud1M2UWgigFajVw8hnUmPQTxCK3LrKncAOC85DhuQ/IbMkJDtlMm2fxnUxvGyPV
	6l9ylVQfOwfWwMkaDn5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqKr-0007JF-0k; Mon, 30 Sep 2019 07:43:09 +0000
Received: from mail-eopbgr60071.outbound.protection.outlook.com ([40.107.6.71]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqKh-0007IV-D4
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 07:43:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mat9aCpGkf8oOZf9vztchxB/4obU/BAa2YWGUK1OOIxrRVsJHD/0/e2RJlqgGj2w24xfXCGyTNpF8foyu+I9nNH/i7nW9t+k93OQXG0gK1NXPXGZA5RTkyVECyHp7qaYKEv2dh5R4G4YHyEfAkEGdvO9uEWVCBXxirbzGPgIOxfd/EKIQ7nL5ztoCQfkzdprz1Bk1CAjQFZrOUFYhDueElUTAXVG7MwLn9u/3sAPKBlJx11H/vsxnLHXnRUjU4K3GDRdMv6JuiduJXK/EyBDCl5qklBESapMUzzVGlMjAk47zWT24stYSktdp2IupYQJbLLYHuhvMe6P+W7K+jRTgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztC8OOKd11OEEpj6Kd+/o51IBmm1whnhylBv0wqYAhw=;
 b=cKf+d3ZXfDsj+0ypMc1ddU7wSGCH3NTgmuFWWIHcxS4EJss11fvok8y01S9nb6SLGliUhi9YMx2YbwBycazP64kMyqEXYdoxUdZrhjqNkGIKRVPyaijyyJb0QWMVJpkTzH339APe2KifG7FuDbwDSKeH9QXMBZykL0d+hanNXidyJDIKWcdXSkASSEHwzm2plIUS8+kwOrgZ1qU89rC4K3KFlgDqTr/Vq0oAdS18VAW6Kgbj6RsEJGZxX074gFR7WT9qHGZPUOuJBuKX3imiVERwBbsis3picEHguRVmhI7FNH/FDSSGbTMLQp9RrH4A2TBpkfjq3PXG4mHU5i9P1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztC8OOKd11OEEpj6Kd+/o51IBmm1whnhylBv0wqYAhw=;
 b=q6F1+fOFzlCUktgs5AlltiysVuNB+hrO0rtjaa4Uq3M/4CDH31bIKMa2Vh5PorirVt0pyWR29AJev8bwR+H2jJIxIMufcEZlVwKkG+AywGrpugpNnFPwPfx2gD/mqN6H6wUVkmH9xlcSe6ZFIFfHjR6KszqKytQzOgmEiq6oWNs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3724.eurprd04.prod.outlook.com (52.134.66.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Mon, 30 Sep 2019 07:42:54 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 07:42:53 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Marco Felsch
 <m.felsch@pengutronix.de>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: RE: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lT/ErvPybCJUCbZ2x7mLGjsqdD3Bbw
Date: Mon, 30 Sep 2019 07:42:53 +0000
Message-ID: <DB3PR0402MB39169BC7E8DB3525A309034EF5820@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <VI1PR04MB702322F2F020A527AD2F8DDEEE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB702322F2F020A527AD2F8DDEEE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d64775b6-04de-4499-e611-08d74579cd59
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3724:|DB3PR0402MB3724:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB372425D047A8F351CACC016EF5820@DB3PR0402MB3724.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(366004)(376002)(199004)(189003)(8676002)(44832011)(66066001)(86362001)(71200400001)(14454004)(6506007)(53546011)(74316002)(81156014)(5660300002)(76176011)(102836004)(81166006)(305945005)(66446008)(6116002)(3846002)(2906002)(476003)(76116006)(66946007)(66556008)(64756008)(66476007)(486006)(4326008)(478600001)(446003)(11346002)(71190400001)(7736002)(54906003)(186003)(6246003)(9686003)(256004)(55016002)(229853002)(33656002)(25786009)(316002)(110136005)(99286004)(6636002)(6436002)(8936002)(7696005)(26005)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3724;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DPg1vHzn3k5mvtjjV/qsbwuD1NaX59/JTGwLciFb1tS8g466zxG6OYeMupzn9pZEQxSqO5hgGjMDn+prfqswSLWmAOnMEpux04jk6UVz+0bgxDefNCbkNLvuZnA+hfGzd21ga6mVaPxVAnwB4nWQbOLeAaI/99qjSSWsarGz2jqHH9TUHp5DpIdfdxTVff0mAuE6CJxcfuK71xpEqlv3Ns40gkcUpk2Jt0WiPKxawFmPrXdRDIXIkVjghXI8d1BJ16VbW2UyAulKqP1YOxWZP95hObCX/twGYYr/Zy2weH3vcFVPHGo8dQdVbMfPwo2lcTI8+w3ShC5adClDvIL6wb80Flpp3sx28zT+en+0TqS+xEvv6y0d64xxL3+8jUNxcT/WSMYUwfR0mhwnILGe2gLwGGS7+RA8fkO9jEwL9JM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d64775b6-04de-4499-e611-08d74579cd59
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 07:42:53.3675 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GeinievhZ/i0/nhONHnDeGBG2ev1JlXSxhHSop4lrqKyfbNkXkLFUISgyxdTy/0VqwbEqqjIRLYO/8ze5TF3/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3724
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_004259_443994_5523DD45 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.71 listed in wl.mailspike.net]
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

> On 2019-09-27 4:20 AM, Anson Huang wrote:
> >> On 2019-09-26 1:06 PM, Marco Felsch wrote:
> >>> On 19-09-26 08:03, Anson Huang wrote:
> >>>>> On 19-09-25 18:07, Anson Huang wrote:
> >>>>>> The SCU firmware does NOT always have return value stored in
> >>>>>> message header's function element even the API has response data,
> >>>>>> those special APIs are defined as void function in SCU firmware,
> >>>>>> so they should be treated as return success always.
> >>>>>>
> >>>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
> >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> >>>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
> >>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> >>>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> >>>>>
> >>>>> Is this going to be extended in the near future? I see some
> >>>>> upcoming problems here if someone uses a different scu-fw<->kernel
> >>>>> combination as nxp would suggest.
> >>>>
> >>>> Could be, but I checked the current APIs, ONLY these 2 will be used
> >>>> in Linux kernel, so I ONLY add these 2 APIs for now.
> >>>
> >>> Okay.
> >>>
> >>>> However, after rethink, maybe we should add another imx_sc_rpc API
> >>>> for those special APIs? To avoid checking it for all the APIs
> >>>> called which
> >> may impact some performance.
> >>>> Still under discussion, if you have better idea, please advise, thanks!
> >>
> >> My suggestion is to refactor the code and add a new API for the this
> >> "no error value" convention. Internally they can call a common
> >> function with flags.
> >
> > If I understand your point correctly, that means the loop check of
> > whether the API is with "no error value" for every API still NOT be
> > skipped, it is just refactoring the code, right?
> 
> There would be no "loop" anywhere: the responsibility would fall on the call
> to call the right RPC function. In the current layering scheme (drivers -> RPC ->
> mailbox) the RPC layer treats all calls the same and it's up the the caller to
> provide information about calling convention.
> 
> An example implementation:
> * Rename imx_sc_rpc_call to __imx_sc_rpc_call_flags
> * Make a tiny imx_sc_rpc_call wrapper which just converts resp/noresp to a
> flag
> * Make get button status call __imx_sc_rpc_call_flags with the
> _IMX_SC_RPC_NOERROR flag
> 
> Hope this makes my suggestion clearer? Pushing this to the caller is a bit ugly
> but I think it's worth preserving the fact that the imx rpc core treats services
> in an uniform way.

It is clear now, so essentially it is same as 2 separate APIs, still need to change the
button driver and uid driver to use the special flag, meanwhile, need to change the
third parament of imx_sc_rpc_call() from bool to u32.

If no one opposes this approach, I will redo the patch together with the button driver
and uid driver after holiday.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
