Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EAC15BB6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:18:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSCMXX+s0aq469NyUtAEL+AOYBFbLE68r45ANqArz8U=; b=S7Ym6SHcqI6W0V
	EEitQmUnLd0SL8vbFPlk2PBldWb91IB48cKiOvBqTUhcPuYX2TjLtVlQdCeYoewRMtW65UemIQqGo
	YPm0AeRZ6dUeREj/AlyYes4yGyxYrByDrW7HZY7601QLb0RB5a6oW4+Bqw4d5vF0bPzSNRftU8hUS
	BvVueD5W+xpb39JrJrQtyFK9Irs1cbF6KQ2SPqhCwmmsrMTfqf6qMCHjaYOhbuHaeirfcA3msN6LL
	uu5HCfzYnOZSzZQUppO/E1bkmxZFDg8gd3KL1Hkq4OfYUPIy0gYEH7cUyidCtA6AWCEUHOiYXn8AZ
	/W2g/fx2H2FjvSkjnfNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Adc-0004cL-5c; Thu, 13 Feb 2020 09:18:24 +0000
Received: from mail-eopbgr00040.outbound.protection.outlook.com ([40.107.0.40]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2AdR-0004bo-NG
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:18:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ce7RXmGxnYJFXSb6byLbeNXq7weZUafKaficMg7QgPLwgqvioonq4x3PqyYyhNJnsLP3PPsTvDBnLUrKxn5Z8AkNYTMG1+x6TTHy8rKPbAw9M4FuMI0Bxqxx1uImzoWgtenqBAywNgXRdGbcIAnYMUVXrrwka2qhklrkxDD5bBLjEh+qTT7xLrPFDyvasOsIOWMNWgurYghZquheieEU5fMn4+Czea+yAI+F+KZKj4XYU9nHJKaNh3yM8xZizXF8WJUDvWRtvNIWj0jfobpCnXnOSVLe+pq7e3D1DlGzxFJcNli3q7aw2JGrg1dIUOe6J7T8ZzyJ1xPGWZI7KiDzcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=39UQtUx2h5ebjmkJQW49ZE9Pc1d9ojpG/U5Xe7u7xsw=;
 b=EPkvwZJtnVOkn9sFEZNc/Yj2enATO7udMS2zLGylLHWLqd37+Xg2+K4cFlBD7bv/asECVXXFiRo6Qnbp/t8blCWmJcBfjRdgSzjsVLXMco0QIiVLjVQPenpmhMAqEW3MW5LlBuSHmWUDpvVdyXnEPsNH6vVMbdX8SwK78fmNvWGA/vNOvKNwfmlETt2bMCAzCveXcRaI7RuB91LXr/zhEAMZd3NQ+0JBWfT9bzFdbwoZP+G0mz19h+VvGwdB/9pFmoLpqQ4vrLo9mysDS30ZU26svnS9JVTmI1kyHBBEJ0tNecT/DF+Co8d7pVMhg6SsyaQGo2kTF10uqr9YhBqc1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=39UQtUx2h5ebjmkJQW49ZE9Pc1d9ojpG/U5Xe7u7xsw=;
 b=TrGCtVI3Lx13QDfSNkEFScy/xT2QUsg1kzwTQeB0s4WrGbjuMhWLQApK727UxZDBolw2tkEaHdLh7Qrm1SAQZ0z5f04cX1XGbVfadK1lc/0LRh9k70T8R7P4ikP72hCiGrILAZIJWMNO+TCrHzGcBYvIBwMP0y8X0tS0Chqd5DQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3915.eurprd04.prod.outlook.com (52.134.71.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Thu, 13 Feb 2020 09:18:10 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 09:18:10 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH] ARM: dts: imx6sx: Add missing uart mux function
Thread-Topic: [PATCH] ARM: dts: imx6sx: Add missing uart mux function
Thread-Index: AQHV4jmkBGoJScQ3+kWiDMpfJDDuQ6gYuY4AgAAdYTA=
Date: Thu, 13 Feb 2020 09:18:10 +0000
Message-ID: <DB3PR0402MB39163A56BF6AA37E3C691964F51A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1581576189-20490-1-git-send-email-Anson.Huang@nxp.com>
 <20200213072710.4snwbo3i7vfbroqy@pengutronix.de>
In-Reply-To: <20200213072710.4snwbo3i7vfbroqy@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 26b4144a-d991-40ae-8a3d-08d7b065a550
x-ms-traffictypediagnostic: DB3PR0402MB3915:|DB3PR0402MB3915:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3915A0046A472F384B7EC34AF51A0@DB3PR0402MB3915.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(136003)(366004)(346002)(199004)(189003)(9686003)(55016002)(5660300002)(52536014)(66946007)(81156014)(186003)(64756008)(76116006)(8676002)(66476007)(66556008)(66446008)(81166006)(54906003)(6916009)(316002)(2906002)(6506007)(33656002)(7416002)(26005)(86362001)(8936002)(478600001)(7696005)(4326008)(71200400001)(44832011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3915;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b3dS10JGOXV+6H5QOYxC1qRATqYp824SOQmlO/n4fDSVWSjEaQaabqteMHFN7dbXWvBxgWsch8/SpDU5+6/U7IL3pbe/2d+06ofvgAKZYlKHpohcIjgOH13DOQ+zIetozDjZ8oaoiUsWS8oR69vwQYQf9WF0uu3/VxAQc0ziVxzr9vnduw/ZCpjQS5Qoy9LcTR+78LF71xQ+Nf+9zQYOpGxS9aUTPL71FB1zTCJluMPWjXSR+tHv9qAAZEr8SPEp73ccRwokLNg3c+JuG02my1sT0TeX7iQ+tfwBtt1pS4l3WcBpkz8DimJZeUyuJhfF/3szP2Fb/aHZVHxLX8XDZbTHvwyHIVM9g8RgwVcnj+iMjc7RACKBzBBXvEzxBz6UXvzcwCBF9ca+XzWvr3PFBE0gT088oEs6imXQy64xhQEY/HxrWHjxzpHzVN74AVSfs2b2OSehX69hPhgwEyfA/8yttscEvEfBSwbI8Ch+2lOhxRT58Brc+r3gxHArr3AE
x-ms-exchange-antispam-messagedata: N+CfxQ3Acg0U6ybGy4cjXWr48bYgQoYtC0Zn4lTEFRK1YWvWivhg4pzAZAEq7V0AAeYUQDeyQFidmCTBXEx6vALTHN9mftCz0uhsLTzl7NfdzBm4xTcCm5vVyWG2BqawDZvpsscA8YZKXhpJ9HoVDA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26b4144a-d991-40ae-8a3d-08d7b065a550
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 09:18:10.7109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5yXQ3HWCi+G3zJal+Y2oJH/gRBPcFo2Fv1RRS9C+lzh4oLQCOhVJeyyRMCNj21DkdSWci+MudS68atjScfJMpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3915
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_011813_758833_1B75254C 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.40 listed in list.dnswl.org]
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
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Uwe

> Subject: Re: [PATCH] ARM: dts: imx6sx: Add missing uart mux function
> 
> On Thu, Feb 13, 2020 at 02:43:09PM +0800, Anson Huang wrote:
> > From: Anson Huang <b20788@freescale.com>
> >
> > Update i.MX6SX pinfunc header to add uart mux function.
> 
> I'm aware you add the macros in a consistent way to the already existing
> stuff. Still I think there is something to improve here. We now have
> definitions like:
> 
> 	MX6SX_PAD_GPIO1_IO06__UART1_RTS_B
> 	MX6SX_PAD_GPIO1_IO06__UART1_CTS_B
> 
> 	MX6SX_PAD_GPIO1_IO07__UART1_CTS_B
> 	MX6SX_PAD_GPIO1_IO07__UART1_RTS_B
> 
> where (ignoring other pins that could be used) only the following
> combinations are valid:
> 
> 	MX6SX_PAD_GPIO1_IO04__UART1_TX
> 	MX6SX_PAD_GPIO1_IO05__UART1_RX
> 	MX6SX_PAD_GPIO1_IO06__UART1_RTS_B
> 	MX6SX_PAD_GPIO1_IO07__UART1_CTS_B
> 
> (in DCE mode) and
> 
> 	MX6SX_PAD_GPIO1_IO04__UART1_RX
> 	MX6SX_PAD_GPIO1_IO05__UART1_TX
> 	MX6SX_PAD_GPIO1_IO06__UART1_CTS_B
> 	MX6SX_PAD_GPIO1_IO07__UART1_RTS_B
> 
> (in DTE mode).

Is it possible the using below combination, if possible, then I think the prefix "DTE/DCE" are
NOT impacting real functions, they are just different names for better identification:

MX6SX_PAD_GPIO1_IO04__UART1_TX
MX6SX_PAD_GPIO1_IO05__UART1_RX
MX6SX_PAD_GPIO1_IO06__UART1_CTS_B
MX6SX_PAD_GPIO1_IO07__UART1_RTS_B

> 
> For i.MX6SLL, i.MX6UL, imx6ULL and i.MX7 the naming convention is saner, a
> typical definition there is:
> 
> 	MX7D_PAD_LPSR_GPIO1_IO04__UART5_DTE_RTS
> 
> where the name includes DTE and where is it (more) obvious that this cannot
> be combined with
> 
> 	MX7D_PAD_LPSR_GPIO1_IO07__UART5_DCE_TX
> 
> .
> 
> I suggest to adapt the latter naming convention also for the other i.MX
> pinfunc headers, probably with introducing defines for not breaking existing
> dts files.

If to improve the name, just change the existing dts files which use them should be OK,
as this header file ONLY used by DT and should be no compatible issues. So should I
change the dts files together?

Thanks,
Anson


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
