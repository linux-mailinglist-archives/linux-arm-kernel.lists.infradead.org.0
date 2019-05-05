Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E266713E2C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 09:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YF8jh8wzY20Ff+UIhVZAxwLBZGMEX7lpjSlHjkCYocU=; b=MvnqQLPX3vLVEB
	CIkZu0pXn9+j7rQwjd1UArh2xGUO/XoY4J0GBUGx736upsVO37CttFolNNI7MBv8N9NNTUaSZNRgD
	n9ivYnwfg1LU3sG8a9bw553H7KyxovzbRwLGKoNVqZnFOLxNw6srcO7wy/DS6Y815iR8caLWKmJAu
	1GyG/GcwzTs7iaUDCW4IacZI54y0SyIM1S9bDLW5e8ViEmdmRFt4Rjm0lB/UjXLRjP5IyQhXGdqv3
	vmVYDAavHC1Qky1Edwk9D6Up5tPfm+em0Hl221COYZiBwOtSec0NcmcLqvJuGkLAWzkesu5wWMtiy
	yTXQy5iOTOK5znOsnPsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNBcZ-0006Kq-DK; Sun, 05 May 2019 07:31:39 +0000
Received: from mail-eopbgr10065.outbound.protection.outlook.com ([40.107.1.65]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNBcL-0006KU-MV
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 07:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MfLf56mpcxAI8moVFjmOnI2IMinlkiMF81F+gLwt5Uk=;
 b=Bl2Y0fvzwGfRij1UYyops/kBVQ7QF+t1ORXzTNi0I1eF0jRVxFeBxQa9Xjg1TiqzS/UnddtjFFZHRPSSyujXXiLEvy0dsQ1/VjnrYZz2dtWIvhjS386FispbQ0jExGDIu0VaL1nl/DlSJQWX3bM9GGe5Qg1nVW2QOlq8paT4f0w=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6531.eurprd04.prod.outlook.com (20.179.254.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 07:31:21 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 07:31:21 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "wsa+renesas@sang-engineering.com"
 <wsa+renesas@sang-engineering.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "eha@deif.com" <eha@deif.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>, Laurentiu Tudor
 <laurentiu.tudor@nxp.com>, "peda@axentia.se" <peda@axentia.se>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] i2c: imx: Use __maybe_unused instead of #if CONFIG_PM
Thread-Topic: [PATCH] i2c: imx: Use __maybe_unused instead of #if CONFIG_PM
Thread-Index: AQHVAvMW5SvMlMIW0UqHU1fqWG2/GKZcIvPw
Date: Sun, 5 May 2019 07:31:21 +0000
Message-ID: <AM0PR04MB4211C748DF192A56F3FE8E8280370@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1557026820-29428-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557026820-29428-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e95af9b3-8f04-4353-a4f6-08d6d12babb6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6531; 
x-ms-traffictypediagnostic: AM0PR04MB6531:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB653166279D949C0E5F686D4080370@AM0PR04MB6531.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(346002)(376002)(39860400002)(136003)(199004)(189003)(73956011)(66476007)(66556008)(64756008)(66446008)(7416002)(68736007)(8936002)(486006)(446003)(102836004)(52536014)(44832011)(7696005)(6506007)(26005)(110136005)(76176011)(11346002)(476003)(186003)(53546011)(74316002)(4744005)(99286004)(33656002)(256004)(25786009)(6436002)(71200400001)(2501003)(55016002)(71190400001)(66946007)(7736002)(2906002)(6246003)(53936002)(5660300002)(66066001)(3846002)(6116002)(316002)(8676002)(2201001)(86362001)(76116006)(81166006)(81156014)(305945005)(14454004)(478600001)(9686003)(4326008)(229853002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6531;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 49tJXGwS5bJgSWkiS0Tilug1NKBAxjWIdeeBhti8tdYynXFyTE5F+f0DBHamuviEvNeDGKc7o2tC+NK/wROCzmiEhIgrMnRucms8cggDARuMYkCUBq1QoR6Bem2RhhUJ+z+mqKz8l0CSq3wqdL8RMpByYCwVCSbiQzdJzdlJuK8rsMr7SD0qZsmz2EVTz61Evb+iXRHvorlKJ5BSn+TNR0CTS+nqJY7TLkovQvahLZX0IudI9qunmFrpSMzvH5uwocXuU1Nd4HwZ5tiTtZ7Y0z7n95AuKnT4IUQGBRpPe4hkBcoidVHPDTOOpFwVKc0aeS66S9zt1ruxT6y+NSzkNoDwxjzI9Woq8J2A6EV8PxhmPbCkhEFX7l3BI1+Q2u6L5QizoNd75hCKa7eqIwYKG2+ZDHFNCuGqK6Dxq/uNI0o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e95af9b3-8f04-4353-a4f6-08d6d12babb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 07:31:21.3067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6531
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_003125_739135_DDB14034 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

> From: Anson Huang
> Sent: Sunday, May 5, 2019 11:32 AM
> Subject: [PATCH] i2c: imx: Use __maybe_unused instead of #if CONFIG_PM
> 
> Use __maybe_unused for runtime PM related functions instead of #if
> CONFIG_PM to simply the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
