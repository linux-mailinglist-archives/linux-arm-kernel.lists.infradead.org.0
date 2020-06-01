Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBFC1EA1AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 12:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orzhS4QQ7+FYOTsvDtL3qF66eXpeGNyhd/MpiKVyhmo=; b=lUy82t4JlNRnMJ
	bVjrXuziHKZk8Kvh2Pinpgw1BZv1+a/5mb61QPPkLDGsiAVp+Bd06Ik6PzdeEAMDROE+5XCAsRHvS
	wdN473PRJ7J2RmVBh0UrZIq+byooav3TnPYY93DYuLd4sdoF6XRKPlBlIo/EB3S/c4O7HNJBIoVpe
	QtuQzi3UykcYCBrlFxSpsqmgIzq0XxBmp/xDST/ENNM7yp194D0/FgFO5eWKGcyDqeIR0d6vbHbPW
	RKk05bbPzQrdiLbMSVTIF8QllBjnO9MRbFQclkyZY2L67nU32BUw8R51khl6s+k2fKXL1H/OsCa2v
	gPbjslKvDVlJhenRNtqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhUf-0005QK-Qp; Mon, 01 Jun 2020 10:16:33 +0000
Received: from mail-db8eur05on2050.outbound.protection.outlook.com
 ([40.107.20.50] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhUV-0005Pd-9C
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 10:16:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GsnunleFyzPPTV/LSermN7syM5Ic9kWGhNKArr6xqk6kLpHmN673fquJKv+7xtdpDzCCLws/L0n2HOzQ/2iX1ZUc5d83lbkW9jcNJazI9OjpVO/Wdkz08clo+Mwfn4TCjcz667GItzPQ8G5uGMCEyusejdblbvGuMKU0zF1u7s1247LnPXKbOT7ULUkhpE9NV+J3pu4aSLAFHepeK5LXj5XrTqJHRqKBoPf7xFSARzJCWiMkWBZuyJ9dA45bAUd7WNnjwU0XIE6pZBwkZpNbiZaIps3kBtBKWoxq8oDdnSh8SSmglB/Xf1tBjiovjJjNTTX7CI2GO81DUeuPAnL0lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E4OHZkbQdFPlFTgF/DtvlEq8Td4ac5xsKtXGzjPUc3I=;
 b=WWgJFSriF5HuxIge845F7DLO2Lri5cEw2kb1HdiVuHoaJzM5qGFRXN4O3cwUEtNlRwIKgJHhnqtkGhVyT86DnJE6A2n1FBsXXr57+HIh1TvhT3Saft+9GLh5YAUVwPBcVMtuQqpv/X0vq94R2kKhgk9s6QQpKiLMfKG5HiBEwKHsruVQO8Ceb/mwzSjE4zarzu0Mc9TIBcfxdAHZ28DmVyaVF+VIaTxC8QqGXDOvvaSHkGaKqM1A29FnLKyImb+jzsX18khu5Sp2PTq9/qVVBFZKUbYjSaK6YCLckv/m+cfw8bibM/NcR3RC8K7RAxLhnJD07ElGxshEA7Q0Kh8d6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E4OHZkbQdFPlFTgF/DtvlEq8Td4ac5xsKtXGzjPUc3I=;
 b=Cf5lcC1nsllXLEf5h1C271xXf1RgP+sqrJK9+Itazgbwj/b9G7iPHC6hTJuV2nY3TiU/7RlHYbQ5YFGTsgAbDUTSGPzSjdXmjCuaWxuUcnylbR1sdCip2FmK/1xXe6JmWGuRA8/On0YvOl9Yz0yEilqIESxG+rqyWXVbCOV8BiI=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4998.eurprd04.prod.outlook.com (2603:10a6:20b:f::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Mon, 1 Jun
 2020 10:16:19 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 10:16:19 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, "festevam@gmail.com"
 <festevam@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>, Gary Bisson
 <gary.bisson@boundarydevices.com>
Subject: RE: [PATCH] pinctrl: freescale: imx: Fix an error handling path in
 'imx_pinctrl_probe()'
Thread-Topic: [PATCH] pinctrl: freescale: imx: Fix an error handling path in
 'imx_pinctrl_probe()'
Thread-Index: AQHWNsPj8tlpXuDuT0ye55IEW7BSE6jDjWYw
Date: Mon, 1 Jun 2020 10:16:19 +0000
Message-ID: <AM6PR04MB49667D023D9C5ACB7CABF229808A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <20200530204955.588962-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20200530204955.588962-1-christophe.jaillet@wanadoo.fr>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: wanadoo.fr; dkim=none (message not signed)
 header.d=none;wanadoo.fr; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 867180a4-0b95-430e-d8fc-08d80614d3e2
x-ms-traffictypediagnostic: AM6PR04MB4998:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB499803DAAC07E8AD53FFB312808A0@AM6PR04MB4998.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Cty4bjJsVdUZMGOtZl7eV7/lJGhnd5QPoXBV7kAU7s7vnZFycA4oExklCSubQisfqX5E6Do8bnCm/JrDKBgqt6AB5hTAHiTlnbGDYnaBYRIdzPlXTDTpjc0x+HKfDyAMeoXYcgumM2zKWWw7AY2SrZOXTEiFIBaY5ihOXgXfgeWYf94ojv6A9PRScS8rXGPTXCpEVNLZf81OPvYILgvxuDjC7+CY4/k/4oyPwtWZyGTDV7QhnZTSkChGNX4GpE4O4hQhUadK8Ivgav+dMlBmEX67ni6YQ5KhC6WFsZ/MrS2EKbNUq4SZPHH3Z4d5aQZ32PLgnwL6n+cH6yG3vn58gw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(316002)(2906002)(44832011)(4326008)(5660300002)(110136005)(54906003)(9686003)(478600001)(8936002)(7416002)(8676002)(55016002)(76116006)(64756008)(66556008)(66476007)(66446008)(186003)(86362001)(71200400001)(66946007)(52536014)(6506007)(33656002)(4744005)(7696005)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: N7kCS5j+ylbfCePzl2Y6T8C6jvINIh/MeOZ1rgVj1lSk/ZJvgpHoVvEfZ7rvOuytVMI4O4UgKflt5Lwdz/Xv5dzJxxGBM5t6ll0KtrfPS1JUH8jfqpk5cfMNT7yGlkGbA0KV+fftgVbTUbB9z2ihM5zN43JqDFqVH/VyTezFwgZG0dqV2tQQFp6ZJ9n4x2WY+UvyIe9hQnxsN2XC3XkKpLG89vXHWIOm4CjA/RL7scFo3V51w9xOEPFY50+q5wiAoTDt+BOCHZ1/W7uLD+UiUnPoia3jpAk+lx8j3olba3zKGaLlgUfQubclR94vVlJeCoRcsaWWaWL4TuNiELpuLt48RjNGzrdENsW1bYTekA/8eTgKMNGZeJ65Dv0l+YPC9pj0UgcR+9tZ0is6NFZDDSSVSTEIE09clGItHEtHODAS8o1uOO3/xac31q/yXZRIBIfVmRnI4Boq9bT28H5GHLxLs/LVWkjkcdaq+RH7fp0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 867180a4-0b95-430e-d8fc-08d80614d3e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 10:16:19.6227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /lrE817ubhxrVGk/665edRMfb+okPAe72CfvR2mDZxajbYJEafv/WdVEDUtO3EKF27E6SMg9W9yzMRGqTqeuqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_031623_323379_BCAD3C81 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> Sent: Sunday, May 31, 2020 4:50 AM
> 
> 'pinctrl_unregister()' should not be called to undo
> 'devm_pinctrl_register_and_init()', it is already handled by the framework.
> 
> This simplifies the error handling paths of the probe function.
> The 'imx_free_resources()' can be removed as well.
> 
> Fixes: a51c158bf0f7 ("pinctrl: imx: use radix trees for groups and functions")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
