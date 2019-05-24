Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9372C28EED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 03:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MiNCmfwVpJOwtGfetkVWM7+HhFLMoLhqlgLaA5tDDA=; b=B1Z0zjfvewqi06
	+GRpONUhzCrK/cqRVaonxau1z0PzHK2mt0JhSQEIRnxEiNIUmn4c6iSvjyBBlBw02NYOT/VcigaK/
	F2BHp9klDtiw/iwCpUUFzDSxKA5DCyd3F7/hNYOX56sZZEh9foTCXNPs0UNTJiy0AXTF6xDfwL6vh
	FLqblEF3mmOkeS89SUezrFQVfIp6RoyQQ6JxsgUFCyLJj3miOLPi5pHT9wT/Yrese9qCMk2GF4Nz7
	TTh1KV2GVuVe/I1tG/8BZt7hKwDWDDqonx5Pj/UFloSpearhdOZmSkqoVUESt3UaAz25YqqeGM05W
	5HUKKf3ZyVOem6gEkU/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTzOU-0001Dh-0f; Fri, 24 May 2019 01:53:14 +0000
Received: from mail-eopbgr40085.outbound.protection.outlook.com ([40.107.4.85]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTzO4-0000z0-5v
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 01:52:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WHM8JJwBphQqKuWUXxfOWmV5jdQQivpFcUOTuROYInc=;
 b=n8j5suMgn894r6x5nsFlOUdgkpMM9FtaFETELb1HXFIfwIo3rVYvgiohroLV+VUaYvjGLJIhZR+Iv/idfL9qIskRDhcCtKLcDWhcDjhh884viRXwYJz3P6yuyfQdclGsBnWtTpgZXN/XbSWRz+yGJQirpyHbKBb50NnCozJ5Tn0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3868.eurprd04.prod.outlook.com (52.134.71.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.20; Fri, 24 May 2019 01:52:43 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1922.017; Fri, 24 May 2019
 01:52:43 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "olof@lixom.net"
 <olof@lixom.net>, "agross@kernel.org" <agross@kernel.org>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, Abel Vesa
 <abel.vesa@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>, "robh@kernel.org"
 <robh@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V7 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Topic: [PATCH V7 2/2] arm64: defconfig: Add i.MX SCU SoC info driver
Thread-Index: AQHVEdNgeS1IluPMwEqIj5rJZ6NUGg==
Date: Fri, 24 May 2019 01:52:43 +0000
Message-ID: <1558662440-8820-2-git-send-email-Anson.Huang@nxp.com>
References: <1558662440-8820-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1558662440-8820-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0014.apcprd04.prod.outlook.com
 (2603:1096:202:2::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d28eac2-ce55-466d-fd9a-08d6dfea82c5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3868; 
x-ms-traffictypediagnostic: DB3PR0402MB3868:
x-microsoft-antispam-prvs: <DB3PR0402MB3868CB4E18A0CB869BC2FE17F5020@DB3PR0402MB3868.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(39860400002)(376002)(396003)(199004)(189003)(71200400001)(76176011)(256004)(102836004)(71190400001)(110136005)(99286004)(6506007)(52116002)(386003)(25786009)(4326008)(53936002)(316002)(476003)(2616005)(446003)(486006)(11346002)(66066001)(186003)(36756003)(26005)(2501003)(81156014)(81166006)(73956011)(7416002)(8936002)(8676002)(50226002)(305945005)(64756008)(6486002)(86362001)(66446008)(66476007)(66946007)(14454004)(66556008)(7736002)(2906002)(6116002)(6512007)(4744005)(478600001)(5660300002)(68736007)(3846002)(2201001)(6436002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3868;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dTc1uq1BnBFJ3Snw3zIvnpTJC6mqE1cG+8iNGUj3yZfX1jdVNrT6wv3Eu+CelMND01HcumpHnlA2+EI0iZho7fADLVLStstYm9FwtEWrCYrzlQZyP2dUf/6Gw7iDFSTX04HOqVKUVv7oDwiJ9zaczg84Tj+h52boTnSjzP+gBAfFp6oNkvOdEiklSXEAviTvtE5ygrJZ9djbQZQxzheNsuHwBWwrcQYEo9On+3Ds5a+kZDwcQng8+NX+Lh/AUYLq4+x/tYFMjVQ8lmXjGOL8B5T1gNIwPbfLcVcaUR6rQMXcYDpD9ivznDg9Js+F1K5/fSCKDAyxjo6GFCQDPNjoDEe7LfBVfDGra8Bl4I+yZZ1Z8xC2lke8xzcnz5H8h4wHQZP/4xs60v5pPu9kZcGS6dL9wLAgSH7V2vB5h6Mvd9o=
Content-ID: <0A576EE9595927478C79926640DF2B82@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d28eac2-ce55-466d-fd9a-08d6dfea82c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 01:52:43.5285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_185248_329371_73FC56FC 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This patch selects CONFIG_IMX_SCU_SOC by default to support
i.MX system controller unit SoC info driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
No changes.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c91642d..aaca4a0 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -694,6 +694,7 @@ CONFIG_RPMSG_QCOM_GLINK_RPM=y
 CONFIG_RPMSG_QCOM_GLINK_SMEM=m
 CONFIG_RPMSG_QCOM_SMD=y
 CONFIG_RASPBERRYPI_POWER=y
+CONFIG_IMX_SCU_SOC=y
 CONFIG_QCOM_COMMAND_DB=y
 CONFIG_QCOM_GENI_SE=y
 CONFIG_QCOM_GLINK_SSR=m
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
