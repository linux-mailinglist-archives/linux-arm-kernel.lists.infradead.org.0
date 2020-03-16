Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEB51868CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 11:18:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LBLT+CtnN5vvvQeMI4atyGtTev9lfeTsbRaXWb7ue0=; b=ZKFscdtkDIceKS
	p65ShLwlsJvgpbQ6j+MpfsVbXj+X2K5WTi1EVd5rjXO2TqxI9k0VvH4aL64ewfpGU+D06TDQqrOV4
	kHsYJAG92DNAcKJbXGjDyfJZF++rD0pNhdoENvNOY8WtJ0FEfjMJv0rb1EWl1pDQxjNeTlkT+ueCu
	yk+A898tbOHwtHPtswFyLkIMdyOH+qR54kG0V6CNf9aAWmuarhssqhe11DdrnDaaAiePup02b7qnm
	DMltnpjvlSX6TWgzbRFygvjTy9ZPUons/Gh6YjOtalBEBmn+A6aRwFzttBJzhQ/jhcmZbJCTpts/W
	RTx4yURJih8Aa6akXb8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmpQ-0000aT-7c; Mon, 16 Mar 2020 10:18:36 +0000
Received: from mail-eopbgr00074.outbound.protection.outlook.com ([40.107.0.74]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmpG-0000Zd-BI
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 10:18:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GqEqdJBsTxv6mbgra3wF69F+uhNHVaAcROHEjP0tHcJrCgTjNds04OeNx4VyrKiNkVBwE90rgKW98Q0gqN8SiT3xCH6ccnyuNvnDdluFieAC51qoZg+EEzxQ1wZMZUbOmhF9/sneZr6wP6G11mWz3SNouJH/C3d6TH7UgUbsSZBZhGGzSS5qXC0ik72Ui0vVNHEevy9tmhWwKwXZgSrwV9K0At6Yks8cwQsh4QgopPo4huum7SFgjNniPQwmBAHjmeEtT0PzUo9+VMNGHEw/FAgBQdNsCCh2y7hSyhANf/UlLeXm7sPnza6JsZXdbZiUzacMdmolCXpVm7jAOzEYMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B6s2FdtyG0cmPEEhSbx4w6x5jgjcivBIWfArPsvWMxY=;
 b=aQWb+HQ3iFM+RGKCGph2IJSXQr24kHeOKZvI2vzw3amxGM5MktXczBwhEfY2gBRhLf9d4BaRWSg1Av1jw3SEljLCKGQDIn7WGaxnMMoYIez3zuuhki9gTOyEoIGbQ69XexTtIdZfFvurI4cgzd7Pd7R9Ngbhd8zswgrthsA/q0H42PmbxSgXeecVJyaG3g92OVpxBemVLRlGMbvD8UnXxeX9oeHa6fSVpBWBUYl/ZqjhSm81hoZBgYaYMUU9eXstGPB/zOaebJgvapGdK/9wfOR9XhFrJ0AdBqLB/iie8MzL16ZwKIuWjrqvrJ6L4Kazhv+sMKcnvwJcYbf27rol/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B6s2FdtyG0cmPEEhSbx4w6x5jgjcivBIWfArPsvWMxY=;
 b=mxAcSsJu2R1GM0GorrLIMltGi33K2ZThoSVqKpO7iAwvN0B6EPSlbksf/tZlVxGZs5Fi2sm0FR9msJMyOK1Ip84UJOvvdJ8GthbFV05q9i4N5xSFS8JgDrD9nTKn82kyvjnXPosrCxhelRl+oHOqNRPu0tTpaI0xQ6siSr0xozM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3771.eurprd04.prod.outlook.com (52.134.67.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Mon, 16 Mar 2020 10:18:21 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 10:18:21 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av62LAReQhoZkKZ9LnT5dFdbahARTIAgAopwQCAACFfgIAABHaAgAADEYCAAAR+AIAASuWQgAAKpACAAABIoIAABUuAgAABn+CAAAKDgIAABdZwgAAGoICAAATqwA==
Date: Mon, 16 Mar 2020 10:18:21 +0000
Message-ID: <DB3PR0402MB39162BD818145F57C5CBBCC3F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20200316030744.GC17221@dragon>
 <AM0PR04MB44817A48746601EADA4E06BC88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316033447.GE17221@dragon>
 <DB3PR0402MB3916DA9F0F175B9D2E9E684FF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316084056.GG4518@piout.net>
 <DB3PR0402MB391663DB37A8D241092AD708F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316090053.GH4518@piout.net>
 <DB3PR0402MB391683A05820920158DFDA77F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316091541.GI4518@piout.net>
 <DB3PR0402MB39169528B3FF39E23C7A90FCF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316100017.GM4518@piout.net>
In-Reply-To: <20200316100017.GM4518@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: eeb64d91-d511-408a-d6f2-08d7c9935aa6
x-ms-traffictypediagnostic: DB3PR0402MB3771:|DB3PR0402MB3771:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB377184575E74DBA8F9D5CD77F5F90@DB3PR0402MB3771.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(39860400002)(366004)(376002)(199004)(52536014)(66446008)(9686003)(55016002)(66946007)(71200400001)(6506007)(2906002)(66476007)(64756008)(66556008)(76116006)(7696005)(54906003)(316002)(86362001)(44832011)(6916009)(186003)(33656002)(7416002)(5660300002)(4326008)(8936002)(8676002)(81156014)(81166006)(26005)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3771;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mkAXsuj1fL9vpJsvVLMTjZwMKXI2hhJ9j9li+vXJGCBXrcbCDubffe0CEUT4N9q2xFHfQ/ConVfUwU25j6p0OjiBPMwQDaRRAmSKbPoS3yOTqWXqCynW4iFwgQdGnM8TnVLDkQWr8lLt11G9vq4KiGhZxS32mdmk4amzmXD8htYnyU7Ed1hQbOpnkBMv8ex9zaxqR6lO6cuXptWt+IFkGz9vvQFOqPJOSzKJXda2T5k4MgoGDv1+4DJvZnuULN88QMPGKTR24vBjDTP9fOj9QuJeO0knc7WWla2PLBJWH+9KzWPisAZB3CuLGAob7CSRNQjrPtiqATd+4+dTklN0B4GPHwS5y94HuNgKe0wGSFbbYa5nem1X54NrjJKF5cR4sBj+yHlA+sZmR+G4AnDEfTYdxHecoWumBCCNwbUj9yPWCbMpwXSVGA8i/+Jea3X9
x-ms-exchange-antispam-messagedata: IdKwMxScy4WZZ+yRX0puITeYvu8VVDp6Ci+mKbmbz2RzYf70FXy/Ao3MDyeZPXqQs+haS6oJPwYzl2WFP+8u+ORXW1GVvnCWiMoFcPoJoPFjDTgFHry54gAHVX26z0Cs+uU9x5u8XrQi3+LHc2k5bQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eeb64d91-d511-408a-d6f2-08d7c9935aa6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 10:18:21.2664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tAp1/vA1u9dm9yfaeFk0IDjhmcPaah5Jg/od/7t6hROW1KNBK5mGbIELzLKByEBVUe3dpz2yIsqQZhvsgjG30g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3771
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_031826_503930_63BB1645 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
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
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> case
> 
> On 16/03/2020 09:40:52+0000, Anson Huang wrote:
> > > Why is that an issue? If they don't have IMX_SCU selected, then the
> > > other SCU driver are not selected either, having stubs doesn't
> > > change that you will have to select at least one option. Please
> > > explain what is the issue that is not solved here.
> >
> > OK, what I thought is even without IMX_SCU selected, other SCU drivers
> > still can be selected for build test after adding "COMPILE_TEST" to
> > the kconfig, like below, if without IMX_SCU API stubs, the
> > "COMPILE_TEST" can NOT be added to SCU drivers to enable build test, so I
> think the IMX_SCU API stubs should be added?
> >
> 
> No they shouldn't because there is not point adding COMPILE_TEST to the
> SCU drivers. We don't add COMPILE_TEST to all the drivers and add stubs to
> all the subsystems. E.g there is no point trying to compile an I2C driver if the
> I2C core is not enabled.

OK, make sense.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
