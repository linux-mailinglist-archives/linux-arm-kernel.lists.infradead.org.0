Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C8E3B5D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kamq6U1RXmNZcutVAxYFkkWR760PHwDbIgRJbG5gkdM=; b=nf3kJy4UjMCujD
	pJyxTApU5DvekgjpXoROT3hs1wElm9oq6BofZNo9+X4nyA5EWcD+m/EYCCLh6irXkO/d8r8RU/BZd
	w0O2W336MCvzN/TQHq8kBaYAwDCPdZV2r+3hOx3Aceh8b4q/WkW2mSM1SYL7u4Q54ZxL6CAc8khXS
	WCghTIGty0wvQK5C/p0dkXmnnXwxhuM4AhC8R9Ua27Cjdf1U4mb5T6tMdzfg3/lpI/ZvxUKwYcts6
	FUybZrHhC+yFYj6/vYFSuOMxiPpJ+yN9NeKLDulhfgG/jlaq/Q3ZYTu/phgBV61E7l3ivB9BXkMvi
	fwq6P64ueWiHmYxDxBoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haK8r-0007VU-0e; Mon, 10 Jun 2019 13:15:17 +0000
Received: from rout1.hes.trendmicro.com ([54.67.23.0])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haK8g-0006wR-Ky
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:15:08 +0000
Received: from 0.0.0.0_hes.trendmicro.com (unknown [10.64.0.51])
 by rout1.hes.trendmicro.com (Postfix) with SMTP id 1E2CDEFC06F;
 Mon, 10 Jun 2019 13:15:04 +0000 (UTC)
Received: from IND01-MA1-obe.outbound.protection.outlook.com (unknown
 [104.47.100.56])
 by relay2.hes.trendmicro.com (TrendMicro Hosted Email Security) with ESMTPS id
 60483C48017; Mon, 10 Jun 2019 13:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thinciit.onmicrosoft.com; s=selector2-thinciit-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUlhW0rBhrKggUM3MS9YoB8Wsmpj4X+v7j0BnYGUG/A=;
 b=tI2pDUDlHaxr8eBFHHMNIF+LMYJTIUmbz3UVmVH62aC6gQmcr2Q3rc4OHGbLk4mEjaFdrd9vOIZBjBJ54/JY8JB0+7X9fKgLzXeZWV4pkd2/lPQ4vO0/A7Ar6UeYam9iP0eKKJXv/s6Af7tUvWGv/hndhuC7bjOGBSiWgzB0hcU=
Received: from MA1PR01MB3963.INDPRD01.PROD.OUTLOOK.COM (20.179.239.80) by
 MA1PR01MB2315.INDPRD01.PROD.OUTLOOK.COM (52.134.147.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.16; Mon, 10 Jun 2019 13:14:56 +0000
Received: from MA1PR01MB3963.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::29f7:2b8f:2837:67e9]) by MA1PR01MB3963.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::29f7:2b8f:2837:67e9%7]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 13:14:56 +0000
From: Matt Redfearn <matt.redfearn@thinci.com>
To: Anders Roxell <anders.roxell@linaro.org>, Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH 5/8] drivers: media: coda: fix warning same module names
Thread-Topic: [PATCH 5/8] drivers: media: coda: fix warning same module names
Thread-Index: AQHVHEzmHmKZqQFlTU6BnaS1W6flKaaOaFGAgAZ4/ACAAAMNgA==
Date: Mon, 10 Jun 2019 13:14:56 +0000
Message-ID: <c2ff2c77-5c14-4bc4-f59c-7012d272ec76@thinci.com>
References: <20190606094722.23816-1-anders.roxell@linaro.org>
 <d6b79ee0-07c6-ad81-16b0-8cf929cc214d@xs4all.nl>
 <CADYN=9KY5=FzrkC7MKj9QnG-eM1NVuL00w8Xv4yU2r05rhr7WQ@mail.gmail.com>
