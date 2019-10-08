Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166F4CF085
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 03:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYqn0yw1JjA1NLDico+z3osgzPG+OKeL13PLHmY8HB8=; b=uAkDn3CTEIXXLT
	MLmA6v4FakjEArVrQKGldD0N6FrRh4QmJHzVC4dCcuY1SQO/zHYbUiV/q8vy7KRQi772vCXMJfAJl
	oSBevZeMXivZ7NsgJK3uIh+2C47O+LIPZf5x6gu5AXUdf4mUPKt4cIdARSplyFb6gnHl6s9DlnIos
	iF3N05l/u4B4c26op0GZ6WJYKdvOU9Sb5nXeVINlSxnrj7aJN3g4lwqxaPfyBz28MpugqwfYjmNVT
	yinS6KVdv76IPKlUzcDnlMyRHxsi11/CweASil2NOHrr8gh+qWWXhshEq/aTVxQFUIoOdebH3L9QF
	d4ZkFq5oiRDM8/+MUnuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHeIe-0008E6-J4; Tue, 08 Oct 2019 01:28:28 +0000
Received: from mail-eopbgr60047.outbound.protection.outlook.com ([40.107.6.47]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHeIU-0008D7-4t
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 01:28:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mey6uwVXetKQLI+hXLmjqYI84bTB45yh4nDqOnkTKi20uJg2NKc3zV/jTK7II6egQ81R/ybkFT0ZLQULdNu5IZclrR2qUK8mTXK0SjDnDAEPF+ag6nGdlgtlEe1kQf9YyDHiHvjtzn5SM9ZHLsGdrXsmK27inqMDIoRRT0BgIdyrDz65b0Jh7NFjke13YUdjjVjsnRavEcI+JVBmWSXL5XsBgYgTuai4W2czyoXMXKmI9TYW/XM9doyi8dqfvibUHayStoeM5UNeBLUYt3VH+DZTMRrYTtpnLctiW/ibpJ60MQ9IBSK8l+DM7OkVfCXh83gABprXQ3XVvqVQxYjueg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wEMJmBzAly6NDZmLoajwujNdMQMkHcu1Hk85AvMEopg=;
 b=lm6ShDmXX5gIHznmLAp9C2v3gRgTHgocqswD37Scfms4oeN/ga5WkbtyEp1gAxbHVWLWHr0mN71+HUo+70qtiuqJGGo4XvDHuRCwd/tZwRXwJ0cCwGZC708ziDVDRD+xfCE4IsnXSCvNoNplCSlYScWv/N7OMq+OywYnlG831dw+4ZYoKob9itkrT2h4w1oedZjbJZPgitAhhoyGasTicuXfZDK4IkL9bQQ8xg9diCLuA/+x3dzIDflSu1q2Nubnndm3im7yp9VlPlK3SbLZoj6Wp6g1Qj58uP+rpclRYeAyn3kV3jcHSSc/17kQ1WlvN9pyPpONxFMKrhXGQBgrQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wEMJmBzAly6NDZmLoajwujNdMQMkHcu1Hk85AvMEopg=;
 b=JBzxdnVDXnFDHM4hpIgLdqryyM6x3w+TlFKTqeH6sGwaF2D2Q/M/BpMeIHOjPv/QahKEX5ZefkWbUPxgVs8VPOCHpZL4UQmOleubmkoVf5IMFyKPuf1cEteNxkODIEF3JEWmzXigG2cmlgtgdqHPVyQ7hUt3mRMZhmi45vdkf9s=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3846.eurprd04.prod.outlook.com (52.133.28.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.25; Tue, 8 Oct 2019 01:28:15 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::b0c2:4fbb:fae7:991]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::b0c2:4fbb:fae7:991%5]) with mapi id 15.20.2327.026; Tue, 8 Oct 2019
 01:28:15 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/2] arm64: dts: imx8mm-evk: Add i2c3 support
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mm-evk: Add i2c3 support
Thread-Index: AQHVbs9cKzo2IwFQHkWnSns6k6P0dqdPNl4AgADbL8A=
Date: Tue, 8 Oct 2019 01:28:15 +0000
Message-ID: <AM6PR0402MB3911D2C2A28C177CBA0D34AFF59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1568886408-18168-1-git-send-email-Anson.Huang@nxp.com>
 <20191007122313.GJ7150@dragon>
In-Reply-To: <20191007122313.GJ7150@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2854ef6d-0cd3-4b0b-e8ce-08d74b8ecab1
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM6PR0402MB3846:|AM6PR0402MB3846:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB38463FAACCBD951E7DED48D6F59A0@AM6PR0402MB3846.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(346002)(366004)(376002)(189003)(199004)(25786009)(14454004)(71190400001)(76116006)(66066001)(478600001)(71200400001)(33656002)(11346002)(446003)(486006)(5660300002)(8936002)(81156014)(81166006)(476003)(8676002)(44832011)(4744005)(26005)(186003)(6506007)(2906002)(7696005)(3846002)(76176011)(102836004)(99286004)(6116002)(55016002)(256004)(6436002)(4326008)(7736002)(316002)(229853002)(86362001)(66556008)(52536014)(64756008)(66946007)(66446008)(66476007)(9686003)(6246003)(6916009)(305945005)(74316002)(54906003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3846;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fQWJJkHMsxn5H9qjWQxR3nqTWkMV861Z5ns5t0S/lOhJv9Tl8j1rAWrF+a5MMpS+cAZ7N3vY3FXLPl6O3XRHVSEv6G+hcVmpOoGy4BnpZsxUV+hVktpDG05XZbv4yDFWkbVKQu7/lZrSsrugrliUb+aIIFV7Zj3SiCWBCwNTT5hZX5SPnz0yKava8SG8zqWlgVpmEeGmphOA4Z/my5gAefLV7WOeT3JoRjpJLk/FjvMTkMXP7s9fvdJ+1WNorDQnBetwBww2y2sstCYLT7i89C64xRWz4CCMfevJs7WEyuOuf8XJjSaq4fmhqgiKaYlhFgPOwUPsE2HFMz6hw2lNAGz+XkOZhgjyLBmKbdX/vD3AbBf8BMKYcmwFBMs2VzIjmyC1eKjp4xp3H3Yj+Y7qtQ9f3NwiBjdEBw8LaNuw7rU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2854ef6d-0cd3-4b0b-e8ce-08d74b8ecab1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 01:28:15.1992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ECi93ePy0PoAwQmA2MkUXDW8cAMvvGJ1vTY+StC7Kfw7Wa++UvpJH3XCkI8E+jtZX0eiiPMjTNmINsL47XpbWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_182818_189995_0659E252 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jacky Bai <ping.bai@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> On Thu, Sep 19, 2019 at 05:46:47PM +0800, Anson Huang wrote:
> > Enable i2c3 for i.MX8MM EVK board.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > index f7a15f3..7758c1c 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > @@ -306,6 +306,13 @@
> >  	};
> >  };
> >
> > +&i2c3 {
> > +	clock-frequency = <400000>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c3>;
> > +	status = "okay";
> > +};
> > +
> >  &iomuxc {
> 
> The iomuxc node is being put at end of file because of its huge pinctrl data.
> I2C devices should be placed in alphabetical sort though.  Can you please
> have a patch moving i2c1 and i2c2 to correct place first, and then add i2c3?

Done in V2.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
