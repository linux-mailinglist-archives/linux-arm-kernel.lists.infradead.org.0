Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC4C18940E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 03:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=1MjC08Y4cJdBCdCdhJgJYmnKT0+GLXEgA9uCfon2nPI=; b=Cv9PdoVdxBvcrg
	Z3mGdcfJ9R2fAWCzY3f/hf6Mmws3rsPBCNJhIirhUpv0IEeHeyBAIkHCStJOddlFNE5Ok63OKZ7Pu
	UaqpAsYsTfu7OVY4z4HIwGapmykEsOXQA+lnJBCTOQmls00klmjN7phGTdehdP8tRTvvGbKaeI56q
	TQSbxR2DGFwC0PSWx24/IUHuG4uUbEj2RevS4BCItyxHhxWtTBLUMeTObw7020R1R7WA4TIoDxIYw
	LIkKLxA4qFHIw3W43YEKqwVZBvplVKYLwDvvZKj2dlPpoaCJZt+8AotAknOXciwz+r5cU46M/seaE
	LmBM/Z8iu2mmQOXbXEwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEOhM-0003cF-43; Wed, 18 Mar 2020 02:44:48 +0000
Received: from mail-ve1eur02on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::614]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEOhC-0003bI-Am
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 02:44:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OETy3igWMFQw7J4RqrtOKRQ/vPT5ACUerCPOUxF1RrfHXt/WNh/R9b3EzfQajGde93V4FiexCtZpzT0Z7M8RyC5i80G3pXEAmB8iL7w0f5jgRKDvXdUQbm4nBKcE5buJBzEXjNxlM++DLTHNqGn51pdSr8kbMp4LT89CK32FI2b1b9TNNUFO33FI38fnAN+n+X3Q9iNfNyoYy+ME58skPm5wsd4Kw8O4wY/VR7Lii9z5wNUdiIexK6+04PuqKAGd4oo6amoigsMvrLoCC0A59mTK0fQm7SXSh941YilhIBwXzkGVEHB62ElvW2QVsYGduNGehfsFtPztP3M56Nf1lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cr0u8xTUHeAA0G2piQ0Hr3ewjhnv4M+y82w+ZkXgKWE=;
 b=n0+Wo7CgThCawoDcFEyyg0Ve+aY6SSN/FxXhdUoRl5RnFRROHjY1rQGpIRPjfDCHgr43Eeo1X2V241SO3WA7fjjlPd2awdDq0Xqln879gOwn2RkT2I4Nrvucmv5RaQpgG8P63eFsfQ1C/c68TmIEWsmjXWfYYKHb2GwjQYH1DzcFOTJ5eZn3nL1zzATzvkOfKmb+oA+8yZEeqVGIYBPJWwygw/PhbhWsqJwga54pa6FnKPwch+dQPwVxXWLglWpMXcu1epyzuBvSlBkVcvlD7lyuoFYWxZeadwnsRaJUGwqAqxeBU6dJlYg57ZvzyhpYAOwJvCT6sxq90qE/17N4mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cr0u8xTUHeAA0G2piQ0Hr3ewjhnv4M+y82w+ZkXgKWE=;
 b=StLJhlc9dzsvgwcA2mXs8ysWY11e4D3skGaPiUOJ0WAjfZKUPqqfeyj49iLzt2kIy4EZEH0FZbujr+nYonXy7xFj98G2QtuVsglXHZMSW0gCk+vczWSpJQ7NEBkFRtEIFzVVG1B/wdfhP4ZglVkTlnivD/3l0w913/3SuavkTe4=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (52.133.244.87) by
 VI1PR04MB4447.eurprd04.prod.outlook.com (20.177.57.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Wed, 18 Mar 2020 02:44:33 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200%2]) with mapi id 15.20.2814.021; Wed, 18 Mar 2020
 02:44:32 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "o.rempel@pengutronix.de"
 <o.rempel@pengutronix.de>
Subject: Re: [PATCH V6 0/4] mailbox/firmware: imx: support SCU channel type
Thread-Topic: [PATCH V6 0/4] mailbox/firmware: imx: support SCU channel type
Thread-Index: AQHV8emRabKKTJAuM0OK7xtU5vZU9A==
Date: Wed, 18 Mar 2020 02:44:32 +0000
Message-ID: <VI1PR04MB694108DF36F465324BA45E05EEF70@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <1583300977-2327-1-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB7023455D0FE9766FFBE1EE5EEEFD0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <AM0PR04MB448123609B2FE8F5ECAF1F4388FA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB4481D74E3C38B047562F419988FA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 10ae6edb-df68-4914-4b60-08d7cae6499b
x-ms-traffictypediagnostic: VI1PR04MB4447:|VI1PR04MB4447:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB44476673D4C7587B1E966A7CEEF70@VI1PR04MB4447.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(366004)(39860400002)(376002)(199004)(5660300002)(33656002)(44832011)(54906003)(316002)(186003)(26005)(52536014)(86362001)(15650500001)(110136005)(9686003)(6506007)(53546011)(76116006)(8936002)(55016002)(91956017)(8676002)(66446008)(64756008)(2906002)(66556008)(66946007)(478600001)(66476007)(81166006)(81156014)(4326008)(71200400001)(7696005)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4447;
 H:VI1PR04MB6941.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +78itZQZ3Zk3LFDWuBQjcipNpQ/yl20tGRLevxtM2I5uDLQ2Tsay3VP1jeucBiVtQDbINKqi3MFOWEhMIJRP/xseWKxuro6cc8qS1xCgKhoOg6+4PcIsXKXDMR41lzBCC8pSX6UnsPNLK8XtPGL5kt8ZYkVbyUxSjW80/Ze1Ra6zq4apId1yRbbnpt0zYU507IxWpCUhEDbX1Cna+IVbUZPVBlXiffB8hQ0tPafcRwYQzLsuUCuraSSBieioUoAOJQkAiFJYMrIa2Vt8r6AndGKF/NqEz1+RxtUFnR0x3lXvemcvpQlRM7BBhOA2iaIxm45sP30is4XVGhXdXJBjlOMsIBSkQQnCyPBkGM8qzShY9bnbBwBu7qHYccaQA4Oj2AUtbG+UN0yiKlryLdm9A4tH/RjMIWk67oBevl0flGgrdDyPfiUBOk8Ryw1kfLvBkpkKBSUaIGZraOzMdr4KcDuHFh3WyeyeeAqgZOtwU4oVIW8RMrgQgwAkfayL3PS9HK9Lm4UjNPClnAng+QBYnQ==
