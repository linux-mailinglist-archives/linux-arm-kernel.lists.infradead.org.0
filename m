Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52B513543F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/iOrNj3NHf3Hf1TT+D+YeaLSm8xzs4/BFg8876ifvU=; b=ZjXX8KiXOPLzbP
	3qkzyGOYOgnATjym5NxCcHJB85r99nd6bQ2s5gt8bcRM/OJFanV5GIgoAeld7m1trPDKm/OS+E1Mt
	mUE+h1p+YfgOcMC/fowSXvXOAZ7EDzox3BD4ZDohXI26Cnlr8yIkXHIzGYnj/CvZ1WOAYlPEqrZwo
	B5slHqMcYLZDnsG+PdLJupJzeo/ZMHjlG4wzKv03sVQQOi6VBJrvBrluEDDACPMNNeJOCjsYUZ7Ie
	2wYMB6eHxduP3ltJkQhHBsA5P9TpO+a8s2lbVSC0aUYRxStjk/yj2OBsrWqAoNByd1QOtuVDAc3ZW
	2DMluGor8teBLetI4MHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipT82-0001gq-5D; Thu, 09 Jan 2020 08:25:18 +0000
Received: from mail-eopbgr80071.outbound.protection.outlook.com ([40.107.8.71]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipT7t-0000vX-O3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:25:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=McjYQlRDKv1qB9yb9n4Ykg11XkgLZVxu37lBAIxNIwSVv040EgKh5jUzdGF0wjBEUb+9IEcvhZ5G4w2NsST1KUPKe+NUeQzZGLE84oIYqXMWzoeCM2zkLKS4v+Lx1guMCoP6rIYNRwVViQtqoX2pLcXAAxJNDkTv+yyPj91C/vvqD0hKZuDjy+SdxYppfCcf7ZTw291sjVLhe9AdS6Rq5OlK1P4p+mV8hAbCJkI27hQI0rZXo83XTu4SLxwtvH/c83Iilwx3xv0ywBQRwsUIOjk6lb9/jhzRY2bb+jwaoHfVbXF9io4b3awsYMIL/Ut/fDyoXVx64/5NPBvpHqQpwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kxZcaIEVu1vc+vQ6DJdLtThVQkvGXLSmK659Deghx6k=;
 b=aUoDdHMN8aeNtUz8BQgP4j2B9dqdEo9UYc4DDGBed1SiHgnIJlKggbVOqdOtHf5CBrvCl8unXWV4LCVxEF857Fi/yMG+ZBQPmUVXd1B2E3zilAJfKV8Hv5Oha8vvC6Sbv5vijH1+5qgawus+7giYk+uGdszosZrFsZDL0xc3PDHGF2t1tT9wErKks0ZjLgZfD7wbnkZY4tE2GDy0gydz5jyaatG9CkO3rm6pASiwsDj0RFmJeFl2EOlkgUHc+KdKVT0SkVe0zG1+9qqCjrezWThBRhHMjJNB0VDP/41G/z3zm2BXkPOoEhkmDDYK0RwDmdrfln//0K7N2MmSIyOmDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kxZcaIEVu1vc+vQ6DJdLtThVQkvGXLSmK659Deghx6k=;
 b=esTMORPm4Osxom9gV7sO39cyATBBFsRk+L5Z9ehE4+xxA8CRAIxU/CMBZYXV2nPvWbyEGKIzppoI5W4XW+0QGMdftJm/0Urbb1B4/Ga+/nUtKc5m1uGEVN8uq3nlqVo/2XnBqsbt5zL7YwySeqRq0zGlCyIJeoIpAqxp+0CviuA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3929.eurprd04.prod.outlook.com (52.134.70.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Thu, 9 Jan 2020 08:25:03 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f%7]) with mapi id 15.20.2602.018; Thu, 9 Jan 2020
 08:25:03 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect power
 supply assignment
Thread-Topic: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect power
 supply assignment
Thread-Index: AQHVvrKzedU6q1PoEkWGPbnH76QqjKfiCd2AgAAE9sA=
Date: Thu, 9 Jan 2020 08:25:03 +0000
Message-ID: <DB3PR0402MB39168406714A06869C33D037F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1577670071-1322-1-git-send-email-Anson.Huang@nxp.com>
 <20200109080600.GH4456@T480>
In-Reply-To: <20200109080600.GH4456@T480>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8074fc5f-98db-41f4-24b1-08d794dd6d0d
x-ms-traffictypediagnostic: DB3PR0402MB3929:|DB3PR0402MB3929:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB39297396D9F4B5E859DA684EF5390@DB3PR0402MB3929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(346002)(396003)(366004)(189003)(199004)(71200400001)(5660300002)(7416002)(33656002)(478600001)(4744005)(66946007)(76116006)(86362001)(66476007)(66446008)(54906003)(44832011)(316002)(66556008)(4326008)(81166006)(81156014)(64756008)(26005)(186003)(8676002)(7696005)(2906002)(6916009)(52536014)(6506007)(55016002)(9686003)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3929;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ct4VT7xi54cAKcaFBYGgJ6GMdhFkB9fRA1r+5w37wUJ+UlYTnFZvbD5UewQd21+d7EzKq2x4d/OJxUXFXMk7ED5I2M7MmO0godrkvoBtPFHpYOTzk8RR/ooeu9hBMTLqzhRtEczYk20hXaEzWY5GU+N/KYP2r0xr5mAOlhMiBXHWaCpPbga0K6lIWhBnY1HcEmYBGjTDHea5Yb0/a9YJAsveH2uCiPcMqkoKobNGYPAg388t8lxCHkePBAsIJjbSgUHprb4z8f7KSId0l2ho6ld9lxROiToPQdaRPsgp+uJRf6qxa5Dj5VCr9kN83660/9IslVKl6c0UjoUJzxc4gep9vCk2aieTJFcA3YMvzZeBPkumwKCYUtBp8IgaZBICEevbHRjp9Rd9CaSDyHiPIQ+wLzREC+mAwen/W80yqO9eadsIxbZV3/UtbOQh3rIxLofpAJWhUsHNl6FuP2y7YjtfFoPWM1xoEePjra6gO8MV4YM9cCkfGKH9Lj3aXPEE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8074fc5f-98db-41f4-24b1-08d794dd6d0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 08:25:03.3466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0NLfMV3XHpwuV6F4cLNiVVrgJOG1HxrUI07u12NsA9QmxVwSLEmbVta0aVUFcx1PZIygKh5SHd18tonHMM9wdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_002509_792809_349DB4BD 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.71 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "andreas@kemnade.info" <andreas@kemnade.info>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect
> power supply assignment
> 
> On Mon, Dec 30, 2019 at 09:41:07AM +0800, Anson Huang wrote:
> > The vdd3p0's input should be from external USB VBUS directly, NOT
> 
> Shouldn't USB VBUS usually be 5V?  It doesn't seem to match 3.0V which is
> suggested by vdd3p0 name.
> 
> > PMIC's sw2, so remove the power supply assignment for vdd3p0.
> >
> > Fixes: 93385546ba36 ("ARM: dts: imx6qdl-sabresd: Assign corresponding
> > power supply for LDOs")
> 
> Is it only a description correcting or is it fixing a real problem?  I'm trying to
> understand it is a 5.5-rc material or can be applied for 5.6.
> 

It is fixing a real problem about USB LDO voltage, that is why we noticed this issue.

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
