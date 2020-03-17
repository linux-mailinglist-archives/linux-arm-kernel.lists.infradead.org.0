Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837E21877C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 03:18:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCsiAekdcbuSssCMT3FNfxrsybsbnUVH+5pma+ugObA=; b=KTRxe6jmw4qDyI
	Raic3moncnhBiM14aypSyI0fo63s5osgCBbblsBxFAxWQZrqzTIMeZCtbrpmPlLwCNFYwHf6XKG6/
	BaOCyhxLsoATRLLLXJn3BNwrrF7f7F0DDOFd/V1F4hiyvQlRG8P1hhzasuMX7nBFVBPUHblT/0yfc
	bsCeltCaFoAPJZnUYwhbGLFmNfjLMqvoHP1bkgoMGn+2ClNIx/sx4r93heSq2SqGyTPRurNzTICCh
	LE4FNFH+vZFW7qbs0IAcMTswNtUk8XpriPKFEb1nhLz1VLfS6QnfAwiwquMCE1YUTiNFuTIpI122V
	ot1EASe15/zU159IT/2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE1oE-0006Tg-1T; Tue, 17 Mar 2020 02:18:22 +0000
Received: from mail-db8eur05on2087.outbound.protection.outlook.com
 ([40.107.20.87] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE1o4-0006Sp-HK
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 02:18:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MkAMG0feb/BmKLoE78JMVJcbVyWN7psqt064J9R7nBVmTOO4rF1ttd+BlCGzwhWJiCwgA8uegSFC+DLMWYFv26CAowJcHIioc7j9au1MS/pZgfbN/qG6bwc0v/Le3+Fzw0GdPpA/w0dJCsj6XInXOlzxAXvcVraxBGWVI9nX92shcT0EgOwlbh0KMZS1760ymuaOo8NHX4KvwpeaCiDI4sgvfhXSc7AXQez/tyn5ySUGtslBZjtBT9U5OqKPjpVoQfQ6NVml5XRR4mHDUbgK0JxlOsmuGM1oNX995bFOjSDqNgu3sIpREtXzI/rg0mZXXC6n43AOXtXtcrIpcG06Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7K14LEJ6sd10QVJzaWfYp9Yj8Dk7ko9sl+emhNLGwIU=;
 b=e8egMXqW7KMGCa5jxufohTJcBdXj31A/J2Y5DL4y65GGvXHPhlTkdUfBPCQUW4h3pytNbGJKKnGV7NammU04hCeME0bBxl1r1JLKGOUVuf2dMTaKRG43yYvZ7h4zCAffJGmchL39L4iSeVDVOI/9BfmeEZ6dwSgrlQErarbdbyTAEgXgfTsE2vZFyX0jv/0D5Hj9DSyF3KmzD4Jn433wIOrEmet+AB7V/FRIxxLdoRc5DiI8I9LTIbShXAMu/ewHjT5/oPZPipwkP9EoHa0FbZWenv4o+AcFUQaieFJVwwwsnwLEHJRdRJmt5XwJ1maqyg6NlhPRb46XZzuq/iU/Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7K14LEJ6sd10QVJzaWfYp9Yj8Dk7ko9sl+emhNLGwIU=;
 b=hBipPsTgsB30NtJxC6tsxW9cBpiVUpmtiofMH/WOAZyTglyhhnT2l+qHP8cxRTuWlMQA00rYxkXgfN4dDU3yX7ce6bwsdv/8klvwy+KyNoTq9z5DOBuNKJ6UBhRaHPzq+ZPRZbzy4wRhHktS2mEWGf9+ptAiz7gVR/wR+8HyiTg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4145.eurprd04.prod.outlook.com (52.134.90.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.16; Tue, 17 Mar 2020 02:18:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 02:18:07 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av6lP0y7UryDUCSkdoJ2q6AXKhARRTAgAop3wCAACC+IIAABReAgAACi8CAAAUEAIAAS0uAgAAKPgCAAADnAIAABKyAgAACPICAAAHmgIAABwkAgAEV3aA=
Date: Tue, 17 Mar 2020 02:18:07 +0000
Message-ID: <AM0PR04MB4481A54C639FD1D45098302088F60@AM0PR04MB4481.eurprd04.prod.outlook.com>
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
In-Reply-To: <DB3PR0402MB39169528B3FF39E23C7A90FCF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f90fa381-0cf1-4ba6-c8b0-08d7ca196ea2
x-ms-traffictypediagnostic: AM0PR04MB4145:|AM0PR04MB4145:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB41452060FEBA42D7B81D5A7088F60@AM0PR04MB4145.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(366004)(376002)(199004)(71200400001)(9686003)(4326008)(186003)(53546011)(316002)(7416002)(54906003)(2906002)(52536014)(110136005)(33656002)(55016002)(8936002)(26005)(64756008)(86362001)(7696005)(81156014)(478600001)(66446008)(76116006)(66476007)(6506007)(66946007)(5660300002)(8676002)(44832011)(81166006)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4145;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QZ1xC6g20MSfhMOzyShfMophmcDi6cdnHqyw9x4BbScXs+uip/HYdIVsdq5BYBlWHqCHro9uT/okZvn2KPZ1fbRK3JCao0XrW2CqYa08bUKdoiB+2MP+EbYxGop0lPKAOja31hAqjacmmcH5oqveFFsPQXVnL+Dqf1U/xc1lXfdpHFInL3YWC86QW5Xo9ZD1KBooSd160z2xylj6weCO2MCF+Qc2DKAZjttwMEyHKjCXDbDF2Kq4s2+PThS+xR3u62otN60+k7JF+Uh6WwhRhHLacFxbBsGMra2/9W35TN/llZgt38EAGEb/1iFWXAhRa9NL7RAfjB2lOsrHdUuNtxPFOucCxwLcHnluzPgYE29oEP82vOVqwrWxG2ZUHJya3ZNhM1AKcBzRbE/2+gqwbQN74izHJ/7dawUdSGbOVCHCIX0x0qtEk+Qw3JwCDngX
x-ms-exchange-antispam-messagedata: 2FmPbQCGFsO2PfoE21lXKsoi2HUZNuT+0RnkmcKmRu2Bs+4CgLeiMUnij/JyTSfmsxcxZFNjKev4wV41ena9UVotI2B4IcTKIXowbMiFhqeSE+jLDImueKjVGE8lKx3IhH30F48HiB0WDfMJQBpyQA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f90fa381-0cf1-4ba6-c8b0-08d7ca196ea2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 02:18:07.4290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Wsz9E0LiKuSMWQ9kT2QfbJpBuzhE2FVy9BktSTTs83Syi/QEmcO3QyDGNV/cjc2RYYvX8oBryrEt8/pk3dHtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_191812_652148_6A475BA2 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.87 listed in list.dnswl.org]
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

> Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> case
> 
> Hi, Alexandre
> 
> > -----Original Message-----
> > From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Sent: Monday, March 16, 2020 5:16 PM
> > To: Anson Huang <anson.huang@nxp.com>
> > Cc: Shawn Guo <shawnguo@kernel.org>; Peng Fan <peng.fan@nxp.com>;
> > s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> > dmitry.torokhov@gmail.com; a.zummo@towertech.it;
> rui.zhang@intel.com;
> > daniel.lezcano@linaro.org; amit.kucheria@verdurent.com; wim@linux-
> > watchdog.org; linux@roeck-us.net; Daniel Baluta
> > <daniel.baluta@nxp.com>; gregkh@linuxfoundation.org;
> > linux@rempel-privat.de; tglx@linutronix.de; m.felsch@pengutronix.de;
> > andriy.shevchenko@linux.intel.com;
> > arnd@arndb.de; ronald@innovation.ch; krzk@kernel.org; robh@kernel.org;
> > Leonard Crestez <leonard.crestez@nxp.com>; Aisheng Dong
> > <aisheng.dong@nxp.com>; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org; linux-input@vger.kernel.org; linux-
> > rtc@vger.kernel.org; linux-pm@vger.kernel.org; linux-
> > watchdog@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> > Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for
> > !CONFIG_IMX_SCU case
> >
> > On 16/03/2020 09:08:53+0000, Anson Huang wrote:
> > > > Why do you absolutely need to compile them independently? From a
> > > > code coverage point of view, having:
> > > >
> > > > COMPILE_TEST=y
> > > > CONFIG_IMX_SCU=y
> > > >
> > > > is enough to select and compile the remaining drivers.
> > >
> > > What I meant is for below case, like using other arch config which
> > > does NOT have CONFIG_IMX_SCU selected, ONLY with COMPILE_TEST
> > > selected, adding stubs for IMX_SCU APIs can fix such scenario.
> > >
> > > COMPILE_TEST=y
> > > CONFIG_IMX_SCU=n
> > >
> >
> > Why is that an issue? If they don't have IMX_SCU selected, then the
> > other SCU driver are not selected either, having stubs doesn't change
> > that you will have to select at least one option. Please explain what
> > is the issue that is not solved here.
> 
> OK, what I thought is even without IMX_SCU selected, other SCU drivers still
> can be selected for build test after adding "COMPILE_TEST" to the kconfig,
> like below, if without IMX_SCU API stubs, the "COMPILE_TEST" can NOT be
> added to SCU drivers to enable build test, so I think the IMX_SCU API stubs
> should be added?

Forgot to mention, without stub api, for drivers with
" #include <linux/firmware/imx/sci.h> " will met compile error without
+#ifdef CONFIG_IMX_SCU
+#endif

So we have to use ifdef CONFIG_IMX_SCU to guard the include.

Regards,
Peng.

> 
> config KEYBOARD_IMX_SC_KEY
>     tristate "IMX SCU Key Driver"
>     depends on IMX_SCU || COMPILE_TEST
> 
> thanks,
> Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