In-Reply-To: <CADYN=9KY5=FzrkC7MKj9QnG-eM1NVuL00w8Xv4yU2r05rhr7WQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0375.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::27) To MA1PR01MB3963.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:7f::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=matthew.redfearn@thinci.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [87.242.198.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3aa84816-6007-4985-26af-08d6eda5a209
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MA1PR01MB2315; 
x-ms-traffictypediagnostic: MA1PR01MB2315:
x-microsoft-antispam-prvs: <MA1PR01MB2315ED05C410E7831765BA13F1130@MA1PR01MB2315.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(346002)(39840400004)(366004)(396003)(189003)(199004)(6436002)(6486002)(31696002)(6246003)(6512007)(476003)(478600001)(66066001)(25786009)(486006)(4326008)(2616005)(7736002)(305945005)(54906003)(66556008)(66476007)(68736007)(31686004)(71200400001)(66446008)(71190400001)(446003)(73956011)(11346002)(110136005)(64756008)(66946007)(14454004)(53546011)(26005)(3846002)(7416002)(102836004)(81166006)(99286004)(6116002)(36756003)(229853002)(81156014)(5660300002)(186003)(6506007)(14444005)(52116002)(76176011)(53936002)(316002)(8936002)(386003)(256004)(8676002)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MA1PR01MB2315;
 H:MA1PR01MB3963.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: thinci.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Z9sH78Rn7KNwI7c6spiG/yFNBT+Z3/d+9DhzGdaXHj2cqaY0cbJuCBmh/+TuN6TjOI58kKkrq5M/l1/PrdJhqsBBIP8kHl9/qGI8gZ7cF/tZK/3aD5xR+doV0+PsE1lG8ECpNUpKqj8PJTLzY9zctjI+iriRObP2zcdS3D3yHMl3zWd5w43T+F1MSDK9Dd6HHWBTMVzRoB0QRmCVFg8t64Lc7VMCp05txqVUsVyYbK7tzPUwyUb2Ve1/l/HewE1HoZ/uV2kQopJeYphBLLssLeB1O9UtzHL4r+A6mnuSq6671upOM3Qb50ieSZIA50TGCqybOk2XQF3Rv+EN5X5adsWkyVjNSw0AzC8HxdlWLDGCXa6Pirz6qmKfq/DebGWY1/Zt0srS682cDthxCPPbwlbripAuO/k7/EkEolIHauA=
Content-ID: <83A8D730AC8F424FB5AD321EA46023BA@INDPRD01.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: thinci.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aa84816-6007-4985-26af-08d6eda5a209
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 13:14:56.6687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9d1c3c89-8615-4064-88a7-bb1a8537c779
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: matthew.redfearn@thinci.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2315
X-TMASE-Version: StarCloud-1.3-8.2.1013-24666.000
X-TMASE-Result: 10--9.674200-4.000000
X-TMASE-MatchedRID: hls5oAVArl/c921WuZy4LvZvT2zYoYOwC/ExpXrHizzI13IEGi/Kk/Vl
 5vsoSSsoekEtDmHYp/k8zgHmpLzZp1/8tX/1KHzF/03t7eXCTBt6i696PjRPiJe4rIe5ItN8tZX
 KImxf+cFOgZA41QBeiY9CL1e45ag4w4mZjhdFeRXwoYkKJX7f8qbwyy5bAB/9T7zqZowzdpJsZN
 KjFdGXFlcPm8xgT5ExjC970acVks94mxFNFWno5/VY7U3NX8Jg+LidURF+DB318H7gy96lDKPFj
 JEFr+olUkOfGeXobzQ1NebtJxIilNLvsKjhs0ldVnRXm1iHN1bEQdG7H66TyF82MXkEdQ77AhDf
 rKTIID2QgB2b2qMifk9om7U1Hgkv8tFXTrGjKwiQwDVygjlXpw==
X-TM-Deliver-Signature: 6B5F4C92B27942A2C4992300E9399402
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_061506_787709_5257605D 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [54.67.23.0 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, "stefan@agner.ch" <stefan@agner.ch>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>, Lee Jones <lee.jones@linaro.org>,
 "marex@denx.de" <marex@denx.de>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "vivien.didelot@gmail.com" <vivien.didelot@gmail.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "b.zolnierkie@samsung.com" <b.zolnierkie@samsung.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Mark Brown <broonie@kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 David Miller <davem@davemloft.net>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/06/2019 14:03, Anders Roxell wrote:
> On Thu, 6 Jun 2019 at 12:13, Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>
>> On 6/6/19 11:47 AM, Anders Roxell wrote:
>>> When building with CONFIG_VIDEO_CODA and CONFIG_CODA_FS enabled as
>>> loadable modules, we see the following warning:
>>>
>>> warning: same module names found:
>>>    fs/coda/coda.ko
>>>    drivers/media/platform/coda/coda.ko
>>>
>>> Rework so media coda matches the config fragment. Leaving CODA_FS as is
>>> since thats a well known module.
>>>
>>> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
>>> ---
>>>   drivers/media/platform/coda/Makefile | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/media/platform/coda/Makefile b/drivers/media/platform/coda/Makefile
>>> index 54e9a73a92ab..588e6bf7c190 100644
>>> --- a/drivers/media/platform/coda/Makefile
>>> +++ b/drivers/media/platform/coda/Makefile
>>> @@ -1,6 +1,6 @@
>>>   # SPDX-License-Identifier: GPL-2.0-only
>>>
>>> -coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
>>> +video-coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
>>>
>>> -obj-$(CONFIG_VIDEO_CODA) += coda.o
>>> +obj-$(CONFIG_VIDEO_CODA) += video-coda.o
>>
>> How about imx-coda? video-coda suggests it is part of the video subsystem,
>> which it isn't.
> 
> I'll resend a v2 shortly with imx-coda instead.

What about other vendor SoCs implementing the Coda IP block which are 
not an imx? I'd prefer a more generic name - maybe media-coda.

Thanks,
Matt

> 
> 
> Cheers,
> Anders
> 
>>
>> Regards,
>>
>>          Hans
>>
>>>   obj-$(CONFIG_VIDEO_IMX_VDOA) += imx-vdoa.o
>>>
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
