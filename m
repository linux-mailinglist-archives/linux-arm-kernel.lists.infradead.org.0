Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEF317CB8B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 04:34:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYJX6+UXx8UDXfzlSp1IO/dCaJriaiX5EoH9q01QWfo=; b=V3iQ80rWTLMkh0
	BGP9+PQxUpzP75neOq0CL1c/KVDKDtIoCCq0kEsxE+u/XyXCVep/LoMABtYnTQJJjsthgGo2Iok0X
	vWhhTI7LxC9+hT6R0CHJd4CeH157eDX6vQ0aV3p6OPLmzk1ZSO4o7fVfzsnIlYGA28aKAequRtqSi
	4UTAagpcxOHbeFhEub/mRkWRq16Bk7Jztf7XP6c2roh1vxsqalpOCUe7D7+Z3kCfd/FymvXC3laBG
	AQo7tY6vibfVxWv84PqSDIMug8cui2KN06kxewLGPr0TRo+nFbtfGqytltvtqNRXio/3USMsOXmQO
	R9WskcKSvXs8ChU3JJUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAQE3-0002xD-NY; Sat, 07 Mar 2020 03:34:07 +0000
Received: from mail-db8eur05on2055.outbound.protection.outlook.com
 ([40.107.20.55] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAQDv-0002we-KX
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 03:34:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BE0V8OKClMyHoyqDFlDvAltzMVaUhA0XLgZKmz092hHWa6VewmLjV2VeOpJnl7++zJnZHGB+G9ea30uxp76SRBu2zggkrR5L7x4hRexnvnrtFHrqklDnexcE2n6IZDPIxe7jBC9uNCVualYNJmt1M62PeTjNv0EtqC2cf426/rgupHQZMG6Gng3EsbVhEsUAjAnY5LM98KWvHSN3CBGxOqRZc/O4v92+56ccJx6ceyV39OsYmAdfL2E4TfdzfaVewZciQSSLgA19N57D3UkfVENr3WvntPK19CQ5Ff5qdRI/2lzkIh0mBqeC1bqFJ32mkxeK6l4IKq0EDBrP3eCiCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vLEiQOSUtp8iJ2N1iOGEfwWkny4ppPuBUaLFRdJtzIs=;
 b=D/sLdFOHLEVPC8ZrYa4ieqb04rKv4KIo/3nfg7wF1OBRVwHza3CGqULDR+BYKpjgVP3a5U1pqKI1uSSprBy3HfqJpE/uDR6vTydO0tbplT0Mj0E7tSKaGinNQdiDDdUUMvDcZ/qnhmy4Jt+vN0Z05xjHyAivQmiG+Ibm7QXGUhtxKp/yf7CKOiLZnB6uTZMVa4QAnLoN6KjGIq/MVuFmi9gMI3Pie8SdiSSc+7SyPLbR00eHaimywYZJL6be1KM/V/c0wi87QCZEAisAAgkD2dtpys6sWolqnY8e4nAP7aMg1gTkoazmV5guns6nZz0FQK4pPcJNgKChBW0eaAzmMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vLEiQOSUtp8iJ2N1iOGEfwWkny4ppPuBUaLFRdJtzIs=;
 b=RyTYxwpioisoiuqSHVfbGnan8DDtOl3ozbunALvMp9TdfHDXC1JC4EXg8oBriV/ueyH8k7px4WKUk0vYK7uASklKkRNVeHBtm/CCAMi2LUaNIkEz6PeZGbTxkKXYlTqUJDU5k8qR3tSU165DKhyqFJWkfolnzQCCSRBFJqwVEdE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3899.eurprd04.prod.outlook.com (52.134.71.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.19; Sat, 7 Mar 2020 03:33:54 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2772.019; Sat, 7 Mar 2020
 03:33:54 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Thread-Topic: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Thread-Index: AQHV887MNanm8ugiD0KiUbBo9lnYDag79IUAgAAJFwCAABOKAIAASDdQgAAXQQCAAAmasA==
Date: Sat, 7 Mar 2020 03:33:54 +0000
Message-ID: <DB3PR0402MB3916FCC28C5E49FE571226A3F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
 <1583509356-8265-3-git-send-email-Anson.Huang@nxp.com>
 <20200306193310.GI217608@dtor-ws>
 <CAKdAkRRhXE6Hviqx90_5hWmP7YQnKO2QLJgDYnzt_CPjeH7D0A@mail.gmail.com>
 <20200306211538.GA8060@piout.net>
 <DB3PR0402MB39164192146D17327A45DA6CF5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200307025720.GA52231@piout.net>
In-Reply-To: <20200307025720.GA52231@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 550d3af9-9582-4b68-e2f6-08d7c2485cbc
x-ms-traffictypediagnostic: DB3PR0402MB3899:|DB3PR0402MB3899:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3899927EAF5A63E2B147C2E9F5E00@DB3PR0402MB3899.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03355EE97E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(136003)(396003)(366004)(199004)(189003)(86362001)(33656002)(55016002)(7416002)(71200400001)(76116006)(2906002)(6916009)(53546011)(6506007)(66446008)(7696005)(66556008)(66946007)(64756008)(54906003)(44832011)(81166006)(8936002)(9686003)(478600001)(81156014)(52536014)(316002)(186003)(26005)(4326008)(8676002)(5660300002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3899;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QFS+73QNtgV8NnFmcIbuKfy8DKK6TDU5De6RPfr8Vshxf8ymbtYhknxb4uMj/S8KznPlIdSjyLgOBlc/ZHblo1B1M03doWUSFXqDw1f+cu3J14TDVlKoRPfLLpRgdYAQueq0aztGNAFb8GY+dbeTBHQkSO46JSxs3JrcBPry+UP7TKq2mIBfgxb0EQc9t89ZshHsWiQujehVlfNInl+Nrt/IhcSDmmD0uCTjVst5NBLj4UYf5nlk+LsTSMzAVr67aEKEVig9PTsGyEwf7Py8434gR0s7DWZUmT1q700+fw6w8ht5txiyja7s1ritbkUp8/G26P+uuxOhqCZf8sV48WadApgddFl732JRNroDXVHjwWNSTInukfGY1gRb7mRVozMjFknZpS/9jJfPRM+W5+Q3iBfKov9MFyQ5PZ/OJ7OilaWHb+BZAewELfomM8T0
x-ms-exchange-antispam-messagedata: phVcIBbvcq4rTZjuciAmylQ1fTJ2CJmkljLkevfUpZwn0O72yD/zl7gdzoip+GEctXtO3qJL1q/BqFCSuVczx8IEHKYCz1HMlf5FECa08izQi2Lsd2k4DKZ1AHnH+kNWIqf3G1tKEXRydCD/BLFZ7A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 550d3af9-9582-4b68-e2f6-08d7c2485cbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2020 03:33:54.4841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8gtvQISnmNRpnTO+aFhi+9RN3EJ6cb/j/L4Z5bHiOuOpwmNWeeqFQvWENGtQ9TenDsgvEnyo4PX2r7lB4oUrTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_193359_755211_58FF5863 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marco Felsch <m.felsch@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?utf-8?B?Um9uYWxkIFRzY2hhbMOkcg==?= <ronald@innovation.ch>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Alexandre

> Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
> KEYBOARD_IMX_SC_KEY
> 
> On 07/03/2020 01:36:39+0000, Anson Huang wrote:
> > Hi, Alexandre
> >
> > > Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support
> > > for KEYBOARD_IMX_SC_KEY
> > >
> > > On 06/03/2020 12:05:42-0800, Dmitry Torokhov wrote:
> > > > On Fri, Mar 6, 2020 at 11:33 AM Dmitry Torokhov
> > > > <dmitry.torokhov@gmail.com> wrote:
> > > > >
> > > > > On Fri, Mar 06, 2020 at 11:42:34PM +0800, Anson Huang wrote:
> > > > > > Add COMPILE_TEST support to i.MX SC keyboard driver for better
> > > > > > compile testing coverage.
> > > > > >
> > > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > >
> > > > > Applied, thank you.
> > > >
> > > > Actually, not:
> > > >
> > > > ERROR: "imx_scu_irq_register_notifier"
> > > > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > > > ERROR: "imx_scu_get_handle" [drivers/input/keyboard/imx_sc_key.ko]
> > > undefined!
> > > > ERROR: "imx_scu_call_rpc" [drivers/input/keyboard/imx_sc_key.ko]
> > > undefined!
> > > > ERROR: "imx_scu_irq_unregister_notifier"
> > > > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > > > ERROR: "imx_scu_irq_group_enable"
> > > > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > > > make[1]: *** [scripts/Makefile.modpost:94: __modpost] Error 1
> > > > make: *** [Makefile:1282: modules] Error 2
> > > >
> > > > If you want to enable compile test coverage you need to provide
> > > > stubs for the above functions.
> > > >
> > >
> > > or select IMX_SCU
> > >
> > > or leave out COMPILE_TEST from the individual drivers as having
> > > COMPILE_TEST for IMX_SCU is enough to be able to select the drivers.
> >
> > Thanks, I already added the COMPILE_TEST for IMX_SCU which is in this
> > same patch series, without that IMX_SCU COMPILE_TEST patch, the build
> > will failed, so in V2, I also added the stubs into those IMX SCU APIs
> > to make sure even IMX_SCU is NOT enabled, modules with COMPILE_TEST
> can still pass build, please help review V2 patch set.
> >
> 
> My point is that there is no need for the stubs. Simply have COMPILE_TEST
> for IMX_SCU as this is enough to extend coverage to all the drivers and
> significantly reduces the code size versus what you did in v2.

OK, then I think V1 patch set is already what you expected, patch 1/5 adds the COMPILE_TEST
for IMX_SCU. I think maintainers can just pick up the V1 patch set.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
