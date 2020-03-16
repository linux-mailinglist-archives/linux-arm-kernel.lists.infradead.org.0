Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D1F1866CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:44:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxm5G167FVa6wQtenhDnPBY1Lwj8oprTDIWBULrJfiU=; b=H2d7oErJjWcKow
	y4KXCaca8Zv8QLiTU9O+sfjBH09t1f3iaejCXT5UpFf35lSuetO/05qi4uUKQw6tT4ouaznWsftAU
	EOwbyMqm/XH0olSYgyCJI/KTAnT8kmtDwyfxAZLJL5+15Qd8Lzvwg3GTkQgsrIRL+xBPFNG/IkTrx
	alroTtNfd30OP3ktlNbBsJVOPpsbLNWz+f7O3naK7vwWu6BQn/OPUpk5l2Ek2zEOFn54x3IzOqdqv
	xaFLiKIdqU6SH0kp4XepbII8k7HxYsKVodiQm+sRmBr+iNSJIi0yPv4un8wg5vyc7fbHe3w0XF0W+
	0HQX6vVKdlTz8NhqdUbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlMJ-0004AF-Vt; Mon, 16 Mar 2020 08:44:27 +0000
Received: from mail-vi1eur05on2086.outbound.protection.outlook.com
 ([40.107.21.86] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlM6-00049g-2Z
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:44:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nHs4xJvZ1S7egWTlfa6eCclpRlQFY0F2S9C9rRxL8l1Lc4GXq2Yb4keVZthEADLFqVlXBL88z98GLl9HEFt6ydx7Ak4LEKnsMV4rXHMzS3JaUHNoCldCwwl/Rkez64fVdQRNbHyFmVd/X5RXB+kyEB8KcFZuGZXJ+aSbOKUaqLhSJJqtJbwdgvcgVOM+vHhXMXhXz/bGzmcaP6Ros5tFg8l3npoxMixaY548uCjNGVq42G4to3cx4DOc0cIRH7ZyX6wqYZljh02qx5ifyoaGbuqbprTvdwk7g866aOnl+DYjD+/m4/nrgX1ATYsGgtYlZgpCPUKn+4H33s4TE0yX0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tg4VIhVXYMXP7TWkV2q51SFSYMEaSvUQMe3m9YWsX00=;
 b=eiDkwSJ8w4Fuj0cdyIL4KhhiLaJDgbdSr/jER59QSXlFB9qBx25XpaudDiKK8lVrCdgQOHdYgHrdDZxxA6pP3hXgAwsnCdHpQZgGltVPuWn6Y9GO0X9lmJZkgQ+MLAhsWr0/NcclalE3ChUPTD+g+zRfS3oi2191ShnCCE4ZsxGCFg3QLO4684TFU+Mxlg8FPCH3UFTaY3s+d7kcOfYsxRngrCd1TGGhL5sA/zJbNxGs8dlNw0ydx4UmkYTfBkglMVMRq2nhOygpiub5g4TNVvEBJPxq7i0NseeKFlBDuFrlUfrJ5SxJKN56+zOgi/QI689GN51dYl7b3x3rLC9NUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tg4VIhVXYMXP7TWkV2q51SFSYMEaSvUQMe3m9YWsX00=;
 b=VMXHQvoPMQvn3EbW2Al+fvHkkt55UljWEGi70YlA65uwD6P2SHwEH32Ywj4ZF63fZd41M8BpwDzwUOKQMAXuK2opbm5Nyrw77MCxCffZj7ycRW/CDtADnd2+1lM1Cbjq8RQfHi1+m6XgR6sjfuvZeQdjDo0YUmvM0wdAUsxHv1E=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3689.eurprd04.prod.outlook.com (52.134.69.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Mon, 16 Mar 2020 08:44:10 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 08:44:10 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av62LAReQhoZkKZ9LnT5dFdbahARTIAgAopwQCAACFfgIAABHaAgAADEYCAAAR+AIAASuWQgAAKpACAAABIoA==
Date: Mon, 16 Mar 2020 08:44:10 +0000
Message-ID: <DB3PR0402MB391663DB37A8D241092AD708F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4481F087AC3CDA691300710288FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316005219.GD17221@dragon>
 <AM0PR04MB44819E4A9E027F1555C33D0B88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316030744.GC17221@dragon>
 <AM0PR04MB44817A48746601EADA4E06BC88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316033447.GE17221@dragon>
 <DB3PR0402MB3916DA9F0F175B9D2E9E684FF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316084056.GG4518@piout.net>
In-Reply-To: <20200316084056.GG4518@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 253ef0de-ffb7-4f42-b670-08d7c9863295
x-ms-traffictypediagnostic: DB3PR0402MB3689:|DB3PR0402MB3689:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36893B6CF1DD7D7ADEE38D87F5F90@DB3PR0402MB3689.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(376002)(346002)(396003)(199004)(316002)(52536014)(7416002)(86362001)(26005)(33656002)(186003)(7696005)(6916009)(6506007)(54906003)(66946007)(66446008)(64756008)(9686003)(55016002)(66556008)(66476007)(76116006)(478600001)(4326008)(71200400001)(2906002)(5660300002)(44832011)(81166006)(81156014)(8676002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3689;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +3CNHR7kYClQQtUTbFix7ZOCYkPUsCa7rZlYN+6hwOybGB7499qm46C00Yi99G2Nwl8uZ4U8Gl2nQlP2MtqHaFveNmqZDUACmBLJep2bm5uP1vMhWOWd75x7FVfMY2so+7u4H8EC0XmH3r+FSazPDSibLpr6YvfYKDWsKRFuDBttjIpgb72VcJTscPm87uPDU6rSp8luKmMZI79mWMJWlafgeRc1aBks5eWEZRUVofk464osg9n9uPpq6AZ6j6oYY6hKkz7ZukD82vBFtIA3Zrlbi23VZEsX5aiq3D7Gzvo4737S9bUygllIcwl9zutxNJ+Z91pBsgBLC6JfXr7J0sqIMpsbbU2exQRVCgD9rn62RUJtkth6lxXUbojvcIAFFy4eLT6CAVwO4ica2Xi0FELeN9gcQy10O8mDTC9t0mA+kdX0RZo5BplqL4F/kTbb
x-ms-exchange-antispam-messagedata: gU4ZJ27MMFAAu6f/QF7R6g3hwmJiKgA5AaMyxzKAINosPytypBE0piQReN1Xywjfs2caD5TZtbjCNu+LESI5bQe779gCZZHI+s6UjwiIAhlBfGP5UOpBL+lSsi6wpuSQz36IB9cM3VuGQy0YtJie+Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 253ef0de-ffb7-4f42-b670-08d7c9863295
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 08:44:10.5228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VCpXcGjEZwvEjjzyfT81ZjIxtNi+NhcyPgWCflhIyDogj+pLe3tI+gckafrsslbyvzH24Z67oD5rl4hWSeKgJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3689
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_014414_125044_C26279B6 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.86 listed in wl.mailspike.net]
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
> On 16/03/2020 08:04:17+0000, Anson Huang wrote:
> > Hi, Shawn
> >
> > > Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for
> > > !CONFIG_IMX_SCU case
> > >
> > > On Mon, Mar 16, 2020 at 03:18:43AM +0000, Peng Fan wrote:
> > > > Just sent out. One more thing, I think all drivers depends on
> > > > IMX_SCU should not have COMPILE_TEST if we plan not to add dummy
> > > > functions. I see you picked up Anson's patch in imx/drivers branch,
> please check more.
> > >
> > > Ha, yes. COMPILE_TEST should be dropped for IMX_SCU_PD in Anson's
> patch.
> > > Thanks for reminding.
> >
> > I still NOT quite understand why we won't support COMPILE_TEST for SCU
> > drivers, with whose stubs, the build should be OK, if there is any
> > build error, we should try to fix it, NOT just remove the COMPILE_TEST
> support, any special reason?
> >
> 
> COMPILE_TEST is supported as long as IMX_SCU is selected like is it for any
> driver depending on any bus.

But without having " || COMPILE_TEST " in kconfig, COMPILE_TEST will NOT be supported,
I think as long as we have stubs for those SCU APIs, all drivers depending on IMX_SCU can
support COMPILE_TEST independently.

Anson  
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
