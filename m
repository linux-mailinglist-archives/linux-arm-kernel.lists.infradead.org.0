Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBF81877E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 03:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=re4pVHFn9irA5t9F8FLdQifXvcZUvP522/k4droNJzw=; b=VrUmijStfzxE33
	GNDZloCqLoGQ17DGBEXL8K7pkqb64ecv0xoNX0rDBpbx6Nz4joQUDY+cd9KyeTQdpM8bIJgok4+y4
	56wDxDXjcGzeMGWS93+yMnrX0ay4yVV2R42/kvIGU3W6QSiLQWhTGCP4z0pDzLMUaz2c2RgP+io/l
	g+ZSVx+lmLkyWIKa9/grGcDDHbGVTRPsIwg9RT9EyQ9Ajxl1U1HSG7MXTiFl9/09Lm/V1Xv+nMD55
	LQxW7gSielZOYhiTE8w6zD55SEfrnpl+BUcv7vSTLoFlA29Ro2KDQvrmmTXdq+F+VyDkEtknNs4fB
	nlaXTlYr0mmvm+GaOl4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE24o-0004xd-A3; Tue, 17 Mar 2020 02:35:30 +0000
Received: from mail-db3eur04on0621.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::621]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE24d-0004us-2j
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 02:35:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z9tomkOGjwlLeM6/x7BVFxaP/ktQikCsd8rSSD5Xxb/IZvxUzAzCnVU5NVN1J9xJ7D/AeLGQ2/VVCsmpccdRTKCqdLiuZEJu0pDxkNl0QxOEvMjXOvYGrXFf83u5ZG4bfRA0lNjRi6cFR6Gv+P3HX27JhI+iILGWhwiaeMIOL13pNoqpscugvkUZ9lp60nlwrB1H5GoQVDSpjSOtxxZuPQQVF3jUlm64p/KD+vRLOQKgR/8eFkATs1yt2Fh164sXM5qkq4gwR20+s8ykHZAWM1CNJ+xRUSI52GSRl2Q+1ptR6ieV6tHH5ehWFlQYmtcBLGTM8jFEWnEXl0KJpjmyqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+NYqHSmaa0fBdc/KDbiGtkPs+BO62E0Ys3++B97g4k=;
 b=DL3Obz4RclVWWrA2Dc265f6ECkT07iixSyG9aVAqK/e4/2CReyjnwRrja04FRTJy+aPPlSt+Nl94ZMHBTnKLvJHyon/RGVaNJpDJKo4jp8j1Fc1BCu3PDL4pJbYy0NroesVLeT1QI5qmeKV74SIYtP8QgWfkYcAnvmDopCRgw5soB9cxAESsWsgGLtIgsXudIiJ4RaLWNHgtcpJvVq8fGIJHkHJN6STVb0gBWBVa4B1ZVKnvgGTfMfCzb1gwlkhgndGoTii5x0Fg8185ZvOUOArOzZbop9y2mxXrSrDWFRz9ZOEbfvT7RRbSJ97eP+45l9mGRI/GP4TT1bylgTTbVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+NYqHSmaa0fBdc/KDbiGtkPs+BO62E0Ys3++B97g4k=;
 b=JBiF2891vczXb2W+U+Kh9dsXUkNgDOQykkDOP1FVj1DNZMOHqy/HjucIf409Uyn00RSIT1qQYIeANF1a/XzNbrA6hGirXzYPb36b+8gW2M9S/UujOilb7UTIwUn1DcElkq+5jaxcTxSJbtxOVC5j23caJ/grTsPXxf32M9p3R6M=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3867.eurprd04.prod.outlook.com (52.134.65.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Tue, 17 Mar 2020 02:35:15 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 02:35:15 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>, Peng Fan <peng.fan@nxp.com>, Alexandre
 Belloni <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av62LAReQhoZkKZ9LnT5dFdbahARTIAgAopwQCAACFfgIAABHaAgAADEYCAAAR+AIAASuWQgAAKpACAAABIoIAABUuAgAABn+CAAAKDgIAABdZwgAEX1ICAAAQYAIAAADvQ
Date: Tue, 17 Mar 2020 02:35:14 +0000
Message-ID: <DB3PR0402MB3916D27B3D860D8CD7441AA5F5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
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
 <DB3PR0402MB39169528B3FF39E23C7A90FCF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM0PR04MB4481A54C639FD1D45098302088F60@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <b049be1c-1f3f-54fc-3c47-0873d95cb769@roeck-us.net>
In-Reply-To: <b049be1c-1f3f-54fc-3c47-0873d95cb769@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7c52e271-4b53-454d-54e9-08d7ca1bd327
x-ms-traffictypediagnostic: DB3PR0402MB3867:|DB3PR0402MB3867:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB386787CA5704A21198D23D91F5F60@DB3PR0402MB3867.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(376002)(346002)(366004)(199004)(66446008)(66556008)(9686003)(66946007)(64756008)(55016002)(66476007)(76116006)(81156014)(8676002)(186003)(81166006)(33656002)(44832011)(26005)(8936002)(71200400001)(54906003)(7696005)(316002)(110136005)(6506007)(53546011)(478600001)(5660300002)(52536014)(4326008)(86362001)(2906002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3867;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z8xABrCeRLQT8wbQN4x43VrI3XB6MxyEJyv8fvR/M09LIG3AnXhyONZrrHps7HoFQLPPa8lofnRrdUevCiPEtmWDs26AHM6CyeHQuThtHKexLUmNKukxVZw6Jmw2bHyDVpw8WXL6xp9nd66/c68vtBYkcO/eOijxErUdYW/6pYPEfE+kCz+53/pSJdh2P0skywAC7H0l3De8F30O8DfbORF3QX+kpT/dH+D6ISoo3LgmzYQdhEOozEVrNaM9pCWaHZQLQFyE+qz1utLQl1zIr4CAM4dGcOzt6P2gKXe7Tn7v1QNg4NtCcB3BwOsiMqQvqUMk66TXym9ewGL0jSPc01F7XOPtn5GlAxiUcnVdxvhUVMRjQYpXqku5tvsPiJs3U24VJnxc2vOakM1JkqxehCyWenRcZUY6I9WEbpHUqCDz7GNTlfaSWNTlWQVq81UZ
x-ms-exchange-antispam-messagedata: KZmNt9s8qU4StJt9ayQx5SUSX+tY88hgKy5CgyODV/qHfrupsWORm61SrbEeQj11flqM9yHGcJdQZPEcLNZVtCgfR9NUXi7ds3/dGZo81p/RslnrgyHf+VKvMTSqrXd6BuE+pKIUNXLTC+/gLXLLog==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c52e271-4b53-454d-54e9-08d7ca1bd327
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 02:35:15.1202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GV1D4U8PA+UsRWkvumzzlzzm4LYD9fxG8vheS7XkU17aDSYRgsHlxN6VJqVlvRcgqFgh2g/VBUzivcji0/GD4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_193519_127207_5E9B4732 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:621 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.4 FORGED_SPF_HELO        No description available.
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
Cc: "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
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
> On 3/16/20 7:18 PM, Peng Fan wrote:
> >> Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for
> >> !CONFIG_IMX_SCU case
> >>
> >> Hi, Alexandre
> >>
> >>> -----Original Message-----
> >>> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> >>> Sent: Monday, March 16, 2020 5:16 PM
> >>> To: Anson Huang <anson.huang@nxp.com>
> >>> Cc: Shawn Guo <shawnguo@kernel.org>; Peng Fan
> <peng.fan@nxp.com>;
> >>> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> >>> dmitry.torokhov@gmail.com; a.zummo@towertech.it;
> >> rui.zhang@intel.com;
> >>> daniel.lezcano@linaro.org; amit.kucheria@verdurent.com; wim@linux-
> >>> watchdog.org; linux@roeck-us.net; Daniel Baluta
> >>> <daniel.baluta@nxp.com>; gregkh@linuxfoundation.org;
> >>> linux@rempel-privat.de; tglx@linutronix.de; m.felsch@pengutronix.de;
> >>> andriy.shevchenko@linux.intel.com;
> >>> arnd@arndb.de; ronald@innovation.ch; krzk@kernel.org;
> >>> robh@kernel.org; Leonard Crestez <leonard.crestez@nxp.com>; Aisheng
> >>> Dong <aisheng.dong@nxp.com>; linux-arm-kernel@lists.infradead.org;
> >>> linux- kernel@vger.kernel.org; linux-input@vger.kernel.org; linux-
> >>> rtc@vger.kernel.org; linux-pm@vger.kernel.org; linux-
> >>> watchdog@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> >>> Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for
> >>> !CONFIG_IMX_SCU case
> >>>
> >>> On 16/03/2020 09:08:53+0000, Anson Huang wrote:
> >>>>> Why do you absolutely need to compile them independently? From a
> >>>>> code coverage point of view, having:
> >>>>>
> >>>>> COMPILE_TEST=y
> >>>>> CONFIG_IMX_SCU=y
> >>>>>
> >>>>> is enough to select and compile the remaining drivers.
> >>>>
> >>>> What I meant is for below case, like using other arch config which
> >>>> does NOT have CONFIG_IMX_SCU selected, ONLY with COMPILE_TEST
> >>>> selected, adding stubs for IMX_SCU APIs can fix such scenario.
> >>>>
> >>>> COMPILE_TEST=y
> >>>> CONFIG_IMX_SCU=n
> >>>>
> >>>
> >>> Why is that an issue? If they don't have IMX_SCU selected, then the
> >>> other SCU driver are not selected either, having stubs doesn't
> >>> change that you will have to select at least one option. Please
> >>> explain what is the issue that is not solved here.
> >>
> >> OK, what I thought is even without IMX_SCU selected, other SCU
> >> drivers still can be selected for build test after adding
> >> "COMPILE_TEST" to the kconfig, like below, if without IMX_SCU API
> >> stubs, the "COMPILE_TEST" can NOT be added to SCU drivers to enable
> >> build test, so I think the IMX_SCU API stubs should be added?
> >
> > Forgot to mention, without stub api, for drivers with " #include
> > <linux/firmware/imx/sci.h> " will met compile error without
> > +#ifdef CONFIG_IMX_SCU
> > +#endif
> >
> > So we have to use ifdef CONFIG_IMX_SCU to guard the include.
> >
> Add "depends on IMX_SCU" to the Kconfig entry for those drivers, and/or
> drop "COMPILE_TEST" from their Kconfig entry.
> 
> Really, COMPILE_TEST is abused here. I start to understand those who
> advocate that it should be removed. This is an excellent case in point.

Yup, COMPILE_TEST should ONLY be added to those independent drivers,
those drivers with dependency on "core" driver should NOT have it added.
SCU drivers are similar.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
