Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61BF9A3CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 01:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8NUY3pBmRrogVdh9hxRIoHWWNOmHTcN3caqkzmcjAyo=; b=ZyrDmdzvLUIh1w
	EqgFAN7yjU2ZwNt0wcKrxajSr+sp9FMox9Dwpi0LRpYoDVKp3khKB4W9zy9FUn9uYr+6I4Y7HAya3
	DWVFMq5Cv/XmLgO05V6TNbUcUjUIjqAOBy2HAd/79nfpHXwkfDBXzrDUGWbhoCuJNGSVEwM2GlKjL
	pD2d8Pw4x5+qMKudDlIYcR6NrdSjmvg/vncdCa3S18yMUGVQsDtgLAhahcLpizpw6Ka72WgW7Inn9
	iqh6Mq6NLDHMBxM1YrXqBRplGFEKj9/W+VvtrpXhwb9H7D5wp2vBg/BvnypLvYK7Gh/E6DwYcSvuN
	hMFuJxSoN7NxG5T6Zsqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0wTu-0000DA-Ka; Thu, 22 Aug 2019 23:27:02 +0000
Received: from mail-db5eur03on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::619]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0wTl-0000Cj-52
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 23:26:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iqDr06FcpSyuoAqawA9pkNNi/c1YzVOGm/KGbot1TzDezgkDJSZ30iPTSGCGC8SlG74CSURzRtfEHhOk/OPskLquL5djVaJ8khrKr+KH/isX/yvPFZh+F+F549nlTiksqGGfgCKmxJndGiTv+dkcMTfKuGz9mP4mEpe5H5VNvTUT8SuV5yZyQViTPw4yvMjGBA8CRrQmdgOy0v23GDN+PBNf1WjTzUoMCvopfL+v3Nm1Pa3tFFZ9rPDscAGRyqWF5sDeBJCMIw4VBFmKSNdD8A1RPhN5/L2X7qj/4UdSzuuoFs2SMGXwPy1yBjpYu1sgdQtosKGlLKa6A6mID9pqSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AKGezJuiDZGt0BOthMbkHp+PTJEtwD8fgj/9Mhb3JYg=;
 b=ZvmQAYAkFZbbJGwfApJOHQfvPnzAD9V/mS2sCkmhF4SfrQnBF53yq1z46v31sRn41BnpaAsR7jGHjv61Y1kXZ1QL1X+rq7td4hMTmLhdO+LnziR/oho1bJfdIvkQ/yoqC5QbB/T/gh6roYKTfYXVyyU1+L+prLWixBsy5QoIilDqQmYv5P+GNyrP1tyuP/1c8xmL5uaDli3oEvHvczGm2iLDHW/0BRQGyk7L8ueDyK+8Xh1YwrvpQMHD/7k/q4MhdwKpcT64OSNXrhzLLkNfIVIoV1Rt56aQWLTsjGVt7wRaIh9WFqVQ++6MEIbBs6TF69wQDjBS2dPV+A9z1dFWow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AKGezJuiDZGt0BOthMbkHp+PTJEtwD8fgj/9Mhb3JYg=;
 b=Q/rO5tDtYcODFuHFzMxzk1kSC4RcbnL+Lw4oOFCGc5Ikl9TcrAqrzhQ+dmupbCX3S85Zhf76WCHrtGA/4ONVmeIqqSPNLmdPBd/PMqSF5b0P60B2aw5zwH0H8uQLiu7z+5H3kxdb41Ghopum5f82IKYy6crfPK3dDcxaAasLC8k=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5757.eurprd04.prod.outlook.com (20.178.127.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 23:26:47 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 23:26:47 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH] ARM: imx: Drop imx_anatop_init()
