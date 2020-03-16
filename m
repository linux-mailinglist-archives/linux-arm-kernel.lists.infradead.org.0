Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF72F186373
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:52:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbVg1J8xZMqKyZ0dlx0lQfmTJ7C4ypwi81hptsEziSQ=; b=BJoRpm49/JQ+H7
	penUUiU6QqOD7xYUrwflKhCmeGd15Uv35qCgmfKDn9YCxsM8Mlphu3eexQgEx27x4bV80Cd57QMvW
	Dpq8mqLJyAmV8InaA1BmAdX/Zjq5G3pwyg306oIy5fsUW4Qs3QlqbFvHIYmPSyezC/NFC6IHIk/vE
	w0fgyVG/bm/p3J8d1NZWBynIIP+tpYIStPMn/YVIV+8VfZVUIWxS7/4nLlJkFiiAVrGs4+g3JGU62
	aJEi1sjaJpOnJrGe5poZ+0dHJ6cmfWi0xq0onLMESuHGc8dr503ImMZHukAw2HtoTwpkonHJIqKtC
	vfkhdEEz8hiOB3PfNykQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfrK-0004xG-AJ; Mon, 16 Mar 2020 02:52:06 +0000
Received: from mail-vi1eur05on2073.outbound.protection.outlook.com
 ([40.107.21.73] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfr7-0004wt-OL
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:51:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KxTQXlKo5y/A16QkG4Mrm06hXnCMPGeHdPCuPtJnxh0AM5wI5kobPt1mtERK4/RlKSSMvmYlc+GXhiTzutXSro9Zvou5KDDXF/TU3uyeC8XMIbqGs4kCG9c9sUcjGEcGpe3nIbrWxmsOFry1bGlyAX7x//h/iYFWtQCUbkLeqmGjA4uw4oxR9snG62IiPGJTFzL7+wTPA67BevFtwYsJvgwB8Y88Q6uv0llHXVMf/9c+LF3dUcljKGjs5yIrseo/uINh+AW2WRRxtwwuXuH5Q+87RqSrf/N5rsImwnF154N35zzIck/01n3eBU51MXNNKEFeznnhjckgvhgtNCu18A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XwlZXbjAkYVUzXP6NN5n4UHDnIJDONemRm9g03ueQwI=;
 b=QH/O1vPrPeJGiz2JDGhDHzmyCkYwwxKd1n1R8w7d4eW8DPmu/eYEiLMtmJ98RlbbINkJSfGsOnzYyn9zgSdnos01eUAbNrKzeCg6I3mkK7wO9MuxJlAf3DfzZZUnQfn+iOEf9SSErNbkWRHewEJettQwQom4Ey0hCis7KR8cSe3OBOydQjz4y1O/hahzBAk+TJBOtsQEPqBcZH9+1We8IlbwHFQTUAXSwmiEL7mpwps0j0utIufTcRavFYp3t0QiPaWNb6+OLnR6T4mByA1LDUcIdtWiKac7dlFvaY8lqIDqxgCELu223ISLtf+NGl2eFvZYoF/TiQpYfHwrPOdOKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XwlZXbjAkYVUzXP6NN5n4UHDnIJDONemRm9g03ueQwI=;
 b=EnlynJnbe4Y5NwU0CRn4t5WaBjAbkvnwo+oEatOcUjyHOB6ttwPUXyqZnB/vLP6sMlYKL/j1xg/Lo+hdCr55uwj3sL0KdM2JDyp/sX1tJ3zRVEFKplq0EqRT1CwBUpZmOZUBjp223tUf15uGuSSAZI2VQjnttx+jWgrxpGIvS8o=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4434.eurprd04.prod.outlook.com (52.135.145.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18; Mon, 16 Mar 2020 02:51:48 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.019; Mon, 16 Mar 2020
 02:51:48 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av6lP0y7UryDUCSkdoJ2q6AXKhARRTAgAop3wCAACC+IA==
Date: Mon, 16 Mar 2020 02:51:47 +0000
Message-ID: <AM0PR04MB44819E4A9E027F1555C33D0B88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4481F087AC3CDA691300710288FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316005219.GD17221@dragon>
In-Reply-To: <20200316005219.GD17221@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [121.239.103.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 808b5ae8-4eb5-4f58-3b80-08d7c954f8a0
x-ms-traffictypediagnostic: AM0PR04MB4434:|AM0PR04MB4434:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB443457A914D259751E2EBBC988F90@AM0PR04MB4434.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(136003)(366004)(396003)(376002)(346002)(39860400002)(199004)(44832011)(4326008)(7696005)(8936002)(8676002)(2906002)(55016002)(45080400002)(81156014)(64756008)(6506007)(66946007)(66446008)(9686003)(5660300002)(81166006)(86362001)(76116006)(66556008)(66476007)(52536014)(54906003)(7416002)(71200400001)(316002)(186003)(33656002)(6916009)(26005)(966005)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4434;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ga5+ka3og3smxelogrUwYl8sqD346+bn35d1R7qVc7TVnZMrz9rM+XThxd48o6WlQwLPNtFfvHC8XOEeDX23KUC4TyOB29nG1iMnmcAQisnfbgntSRPlPKGqqaVCe1LICS6qHESO3rpRwCFGSReaza1ZN0+XyBh5o1vX3oV8kgVvESEjc0vTuW2+U8FJ28+AzozmTsP+7yg+hRWvXhwBuJb3o3bpaSwq0ifM1O5fJu/pOkBhIDP/F15S1o6ZHM7LDsFddnoLw47txSXlI6bnhyvE0rsJjYZhaUurtKn0Jfe04JN3XT6gUQmpetERtm2Lvu6mX05zBS3N4n5LDJIGasYQLxO/VX+hQky3X3MRbuptGGD+Nt5HYUpP7kAkZoh4KRZfbQNUUptb6oN6Qn23fysjsc++nNNBiOzDIvTkH6oeNomaH099E5vWKAp6t7pG6gi7q8LkcbyjvGiKDcpdyDzdmqdWhgQjBk5Q5rI7I3fAJAmC7GremUAZx5qIZBrBQueKJnwYDhqVSGJbMPRrtNJ9F8lnv3lOjxneB+1UjiPcc0GHOOtT5K4Debtbu8MdbAh5iyFhUF6XPHf94HzKigmwbt5OQJ7ewOaUiq39BVTGcyItzARqQJPSvy7i9IFW
x-ms-exchange-antispam-messagedata: nv9f26/EN6MyI0Vk+jtwNfxJh3uevP7J3PBnSkcsyuDy6g9FC+y87u6NDVIO+erEf/24O9PWRgLbrYQwUpOLdPpkd6I20SEjrBsuhe8NboUHL2RjyDGtOr3qweDkEODMi2jqlGNLlOt9EE+/cvPPFg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 808b5ae8-4eb5-4f58-3b80-08d7c954f8a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 02:51:48.0431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wZiPBvZuAEjAaCBeAt/xM+CdmHtBfgu7mCRH/3DmTPCE3Awxe7xN4O4p4GW9nTJlO7spoqSpWaBliq3xd5Ie3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4434
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_195153_904857_728CB184 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 Anson Huang <anson.huang@nxp.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "a.zummo@towertech.it" <a.zummo@towertech.it>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

> Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> case
> 
> On Mon, Mar 09, 2020 at 01:40:18PM +0000, Peng Fan wrote:
> > > Subject: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> > > case
> >
> > I have one patch pending reviewing.
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fpatch%2F11395247%2F&amp;data=02%7C01%7Cpeng.f
> an%40n
> >
> xp.com%7C995815002e2b490791e008d7c9445133%7C686ea1d3bc2b4c6fa9
> 2cd99c5c
> >
> 301635%7C0%7C0%7C637199167574579419&amp;sdata=RM4Mtwl8LZ3ft9
> 3uL3FQPcHT
> > 9lPHSqBOgugozkcLvag%3D&amp;reserved=0
> 
> I dropped that patch from my queue and picked patch #2 from this series as
> the favor.

I think dropping that patch might cause Linux-next build fail as previously showed,
because IMX_SCU_SOC depends on COMPILE_TEST. If you drop that patch,
also need to drop COMPILE_TEST from IMX_SCU_SOC.

 ld: drivers/soc/imx/soc-imx-scu.o: in function `.imx_scu_soc_probe':
 soc-imx-scu.c:(.text.imx_scu_soc_probe+0x44): undefined reference to 
`.imx_scu_get_handle'
 ld: soc-imx-scu.c:(.text.imx_scu_soc_probe+0x134): undefined reference 
 to `.imx_scu_call_rpc'
 ld: soc-imx-scu.c:(.text.imx_scu_soc_probe+0x20c): undefined reference 
 to `.imx_scu_call_rpc'
 
 Caused by commit
 
   68c189e3a93c ("soc: imx: increase build coverage for imx8m soc 
 driver")

What do you prefer? I personally think dummy functions would be good.

Thanks,
Peng.
> 
> Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
