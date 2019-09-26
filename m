Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542FFBF403
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 15:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=kITAw/dFXf681VA/aKE3Z7EzovJSu8+mX0lZZKm/usQ=; b=rdjGLxQKl6UYf0
	jyXP3ZxDyv80kdfsTaMhd6ylQlz4SHWi+CkMcVmNM/N4xwwS9PvNZpTVmNnxp48D2liEM/iV4w30c
	AMDgm4TwsJroO0BBI02gzhR2b88SO1RfdEHkUmTAW3Gq90d6An4GKjhaAp37ubNIJzzcuOoX0tpUE
	MqWSX1bS9RhM3imeRDnVHjpbzh9+UhHwYNNKWTEaQ8cUFRu6ewJ4Aw1qL9ANKDLpuyGmBxVxqitIE
	EDz5NYrogHIRB/a917GsOP3EcpVYPSer3Ltcghw9mQjkDIVm2EkT0T6pjdXLpi0uNA4hiV2NcH4Du
	Qh8RL0SFBzYSF3haITcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTmX-0002QD-EC; Thu, 26 Sep 2019 13:26:05 +0000
Received: from mail-eopbgr00062.outbound.protection.outlook.com ([40.107.0.62]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTmM-0002Pm-2r
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 13:25:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JqSVoe/0pSfzuTYL1ZLuYrwGyG22d4cqMkKua+W6a3E0f2X89YhA0TxaENMmadZ9CwAFgT1bZqAaElUu99z6Sjv1vwnMTSSeRueJiWq0J32IXD6EwL/z4WzOE4qwjjhYacAQIbyVglrHT3B3hqxPgMJ33NqhX45wbIYrN8yN8Iv59h35daxCPcZOMZcsOPhOpL0sKRn47HVqvuYNIAn9qsaNm3VfICJwpjf+2n3zlCRLWXm7yCBHTL7aZ2rFS2X9qdysC16QQ4fwZiudXNVlIisjneTmCc+B96BHknkpHxAcPxuM0xz0vIwghJOeFv5O5nXigdBQrJaOiVf08IXCnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yag7SG4jS0Hxh9HAiKbvGip9wmeT0L/RZCmXehodIac=;
 b=KeLfRIv/nJuXVk8gy3Kw0836kFbGzDTAxdBlYnmIHQKq6FvUJj+Q/oh2/mlyvD6MEHFQFMZrRGAPpB5jAuPPTqRP/dsMx+ikGV/xqML6bMXZ8Hw4g3O2gSzOeJ659DpmNBl3P3W7NCfPtIRDwpIXyfrPKJeTeESm5WpUPmrMmBqRkq4YhNtuz1mFsCO11H45U9c0jZNH6CmSNpGMWbEvhVS2ijrgRS7n1msBqUei0gxMLj9fp/O0dShg9HcrML/1avjnLPod+dtlSTFoITqzI3o8SoVFpioCdZHMdyHTFh0rkn3ntXNs5r2G9qwTg4BSpRiv+DuRZeUF7WXpBgpEjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yag7SG4jS0Hxh9HAiKbvGip9wmeT0L/RZCmXehodIac=;
 b=EZCBjFxCCX4FDASnDhdU9CmyNCJ1ACbQxtehQi7daMh1sPK5AVL5DmUY81CYpTOxlVigLGnjJkugETjnshxFORyAU0WalhtwiQ0YcDL/b2c96rklVXopXGHAqOMv7uKWjclqk+qGmB/FJm43naU5s4228asDnkzxtWOjmgsdV98=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5376.eurprd04.prod.outlook.com (20.178.120.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.22; Thu, 26 Sep 2019 13:25:50 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Thu, 26 Sep 2019
 13:25:50 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>, Anson Huang <anson.huang@nxp.com>, 
 Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lSn4nBMGf230anvZh0PllY6g==
Date: Thu, 26 Sep 2019 13:25:50 +0000
Message-ID: <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c333a10-2f41-48df-7ea8-08d742850c73
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5376; 
x-ms-traffictypediagnostic: VI1PR04MB5376:|VI1PR04MB5376:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5376C0647F75F4495E02B109EE860@VI1PR04MB5376.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(39860400002)(396003)(136003)(199004)(189003)(229853002)(55016002)(4326008)(91956017)(66946007)(6436002)(9686003)(86362001)(76116006)(186003)(71190400001)(71200400001)(81166006)(316002)(8676002)(102836004)(2906002)(5660300002)(6506007)(6246003)(53546011)(54906003)(8936002)(110136005)(26005)(478600001)(7696005)(7736002)(76176011)(486006)(476003)(33656002)(44832011)(256004)(81156014)(74316002)(305945005)(6636002)(52536014)(66446008)(66556008)(66476007)(64756008)(66066001)(99286004)(6116002)(14454004)(446003)(3846002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5376;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lQYk0GrnY0iSG0n2IytleXr3PjmGpNm7XCOBbn28391Vk5VNbn8H4psrzLBB9u9kCt77gB7yBsgWszf9uwtrUmue9du9uBcMFKCv53fjsJsDYKLzxlHcwea+tID+4F0Y36zJKKyDxfLntyLiVOX6gxkvdat7/IGwrfUG6dkfUCBvfWm2Dxb3OYK3QxCOMj26UFFwXt9h+1E8/cbh8+gDhf/ARsRL4JZqyBwjYoE5eHwDrWcBxGx0rLtcxMdq4yVyaW9/nieAk2nY7hdOjMq9+2QH6pHP5OzZhKWUqJo9WEzyrmwzMO4Nqy2H3OxPEjvVCVu7diKb6W6PTbyCz6OfXIana1Ty09gf4wwvjXhCAkq5GjOG755YOkJcEgu4aegNXtm2TXhkA3Gtji6qSq6G480z2mnupkjxbbp0bEUhQUo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c333a10-2f41-48df-7ea8-08d742850c73
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 13:25:50.1332 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q/To19qNnHBiRwqKNLW8HM+AesFMZcfKj3U5o+bL5g7xAWFZSlLHXHaTO014WKJpV0jHb4NyDu1IMrrfWa3vYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5376
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_062554_196160_49185619 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.62 listed in list.dnswl.org]
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

On 2019-09-26 1:06 PM, Marco Felsch wrote:
> On 19-09-26 08:03, Anson Huang wrote:
>>> On 19-09-25 18:07, Anson Huang wrote:
>>>> The SCU firmware does NOT always have return value stored in message
>>>> header's function element even the API has response data, those
>>>> special APIs are defined as void function in SCU firmware, so they
>>>> should be treated as return success always.
>>>>
>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
>>>
>>> Is this going to be extended in the near future? I see some upcoming
>>> problems here if someone uses a different scu-fw<->kernel combination as
>>> nxp would suggest.
>>
>> Could be, but I checked the current APIs, ONLY these 2 will be used in Linux kernel, so
>> I ONLY add these 2 APIs for now.
> 
> Okay.
> 
>> However, after rethink, maybe we should add another imx_sc_rpc API for those special
>> APIs? To avoid checking it for all the APIs called which may impact some performance.
>> Still under discussion, if you have better idea, please advise, thanks!

My suggestion is to refactor the code and add a new API for the this "no 
error value" convention. Internally they can call a common function with 
flags.

> Adding a special api shouldn't be the right fix. Imagine if someone (not
> a nxp-developer) wants to add a new driver. How could he be expected to
> know which api he should use. The better abbroach would be to fix the
> scu-fw instead of adding quirks..

Right now developers who want to make SCFW calls in upstream need to 
define the message struct in their driver based on protocol 
documentation. This includes:

* Binary layout of the message (a packed struct)
* If the message has a response (already a bool flag)
* If an error code is returned (this patch adds support for it)

Since callers are already exposed to the binary protocol exposing them 
to minor quirks of the calling convention also seems reasonable. Having 
the low-level IPC code peek at message IDs seems like a hack; this 
belong at a slightly higher level.

In older internal trees we use a very large amount of generated wrapper 
functions. This hides calling convention details from callers but is 
extremely ugly and verbose.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
