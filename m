Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7332A13D2FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 05:04:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12caTctPe+DZ+om0+qKwAFKH7qwculto8RmsUWwNHe8=; b=uGl6uzxSyab9Dj
	2879enJqXRqQfKX78cCVsOHIwAVIetNIJkRk0n5bPBbf/yevLO9Jm42HycX9sHSNZCaA9Zz7t+RNj
	zL9csglYCL4b/1NyLKPj5e/xLk8c7pTRb8aHBBULPacFQT6iyc+sjI7cKD/5dQ284sZIksv4afh5i
	HeHq9rRjF1Ex8kmNhxwg+OzfVPj5H5Q1wv48M7zUtsIeM7VzinfhmHz7lXsYAGUY/g7GtVoTpBGg8
	qm9gtJmI2s+9He8vSFZjyBwBVxmyslS6y3kWRklGdH6xBmOnrQ8PctzjJkm9Cr6YwO5NRaGBiax9A
	lZhsKv83mGM5SS47CoOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irwO9-0005x6-62; Thu, 16 Jan 2020 04:04:09 +0000
Received: from mail-eopbgr60072.outbound.protection.outlook.com ([40.107.6.72]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irwNT-0005XB-As
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 04:03:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OUn7bUXlAfXrPQ6trTNLjc+VUsJ+6akDI/zu5B+DOGrK2LEjui9ICaA5Pb1Gj8bFQ+6Tq9Bd4olp8XXGrFeCUF66439AyIWUgDnBLt/F++J1ZP7LQxCf8cylIgiG+ASlf1XxuDX4QvTnijqYlMC0V+4j2pFtvdJUBNA9bnFpJMhkJd53sRYPEonWTnCUDkBdpsXvk3U07GH4JgoxmG795/rUVxV7qqSJckphHyc7EBxnXAplEdXcPT9xWPrYZapM5uR4kO1zvBUZytqozE/ROp1Elxrjls3bX4wcdAMA+aKEIKMrsJQoyKmhCFXDv9kcH/CXxJYIPYSTe49R2Bn6GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SIoUB5feq8aWHe6IOCFi2HLqOs4LdPJ8O1me9qUvyiQ=;
 b=PuZ0PIXK8BMV7Ar7pSbxLU0wjjfgapTGI+Euhkr190E6jzmvwFVPPTVvjWiHSrDElwCgi3nprQlULQBW2dMgVY1Cf+hs+7cVbdJl7OqiUtaH0OeneYY4fCbqwR2YfN/l4u+acC2PNaBZiUhNK0/xh2MZ7liHCMzDtPmKD5LF3OIFWizHMUUz/iBgbwx1K2oFgjmK/E+cFlpSoFi9Z0xTCX9N09t9vY26LAGUe6lTdHRYhpW9F6j2gTlvX9Lzizt6Gj2X96K/h0bOYl+p/WZFHFJIdHNWc5eFx+nihwjE3qTEjYVcaSUj7Etvnax1bfJVluokMEFNGiez19UOSxjPtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SIoUB5feq8aWHe6IOCFi2HLqOs4LdPJ8O1me9qUvyiQ=;
 b=njJwW/h5N8QMn/auMmC0DTAKLFoufYpw89c+Z4SL/VTy+NfxlvA1JK6byJ5oDhe7YUTHmVf/WqULtTD+3hZPNEYgWtAq22q/Ih4Qo5bqAMHhchkEmhxt3KFP8Cy+KVdLokqrECl9bE6MIjw4R2TotvWoK86FG7fpWrNPpnc83k8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4612.eurprd04.prod.outlook.com (52.135.146.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 16 Jan 2020 03:49:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 03:49:02 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0002.apcprd06.prod.outlook.com (2603:1096:202:2e::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.20 via Frontend Transport; Thu, 16 Jan 2020 03:48:57 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH 1/4] soc: imx: Kconfig: add SOC_IMX8M entry
Thread-Topic: [PATCH 1/4] soc: imx: Kconfig: add SOC_IMX8M entry
Thread-Index: AQHVzB/jrLNfbRcOZEy2JGO+cz6hmA==
Date: Thu, 16 Jan 2020 03:49:01 +0000
Message-ID: <1579146280-1750-2-git-send-email-peng.fan@nxp.com>
References: <1579146280-1750-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1579146280-1750-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0002.apcprd06.prod.outlook.com
 (2603:1096:202:2e::14) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 22fdff2f-8923-4339-5246-08d79a37063d
x-ms-traffictypediagnostic: AM0PR04MB4612:|AM0PR04MB4612:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4612B6D7C94307C7A78CB56F88360@AM0PR04MB4612.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(478600001)(2616005)(66946007)(2906002)(956004)(110136005)(8676002)(81156014)(81166006)(8936002)(44832011)(4326008)(66556008)(7416002)(66446008)(64756008)(66476007)(54906003)(5660300002)(6666004)(86362001)(71200400001)(69590400006)(6506007)(316002)(36756003)(26005)(186003)(16526019)(52116002)(6486002)(6512007)(4744005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4612;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mlh2sVfaVA1rHkZBJ/H0RlSoJFzABbaHbzb3rUBHu2HIqiI2IwFQnqf4r9IHAarbqBZu3e4dwj93S3NNT9Iwe24kOQ5RVTs5+fZh8Zbqk9fFiAh26nhHY0SxwD6EbuajfPA0hs3rR+xC6iW2Lo7IV8YVyWxmeSajWjrQsRsTrLKEbZVnnxei/McVnaBoKaXPg95iSWGknV5AMnE/SLfzsIGxbyWfGqgqA46MFa0EKwZyk9sM9D4Acc0jmr8YFobQCugSGGpSl+mpcagh3VrpvrW7l4Jjr/YmobKlKcYtXP8JrAUYGOlqYux/YUD7+RPUOe3mGKl85VTf7xxL5BSVlGWoyBpzZQBZSzzSwGykURnJ+w+U9lhAE4BAsj2jc4VpEmCwJvYU1kZT/53mDPkM8Otl71e09fQn22u3OPJKIAvhQmBEy2xGKKgTu8M+gRw92QcLrlsZ5X4iyCKySgnLezlOSlOTkAA9il+b/LLHgh+uKvyn7XXS+41IvPjlt2Km
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22fdff2f-8923-4339-5246-08d79a37063d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 03:49:01.8703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HXfJBY3dHuLj6v9tvpWH061d1+Nnre801QoIoDYuvbtP64Nc59RxqKtyXrcUp9ZcA+vyFI3ZDQniyhBSM5DiXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4612
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_200327_376251_7E2B5819 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add SOC_IMX8M Kconfig entry that could let people to select
and deselect.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/imx/Kconfig | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 0281ef9a1800..790b46d90f0f 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -17,4 +17,12 @@ config IMX_SCU_SOC
 	  Controller Unit SoC info module, it will provide the SoC info
 	  like SoC family, ID and revision etc.
 
+config SOC_IMX8M
+	bool "i.MX8M SoC family support"
+	depends on ARCH_MXC || COMPILE_TEST
+	help
+	  If you say yes here you get support for the NXP i.MX8M family
+	  support, it will provide the SoC info like SoC family,
+	  ID and revision etc.
+
 endmenu
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
