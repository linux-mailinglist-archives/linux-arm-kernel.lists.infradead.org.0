Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA1217E015
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYN8lJYyny0Mpw+SqYcBWEhohcKs+4Ndar2h73+keOA=; b=P6hqt0G6XFN6IP
	nMceTMPp9I54Fcz8X+48N9Fpee7RS5o6AbrXFoceQRcpGISd6EnbbGAS4u+Rz6lFPAsdDhViUNE5N
	oG1DRYQYtWHA2VywD2Ee8YvH21yTxfch+1bmxOgo/1EMLsdix7wblDmTiYT85Xle5RRznzTZ9Bngc
	caYLogI3zeguq5gmqiQwBANxr/SB5YxXD2Rr0ePUHKXqRe3Hm4df2MquJaduAlWYErt/fmNP+fayR
	TaQmFOPrRQqAHhiOct49Jj4Ti83B+md4spXLVMsdp7Bm+ibuQtspgJDzYXzRIpK/Ea09CcPFSBynB
	oamq9muRMvXBOXHltodg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHOY-0002Tf-Le; Mon, 09 Mar 2020 12:20:30 +0000
Received: from mail-eopbgr50073.outbound.protection.outlook.com ([40.107.5.73]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHOM-0002O9-TW
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:20:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BFphMUX3SMR6owq7r49H/e3a51QD/hF+hiduKPt7yJPvZjmDUgqY4L5q7fUcxwvc4BRZNcm1Y83Mt2qdDfqWMk0Z0e+zpja6nAwabzu1H+RIERMDT1FeBHFhZV/TmlZSBUBgvNjHREQ+7nO2JXEqi5NCe1yugnW2ZR3KdfSB0QRxlzGpEg89lrljVN1c8ZTbTrsH48zs7v3ZnWRVqflY899BnydBl+SMw3q9ThsapOjiYx7PNbX9oq2PIJXG9z+LZ4rfSx+vEM30Ea6FDhICgDIdxuTKVwtNtMNmxMkSNosg6bQrjcw/XZagpUVkss0+3ortd2NwU1HlNuADj36LSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aXUBHp6mXq14jGibTQXvuZyQpL+5M0pw2w+qjMrh9H0=;
 b=XVMSwgBRk2M/vUWYZzxnO2sc7k3mW+wd56/GSRhVrF/dIkiqhQaBB6bNiaD6yVzpGLvbPMGDX4QTc6BaNOCIcsTPnC/ZuVfJb6+LgDvWzD3YZ5KM/VZZSZkKnd/RUzomEsJqEEVcfD0GdCNOQRy18FOVnq87zWQJNxJpFjUGr5VjE/Nftl5aTGvWl3d9EvDE+7qvZMeudbJx2UF/PxbfmghM3QFgexPCOrBFBoikFdQxRow2hQF+cR+8g+eEoSX2JLMwmD2LjWHkiMyvC+lyGfAplGR25E9aTj+S9D/qzI3QuSgfSQLmBA3IC5TbgdvLSwNLB22I3DyfU3BRAqMDqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aXUBHp6mXq14jGibTQXvuZyQpL+5M0pw2w+qjMrh9H0=;
 b=Ga4cPinVR60LBPQfwyMFeZflYNuKEdi/A4ZiYwBJBBLmSOGFD6jPKDFX0NDzxx7HChZ1p1AOChyG7DFUDp2OTgu5o3UdKOERenkfe71ZtXIBs3t0VCFrNqOlGbAUgoLr32U+AkQB7YZBBPWCTX2ekb1/4WlpBQH5kAvxEprrX4U=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3818.eurprd04.prod.outlook.com (52.134.71.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Mon, 9 Mar 2020 12:20:14 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 12:20:14 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av62LAReQhoZkKZ9LnT5dFdbahAGiGAgAAUKRA=
Date: Mon, 9 Mar 2020 12:20:14 +0000
Message-ID: <DB3PR0402MB3916FA1EA54CF342E21350BEF5FE0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <20200309110609.GE3563@piout.net>
In-Reply-To: <20200309110609.GE3563@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 69461a82-7002-4b9f-f77d-08d7c4243894
x-ms-traffictypediagnostic: DB3PR0402MB3818:|DB3PR0402MB3818:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3818DC3BD33B2F51E0B6A503F5FE0@DB3PR0402MB3818.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(366004)(136003)(346002)(396003)(189003)(199004)(316002)(33656002)(26005)(186003)(54906003)(7696005)(4744005)(86362001)(81156014)(81166006)(66446008)(76116006)(8936002)(5660300002)(66556008)(8676002)(64756008)(66476007)(478600001)(66946007)(71200400001)(52536014)(2906002)(6506007)(7416002)(6916009)(4326008)(9686003)(44832011)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3818;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uhVYfGwZJdGlYYDAPuWsuGL2loB+BcmIX0NP+WXWa2X/nmRUahYSzt8VATW5G1amkxi1Wp7mteKiTZ7B3BxI+b2FWkwiYjX2zmYopLeTFlfIhG1eW3j0XrsUENR6IxckpkuFwoJc85yIHLDmUQXGti2tIS6M2nCuo3nGHjcbj9suNs+ZUSLNPUh2xejlzoXWA+9C5RM8zFGYppoW6VjE9BHmFoCciyYfqjiftV6Iw05W4cZCk4/TNI+ijIcNX1XVuyewhVhN6u1XsqRJbznWJci8Vgq8i39wGhsL/Ao46VzFkf2kpRFlMLR2KkqYheT1Ta8ByLlBQZDVv5gP+jD9qnXzvo6MaucsE+ufJhp+q9u7TCUMW2AcoyuEJwUIQvbyAsJ9ocwP7KPIK/5hYS1pirh7bdSVvF+uZS+F7SR1mHLjlb/7PM1LQhZBu15N0tu/
x-ms-exchange-antispam-messagedata: TuLX2sfxP8NEiOolHPdFaeiww7l+BeKxMXTMTa/jCWT4cPtwZhOCF/dL1GInzHFEXD5PSFPsAep+2R4ypL/jLJtDWIalpX8d3m98AMjbO5+Aci2aTKm83okypYlHZBwNobq8+u9kfg0SINEtuEQ8dQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69461a82-7002-4b9f-f77d-08d7c4243894
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 12:20:14.2018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 42RyDOXBI3wjM+iIMF6/YHiRBIq0gk57cKyOJPcJIbp7um3Zf9DyWx52bMArn3fDOEuezGrE3pY7sHewsiY6Wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_052019_103546_5EE33538 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Alexandre

> Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> case
> 
> On 09/03/2020 08:38:14+0800, Anson Huang wrote:
> > Add stubs for those i.MX SCU APIs to make those modules depending on
> > IMX_SCU can pass build when COMPILE_TEST is enabled.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V2:
> > 	- return error for stubs.
> 
> I'm not sure why you are sending v3 with the stubs as we determined that
> 2/7 is enough to compile all the drivers with COMPILE_TEST.

It is just because I am NOT sure which approach maintainer prefer, the V3 is to
address the comment of V2. If everyone agree that 2/7 is enough, then I think IMX_SCU
maintainer can just pick up V1 patch series, sorry for the confusion.

Thanks,
Anson
 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
