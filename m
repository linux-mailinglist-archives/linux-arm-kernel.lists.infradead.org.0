Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F1C17CA08
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 02:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gctuE3uP26qdXnfb4EfeJc/r/+a0v+X/j4Go9bLg3iU=; b=p7UbL4vOg4ZYZd
	UKjxuNmSkkuYttvaNPr88zU5OvCVfGkRX1WyTJFMYuyeaEIVFcrQO0n2k4WERK2812EoAvfBAYH3r
	NhOGuizuA/GEYR7h/wxx215wHmUm+qshTRZSrNsZGJG/NmmHgFZu4QN4NhGghPFm7sAz8r7vsCvcH
	im4dyQwXb4ThCqXv+JbCInoQjLnGmvDmiuqXKoRX9ls8VEFz/Z3TuxeB+dw3e1bSEXJnbcyXjc66v
	4pilyGc/DC869cIq5383nzInkmJriEl0+x9TjdSKHXFYJpxV4Gi2ANcFgxk0n2s4DWxbG02UIj/CQ
	Z0jl+K0Mi2mixhVfqvag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANqO-0006Bj-4m; Sat, 07 Mar 2020 01:01:32 +0000
Received: from mail-am6eur05on2082.outbound.protection.outlook.com
 ([40.107.22.82] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANqE-0006BK-Ch
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 01:01:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QLbFmuDDosB79CitMeowxCMP+UEsPTEWokaib8nknw326zdwDDFIPh5WBK+iPBPVh8FiUoaiJZSU6OZJWpwi0AF2ybRO3JIxyLHDVMdkKBtagM+3TPO99Id/aNgEeSiuLQEUdcZatp8xFSAfF4WMixJcN2y66m/i5xMHzu+JqtCWyEFKqGOYuJPsVYHuQP/lIk+f8rN4sIaBfee63F4KZQFNeXSPOn5RGlsgUgmtYokYhLbqzw7x8CGWcxS2ye2lVDZL9b1Wj7av8QRr0pW7FyyNHX+l/SN9Jxmqp65FQpv0/VwgeTdOt7ADAV221FTxixrplMnxxqXuXWWt/B3pog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sX6jb+CyQCnFTzT9UUvEEGYqdw1fUSw4wqB+g0WroqQ=;
 b=kR3nCZW3roU5SSx6sfhBriDA/ByxauM4wmFoBQWtCUHNv16M/rRwwhWwoyuV1gtcVsbXhO3+jGqqmlNN9ncKqf3q45BIMciA/+Jo6L7h+67xqIg20lQ07iJZtwKkyyJj2MpO+DJF5X+8xM/c/vBQMvccQb9f7SdWyUT8GNhOXdug6eL4je3gHEIpNoDGtjypi9nJyIFZ6p3pvSATcLCD/WNCEDyXvh12kNVkmgmCFhsILO+YcOr2e7II16MPNHYwgzhSueMsdRiFUrk4F5urFYYAdnnUkV85p3GnRc88DWobtD+4lBbBQQmjg8u8B7WEAZJ0mH3iye0upSatP6/lSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sX6jb+CyQCnFTzT9UUvEEGYqdw1fUSw4wqB+g0WroqQ=;
 b=mq5svQXi+zXLwfK07t23auYGiAD4j+LnUbA5HITcBu3zsEgvKf8OrAaEhEeAj+OrUEhQQYVyD7zDqLTuXanKkCT//+svXW5ObZELEklm/5lmFmsYdHSYAV0XvOO8ZSAgunEnzoRqeuTY1dcCjJDwIDuwWOzhqjVGA3Z4oq1BDRA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3865.eurprd04.prod.outlook.com (52.134.73.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.19; Sat, 7 Mar 2020 01:01:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2772.019; Sat, 7 Mar 2020
 01:01:19 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: RE: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Thread-Topic: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Thread-Index: AQHV887MNanm8ugiD0KiUbBo9lnYDag79IUAgAAJFwCAAEHEgIAADikAgAACUZA=
Date: Sat, 7 Mar 2020 01:01:19 +0000
Message-ID: <DB3PR0402MB3916D31AEF0CEA8E4DC42BC3F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
 <1583509356-8265-3-git-send-email-Anson.Huang@nxp.com>
 <20200306193310.GI217608@dtor-ws>
 <CAKdAkRRhXE6Hviqx90_5hWmP7YQnKO2QLJgDYnzt_CPjeH7D0A@mail.gmail.com>
 <DB3PR0402MB3916EA7BAACBBE64F2609DB6F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200307005146.GM217608@dtor-ws>
In-Reply-To: <20200307005146.GM217608@dtor-ws>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 61be2b08-8adb-4a00-aebe-08d7c2330be2
x-ms-traffictypediagnostic: DB3PR0402MB3865:|DB3PR0402MB3865:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3865D0ACC089E26CDA2EEB14F5E00@DB3PR0402MB3865.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 03355EE97E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(199004)(189003)(66946007)(66476007)(55016002)(8936002)(66446008)(66556008)(64756008)(6916009)(81156014)(186003)(9686003)(81166006)(26005)(8676002)(86362001)(44832011)(33656002)(2906002)(5660300002)(71200400001)(316002)(478600001)(4326008)(53546011)(54906003)(7416002)(7696005)(6506007)(76116006)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3865;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HjmGSarB8sNSH8SAxJ9nuJ+ZPh8i3Bi5l7eMtj39BNgpvWwbfPFEKqBLXakQRhcPCrkEoVtdxZfIXidveEcRhpWSjQrcL4jiDvE6n7lWURIomBP2RggWbmbhWLPv/xFLLdFjRvRzT9WV6nVkEe/HL7L/nb8ZxK8V7iAN1qN+O4UKB0oEXlN59s9aLs8hRPAM4K+54cUXXuaXO4Z3scfpNxxny36n43Q4zUyF5E3R8/RULywPJHx7Kpq5BBTrV7nb1DUmR9DJ4bpaFkxfcLs2/Mjy4ZgTCRzzWmqiYu5gGdPVVGJ20Jql60jDFTrUJM2eaB4P9VgYpmbwEhFP4F7UN5XHLb9IwbqOyMGBXR0Uks8+l2MagmZgKYs3kWCDV+gvZWD9fSY/cih6CfB4cXutHSem0w8p4UFZWTlqRu4gnjDeIvcOazH6Odol2WauHjpj
x-ms-exchange-antispam-messagedata: 9/0+ky0YwM6huviQIGajw6qgV2gmEcVEnB69+I83fZQf2fJOys40kgV8OeM5KFeb8T8Jbld1mEpKeCyC9pvGGcbQHmuOYfUQgHXREF0NzpLHg83485spUGkecWccO8TztbmJCH5b5rjJx6YfasbJYg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61be2b08-8adb-4a00-aebe-08d7c2330be2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2020 01:01:19.3760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pf5jboyHfPB1E0Up2kCn3dMaEdPHgpxjqjoZ9aBUbQCXx1QhbKI8P5sNkp0ukOR8ybNpmDmgqNYmXXvet2n3yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_170122_433250_9BA1FB8A 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.82 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Marco Felsch <m.felsch@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
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
 lkml <linux-kernel@vger.kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dmitry

> Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
> KEYBOARD_IMX_SC_KEY
> 
> On Sat, Mar 07, 2020 at 12:18:38AM +0000, Anson Huang wrote:
> > Hi, Dmitry
> >
> > > Subject: Re: [PATCH 3/5] input: keyboard: add COMPILE_TEST support
> > > for KEYBOARD_IMX_SC_KEY
> > >
> > > On Fri, Mar 6, 2020 at 11:33 AM Dmitry Torokhov
> > > <dmitry.torokhov@gmail.com> wrote:
> > > >
> > > > On Fri, Mar 06, 2020 at 11:42:34PM +0800, Anson Huang wrote:
> > > > > Add COMPILE_TEST support to i.MX SC keyboard driver for better
> > > > > compile testing coverage.
> > > > >
> > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > >
> > > > Applied, thank you.
> > >
> > > Actually, not:
> > >
> > > ERROR: "imx_scu_irq_register_notifier"
> > > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > > ERROR: "imx_scu_get_handle" [drivers/input/keyboard/imx_sc_key.ko]
> > > undefined!
> > > ERROR: "imx_scu_call_rpc" [drivers/input/keyboard/imx_sc_key.ko]
> > > undefined!
> > > ERROR: "imx_scu_irq_unregister_notifier"
> > > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > > ERROR: "imx_scu_irq_group_enable"
> > > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > > make[1]: *** [scripts/Makefile.modpost:94: __modpost] Error 1
> > > make: *** [Makefile:1282: modules] Error 2
> > >
> > > If you want to enable compile test coverage you need to provide
> > > stubs for the above functions.
> >
> > These i.MX SCU drivers depends on IMX_SCU, I already add the
> > COMPILE_TEST to IMX_SCU driver as well, that is why I put these patches in
> a patch series.
> 
> Adding "|| COMPILE_TEST" you are removing hard dependency on IMX_SCU,
> which as you can see can result in broken build.
> 
> > Maybe
> > I can add stubs as well to make sure build passed even when IMX_SCU is
> NOT compiled?
> > Will send V2 to add stubs, it makes more sense.
> 
> It is up to you whether you make IMX_SCU buildable with COMPILE_TEST and
> leave the sub-driver as is, or add the stubs and make sub-drivers buildable
> even without IMX_SCU being present.

Thank you, I already added COMPILE_TEST to IMX_SCU driver, and I will also add
stubs for those APIs in V2.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