Thread-Topic: [PATCH] ARM: imx: Drop imx_anatop_init()
Thread-Index: AQHVR8oGvyTNCOZoFU6BqtEMTuzaog==
Date: Thu, 22 Aug 2019 23:26:47 +0000
Message-ID: <VI1PR04MB70238747C8EDB6C9A67700A3EEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20190731180131.8597-1-andrew.smirnov@gmail.com>
 <VI1PR04MB7023AE3910B261877892EEABEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAHQ1cqHBzFi80ZCa+jgs0Qy=dMP4yP7am1x-hMTxzb-8Zpok0w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [2a04:241e:500:9200:e6e7:49ff:fe63:c221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 171616da-cc11-4dd0-d6d8-08d7275833e0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5757; 
x-ms-traffictypediagnostic: VI1PR04MB5757:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5757EA71ED054958E4F71731EEA50@VI1PR04MB5757.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(39860400002)(136003)(396003)(189003)(199004)(33656002)(71190400001)(71200400001)(316002)(4326008)(54906003)(486006)(5660300002)(102836004)(6116002)(446003)(2906002)(186003)(229853002)(305945005)(6916009)(7736002)(99286004)(6246003)(76116006)(66476007)(66556008)(64756008)(66446008)(66946007)(256004)(14444005)(86362001)(6506007)(44832011)(74316002)(53546011)(52536014)(6436002)(7696005)(76176011)(9686003)(8936002)(81156014)(14454004)(55016002)(81166006)(25786009)(478600001)(8676002)(46003)(476003)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5757;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: v9Dn0mLju8xBgHX3MZrKtGY38r1EbrFojW0X1dyrmIEaaO1XEjXGCiLEM4sGjQbdDIrFYimF7lWak4zJDgWqV70zwnXkaqoI406kjeikEGRFXvVomXcxO/dzh+d/2/hGQh/fLQuPqttiKrhh0PiLyrQqoKuI3JeuaLW5KoK4EcBOqhMY/V2PfedgG27gV3ApxJ+cs+X+LvI5e4etakqahgWY6EcC2kL/w52AFClTeq04iqSUYEhln0yF4aGv2I8DWPfgsI3Fl3xB4o+ooqSujBrB1a0LD3sF51rnKEl8twguowz9Gl+mdNKcgFOh1RTYFivZ2Y8XxIt8py6iH3246QbRUyPmZOdldvKpBLx9sR0yfdiQ6UzOiCDeqJrOTiQZxJSicmfHt+YtcE6ufQWU3SGYFp0mg5wYAZPo4WhZplY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 171616da-cc11-4dd0-d6d8-08d7275833e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 23:26:47.5311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uqVlbPRZrPvjftyA/lOb/8h8F8lpwSenl3+oXIVITuetYEI1VlDXvce8w7ccUGORHkmvSyxqjiz/AdK6gFXMEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5757
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_162653_262428_A00EEDCE 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:619 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peter Chen <peter.chen@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22.08.2019 23:06, Andrey Smirnov wrote:
>> On 31.07.2019 21:01, Andrey Smirnov wrote:
>>> With commit b5bbe2235361 ("usb: phy: mxs: Disable external charger
>>> detect in mxs_phy_hw_init()") in tree all of the necessary charger
>>> setup is done by the USB PHY driver which covers all of the affected
>>> i.MX6 SoCs.
>>>
>>> NOTE: Imx_anatop_init() was also called for i.MX7D, but looking at its
>>> datasheet it appears to have a different USB PHY IP block, so
>>> executing i.MX6 charger disable configuration seems unnecessary.
>>>
>>> -void __init imx_anatop_init(void)
>>> -{
>>> -     anatop = syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop");
>>> -     if (IS_ERR(anatop)) {
>>> -             pr_err("%s: failed to find imx6q-anatop regmap!\n", __func__);
>>> -             return;
>>> -     }
>>
>> This patch breaks suspend on imx6 in linux-next because the "anatop"
>> regmap is no longer initialized. This was found via bisect but
>> no_console_suspend prints a helpful stack anyway:
>>
>> (regmap_read) from [<c01226e4>] (imx_anatop_enable_weak2p5+0x28/0x70)
>> (imx_anatop_enable_weak2p5) from [<c0122744>]
>> (imx_anatop_pre_suspend+0x18/0x64)
>> (imx_anatop_pre_suspend) from [<c0124434>] (imx6q_pm_enter+0x60/0x16c)
>> (imx6q_pm_enter) from [<c018c8a4>] (suspend_devices_and_enter+0x7d4/0xcbc)
>> (suspend_devices_and_enter) from [<c018d544>] (pm_suspend+0x7b8/0x904)
>> (pm_suspend) from [<c018b1b4>] (state_store+0x68/0xc8)
>>
> 
> My bad, completely missed that fact that anatop was a global variable
> in  imx_anatop_init(). Sorry about that.
> 
>> Minimal fix looks like this:
>>
>> --- arch/arm/mach-imx/anatop.c
>> +++ arch/arm/mach-imx/anatop.c
>> @@ -111,6 +111,12 @@ void __init imx_init_revision_from_anatop(void)
>>            digprog = readl_relaxed(anatop_base + offset);
>>            iounmap(anatop_base);
>>
>> +       anatop = syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop");
>> +       if (IS_ERR(anatop)) {
>> +               pr_err("failed to find imx6q-anatop regmap!\n");
>> +               return;
>> +       }
>>
>> Since all SOCs that called imx_anatop_init also call
>> imx_init_revision_from_anatop this might be an acceptable solution,
>> unless there is some limitation preventing early regmap lookup.
>>
> 
> Would making every function that uses anatop explicitly request it via
> syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop") be too much of
> a code duplication? This way we won't need to worry if
> imx_init_revision_from_anatop() was called before any of them are
> used.

It's only used from pre_suspend and post_suspend, everything else in 
arch/arm/mach-imx/anatop.c is static. Doing a lookup every time would be 
silly, it's fine to let this be global.

I was wondering if maybe imx_init_revision could somehow end up getting 
called before syscon/regmap core init.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
