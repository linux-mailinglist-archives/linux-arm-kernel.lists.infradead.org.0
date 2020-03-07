Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E460717CA88
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 02:37:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMIWz1Z2Lj8xUqfKTluZ0twO11vr29Tnpd758JlTAvk=; b=nuFyJ+PIilAZ1W
	t6pynIgnYvHdN+lkm4RDLD6xuvywWMZr1UpqRpTVxxLa4g+wb/FF5xDybhKPtEDirQ/OMvl3wX3jw
	AOZtc8YmuYhf+kPguPwOWZx0VDhf8WgBnabREHxY+0ScI981SySgmNRT+RlN8qOb3AOF2wiipFKWE
	K1udMRUnl2XLZIFCeMQekFF7DkIrXSDgG7TMdw02U+XijSftQ7hJscc45YnvsSl6AxnAelrq5EQAH
	+u1+BSMETsRELkLrwzYD4UmbyFWv3vFbOKSV5PovFk3wt7TKQR8+wPCXFLHwpYcrX9y6B/ebcGpek
	luQE4acZ0XrolQOqF2jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAOOZ-0003Bt-Ok; Sat, 07 Mar 2020 01:36:51 +0000
Received: from mail-eopbgr00062.outbound.protection.outlook.com ([40.107.0.62]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAOOQ-0003BN-UH
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 01:36:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ILvWHR+ST0m81eaKsSkqN2KQVjSXBaglMEm2z1WR+f1aV8tD70gDjv2uyclX1CheHvubj48W+OWpwXjpssMTr1g6GmKeZ95Gr3mS1fM03JuRBf5lK8uH3QxHV1bMun3+Uiv99+2789FBu1JMk9ORWcccUYKF8TW10M05cg49j2lACrcmmqaYn21YtQ7YaqWgj1DC6syOxB+WnnUmn12/q59tNCZ8rnt/hxQmWLQFIIty3yC8ftXNlVBKGi2/xmrUstkr19xiCuIWtip0ZBZl1r+vMyU+dNOhyb03hjoOwdI7M0r75jKfIwtNZDCnfBnQnPXsG2HqTxCa76LToQAywQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q6khbcMqOFAgFLGrsIlKsHz+X5UCJ4twK4ocS3k+hH4=;
 b=Wtej2Nhcd/6if5iWYfKURBmil5+OQZwysXtOL3IoEe7hPcoXhnKwjuZqDYqVOpBXHlEFx/5Rf853fmZ2gldPTSw8ens3ubBbJRXvPW+pCIljp2ifZ15aytAp/4U1qmSxVQU2Asw4vo1XKkPBJgJ0aFDx8gO9ag5TUS0ZorC0aQIVHwgaL5R0wP09UjZ5HRTnsItRYOCfZQiHCTN63ux+7zOrwhMfd2QgvFIqa9sTAYK2gJBQBRfcMoSQUo1hjm44EN1jiWhngR7OAgO+Me39tK3sq9LO+3mE5Y22kpN54z1gz1/Bi4ck0VQOKGHivB5THHY90EVw6dfF0HiQPWZNIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q6khbcMqOFAgFLGrsIlKsHz+X5UCJ4twK4ocS3k+hH4=;
 b=GrgDu1DERfL7Crs+GayMBboL4yco6Y2KebhR2+wnY1DH0rBZb/1T3BQWAqOsooniRQW14+J0P1PKybTb2RymSAoXzEZJc7EBWo5cx8zZk/EFIHF5k5hK8lCcXmHvABlzt3vzQrcCx/zrjLiL9827GmfBKEQHCroOEtkSiiH3fx8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3882.eurprd04.prod.outlook.com (52.134.72.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Sat, 7 Mar 2020 01:36:40 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2772.019; Sat, 7 Mar 2020
 01:36:39 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>
Subject: RE: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Thread-Topic: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Thread-Index: AQHV887MNanm8ugiD0KiUbBo9lnYDag79IUAgAAJFwCAABOKAIAASDdQ
Date: Sat, 7 Mar 2020 01:36:39 +0000
Message-ID: <DB3PR0402MB39164192146D17327A45DA6CF5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
 <1583509356-8265-3-git-send-email-Anson.Huang@nxp.com>
 <20200306193310.GI217608@dtor-ws>
 <CAKdAkRRhXE6Hviqx90_5hWmP7YQnKO2QLJgDYnzt_CPjeH7D0A@mail.gmail.com>
 <20200306211538.GA8060@piout.net>
In-Reply-To: <20200306211538.GA8060@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ae50851e-c2c5-4169-da48-08d7c237fbce
x-ms-traffictypediagnostic: DB3PR0402MB3882:|DB3PR0402MB3882:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38825E84B78724440E0DDE6BF5E00@DB3PR0402MB3882.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03355EE97E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(376002)(366004)(199004)(189003)(55016002)(76116006)(7416002)(9686003)(8936002)(54906003)(52536014)(316002)(7696005)(478600001)(71200400001)(4326008)(86362001)(26005)(110136005)(66446008)(64756008)(66946007)(66556008)(5660300002)(66476007)(53546011)(6506007)(44832011)(2906002)(8676002)(33656002)(81156014)(81166006)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3882;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1myGFHIZrCm5TeldWy47hVU/DbljG98VjrAbojOsVyqq9ebjvRJG/gMR/USSVKD4objwRL1ZterLHPKcUlD6CKeOgtvoZ9dF6TZcIJ8ypgYL6B03T/vb6GwraaqBiR8gbAqMWeE5LkhKPYMSq/j9rFYIwi3lg4cvoTAzSLVvp890sSf0nthN8MeYhOMFO60mPwuqzoPYyMJVqbdY5p63onzp7WYZAH8Dsd/8/9wCk+boCLdcAeY+/+pA2/WggS+PKYWlAiS8EtBpGqlLZrulbqdDWCvT5XdE9o4L8fSCRi4hvJxXjBg4EChtEsDsqHxrhYZRVPooZ2CZJx+uj9jAiBUJXWGOcAI7hLDjpSadC9gqA7B76k/U6wp+CqTb3n9HPqUO2C5ekyPF6hBho6ldmU0J1Ra6jlFOCUfq/68XWxQhs8OOtTjI/ndTmQ/bgUOI
x-ms-exchange-antispam-messagedata: wEnk5ULSEK1yZAXUnyS6RTMR1axprM+qXUGWyYFCG/0aPEE7o+ZJUdw+UTaj0IBS+0ut7mEp3PFLTySQka/M0fGoThYCIHKDvpd3JuTgqB6ws7wfq0iEoJPp/2gIls8WO8LnOwfqoKvAWQGI2w0Z0w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae50851e-c2c5-4169-da48-08d7c237fbce
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2020 01:36:39.7813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OkT7tseAPuzwjXyIOkLnpO54cjgXl9rEWACrCCAiZWr7bbAntTbQdN4Vx3j6vaVZ5gbC3Js2QCSxhVJTqZYF3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_173643_052124_50F5605B 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.62 listed in list.dnswl.org]
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
> On 06/03/2020 12:05:42-0800, Dmitry Torokhov wrote:
> > On Fri, Mar 6, 2020 at 11:33 AM Dmitry Torokhov
> > <dmitry.torokhov@gmail.com> wrote:
> > >
> > > On Fri, Mar 06, 2020 at 11:42:34PM +0800, Anson Huang wrote:
> > > > Add COMPILE_TEST support to i.MX SC keyboard driver for better
> > > > compile testing coverage.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > Applied, thank you.
> >
> > Actually, not:
> >
> > ERROR: "imx_scu_irq_register_notifier"
> > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > ERROR: "imx_scu_get_handle" [drivers/input/keyboard/imx_sc_key.ko]
> undefined!
> > ERROR: "imx_scu_call_rpc" [drivers/input/keyboard/imx_sc_key.ko]
> undefined!
> > ERROR: "imx_scu_irq_unregister_notifier"
> > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > ERROR: "imx_scu_irq_group_enable"
> > [drivers/input/keyboard/imx_sc_key.ko] undefined!
> > make[1]: *** [scripts/Makefile.modpost:94: __modpost] Error 1
> > make: *** [Makefile:1282: modules] Error 2
> >
> > If you want to enable compile test coverage you need to provide stubs
> > for the above functions.
> >
> 
> or select IMX_SCU
> 
> or leave out COMPILE_TEST from the individual drivers as having
> COMPILE_TEST for IMX_SCU is enough to be able to select the drivers.

Thanks, I already added the COMPILE_TEST for IMX_SCU which is in this same patch series,
without that IMX_SCU COMPILE_TEST patch, the build will failed, so in V2, I also added
the stubs into those IMX SCU APIs to make sure even IMX_SCU is NOT enabled, modules
with COMPILE_TEST can still pass build, please help review V2 patch set.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
