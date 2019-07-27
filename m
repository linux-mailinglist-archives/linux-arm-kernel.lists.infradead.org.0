Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E1077737
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 08:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoflG6VBf9PhUNrKpTBvMa74OfqL7FhFzBWodYxrnFo=; b=YFB7C3aTzFW8Tx
	Cq3M/l5QUynfi9SBZPQ1eK79TmanzZw1/5eV6GboEmZ6P4uYQThj3RfvOACbuO3f13PiXcRAntq5p
	QB4+p2D8vS8jxTp2j3g5LJ2pTRhqEsHYG0VraPnUi7bhklR1wlfYCPe9Q9yLFN+ts/9i0Tpg6cnYP
	D5TcTsQxyxgrHB1V+X6j8i6mz0L5qapW6Es3WNvUEWCQzIwbDHeOMvk0Yc0nQD/ZW76EAZRDX9ISF
	XAqJpjSaisF++4k4ItH+syIS9wLwi1NGUOkkNh8iVZbclCfl7X8ANnRquodAXmilIKnAc/JbH4z8h
	yIhevLlBTtYzwRszlmDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrG3J-0002HS-Lh; Sat, 27 Jul 2019 06:19:34 +0000
Received: from mail-eopbgr70085.outbound.protection.outlook.com ([40.107.7.85]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrG2z-0002H5-EP
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 06:19:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EASu/aFQ/yhpiH8W8C2W5y63U3BK0TN5WDbsdO0rZpblyyKOeeuyToM3IhdwleIsexhNMVCVGUFPTLzGwyfJUGGfydmg0+Fy55BaBi6XYX2+HdildE8Brn+HPf/S/y8HQvh75qs7PezNpFTyvSZguMo/SlNK4Co9S5zVOnoE1zWs4EreVODB/7IjdbyM/SEaZoyNJJ0DiW6h4i5bsVoIXxNMKaDpD1auuFoBjDjKw5YDX9Jvt8OvRt4Mk0OS5ULgCcbbfd1DazcLpqPbT7pZM8OXm8HG4i5Sx5FpdqLyTvWwSL1H8e6JWTC/W9tdx388cibnmQiWSuKk8Po9pZznEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZenlU5Mgg3iJLhndZGd7G00H4J/8pKUEeuI/1r0xT5E=;
 b=dDIxS42Xuco4YlPYh+cerUvDx5SeJgz4dGM2wTwzzuiw/mvV3CzhTUTDKem87ag5n6JudX1Dk/iXECg/F04rrpePbB5zUCtzmBcIIm3bGg0GoHrjAMt179J2fjhMQcK8dKvHNE5Qju3GSlFgCf5jLE3UmfB3JzcPx2cc1bkjzHHFVO/Ca44T5dlXqR+W2RWxVeuwELyq2gdhF/8Z1kMytvgAhbK2YT+0SRelB7PwlnTZWUbFVC6UxSADzxFCKuphFD/U3iYrgSOk0oZTyohPyDqe2R2ElZPH7b6lksLmw3D7zuZhLs7laFpmocpj950z3de3u9LFUachREdl+Y2EaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZenlU5Mgg3iJLhndZGd7G00H4J/8pKUEeuI/1r0xT5E=;
 b=ZoSlHlFeMjkVWkfXZHK3Y+xf+ABDFMDm+mkpIAttSXyh23ZwM+PhghdOSOwFOitoh3kY7U4kCkXAKyDcrMWEyjZ7oKyx9TUxL59lXsdKBNDopEhudnGpi6m+D3dO37ctqijEgayZse673mkO5LXjqWixlUWUtRqTkUAPVbm9pjs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3899.eurprd04.prod.outlook.com (52.134.71.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Sat, 27 Jul 2019 06:19:07 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2094.017; Sat, 27 Jul 2019
 06:19:07 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: RE: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
Thread-Topic: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
Thread-Index: AQHVMu9Qagn4ZAj9sUKncGzfKuws0abdnJEAgAB74HA=
Date: Sat, 27 Jul 2019 06:19:07 +0000
Message-ID: <DB3PR0402MB3916233A56CF5DF778115716F5C30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
In-Reply-To: <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c0947a3a-e0ae-4909-b22b-08d7125a54f7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3899; 
x-ms-traffictypediagnostic: DB3PR0402MB3899:
x-microsoft-antispam-prvs: <DB3PR0402MB3899FC94EFEE7FE9B3695BD6F5C30@DB3PR0402MB3899.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:195;
x-forefront-prvs: 01110342A5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(39860400002)(366004)(53754006)(189003)(199004)(76116006)(33656002)(478600001)(64756008)(66556008)(66946007)(53936002)(8676002)(81156014)(81166006)(9686003)(55016002)(66476007)(66446008)(3846002)(25786009)(4326008)(6246003)(316002)(186003)(26005)(229853002)(102836004)(11346002)(486006)(476003)(8936002)(44832011)(6916009)(86362001)(446003)(54906003)(6116002)(14454004)(6506007)(2906002)(6436002)(7416002)(5660300002)(74316002)(71200400001)(76176011)(68736007)(7736002)(66066001)(256004)(305945005)(99286004)(52536014)(71190400001)(7696005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3899;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: p+9LiqLAK1OSsmN8pPuQRmWorlVr1ZnBEli46a9MViy98Q5nPDirqQgDKRSA3teryeEuQG2sktGVPMuUYEfLEXapAyBq9ffOu0N21fYs9uczVxc8xDogoo3XpQcCP9bl/s1rdd3IdKW25AeB4YrAAkLwHcnHFQwiAjdIicCPwnfXd4nqfD4pTxC2YUv4XLnfmaXnMREsZqF5ohAO8xME3lm+46XnXWQzmVQ7qkFlcciESEhMwmFkQXUg2hZtGEY8WOQFOjWwOCkDFSgi/UeQCeeCekP9Qjejxl2ORYabAWz6ZAAZesOc0htzLchQI9Xr99vNR22+TweGt1I8WPa+X4KZQVM1b5YUZic+KcqoKZCeUrHyAnaBnVLWI/v2zn2weuKQcLWkuP1WmYIWIhsQM0yBokZGrkx+Idb7XHoIqa8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0947a3a-e0ae-4909-b22b-08d7125a54f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2019 06:19:07.6381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_231913_566703_0B92970B 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 =?utf-8?B?R3VpZG8gR8O8bnRoZXI=?= <agx@sigxcpu.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "edubezval@gmail.com" <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
> IMX8MQ_CLK_TMU_ROOT
> 
> Hi all,
> 
> latest linux-next hangs at boot.
> 
> commit fde50b96be821ac9673a7e00847cc4605bd88f34 (HEAD -> master, tag:
> next-20190726, origin/master, origin/HEAD)
> Author: Stephen Rothwell <sfr@canb.auug.org.au>
> Date:   Fri Jul 26 15:18:02 2019 +1000
> 
>     Add linux-next specific files for 20190726
> 
>     Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> 
> 
> I know this is crazy but reverting commit:
> 
> commit 431bdd1df48ee2896ea9980d9153e3aeaf0c81ef (refs/bisect/bad)
> Author: Anson Huang <Anson.Huang@nxp.com>
> Date:   Fri Jul 5 12:56:11 2019 +0800
> 
>     clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT
> 
>     IMX8MQ_CLK_TMU_ROOT is ONLY used for thermal module, the driver
>     should manage this clock, so no need to have CLK_IS_CRITICAL flag
>     set.
> 
> 
> 
> makes the boot work again.
> 
> Any idea?

I just found if disabling SDMA1, then kernel can boot up, it does NOT make sense
TMU clock is related to SDMA1, I will check with design and get back to you soon.

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
