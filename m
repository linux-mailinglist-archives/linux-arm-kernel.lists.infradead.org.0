Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D828CC1C0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 09:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=HWrsYxKTI2/sy82W8vmX/Jbhx3axKUd07HB0C1w8y7Y=; b=e7Jqc17ATQsR24
	6EGO0ajTzoT4ZZK9qD0kzUhml5RyQ5ljBTyk3w6EACTnJKMEhro7Y/rc8UdUr5O9mgRSDmUMzHHoR
	soUPntujiC5NqDAwaRZH62m3QXMZfxIAM+rHj9LhFB8fDC6pG9GBKaaC6KLfsvHW5Ks+vx88UIXks
	pbdGhvBdPxlG3ygIorSZF//WTP3MdckCydCJJ39zaM5sV6KFZj4RXK1S+/8WW15pgbA5QqEh8++Ku
	P2J7VdtUAw9aC2DTLehm6ZEA+18K7f9VpXe7SahlqF2UZLzJ50u6B6Qa3Za7Ed7P+4a2BwTbqsH9n
	d5qw0DBCz1cMBOuLgxSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEq7J-0000n0-Ou; Mon, 30 Sep 2019 07:29:09 +0000
Received: from mail-eopbgr70050.outbound.protection.outlook.com ([40.107.7.50]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEq7A-0000mN-Da
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 07:29:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bPLxeooJMpRY1DkT4Eh9NaXCP4PKTP70aSuTTKuLUrP9ln/cEXE+/OzgiFEAzXvZyDjGUtzclAR+8Ee8fFfCRL8mHR8THUpENfyi+I8AdI7pK+6Pp6lI0XKNtFzbxb1FgTfUYTXoO5DGeMbicafkci3GnHPX5qmpUKi9WkokiMWbQ8HMBFGRkQiqT5gE/o6USw6Iunrs7u2DR4jrCgC0NzDOQMTispM9/OxxmPzVrIDAh9hTbNr5lS8Tmb7dLBpJLXbWzUn+Rdi9uOVtLMlKzb7yfvF/8B8lmwHYdodECGe8lrddU1nef9ynRruSfQU9LIF2BzYc78g52are/XXr0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eLgmKVfne/pz1rv76xu6EYh3hkTNDQx84GH3+bvVwjQ=;
 b=cR9mg2KLVWkCCqVviicDo/yLZJIrGw6dIyIFrTmzmsTi9PawNRnHED+CimEeFrCmUfLEcGup8bejFe9TrPyW2BgRjAX3ysVQg/lX5g2DlOW+rBGtTxQ5W42hU3yTjo7oF2yVVwp23OiYkz9pQI+nlC0f4xg0YMXt+6WR0UU4rV7AriO4D5aix60G1WZRNSfylfwMLNhB/kQV4D05id5WQmJggsjZRdDpYGSA7JQYfvBcBcYCf9bQEOajwzBZsVavYXbK5pnlmGhu9jia0kaa9ib4Qho1MQFWVbtERkn0itD4Etf/j6ynxJ6hmMqoZ0wJQXU/bjeaaqyB3oZzT+LNIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eLgmKVfne/pz1rv76xu6EYh3hkTNDQx84GH3+bvVwjQ=;
 b=B4+PysdYMZxpSnI5VxirzLROGOzpEDPxGV10iIJ16HoSvJARYGf8rlC+n/MSZytvE+vLDrhXFiYj7QQs2wL3vBESY6NHcuCPlGUnrVQ2NdObvPOxTkyG736Vqk6ZH3RtAdgKubH9OcizZxKtV/RL4s3MWBFQu9+44BcvGWPYRe8=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3120.eurprd04.prod.outlook.com (10.170.229.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 30 Sep 2019 07:28:54 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902%2]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 07:28:54 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, Marco Felsch <m.felsch@pengutronix.de>, 
 Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lSn4nBMGf230anvZh0PllY6g==
Date: Mon, 30 Sep 2019 07:28:54 +0000
Message-ID: <VI1PR04MB702322F2F020A527AD2F8DDEEE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9b9aa49-871f-4729-a6d6-08d74577d940
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB3120:|VI1PR04MB3120:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB312005556B4A0F3EECAACC13EE820@VI1PR04MB3120.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(39860400002)(366004)(136003)(189003)(199004)(33656002)(476003)(44832011)(14454004)(2906002)(6116002)(5660300002)(305945005)(6636002)(52536014)(486006)(3846002)(71200400001)(71190400001)(8936002)(55016002)(76176011)(7696005)(6436002)(66066001)(102836004)(74316002)(6246003)(4326008)(81166006)(81156014)(76116006)(91956017)(66946007)(53546011)(6506007)(26005)(66446008)(66476007)(478600001)(229853002)(7736002)(186003)(64756008)(25786009)(446003)(8676002)(110136005)(66556008)(54906003)(256004)(316002)(86362001)(9686003)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3120;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9uitgTNpvv5ugH11BjJZXBlLd6EHvmFtJGr9gue1W/X3zxE1PRHRSLNAFdhB4in9J803VSUpIEJoDdOilPjUXlAuHjusJiV8aoqz6vtFYTN6Gcryd42mxOElB1NqgHmGaSW9aoOh/IcP6ctNuIz8a/zK70jpbuQXm2NEg6/CCs8YlFlyDS/DUWD2LHIofPRI+l00ndF5eNqUwM4j3MV6k2UnuawjvCGF8B+vcdlA+zhh+PI1YuUOXkkuryaYmXXvYNIWrFe3mFr5JG1ps97NkuN0Vtfso3NiGZhiturVOMd8SJkHVxsRsWipgk60k0MRu/XXpHoLr192xYyvxoaw96W+KH/Hr+5dof4kV6Ri57xGCj5IUkra7PF4gvEZTselVnlHneUIr+Ch8uIOs/SXXNtzEBjaBrbmY+U0UrocuzI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9b9aa49-871f-4729-a6d6-08d74577d940
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 07:28:54.3231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /J7iUK9ghqZDoHsTDfOwhHFQrgaD2YgAmMEJXP9ETfH85uMcrRtK4ndYBweArc4OqFcdHf08jHG5+h6/1uPZQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_002900_623674_DF45281D 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 2019-09-27 4:20 AM, Anson Huang wrote:
>> On 2019-09-26 1:06 PM, Marco Felsch wrote:
>>> On 19-09-26 08:03, Anson Huang wrote:
>>>>> On 19-09-25 18:07, Anson Huang wrote:
>>>>>> The SCU firmware does NOT always have return value stored in
>>>>>> message header's function element even the API has response data,
>>>>>> those special APIs are defined as void function in SCU firmware, so
>>>>>> they should be treated as return success always.
>>>>>>
>>>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
>>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
>>>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
>>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
>>>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
>>>>>
>>>>> Is this going to be extended in the near future? I see some upcoming
>>>>> problems here if someone uses a different scu-fw<->kernel
>>>>> combination as nxp would suggest.
>>>>
>>>> Could be, but I checked the current APIs, ONLY these 2 will be used
>>>> in Linux kernel, so I ONLY add these 2 APIs for now.
>>>
>>> Okay.
>>>
>>>> However, after rethink, maybe we should add another imx_sc_rpc API
>>>> for those special APIs? To avoid checking it for all the APIs called which
>> may impact some performance.
>>>> Still under discussion, if you have better idea, please advise, thanks!
>>
>> My suggestion is to refactor the code and add a new API for the this "no
>> error value" convention. Internally they can call a common function with
>> flags.
> 
> If I understand your point correctly, that means the loop check of whether the API
> is with "no error value" for every API still NOT be skipped, it is just refactoring the code,
> right?

There would be no "loop" anywhere: the responsibility would fall on the 
call to call the right RPC function. In the current layering scheme 
(drivers -> RPC -> mailbox) the RPC layer treats all calls the same and 
it's up the the caller to provide information about calling convention.

An example implementation:
* Rename imx_sc_rpc_call to __imx_sc_rpc_call_flags
* Make a tiny imx_sc_rpc_call wrapper which just converts resp/noresp to 
a flag
* Make get button status call __imx_sc_rpc_call_flags with the 
_IMX_SC_RPC_NOERROR flag

Hope this makes my suggestion clearer? Pushing this to the caller is a 
bit ugly but I think it's worth preserving the fact that the imx rpc 
core treats services in an uniform way.

>>> Adding a special api shouldn't be the right fix. Imagine if someone
>>> (not a nxp-developer) wants to add a new driver. How could he be
>>> expected to know which api he should use. The better abbroach would be
>>> to fix the scu-fw instead of adding quirks..
> 
> Yes, fixing SCU FW is the best solution, but we have talked to SCU FW owner, the SCU
> FW released has been finalized, so the API implementation can NOT be changed, but
> they will pay attention to this issue for new added APIs later. That means the number
> of APIs having this issue a very limited.
> 
>>
>> Right now developers who want to make SCFW calls in upstream need to
>> define the message struct in their driver based on protocol documentation.
>> This includes:
>>
>> * Binary layout of the message (a packed struct)
>> * If the message has a response (already a bool flag)
>> * If an error code is returned (this patch adds support for it)
>>
>> Since callers are already exposed to the binary protocol exposing them to
>> minor quirks of the calling convention also seems reasonable. Having the
>> low-level IPC code peek at message IDs seems like a hack; this belong at a
>> slightly higher level.
> 
> A little confused, so what you suggested is to add make the imx_scu_call_rpc()
> becomes the "slightly higher level" API, then in this API, check the message IDs
> to decide whether to return error value, then calls a new API which will have
> the low-level IPC code, the this new API will have a flag passed from imx_scu_call_rpc()
> function, am I right?

No, I am saying that the caller (button driver) should be responsible 
for calling with a special flag which states that the RPC call.

In internal tree this is handled inside the machine-generated function 
calls, right? These are mostly skipped in upstream but maybe for these 
particular calls we can manually add wrappers inside 
"drivers/firmware/imx/misc.c".

And even if the functions "return void" from a SCFW perspective it still 
makes sense to return general kernel errors, for example from mailbox.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
