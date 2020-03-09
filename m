Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 479FD17E152
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 14:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/RX8OdM+d6bXUpQc/TdG2pM5zgfy2Zel7Tk3npEn68=; b=EGyzgGdUedMeAH
	CDNxVVdyYqYbfs37onhjNdMNtTZ8TUBqrHeEfaFyBNSyPRtSNEqnLHWq1AwEEEYNcHOBxAwZj4xHT
	yHR0Qy/AAPQFBDT9c5b9q8HgwEVavBPSFTOeqnbZ82xs+7xzo0UiQh57BYDWhv6KNEdeXJ2EaGhir
	Wuye0PMF9DIN8XiMOpcLIUJmZNXcC5ffaD+3wZkDVF08cnzahDm8KB+q6XpO5m9xYOhquUP40Din3
	O8KE2lk3Uk7eSU07g0L+fhN1/QbYhkHQysrJb0FlOOxFduLI2PLiz6g4Ic5priwo7yOt6SazPj7BB
	zjQqvxQ6AcVG5m7S986Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIaw-0000QC-Gy; Mon, 09 Mar 2020 13:37:22 +0000
Received: from mail-eopbgr60065.outbound.protection.outlook.com ([40.107.6.65]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIao-0000P8-8y
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 13:37:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nw9yB7A08OHbVPwGalgIY9UeK57fLLjwXkuVkuS0Cfz+GIYmDeRV0m+VHmcr3cFzHUn+yOBWfAZ7cm9F+MRvaSU1APj9fyqycwHKLdKygi4PWf43W4nOzx1DREm+7c7aU7PUrVp5+t6MX1i/CTbUo8v/qFiG2Aqp8Y7AoTxxCnT4qT+q3T9F3LpVIZwLUTwBk+C8IIggho+eLWXmb8ftzpaUIL8D9akwpXKokmD/8zS2g0fno33+1jC0gz8QkfE/xQUiOegVVt4VW7xMuOBqRmhk/WjuDI/kl/kUI/76xF8f87AXTmqoZIuPISGAW1yJCKzuDrNCGUf/J7F1wb0OpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4zaGIN+vMn6CQ7AMDzBnDfmCSotkEzqv3Hb3T2hzfRY=;
 b=AfZ0Fl9hWYpIZI+PIjjbncfrJDQy9hpgpctxvysDiH/8dYtXkeNB6tz+okk60l1GSgxkE1aYog/Ct/btbZ+f4qYGCZ5puLo0Ue/KTSqX78mqWurDMu2BrBzOReDjsggmMAkFhtR095X0ybo3HfS1oknWJ9bFnn7HUYcGj6ADdq9EDOkYrOJ62LZmBTtPoXgynyInztXtzT4yJt4r6OsjDSpz7Y0pyWI3BZlUdXw3JPPuDGRLvq/FxIDOVBjTJAmaEvGryX+ltLxoyV7QorQdKtRzeZ0SlHOowMHdpjIz+IJvlc6kAzrmGr3qxurQILj+L+JJldIJlEOy38cgZtkYfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4zaGIN+vMn6CQ7AMDzBnDfmCSotkEzqv3Hb3T2hzfRY=;
 b=AtqoN+FX+0p35to28knoJpw9BjEWjaz+6DjbBqGPttFnK1KDA54ttvQ5TdVRasw+Sl9sLgfLyC9d5ccqlaJYVVEuSV/LYMDCEOdb5CbpvUzw7dPB4AIVfg+lNIuuXXIq7W42emN5RcD/DbutqOkUjBbxoAja1KcfNIgJ9BgdJoo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3898.eurprd04.prod.outlook.com (52.134.65.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Mon, 9 Mar 2020 13:37:09 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 13:37:09 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av62LAReQhoZkKZ9LnT5dFdbahAGiGAgAAnYQCAAAHeEA==
Date: Mon, 9 Mar 2020 13:37:09 +0000
Message-ID: <DB3PR0402MB3916AE9BA2DEDA066DF0FCCDF5FE0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <20200309110609.GE3563@piout.net>
 <1ad38cdb-bf0d-1c19-b233-15a5857bd6fa@roeck-us.net>
In-Reply-To: <1ad38cdb-bf0d-1c19-b233-15a5857bd6fa@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2d9fe1ca-2e10-4ffc-34f0-08d7c42ef78f
x-ms-traffictypediagnostic: DB3PR0402MB3898:|DB3PR0402MB3898:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3898C32BB528FB881D7C4C80F5FE0@DB3PR0402MB3898.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(346002)(376002)(39860400002)(199004)(189003)(52536014)(8936002)(478600001)(33656002)(44832011)(7416002)(2906002)(81166006)(81156014)(8676002)(4744005)(316002)(71200400001)(7696005)(86362001)(110136005)(66446008)(54906003)(66476007)(26005)(5660300002)(6506007)(53546011)(66946007)(66556008)(76116006)(55016002)(4326008)(64756008)(186003)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3898;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uVrf0xUjhbn7vMkpRw8Z0QweYAFgF2reVg3oEcpwRIBP4zbXCvO3V9q77eR/d93a7DHafwgjV8cpMR6mAWPp4QrReVuVc90R9NMXtmMI8KOkBnBV3wkLU7OkzxA52b0oSi6j42QuuqdfPNykD7rC+J69mFrRlzRsxe7lGWiXQHUpgUvQ89OlBHEbQ2jBbTO1BxhIqFUOOVt54wczZkA8Fqk6T00I8Qvw3T5nOsEN49N26AwhSq+T/fO8A9meKdt6ED86UHpXwrqC/9UB/d4YxeRozMan9gLMTI0pdC9xyfmsdZXIqgn51o054+ranTSt9hHeMZHHKatNYH3dupIV+OeCtgCqTvJLI9L3H1aIZ7JgHhbVGji7abIKDkoHcRouW5xzHphssB1zHCigZHc1yKR6IPt0Qp37HVSkBOsbCUF5KrsUdTO+8ctDIR7eZo56
x-ms-exchange-antispam-messagedata: C05c6USiZ6HarBI6x/Y6/GM1g+6pqn3jMIxG7faApeoC4m2toOZej+Lx4M1V615ls/O+QTXS0y/nbKt4NSOZ9mTmDKSVt6NgRFgynE2H+64A0aiyjsrW4EEhmghiaWznIBFpTmBBz1QH1eDyD8T8+w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d9fe1ca-2e10-4ffc-34f0-08d7c42ef78f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 13:37:09.6332 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mgvCLy9koV3zP3CA0mJu7Lb30m0hlz/ghnlMCLYEEfxPPgtJQ7qWShxoh7gbIlIDQbaggqw97cowwO5NxMlRNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3898
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_063714_320372_483062E4 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.65 listed in list.dnswl.org]
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



> Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> case
> 
> On 3/9/20 4:06 AM, Alexandre Belloni wrote:
> > On 09/03/2020 08:38:14+0800, Anson Huang wrote:
> >> Add stubs for those i.MX SCU APIs to make those modules depending on
> >> IMX_SCU can pass build when COMPILE_TEST is enabled.
> >>
> >> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >> ---
> >> Changes since V2:
> >> 	- return error for stubs.
> >
> > I'm not sure why you are sending v3 with the stubs as we determined
> > that
> > 2/7 is enough to compile all the drivers with COMPILE_TEST.
> >
> >
> 2/7 alone is not sufficient. With only 2/7, one can explicitly configure
> IMX_SCU=n, COMPILE_TEST=y, and get lots of compile failures. Granted, one
> should not do that, but 0day does (I don't know if that is the result of
> RANDCONFIG), and I am not looking forward having to deal with the fallout.

So the V3 patch series looks better, adding stubs can cover various corner cases.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
