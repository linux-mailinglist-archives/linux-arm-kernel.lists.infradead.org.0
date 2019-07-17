Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDC46BA01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfwHG/VWlwT9OyMX9Ipek0B65zYVCzyPhmjVox2/FWc=; b=S1vA39X6zIdbI+
	OUVqyKug5gRhDb0cUMa6EkQjMjbKT9ztcnHDAneKl9ba875btDjbBz4u9Z+7mdT+D3eXw5DMoFFtQ
	snKamM+6g7djrFhbQ+jC77LvoWHhVw7SSb2fv+gZEigIsZtr2gafJg+gLM5qvw+lm5O2QpA4IR9/C
	mBDuL/8M+iPOJjm0SnqlDKQwD5EjI7M/Ax8mezxd0WHuqbb/GWLwQhyY5LuOujHA5rtH7nkUje8et
	rvp/HvaAHBYt2YcVKy5Hr561X56O+wElV1zhsb3+0hm9Hukj7bbGGQrXzn8LuBUIbjHBonWxBaXoQ
	Py5YCVOw5NXrwtDG2kpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnh5H-0005O6-Az; Wed, 17 Jul 2019 10:22:51 +0000
Received: from mail-eopbgr00050.outbound.protection.outlook.com ([40.107.0.50]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnh54-0005NS-01
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:22:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=faBuWjAqIAuwu87RAWlH+R0f/uXJe8ggIER4zIYp/jsDIhAl7HoKgiLAeqPrLMUl4fGEpDVbIOaBtDNBoLYWITteUgW54G4Pp4iCNangmig0i6RgOx8axDz5c6OPgFeLP1ICfOdcQAUjfJ6OUcI5dkipQ1foUOf0jqVgGgXFOShZoxvon2nNyIMVTCBJNIoxC7LQTqOS/Umv6StaXx5gm1CEnUuVf+OxgIhEvDeix/gEGF2AlzP5WlCU6emOv3zIkDnb4uxP6qHheAeumNSF2US35qw5xQv6auqjiDFwpZPY/VTLT6HeqcU0145chvTTu+U0wrE4SzejAqHXnZcLJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FlxCALpKAX/PPHwiaGuoBS9kB0Pnkf2POu8sgiQF3Q4=;
 b=TvGY9vkxH5CucL6/8i6fY0wFG8yvtSN+lC0eGQLeKDkx0qGZs5218R9bS5QZvZk1w4SLomaaaze2iwf7tFtHrsVk11vLscxN2VjNoF7mxs304Ty60b3PqpkR1PKEUkOFUPTrgAq6jEtvIpREtgwPUg6j1+SRVT/B5spHVy7DHS2O+LqfN9AXrA90scLfOu9kATcE+4E+HZkdTzVQ3Q+uu2YGT0aLawfBmocwpv2ukszh+sSUemn8cGd1zC99B+5OYyV9tS5LUZHQrJTkTWs4WC+xI7Tb53bSJMR2YzXAaaOkxn3ZtUan9hNXLU8nWDwhd6wuhsZYzMNkr8aLoKLJHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FlxCALpKAX/PPHwiaGuoBS9kB0Pnkf2POu8sgiQF3Q4=;
 b=a7inERjp53kaWixbm/n5pfOAKwdO9g2ftylYnWcJjI3ipTfzwRHG+1wHroMkxXX11w5gYV0cs7NYjiWvNx5P83Pp9+8YvCsNAbBnb/NzjIMFR+g2Gwn+kB5qUF2Kh2Tjbdx/BqmNaMwvLXMo8O2BQXH+cXcikJ6SvTbogYV7ovU=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5604.eurprd04.prod.outlook.com (20.178.203.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 10:22:35 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 10:22:35 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "wsa+renesas@sang-engineering.com"
 <wsa+renesas@sang-engineering.com>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] i2c: imx-lpi2c: use devm_platform_ioremap_resource()
 to simplify code
Thread-Topic: [PATCH 2/2] i2c: imx-lpi2c: use devm_platform_ioremap_resource()
 to simplify code
Thread-Index: AQHVPHyR7JsrX+SniEe/wrvwOi8WYabOmevw
Date: Wed, 17 Jul 2019 10:22:35 +0000
Message-ID: <AM0PR04MB42112856FEC15C74AE18824980C90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190717084017.30987-1-Anson.Huang@nxp.com>
 <20190717084017.30987-2-Anson.Huang@nxp.com>
In-Reply-To: <20190717084017.30987-2-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8439905d-0381-4253-27c0-08d70aa0af98
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5604; 
x-ms-traffictypediagnostic: AM0PR04MB5604:
x-microsoft-antispam-prvs: <AM0PR04MB5604F47B9CB43A45C45A4EE380C90@AM0PR04MB5604.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(376002)(346002)(199004)(189003)(8936002)(6506007)(53936002)(102836004)(71190400001)(44832011)(7696005)(2201001)(81156014)(76176011)(66446008)(66556008)(66476007)(76116006)(64756008)(71200400001)(5660300002)(2906002)(99286004)(305945005)(2501003)(66946007)(52536014)(229853002)(26005)(8676002)(6436002)(66066001)(6246003)(476003)(446003)(55016002)(11346002)(478600001)(86362001)(3846002)(186003)(110136005)(6116002)(25786009)(68736007)(33656002)(316002)(256004)(4326008)(74316002)(558084003)(14454004)(486006)(7736002)(81166006)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5604;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nQtfigxX2aK8BuAJ9zv30HtFXq8AzZ841w2sJfp4oJZnnhFwR0SCN4ebRGwqSHfSzAgJpMCvYD0PON1f19vS4g8MZt/iMAf5vwjs2Tc6UwwaLeic2VZBv2JVY12JxfN+Ey7gNRoOZr2vKO4XAHyoLgZAQzPRP99UQGBfx7LhE/Vfh+9WRG2cOEMbpXjj5XfWmI9EO172bnunf5l3EKOfhJ9aj56m71MhLNCzZ08p1rERQ+tKi2T5CzEzqA4WWPCnEPlefK067mVwIk0KJsXUkT+w36f4OEZMAELOXYaCWC+x6iBbtEmO54a1Titdwi7T0QOenNBt3a8GOPWxGKtDg2uy7PbAJSUYj4Kd/UDdbgQiZ+HvudYHPLWSRdJHYOF6VV/B7x84KCAvG18DL8eYufbSY7h6YzBbZseQmSUHDIc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8439905d-0381-4253-27c0-08d70aa0af98
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 10:22:35.2034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5604
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032238_039543_BF599EB9 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson.Huang@nxp.com <Anson.Huang@nxp.com>
> Sent: Wednesday, July 17, 2019 4:40 PM
> 
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to simplify
> the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Acked-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
