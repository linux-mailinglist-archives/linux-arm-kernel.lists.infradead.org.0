Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 982F617C99C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 01:19:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xaK3QaBSgzLjgB6IzWs9i6Hy+O9T2n+6FR1L3xWG+E=; b=H/bAmIw0uOR8kh
	q0hAFOtQlbVQUk9hyh2G6/ESIh3fASSeuAAg+ith85Rwa6WcT3qVLS6w3Ztwa45Aye49aIRQrzlht
	i2mCm3fml4tTl4iPHVjuQf281nSvbHUjxV7Ih5B+S5xDq+FYbuPRo9Vf9BBrX0K/j8A0vXLDOSLNk
	ON64afr8ODT2AkATbC/ao3mlUneuTtGptY3XhV5y6AG4oxn1WZYgo7gial8cYfldAxCIFWrvTLKKD
	E2mS8xNAExLIPxTFAYT9ZakDxw15OH/C1NzlR3tnkfF9WYv02abN2/2DtSCxPZn5Zy0Xt1OtC6+lt
	6I6rDUSfaEVq2purArVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANB8-0006pB-Iw; Sat, 07 Mar 2020 00:18:54 +0000
Received: from mail-eopbgr80051.outbound.protection.outlook.com ([40.107.8.51]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANAz-0006lB-Oz
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 00:18:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mEcOXu3fzYIA0yIoQ+V7kqWGrkUkAvU3OMqQKKQanU/vv5WAsLVqHQ+YRUOcRI4zqMNtA59HH3etpbQefSlybjNFOj9sCEjeUUg35Fv+NyBS68lfdW3U2ideyWeG4P0YqvBvkbNxJeGwUs+2IIa/buIfRR2ZsUhkPc4ubBtL3pXw2VeOO2Dgu0vyu0mCKHDqsY0LySuR7y+2X8zonMOT1uIcYuF/CExj3PjAmBhX4umIHUb/mflI3K56MI/cz5Quba+9mz0ALYGJhaRk2mVGmh5GTNcaZlj6w7qsHDIePl47kk5HPsoB/nb/viG7e0eIAHyG2vS84YSzoeoM+yeTbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uf9mR5PdB0GN4wMHEMbzXtq/OqaYUAcb6mIj9y+EvyM=;
 b=ZwmzBkOyUXBJBH+etCKNjSz1WI9dFVvCAvEBk5AIEIkrAK0XxWfJwR3bcjkfsSTCU5NsnFPK3KemB9rbXszmzb4zMQ9MTmrRS1E1lY5s5EsGr0B2c3GEy2CnDJrII9t044Qqcff66vuZecSoZJbCxCKMfpl1tzrscjbx6pVimRy7r3ILYmrC8W2Q+7O9ef0OOt6dU8vZB/gX/7eSmtzUzxgnT+4DqNSvrDkEuBhcsL6h64YB2ZlpMffXxrDWDbu8yHzpKItDUEXSys7aIOcjxB3tW7u8rLX3iZE1CE2AON/UviddCY6+YvJI4Azvfzr1tcYALU0Lbg+PvhHFraYBjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uf9mR5PdB0GN4wMHEMbzXtq/OqaYUAcb6mIj9y+EvyM=;
 b=qWC7iIR1cf/7ExNUtGxAZ0xAmwams6ozb8+aFzySwL97HlOUtrNXa2QmSsaumiETt5Mv5noO8PtLGo3VWUgMq/IeO3kWAsa9H0GQYH1rRc4TNYtdfF67EHyWRMmViSr18WDr8iRIwdy8FObweaqSBnTScEK8Z7XCuSgjGRxpHos=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3818.eurprd04.prod.outlook.com (52.134.71.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Sat, 7 Mar 2020 00:18:39 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2772.019; Sat, 7 Mar 2020
 00:18:39 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: RE: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Thread-Topic: [PATCH 3/5] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Thread-Index: AQHV887MNanm8ugiD0KiUbBo9lnYDag79IUAgAAJFwCAAEHEgA==
Date: Sat, 7 Mar 2020 00:18:38 +0000
Message-ID: <DB3PR0402MB3916EA7BAACBBE64F2609DB6F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
 <1583509356-8265-3-git-send-email-Anson.Huang@nxp.com>
 <20200306193310.GI217608@dtor-ws>
 <CAKdAkRRhXE6Hviqx90_5hWmP7YQnKO2QLJgDYnzt_CPjeH7D0A@mail.gmail.com>
In-Reply-To: <CAKdAkRRhXE6Hviqx90_5hWmP7YQnKO2QLJgDYnzt_CPjeH7D0A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 51e1c290-77a6-40e8-695d-08d7c22d15cf
x-ms-traffictypediagnostic: DB3PR0402MB3818:|DB3PR0402MB3818:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38180894FE9FFB08CA126914F5E00@DB3PR0402MB3818.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 03355EE97E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(346002)(376002)(39860400002)(199004)(189003)(71200400001)(33656002)(66946007)(6916009)(44832011)(52536014)(7416002)(2906002)(64756008)(66476007)(86362001)(66556008)(26005)(316002)(66446008)(4326008)(81156014)(81166006)(186003)(8676002)(5660300002)(54906003)(7696005)(55016002)(53546011)(478600001)(6506007)(9686003)(8936002)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3818;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MGw99w86PNgBMGKP/RgnaO4f5u1JAq5PLFHmypOyPqBXp0SUcN0n4481mjALOpXwMDFnaEqfqlv/kP4q2AMUOQaDrWTT06QUciNOCgSNnm9IfJGUY4QaTKdU9Wcq+JSuOkYwCAWb1DJ557Lm3Q6Mk0HI14kN7A7/tMJMJfxkdp+dOoskXYmTau29L8qg2f2DXSli4eONlLdSrl3yh8NqHV6c07AYwedOC6/RynS8DCjdQdscq1preteHKHW8dKjm2ZlFA396XeOPJZ/0D/scuxHYMwDt6E6EKx28lmNbm5eVAeM2DPJgCSGZM+2Jc2XoBTtVHI/1YPXbWiHqrdbG/6LeJQD/nJH2Eda7I4x2DlOF6/9lv1QJZ7UVgvRHnvJQ58HWXAMR9cgM1iCpzTatnO/yHDVXDiPYVLUiae9t5kT6rrI9HQEh8jyYDjnxhHsD
x-ms-exchange-antispam-messagedata: 4zZHg2zNODRJrryfGOQ+r4vwtVyZFkDatkndTMe+NkFLt5jlZMBFJ8mOR/Wumqqcpzw+ZN0B99vAXyJ+o2LdxzMq5RK4QNrd/kwvlXOILpluFoms4MtQb2NufDLfVhyW1vw9Pu35dc8V6LvEOKKeVQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51e1c290-77a6-40e8-695d-08d7c22d15cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2020 00:18:38.9916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jsHwqEr6oKNXNBzZsE23Ram/kLBAq9Am0wTksjFivWnNDGLaTKZf+qH5l/YE4ORLFB0uH3+WWd39SIyhXad4hQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_161845_911120_474A82F9 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.51 listed in list.dnswl.org]
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
> On Fri, Mar 6, 2020 at 11:33 AM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > On Fri, Mar 06, 2020 at 11:42:34PM +0800, Anson Huang wrote:
> > > Add COMPILE_TEST support to i.MX SC keyboard driver for better
> > > compile testing coverage.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> > Applied, thank you.
> 
> Actually, not:
> 
> ERROR: "imx_scu_irq_register_notifier"
> [drivers/input/keyboard/imx_sc_key.ko] undefined!
> ERROR: "imx_scu_get_handle" [drivers/input/keyboard/imx_sc_key.ko]
> undefined!
> ERROR: "imx_scu_call_rpc" [drivers/input/keyboard/imx_sc_key.ko]
> undefined!
> ERROR: "imx_scu_irq_unregister_notifier"
> [drivers/input/keyboard/imx_sc_key.ko] undefined!
> ERROR: "imx_scu_irq_group_enable"
> [drivers/input/keyboard/imx_sc_key.ko] undefined!
> make[1]: *** [scripts/Makefile.modpost:94: __modpost] Error 1
> make: *** [Makefile:1282: modules] Error 2
> 
> If you want to enable compile test coverage you need to provide stubs for
> the above functions.

These i.MX SCU drivers depends on IMX_SCU, I already add the COMPILE_TEST
to IMX_SCU driver as well, that is why I put these patches in a patch series. Maybe
I can add stubs as well to make sure build passed even when IMX_SCU is NOT compiled?
Will send V2 to add stubs, it makes more sense.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
