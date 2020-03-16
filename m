Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF35186810
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nlTihD9s9KHLd1CiQOBV/2KgUpde6H4cQCgkzf64W8=; b=pyHBGh1Tg2Ikcx
	3prDdxjHZNuvFrhlKS+rzQh41KTYAecuGgMB+XWdWjLCI2pu08cQOKGvNSDePlb5LneBkYk4uQ65w
	GbEBxgbiMd5gQu/IE0mTSv0BnXFZdo0kweJIv5rYhswwrlS6Ciwm4pWvrZDEdLyNnnI3AA7wWG2Iy
	q80Ntp5/608sEXLta/FpqebERaQ/EzgAiiOfcEIRD4TInqjLW9yK1KOTGgD3mUwdxMs6xUrUfafu2
	/ZtioRCgo8MQOdylPSvKxYx4dwNGGuxdSJv/Yt3BVkwcwCT7wcP0hWIUWOQAegZAtDlMsAyyim/bb
	ZSsan7MmZjvgCxQWT+wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmF8-0000qc-Da; Mon, 16 Mar 2020 09:41:06 +0000
Received: from mail-eopbgr150085.outbound.protection.outlook.com
 ([40.107.15.85] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmEy-0000pm-7N
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:40:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9bBb7WQ2itYItnjSBm4jKcgmiLe3UdyNN1EfGwPsIQQr4VlFtQ4LGMYQKNpVeBIi7zuZJqGzGzlvyKYLx2hflOoEh63QJXlN9yyza4UlEiUKwxOrlh0yZTAmIiUE4fHTcnfMg89tSMOkxsk93E+AO1v1Jkri0jiikJpdn84iOHU5Kcy8x2l6whekN+D3wdLT5UTuvTyyz1S7fQSQjpLYR4ZOMatdWFOfjjuyqfBetfq7BLdAhvARWfe5g6NWOYxoMHysR20WFc3HA+lMzhqm9S+EakJZP9sD0qfqhTT9l/95uKjH+6IsPKGo/eM5W5wWjH/UtmnKyBPsLRmjkmT+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYcH6Ek+eSPa2IDUbUCvfzONDGKGmIk0fko9FvfEc/8=;
 b=CYja+UwfMyqzzVp3WljN+BPLA3OLk2p5xZ+3PXFk/hC4tDqPiss1SeRWaxPtdw7b6gHwjTCT1ylUVTx9HZmVyD6U8rqGRs0yjbZiRq3+69s5lBvZW/KhXoztWFcDVu0RCm2usKd5a4Igoy9D2176DhAbpSxI2mJ1tN2guq3WEFibY4I1KJUuDgV6nYOvNAYVs/Q3uv5B+RlMsSuicDsZ+sBY9Gngv966Ek/jSjSHquYBlUJl1VSAZpsh71sNrKV3bFH28wOVH4/8bzGU5x1MCTcwqg0By9yXkMFtRGp+/QZahWoKBBAM+YdVRK5eOLYp7Xl8i4pbhuQcM3x/Vg9HzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYcH6Ek+eSPa2IDUbUCvfzONDGKGmIk0fko9FvfEc/8=;
 b=sVPE5uD8t3b3RT2nR3dBnp9P91WIqiztikvVCUdnBgERPmxZaf4BgI/uUtSmRl4Adg6Kt13du2b/+x0yvoUHOPoTDVdZFYzJC6JsU95ll6tuYpAvq1XREVfU5JJ5jlJxRQi2aFMXYpCxqANtBPCKK9ghinroYYFxw1uGedfe+oc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3900.eurprd04.prod.outlook.com (52.134.71.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Mon, 16 Mar 2020 09:40:52 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 09:40:52 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av62LAReQhoZkKZ9LnT5dFdbahARTIAgAopwQCAACFfgIAABHaAgAADEYCAAAR+AIAASuWQgAAKpACAAABIoIAABUuAgAABn+CAAAKDgIAABdZw
Date: Mon, 16 Mar 2020 09:40:52 +0000
Message-ID: <DB3PR0402MB39169528B3FF39E23C7A90FCF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20200316005219.GD17221@dragon>
 <AM0PR04MB44819E4A9E027F1555C33D0B88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316030744.GC17221@dragon>
 <AM0PR04MB44817A48746601EADA4E06BC88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316033447.GE17221@dragon>
 <DB3PR0402MB3916DA9F0F175B9D2E9E684FF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316084056.GG4518@piout.net>
 <DB3PR0402MB391663DB37A8D241092AD708F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316090053.GH4518@piout.net>
 <DB3PR0402MB391683A05820920158DFDA77F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316091541.GI4518@piout.net>
In-Reply-To: <20200316091541.GI4518@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 31c6ab02-483f-4042-91dd-08d7c98e1e2d
x-ms-traffictypediagnostic: DB3PR0402MB3900:|DB3PR0402MB3900:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3900703A9650AF7157C38935F5F90@DB3PR0402MB3900.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(366004)(346002)(376002)(199004)(4326008)(2906002)(76116006)(71200400001)(52536014)(6916009)(64756008)(86362001)(66556008)(7416002)(66946007)(81166006)(66446008)(66476007)(33656002)(7696005)(186003)(54906003)(8676002)(478600001)(81156014)(55016002)(8936002)(9686003)(5660300002)(26005)(6506007)(316002)(53546011)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3900;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HpX8Rr3Z4W9BpQu19ufXyio0zmgQqaTWH6e2aVb9Wbt9bVRcZyMvDLshZlpucvZ7R+Zi3+DbSU1Mna1gQNzVGpNtWyzuxbSo4uZJWZ7u2WrwqMyuM9BeYhh+fgHL/L+UT5WNJqKyc2Zy05NAXJv585cbTNGMkkvU3tBHkghahZGiO0osm5yuuD2GUeZ9IgIbR1beomwKX81xj7W/syLK6m8eb2Dw2QNJjRU4CfQ7tFoWfogi5fzawhD5Dpr+KRlOPxn6ykyVUG93HVKrpXK0sEH6cirLK+vdBW7AivIHkzuQ1XjKdCxPxYj+vEx9w1u796nJgsYnvLYXGqj1P37z1eu+WAjYb72F9g/xJtSynmhMjSQylebQu5Za1YSAxvUxxYx31y3e+sXKbrf7ktpyKhPXPkXsQgCgau3MwG9EdFy1h89QkX/y3Nc5tRoj92PX
x-ms-exchange-antispam-messagedata: MQc7LacyhxUFQFNsHqgHfPnQiVCS8NKghVf+mpD+jgd2kOSFe9Ky+XBZD9SpBvhm85ktqguUjb1xCOwoT7TJDhUnX9IHmd2ShCX0Zv8x6L6GI31gKmtRs856VejAfJ5sc/0UD1pl8EC44QqbPs92GQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31c6ab02-483f-4042-91dd-08d7c98e1e2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 09:40:52.3347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i+kRr4h0DYdESxKo6DU0yBrBfeyVGy+Aws5hxcaRjdKWZZbzVsAb6CFAjxqncKpobWMGdCSy0E36Pal4Vc0X2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_024056_269185_0E181F78 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.85 listed in list.dnswl.org]
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

Hi, Alexandre

> -----Original Message-----
> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Sent: Monday, March 16, 2020 5:16 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: Shawn Guo <shawnguo@kernel.org>; Peng Fan <peng.fan@nxp.com>;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> dmitry.torokhov@gmail.com; a.zummo@towertech.it; rui.zhang@intel.com;
> daniel.lezcano@linaro.org; amit.kucheria@verdurent.com; wim@linux-
> watchdog.org; linux@roeck-us.net; Daniel Baluta <daniel.baluta@nxp.com>;
> gregkh@linuxfoundation.org; linux@rempel-privat.de; tglx@linutronix.de;
> m.felsch@pengutronix.de; andriy.shevchenko@linux.intel.com;
> arnd@arndb.de; ronald@innovation.ch; krzk@kernel.org; robh@kernel.org;
> Leonard Crestez <leonard.crestez@nxp.com>; Aisheng Dong
> <aisheng.dong@nxp.com>; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; linux-input@vger.kernel.org; linux-
> rtc@vger.kernel.org; linux-pm@vger.kernel.org; linux-
> watchdog@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> case
> 
> On 16/03/2020 09:08:53+0000, Anson Huang wrote:
> > > Why do you absolutely need to compile them independently? From a
> > > code coverage point of view, having:
> > >
> > > COMPILE_TEST=y
> > > CONFIG_IMX_SCU=y
> > >
> > > is enough to select and compile the remaining drivers.
> >
> > What I meant is for below case, like using other arch config which
> > does NOT have CONFIG_IMX_SCU selected, ONLY with COMPILE_TEST
> > selected, adding stubs for IMX_SCU APIs can fix such scenario.
> >
> > COMPILE_TEST=y
> > CONFIG_IMX_SCU=n
> >
> 
> Why is that an issue? If they don't have IMX_SCU selected, then the other
> SCU driver are not selected either, having stubs doesn't change that you will
> have to select at least one option. Please explain what is the issue that is not
> solved here.

OK, what I thought is even without IMX_SCU selected, other SCU drivers still can be
selected for build test after adding "COMPILE_TEST" to the kconfig, like below, if
without IMX_SCU API stubs, the "COMPILE_TEST" can NOT be added to SCU drivers
to enable build test, so I think the IMX_SCU API stubs should be added?

config KEYBOARD_IMX_SC_KEY
    tristate "IMX SCU Key Driver"
    depends on IMX_SCU || COMPILE_TEST

thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
