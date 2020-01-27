Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8CE14A115
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4k2x/7C86g6IdxKdkMnXX9XH/Mllchbc1o1wHmNL270=; b=Xx6NNdGHN43VhJ
	Sj+/DWXY/C1oRhIL6I9gIhdfhq1nEY5/n47w/0JiuwNcGgXJ0N7htH/nLj5Pz9k3qCeIDCNOQ60U+
	zIf5PMuH+ziG8Yf0TFIH4fo7ozTzjLHKUbS987bamX2e41No4Uqyhhhhr3/eWqvW6LnN+fpXOOeKU
	HxanLeddX3BWd09a0Gy5xmyrJtXtTIxvpScx4pobb/+kt2jZEUUeoG141iy/OlG3An2T4Q2tEFLJI
	8vFXCLRNCrOvu0ouB12jB28MsNeyAWzP+Xe/tm6KS04Yvr9fmBwb9Nekbdb86hR06n8JaTknfOmf/
	jiRPzA5ICVkhk0530Z2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0xk-0007UW-8M; Mon, 27 Jan 2020 09:45:44 +0000
Received: from mail-eopbgr00051.outbound.protection.outlook.com ([40.107.0.51]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0ws-0006zM-Rk
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:44:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iyF2dgBcnzclE1LN3eBL9uuZ5IF50M9C8TkpuF1vJbkYIDtYvjgDtPR0jHxPBoFhtiQDfEdy/HSUPZwLWB1RkFFb8eWoL3j0+KCRt9Rx5zuesk7OqVTQOA3GSLFTChrXtUKEvM2eek6bk6qkw7EraR6D/WPvdCCmPdtnn4Ip2HNRgvfXHAU+x2C5k2PpGXBmG9lU1XafouHnd9txrV7NEmDdNuLS5MKz2ABQi+DdQkHwP979FzUUBfxQGPHX5SddyRe7EhFSrXx0rw1755pLnArYQ0xdxDNTc0qG2wsr1oXWM8SRT3GcSffXMNIoZ4w6IQEFXb3nXMqwwlfui+tOLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XWc+dWQOXoip2DTfc0cvLJc9yySKJHEloYODZSQupdU=;
 b=ZvF6Ks4ylvvgGzEo/BfBNYZM5A6aB3QzAT35HD3WEhcyKIANSFCoKnEvXm5wiWmAhBDxV7MDpg41WQmDycJwYEd9ny+zVjMV7hh8FdCgj/oGBfUpMEXVzL+D1xQOcIX1L14Nbx9Ecv9WlofQzZAc9OC2KONSdfadGAh/+5/GQY/k6orS9WvQrKKYE/dLr3BllgGvsKZuGl2eS3sSOBp2sgPOvW1AcGAN60+YIWWPhQJGKxf4WmbrZ83VfwqAUzthwvgtDwjtjxgeIcKRjm5CmDGZO2pvi1xgUMphH/cElfoVgAHWXUZ3EhrwSwiEGUGIj23xRH1gev0ZxdogcNXBPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XWc+dWQOXoip2DTfc0cvLJc9yySKJHEloYODZSQupdU=;
 b=per7BG5GrlsDVs7FvSnfK1RJ0CweQLKT78b56AetUvO67qOLtomGGA75VsnelEVO/GVYtzR1Oy0MXBfPn/Zolw4AHODJdKiSytkYXb3dSGTJdFOgIdqwzF/MaZ3/PNYKt+WliNClCkKsCpCXxLqV5S80t9eKt7VPL8NLmfYmsEo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6436.eurprd04.prod.outlook.com (20.179.252.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 09:44:48 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 09:44:47 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0401CA0005.apcprd04.prod.outlook.com (2603:1096:202:2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2665.24 via Frontend
 Transport; Mon, 27 Jan 2020 09:44:43 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH V2 2/5] soc: imx: Kconfig: add SOC_IMX8M entry
Thread-Topic: [PATCH V2 2/5] soc: imx: Kconfig: add SOC_IMX8M entry
Thread-Index: AQHV1PZp0xlxI5xjJUynp/VU1FLbAw==
Date: Mon, 27 Jan 2020 09:44:47 +0000
Message-ID: <1580117979-4629-3-git-send-email-peng.fan@nxp.com>
References: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0005.apcprd04.prod.outlook.com
 (2603:1096:202:2::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3fbf76f0-ea96-4aa7-8a7c-08d7a30d8bf5
x-ms-traffictypediagnostic: AM0PR04MB6436:|AM0PR04MB6436:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB64363A0C789D125E2F97AA49880B0@AM0PR04MB6436.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(189003)(199004)(81166006)(81156014)(8676002)(71200400001)(8936002)(2906002)(6512007)(4326008)(44832011)(7416002)(69590400006)(86362001)(36756003)(110136005)(54906003)(316002)(52116002)(4744005)(66446008)(5660300002)(478600001)(6506007)(64756008)(66476007)(66946007)(6486002)(2616005)(956004)(186003)(16526019)(26005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6436;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eXVkIZyFDwe6bzHtKP9YTzToKYvkWKcLSj6qfJ9poxLw5G0NTRJ4gQX3rafUDsBZtTslR62GDgwZURQfJJ72EJeC7Ru3qEdkEIuSWN4IHDLsRma1HOR8Frpyz2a9SaaGReXOl3iGwFVcWo6Ok3wL2elUmBHjKtJZXcy8TjgdeyxrCEz5vlMWoa1xp0MneAXD3Iw5ywbPVXPNteC/Dmyn+fRKTyNRAp9iGqNuu/ZO7OEGQLYaXkRsahfrmPOo4it941958ndHe7dJeAGHNQLZqhyybwzDziOor5cmSV26cGrn7290VzIkBMoimmfRdqdl1wVxjiHZugOrVWm99SJug1/TyhgTEV7aaByi+obxPQyAzC1H15WleqnXzOj3afW1LaBJOgJsBbG+NZIPzk/I2LbfavLNswVI/VsIZ3YtTRthCwVoG3pfa4wZB0u9RTQ6H3zS7N782OqzXdLwYPBJUSCivqFb3JSZ8NhDA2t/4y1jT2Nj+aMrcYXqzRJEcXdK
x-ms-exchange-antispam-messagedata: DbS85iXJBKijM5IuPyITrTFNUelQZAgSpx2mCot/SGisMWJ+X7uG8H4zNn4Bpwdi0TYmCc8xO7cBPMi9EO+bXn3X3XnxxUvYf26KCgIEYwFGUJrRHvTcThPBlq5agRyBhdCHIKsPbHbQC+z6Eg2oPA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fbf76f0-ea96-4aa7-8a7c-08d7a30d8bf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 09:44:47.8813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C704kvW5u/eB3ZCB9nukPCRjyoWSkPcBuwh7bxJHlBeVooezfLM9pF1hAWojv0L7HxU6yZE4WjOXtgkpxdZ8wQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6436
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_014450_976160_F5D5D241 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
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
