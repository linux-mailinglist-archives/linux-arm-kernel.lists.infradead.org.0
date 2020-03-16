Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF7C18660E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:04:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVkHmeZ0MD1UFV42A8waN4+mslX/bTS1ndznesgrEJs=; b=mJsd8SsbDkCTrP
	txPQGxe/sCLHUwSZnW/WcGgtK4NmwKn6QIxNrYqns5DnaRMktaJ6bBtIYTHM1mpzyevHPWHkQAo5G
	d60N7I4YpycRQOtCmonYAucWDYnQU9JnNbsIShfEpmfTyrftiTVXxtY5Y4E3cLOlBM2zob/5eadxc
	siS30Rkse/9Y6LIl5ZiN9/CH10Kowrw/9fzPZ2iYfgpmxj4itT/kWPZ7E8KnvRfVHX3c4HmM+iSuR
	ynUBRQT007/c/v4u3KlCDnbXRn0Zo8ka6O0P3NI4y/eLAfNOqopLyiJZEPBt00ApSSZH7bpusH7YG
	f/f/hWoC0fEM98f3E6XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDkje-0003Fj-AY; Mon, 16 Mar 2020 08:04:30 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDkjV-0003FE-1E
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:04:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sfzz/mDV3m5yrxra0iRiLgmNE+Roaw9J7H3WcV8wTah/jq5Zqgm7Cu4xcYyeN75oArnJCuz1hGKQtrtWsMj7szwkQGFb3X67bm8JHZtBjw6DNoKMvXXCig155UciHrdbnEP1+WSNwXS+h3vN6EK2DtLIMmyS7oNvT87N5VKTRXeNc+bEDlQlTvnC8Zg1zLF2t975ofduqzEGeAxKOMZ+nxn6G3NKaAAyL58vMvFxalVKhDny7pFABbH+Wv2yMc1Ojy+q97exaDKEuv4DSO1VMmXNAJpbwZRi6AaQ2HIUSFE3NHJabuPhBskdAsxcRE9qbe0Kqf1iUzLM4nGtM7SnTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FB2KQdt4bvhM7vJjhQpzX2QtoUUNy7y0lyUIHfc+ySw=;
 b=QCEDwv32mqiWw0hEqceesrqvp7NqoOES+ZGTNJfG1XHUj/0rYPcV9wgbTkEezhee+ieQdTlgjfIWsai2MERbpP2pK20eZb8ow//uEpHc7tjHm3IooT2VjImbiD/VW9cYB/1wRYEm7U9EiWG9hYSDIKIW9E/oer9ggs36Pv0zUa1ks1/KiowxYQHnisPQciv1rJYzlax3TPRm7TmkeGAjSw4y+YnwpTV5vzvIBiapNoMwz/FBociv+/2+rnCznKOL9AtvZXQYiYfzReVfor0vrkVlEs3aDlOS7qERT3FctaMlqSjseaPc5IZphhijR+Wohga53xvny9U9VTTXe/COOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FB2KQdt4bvhM7vJjhQpzX2QtoUUNy7y0lyUIHfc+ySw=;
 b=YJS9yu6KQSuzmpMJfZ8qdyvqExLJRGidJdku8SqEN5rWVoJa7FlyqllkfE1MYDt7/T22Vy0HNCqu8p1LBVXQT8ZgmiRJV/6viwgsNLJH6oBDLsLH1/cLfr/P0HVGrG7OHTmDwc8FMHLlu9oH4zS+4gOjNn83NV9PMzhNuDgIuHU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3836.eurprd04.prod.outlook.com (52.134.71.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21; Mon, 16 Mar 2020 08:04:18 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 08:04:17 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av62LAReQhoZkKZ9LnT5dFdbahARTIAgAopwQCAACFfgIAABHaAgAADEYCAAAR+AIAASuWQ
Date: Mon, 16 Mar 2020 08:04:17 +0000
Message-ID: <DB3PR0402MB3916DA9F0F175B9D2E9E684FF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4481F087AC3CDA691300710288FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316005219.GD17221@dragon>
 <AM0PR04MB44819E4A9E027F1555C33D0B88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316030744.GC17221@dragon>
 <AM0PR04MB44817A48746601EADA4E06BC88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316033447.GE17221@dragon>
In-Reply-To: <20200316033447.GE17221@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a94a5824-3e5e-44cc-cf9d-08d7c980a061
x-ms-traffictypediagnostic: DB3PR0402MB3836:|DB3PR0402MB3836:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3836BA6BCAAB19E18E4A98F7F5F90@DB3PR0402MB3836.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(366004)(346002)(396003)(199004)(8936002)(81156014)(6636002)(81166006)(8676002)(66476007)(76116006)(186003)(66446008)(478600001)(7416002)(66946007)(64756008)(66556008)(26005)(44832011)(5660300002)(2906002)(52536014)(71200400001)(86362001)(4744005)(4326008)(54906003)(316002)(6506007)(7696005)(33656002)(55016002)(110136005)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3836;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7mIvZQH8kT2B20hgr666qEntcYyVnnD2Ky/O951zaq5N2ha6WDDDr62Qj7jEgVY9L7IrFKdzpJ/QYZcHgDvrptYGMCq6jMwnqoOsRgfSSa0V6Gnox9j5xGWlGfRGRrwWy+UvD3JS8tUavhRWg+qpbTWst43UxRH9iBXL3OW6jPz3GysnKAtg1iR5apc/k2dgJsW8WbpJRgkXWeYYRu4I2zwdwQG4BupsRGuLJTC5ScAzokvUL1PVRYBBA5yVkYYITwQtw9tEFIoOieir0OEBYMwFHzzSnwpC4J1Rs/1z7julpuP+uoNeZFchUVGZ8oz7vMJ7hcLChuV21HygGgQ/YoV2iJqGXhHOa4ipLpzXj/BZ1xMSeBBhFBQIYhaNUDnnE+Sf5VE7oMeMM9CiD06PnSDpjMnmn67xIQHTvdbEDSRY2TYkaowEkOfHPGlAF4OV
x-ms-exchange-antispam-messagedata: z/vskLYknWNPTKSYEfY8+jGHw7z54AU0v5ZmdBZ7+x8XE+YvwWfL6y5fUZFHLD7ylJOigpHUctuhNo+EGFujdgVVOAj3qt0hc3rpkOg0gDuTryhyZUuz2z58O6uXjv+CIbmiZfAJY8aS75abCyPnEQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a94a5824-3e5e-44cc-cf9d-08d7c980a061
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 08:04:17.8147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yR1YQXQ47xvIGfi3ZtHFCbzPPP2MxQ1WrqtKztZfYco4ctbv2tn9Y6yEiH7PAjfa0YtN2kz9L8ggWMwcb5FcQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_010421_189999_4E029BEC 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.82 listed in list.dnswl.org]
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
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
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> case
> 
> On Mon, Mar 16, 2020 at 03:18:43AM +0000, Peng Fan wrote:
> > Just sent out. One more thing, I think all drivers depends on IMX_SCU
> > should not have COMPILE_TEST if we plan not to add dummy functions. I
> > see you picked up Anson's patch in imx/drivers branch, please check more.
> 
> Ha, yes. COMPILE_TEST should be dropped for IMX_SCU_PD in Anson's patch.
> Thanks for reminding.

I still NOT quite understand why we won't support COMPILE_TEST for SCU drivers,
with whose stubs, the build should be OK, if there is any build error, we should try
to fix it, NOT just remove the COMPILE_TEST support, any special reason?

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