x-ms-exchange-antispam-messagedata: sK7nPOPORkyHnMxz14j+eV6P4dvsnOVLUjnllEOYsmKeGuJud769ohv6gPQIfhtFfpJoXH+x2U74BVHp+GKp9Nyqv8Aq2DcYyKXVsBcux60s36L7EShHXA+ZwdToYYsw5Vxp59pSfwBYZWEDDRqfgQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10ae6edb-df68-4914-4b60-08d7cae6499b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 02:44:32.1202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E90VmxLc2pXfyYKWXdcVnTDYpz7eg2iTpg8WKYNsZ9rIL7s5BtNIOwgbYEzotsY2ou+jbiLoJSXP0GAc5ZpPXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4447
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_194438_481182_39977BEE 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:614 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
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

On 2020-03-13 9:38 AM, Peng Fan wrote:
>> Subject: RE: [PATCH V6 0/4] mailbox/firmware: imx: support SCU channel
>> type
>>
>> Hi Leonard,
>>
>>> Subject: Re: [PATCH V6 0/4] mailbox/firmware: imx: support SCU channel
>>> type
>>>
>>> On 2020-03-04 7:55 AM, Peng Fan wrote:
>>>> From: Peng Fan <peng.fan@nxp.com>
>>>>
>>>> V6:
>>>>    Add Oleksij's R-b tag
>>>>    Patch 3/4, per
>>> https://www.kernel.org/doc/Documentation/printk-formats.txt
>>>>    should use %zu for printk sizeof
>>>>
>>>> V5:
>>>>    Move imx_mu_dcfg below imx_mu_priv
>>>>    Add init hooks to imx_mu_dcfg
>>>>    drop __packed __aligned
>>>>    Add more debug msg
>>>>    code style cleanup
>>>>
>>>> V4:
>>>>    Drop IMX_MU_TYPE_[GENERIC, SCU]
>>>>    Pack MU chans init to separate function
>>>>    Add separate function for SCU chans init and xlate
>>>>    Add santity check to msg hdr.size
>>>>    Limit SCU MU chans to 6, TX0/RX0/RXDB[0-3]
>>>>
>>>> V3:
>>>>    Rebase to Shawn's for-next
>>>>    Include fsl,imx8-mu-scu compatible
>>>>    Per Oleksij's comments, introduce generic tx/rx and added scu mu type
>>>>    Check fsl,imx8-mu-scu in firmware driver for fast_ipc
>>>>
>>>> V2:
>>>>    Drop patch 1/3 which added fsl,scu property
>>>>    Force to use scu channel type when machine has node compatible
>>> "fsl,imx-scu"
>>>>    Force imx-scu to use fast_ipc
>>>>
>>>>    I not found a generic method to make SCFW message generic enough,
>>> SCFW
>>>>    message is not fixed length including TX and RX. And it use TR0/RR0
>>>>    interrupt.
>>>>
>>>> V1:
>>>> Sorry to bind the mailbox/firmware patch together. This is make it
>>>> to understand what changed to support using 1 TX and 1 RX channel
>>>> for SCFW message.
>>>>
>>>> Per i.MX8QXP Reference mannual, there are several message using
>>>> examples. One of them is:
>>>> Passing short messages: Transmit register(s) can be used to pass
>>>> short messages from one to four words in length. For example, when a
>>>> four-word message is desired, only one of the registers needs to
>>>> have its corresponding interrupt enable bit set at the receiver side.
>>>>
>>>> This patchset is to using this for SCFW message to replace four TX
>>>> and four RX method.
>>>
>>> Tested-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>
>>
>> Thanks for the test.
>>
>>> My stress tests pass on imx8qxp with this patcheset, however
>>> performance is not greatly improved. My guess is that this happens
>>> because of too many interrupts.
>>
>> Might be. Could you share your testcase?

https://github.com/cdleonard/imx-scu-test

>>> Is there really a reason to enable TIE? Spinning on TE bits without
>>> any interrupts should be just plain faster.
>>
>> I could try to disable TIE and give a try. If performance improves lot, I could
>> change to non TX interrupt.
> 
> After rethinking about this, we need TX interrupt, otherwise we have to
> use TX_POLL which is slower or let the client kick the TX state machine.
> 
> Compared with original method, this already reduces to use 1 TX and 1 RX
> interrupt. This already good for system.

Sorry, I missed that fact that your patches don't include the required 
DTS changes. Indeed that is only one TX and one RX irq per call now.

Running my test now results in RX timeout :(

-----

On an unrelated note: are you sure it is appropriate to change the 
compat string here? Another way to implement direct SCU communication 
would be as another channel type, IMX_MU_TYPE_SCUTX.

It also strange that you're adding a bool fast_ipc in imx-scu, do we 
really want to support the old path?

If SCU protocol was implemented as a channel type then maybe we could 
sidestep mbox_request_channel_by_name, parse mboxes manually and always 
request MU_TYPE_SCUTX.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
