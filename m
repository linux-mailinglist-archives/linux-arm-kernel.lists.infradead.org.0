Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8BF15D162
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 06:11:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPuL7Ql6rMc9VxpVTMIUhejoiInU8Zj3acQ+MxmF2Ok=; b=kOSfCsaWGmnSxi
	HvytivopaOcWasGWdKpXrQZ0zhTE+pd0t0J2gElFYbBmDav1CpuKZ+6Vsywmn8QP/uOpSMgKYELmn
	sNxerpJNAs5HkzKsdFlRnzo94mwd3+N3/kYdYpQ7sPraH2tqski9Ufoyu5VOzSkfplDxjc9m5CWVo
	z3lwAp9zparvRpJ9WaEVn7V1O2fD1wC5uydGv0KbOOR+UgoegB0VTJksWnQAmUNTiXBK8YCeCqlvy
	D0ny1FmnaKXwiShVGWyKC8DiCSVHBoVicfDnOWGohm2qpWPCK9zXYcd1REWNS/khTHx4BwXZDMlex
	PvDP3dKs/9J5pwSjCzwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2TGP-0002KH-4Z; Fri, 14 Feb 2020 05:11:41 +0000
Received: from mail-am6eur05on2064.outbound.protection.outlook.com
 ([40.107.22.64] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2TFy-00026r-Uw
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 05:11:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mtJegUfKKfaN/2qfNmViR3jYsiHUWVveimjDpbWmWDNE4eoxRsIrHe/VzQGkALAXg6D9TPmcc3dSt9+7a3mAeR6pAAyMlyCHJsh4E+Z3CDD+tt9CuPdtfdoqIoWn5m0SxBtA14m15TVJUcCyNMNi0uOOAYCHkpm/NeAmYNxap9rYTf3MK9+cKa5RzABg29jAqasjDKzn09yxJbubMjWX+O+u+IHijcrSXox9Em/+OSXXFo+CKkj4jAK0/t5C4I0hCGvRpCN+T6+BKkXTkhwSlnHr0YagLIAd2gbinL7pwoBVPYTR6RlQ+7A4OiVzkSiPLSwSZy6u+UKM/p9Zk5Z3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GN3oub+XkqaonK/rjGzrTg4lw/HczDXlK29QtSC2JMk=;
 b=Un5XWt0ZRooQin9fhDaQqL0rU1eATzXlGLP43+g4DjdAbW2fwOGxDhg94FF66NOBPqMam7iUazpBpiwM50yrXJgmMfdi9PH3KI9RTQl4qbzlbsaEtrUMjDoeGC0qZqEuweoHz0xQZE6t14shaXHpMOxT340iNkCe25OywM4ggzsnH5BySHKkoMkqc73d3BAu3pPd7VvrNOnLPLxk7tYY0bnJ3Rs9o0iyFVa8bw+VTgtyzfdnil8BoZK5SA2ljoLMJS9pcTJRoo/6liBgGWjrrSKMU+S2k24lqYVEw6EQeZSSWVjcVHoNb+DernmXFbqJoJ37AmS+tZs+lqcyG94yEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GN3oub+XkqaonK/rjGzrTg4lw/HczDXlK29QtSC2JMk=;
 b=VOmmh5c5Dwti0oIHl9Kd2FyyamL2d7W/3g2TyeoRk0Cd7Uv524qM0mIoBrJ+9nO/p398hsLfTVktXlkwB+GPqbVce/7B5/h+gMjCzMnohETV+xZY6fPSOiwhfZBPYbZ8KMMd9MuiXVO7Ejg8izj6AM51YbSuIcuIWnwuFynEyKI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3833.eurprd04.prod.outlook.com (52.134.67.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.25; Fri, 14 Feb 2020 05:11:11 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2729.025; Fri, 14 Feb 2020
 05:11:11 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH] ARM: dts: imx6sx: Add missing uart mux function
Thread-Topic: [PATCH] ARM: dts: imx6sx: Add missing uart mux function
Thread-Index: AQHV4jmkBGoJScQ3+kWiDMpfJDDuQ6gYuY4AgAAdYTCAAArlgIABQuKw
Date: Fri, 14 Feb 2020 05:11:11 +0000
Message-ID: <DB3PR0402MB391620CB6FA1C3E86AD5C163F5150@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1581576189-20490-1-git-send-email-Anson.Huang@nxp.com>
 <20200213072710.4snwbo3i7vfbroqy@pengutronix.de>
 <DB3PR0402MB39163A56BF6AA37E3C691964F51A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200213095119.f6obrdqb6ql76qqy@pengutronix.de>
In-Reply-To: <20200213095119.f6obrdqb6ql76qqy@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f995d8f6-58e7-44bf-efce-08d7b10c4eb6
x-ms-traffictypediagnostic: DB3PR0402MB3833:|DB3PR0402MB3833:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3833E78187C004E29EAACE06F5150@DB3PR0402MB3833.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(366004)(199004)(189003)(2906002)(52536014)(316002)(44832011)(26005)(76116006)(4326008)(8936002)(71200400001)(81166006)(8676002)(81156014)(86362001)(6916009)(7416002)(186003)(478600001)(6506007)(33656002)(7696005)(9686003)(5660300002)(54906003)(66446008)(66556008)(55016002)(66946007)(64756008)(66476007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3833;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ck0JEhMzciHAVndXncU7lK3xs3ad/5BvCX0S3Xcn0A079fXrdnZQEitnuZEVfqZAHNuNBhmrzNAEotGBXbumbjmI9dr7nE8um/3sp7cXAx5KiMTsFKNBC/2eRhwAIcBRavrEBXgLELjU7oavPnASLnVND6iVRxJ4Z0T/mXn86UD7PXwnXtsRGZSuxgyOBS+xG9GDHQSoBb+JNRBcMYGWzPVdB2TAyyX2uyGftklOllDKNhmg0HN+dWR6bvoJeH6Jtoa7ZzXW8xN2jRWisAZJhId+iHLRoVkkTH9d9Yq0SbqgP5oCIRZHwZisNEPMtxmbi/Bt1ZGjzidyQJpqQCDYUXelArEg+thralpiw950oLMUCLHxhyVLnhWoNyNnu92Is7PF+Bk4twO0ZoJs7PR5GW2xKmIzjYtihFUbII9nxsVBHXqP8nJmMD9u+WD88U4/O494jS+2E8cEUWYgRoN2KJkgM2OEuu4n7V4lZOlKqjOO5JvJanCWbKYFVHGIoCry
x-ms-exchange-antispam-messagedata: ce2QojUW470bieHaJPGjoJCwT87kW53lcgyq3H+KQNmKZFnM7U9LL6DYajTK193Cx7k9QTlkb9+RmOIeWJ4Teje38beSqIekxMbaeaGq9O6a5ozb1WxuX86rPyR/MDt3t2z27HEc51w6uZHU6NkQPA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f995d8f6-58e7-44bf-efce-08d7b10c4eb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2020 05:11:11.3910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qoU5w2RzGYp6AX8uLUwzdNnwmo5nAUr5cwTXmQjNLVUfjJ0qgtdXE7d0gLM0fD4xPQg9dY6n5cEBrfc7GZFfbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3833
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_211115_107494_42B6809E 
X-CRM114-Status: GOOD (  25.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.64 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.64 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Uwe

> Subject: Re: [PATCH] ARM: dts: imx6sx: Add missing uart mux function
> 
> Hello Anson,
> 
> On Thu, Feb 13, 2020 at 09:18:10AM +0000, Anson Huang wrote:
> > > On Thu, Feb 13, 2020 at 02:43:09PM +0800, Anson Huang wrote:
> > > > From: Anson Huang <b20788@freescale.com>
> > > >
> > > > Update i.MX6SX pinfunc header to add uart mux function.
> > >
> > > I'm aware you add the macros in a consistent way to the already
> > > existing stuff. Still I think there is something to improve here. We
> > > now have definitions like:
> > >
> > > 	MX6SX_PAD_GPIO1_IO06__UART1_RTS_B
> > > 	MX6SX_PAD_GPIO1_IO06__UART1_CTS_B
> > >
> > > 	MX6SX_PAD_GPIO1_IO07__UART1_CTS_B
> > > 	MX6SX_PAD_GPIO1_IO07__UART1_RTS_B
> > >
> > > where (ignoring other pins that could be used) only the following
> > > combinations are valid:
> > >
> > > 	MX6SX_PAD_GPIO1_IO04__UART1_TX
> > > 	MX6SX_PAD_GPIO1_IO05__UART1_RX
> > > 	MX6SX_PAD_GPIO1_IO06__UART1_RTS_B
> > > 	MX6SX_PAD_GPIO1_IO07__UART1_CTS_B
> > >
> > > (in DCE mode) and
> > >
> > > 	MX6SX_PAD_GPIO1_IO04__UART1_RX
> > > 	MX6SX_PAD_GPIO1_IO05__UART1_TX
> > > 	MX6SX_PAD_GPIO1_IO06__UART1_CTS_B
> > > 	MX6SX_PAD_GPIO1_IO07__UART1_RTS_B
> > >
> > > (in DTE mode).
> >
> > Is it possible the using below combination, if possible, then I think
> > the prefix "DTE/DCE" are NOT impacting real functions, they are just
> different names for better identification:
> >
> > MX6SX_PAD_GPIO1_IO04__UART1_TX
> > MX6SX_PAD_GPIO1_IO05__UART1_RX
> > MX6SX_PAD_GPIO1_IO06__UART1_CTS_B
> > MX6SX_PAD_GPIO1_IO07__UART1_RTS_B
> 
> This is wrong according to my experience. If you look at the diagram in the
> i.MX6SX RM in the External Signals chapter (page 4111 in the IMX6SXRM Rev.
> 2, 9/2017) you can only either use RX/TX and RTS/CTS for their original
> purpose, or swap both pairs together.
> 
> > > For i.MX6SLL, i.MX6UL, imx6ULL and i.MX7 the naming convention is
> > > saner, a typical definition there is:
> > >
> > > 	MX7D_PAD_LPSR_GPIO1_IO04__UART5_DTE_RTS
> > >
> > > where the name includes DTE and where is it (more) obvious that this
> > > cannot be combined with
> > >
> > > 	MX7D_PAD_LPSR_GPIO1_IO07__UART5_DCE_TX
> > >
> > > .
> > >
> > > I suggest to adapt the latter naming convention also for the other
> > > i.MX pinfunc headers, probably with introducing defines for not
> > > breaking existing dts files.
> >
> > If to improve the name, just change the existing dts files which use
> > them should be OK, as this header file ONLY used by DT and should be
> > no compatible issues. So should I change the dts files together?
> 
> My approach would be one patch for each of:
> 
>  - rename existing imx6sx symbols to contain DTE or DCE
>    (introducing defines that map the old name to the new)

Is the introducing defines that map to old name to the new mainly for
NOT breaking bisect? As pinfunc.h is changed in a separate patch other than dts files. 

> 
>  - introduce the new defines you added in your patch under discussion
>    here (with the new naming scheme obviously)

Make sense. Current head file ONLY has DCE/DTE for TX/RX but miss the RTS/CTS.

> 
>  - switch all in-tree consumers to the new names
>    (maybe offering to split per machine)
> 
> I would also drop the _B suffix in the first patch which serves no useful
> purpose.

Make sense.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
