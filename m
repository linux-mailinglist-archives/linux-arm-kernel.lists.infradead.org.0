Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EABD214A114
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:45:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33yVdy64J5dxJwntXhXsmO993cKBHdeAVuyDxt4ZN4c=; b=qo2jSdYrohWmqd
	KsWMPrcqVYstMy7/Jp4XHUtfaaNtl6mEQy7BLDiW9xH2mYw75N3oVDjC4FK1XSFZdECETpXzh0JvX
	BqipFGS2cL/TKvSSIuiEn3HpiAgYkSVu9yLIcObYR7NLUiZAoch+JhpHXTDrD0mopbPc6oDDkl0yj
	BiXpTv2+6Vz3oeH3HrvdL+2tjQSSoJ63XDHet3WfLLwLzwjhtWwSJ04yY0ZW0+dPRIeOeLMSy9JGX
	kz4sH2up+JEP+ESP46Vs+wVWGbVIiivz4w8US0Gnkfy0dOqhlhevR4cCCRKuYYlpJJNPxd+3SI2fT
	x4OzfqWRB7Rf6xb/H60w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0xU-0007EY-Nj; Mon, 27 Jan 2020 09:45:28 +0000
Received: from mail-eopbgr70054.outbound.protection.outlook.com ([40.107.7.54]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0wo-0006u2-0q
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:44:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nSJQqDielwbzq8UT51dL6rlTv0PbluwFluumvFjMKwZxi0AQOQ78B0KlEte44e2reINDtGRNXDTuboCRE62YPLsQ3YC+2h/i5PBHubC/ed2Fj8ul2isjNzBA2vkVMpU0nTKUa5M4iAVe+D6z0uLiCYOL+vfurfw+5fwwhVsrJpL6bQ/cjoM3DDf5AzTR8KwjDdJ8B4PuflUv2rkEERj2WoOO6RjQowGHVL374lO1D7WLSVNItet9Ytc2KZffcHTiEWGnZY9nNZt11WlA9ht/87hKvgD0huKA/FCeO1fxch//WvJ9zAOFnbJwfceRcUWvnMVWBIl1W2KyF8eU316rdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OZ9S4NOrqv+XdB4LZWWwcWAjM2cw8W536sYcTXvBj9c=;
 b=ZdzAXtTJWzpUMC1a6DZ90e5niXXqmMwYp4zXawNrdvtZ0RRS1YhT5c7wrTnmokkc9zhcmMynIOcLTH0x1lhSyoQlzruTUHYttWX6wCvw820bycRIUx+khqEX95s2SDa0cxnlbOrgk0BYEqkR1bVezLIBLnpWqkQhvi1bvU0YxL+3ky3dBq+HyeiujdhJuT9YNMVjfGPQc+IMvYdYUn5ab6zahwDY3es8v0LFLkLiWHZ6uW3mxy+exdOUTOYyhsehCYTycm0FYYhR4R2CpsKQT/8EzMM/qyKg1AsR8XCJk0RagSNtHeXAM/QL1Uywd9qyANCg3MXrG8ABmDAZFx6IWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OZ9S4NOrqv+XdB4LZWWwcWAjM2cw8W536sYcTXvBj9c=;
 b=C5frdMUTcIjXlyOLFjcgP2ExsycqPEyRsPMQmnT8WCIOVSYt3T7zBGLGUodt7yjwjmN1mMxH4erhBI2nfqEIsRTSRJlqXXdwhle6dBM+uOHwh57vkEYLSRAenNXfyQQ1nTJz5QHziJ+J8UuDz2obOc6agq4CG0fRSDCmX13xwaE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6436.eurprd04.prod.outlook.com (20.179.252.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 09:44:43 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 09:44:43 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0401CA0005.apcprd04.prod.outlook.com (2603:1096:202:2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2665.24 via Frontend
 Transport; Mon, 27 Jan 2020 09:44:38 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH V2 1/5] soc: imx: gpcv2: include linux/sizes.h
Thread-Topic: [PATCH V2 1/5] soc: imx: gpcv2: include linux/sizes.h
Thread-Index: AQHV1PZmB0n1COSBrkG3iskArlzskw==
Date: Mon, 27 Jan 2020 09:44:42 +0000
Message-ID: <1580117979-4629-2-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: f7376cc7-7380-42ae-d314-08d7a30d890f
x-ms-traffictypediagnostic: AM0PR04MB6436:|AM0PR04MB6436:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6436F12AA0C8FF60F62F6A86880B0@AM0PR04MB6436.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(189003)(199004)(81166006)(81156014)(8676002)(6666004)(71200400001)(8936002)(2906002)(6512007)(4326008)(44832011)(7416002)(69590400006)(86362001)(36756003)(110136005)(54906003)(316002)(52116002)(4744005)(66446008)(5660300002)(478600001)(6506007)(64756008)(66476007)(66946007)(6486002)(2616005)(956004)(186003)(16526019)(26005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6436;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2bh9ZLZ1BvTFPwH37aZ819lo57e/YFCUMD/EkjE/qbHi+R2okVCsZNTJel+zXswZST4SpZqRIsUEgxM4ecspFwaRyZkndlnz5mjVn4ApQIMzLnB6Vt+ne0DEQSP4NQDVv8IdnZiszx8Kq6kx8fEVUDBodtqKZ49GKdhUiylC6MS4K/34v1w0SexhV60R9Oo1lDBsGkrw+VLtflxVkj8O9FajBNME4/QuxAVzawNYjkeV2KoZD0oFqq0V1QGswgp/iVkzEXpqtlWvuKncj7wOMKApGrymnGaaw7+HKIH/o52mEdw4SUZcoV9enjW+ooGK2srzWVpU6UeL/A2H8FCoMy/5mE/q2gKiphQ45xcLcxmxSvN+H+f8ZjghxiSM8Vsp8OTSOarVZe7HfPoQs61X3lettDyL23vtv65Vqacg0eV0vM0phdTim2TGaz24b+CUka8Tjw78XcJC8nQCOtnv1wwly5gFtLW6D7c+HtLVcldUag4P8kRrcGsUPIFNeL79
x-ms-exchange-antispam-messagedata: XPvEaZrQ8D32/uGRQ9KtWUZt6rs67Rx4jMTPVI0QT87myQIIDkPeUbgPC01qy0aP5SLzewI3gm/QOY6mYZG22lTojh5X1a6rS1ce07xL3AaTOhZCdjMq9wKt8l2C9XvJOosWar8qgX6GzAqqV2598Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7376cc7-7380-42ae-d314-08d7a30d890f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 09:44:42.9370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mx7xria066zQQ6cCZGP3w02FZacdh8iKCR1y9NczoSKy4h1Uoj+ZpUcxY8QnF63QVAEgNkAjCjpGkF271KRjag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6436
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_014446_078373_7F3E41A1 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.54 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
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

From: Leonard Crestez <leonard.crestez@nxp.com>

This header is included indirectly on arm/arm64 but not on x86 so
CONFIG_COMPILE_TEST breaks. Fix by including <linux/sizes.h> directly.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/soc/imx/gpcv2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index b0dffb06c05d..6cf8a7a412bd 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -14,6 +14,7 @@
 #include <linux/pm_domain.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
+#include <linux/sizes.h>
 #include <dt-bindings/power/imx7-power.h>
 #include <dt-bindings/power/imx8mq-power.h>
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
