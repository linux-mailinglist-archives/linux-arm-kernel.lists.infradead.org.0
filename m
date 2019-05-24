Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469C228E62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 02:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qBWWguiaZ0v3iR15PZEx0XwR9+YxBch2HAL5aUkZiao=; b=S4XfEYKH+GtXNp
	NxQJAeXeUo5yiLUUPrCvvDV9U8XPM7qwHp58/Z5O930n1s8IRHaT5LSzWGUIa++R6x7KatDK7V30Q
	HNotgey2PkZE3SrNz08JIiv8pmlzs3qmYRwAXoxq4aNU0AQ05+gSKCSRWbwdpuczbmGnrQHA3n6/x
	Dm2aYqPru7JhhLLEur1+z92A5EoAoqdrMMzBmwKFWaZZweb8LrRdxLl7zwaO988Yp4YhayXaMwhTP
	WwoifaUg0Pxx4iRbf5D2k209dzIcXaV7zwuaQWBuaGwekC3XbRQo82CuiBWtMmqbEq8iOrsmad6mD
	JOdXDY2LJ0A2UVI9gnTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTyGR-0003tS-Ij; Fri, 24 May 2019 00:40:51 +0000
Received: from mail-eopbgr80070.outbound.protection.outlook.com ([40.107.8.70]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTyGJ-0003sz-23
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 00:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CxgKO0W/BktaJK0MWO7PHVKXRW1MuT6dYVnler6z2Bg=;
 b=XuoSaaGND4IKufrscGDMYCVNLtruFSTCTLMbM21EvHE2cOKxpkDlTS8rZ2Z8ksgcrBMJHqM98Lr9hp3MXI/JR7mUpfqFsOr/vrULc9yz+RVU1/f3mACFTXMfaaRtgK52eR59a+OcsF3cQJtEgYZebIqnTBfJmv59kdhXHGc8x/g=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3850.eurprd04.prod.outlook.com (52.134.65.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.19; Fri, 24 May 2019 00:40:38 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1922.017; Fri, 24 May 2019
 00:40:38 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "olof@lixom.net"
 <olof@lixom.net>, "agross@kernel.org" <agross@kernel.org>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND] arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
Thread-Topic: [PATCH RESEND] arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
Thread-Index: AQHVEclO/85kyS08dEKAaYgO0QP/vQ==
Date: Fri, 24 May 2019 00:40:37 +0000
Message-ID: <1558658123-8797-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0213.apcprd02.prod.outlook.com
 (2603:1096:201:20::25) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 725ee209-bad8-49c6-d831-08d6dfe0705d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3850; 
x-ms-traffictypediagnostic: DB3PR0402MB3850:
x-microsoft-antispam-prvs: <DB3PR0402MB3850E4496B10B07A07CF84FAF5020@DB3PR0402MB3850.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(136003)(396003)(376002)(199004)(189003)(2201001)(8936002)(478600001)(6486002)(81166006)(81156014)(86362001)(6116002)(8676002)(3846002)(6436002)(2906002)(68736007)(7416002)(316002)(476003)(50226002)(2616005)(486006)(6512007)(66066001)(26005)(53936002)(110136005)(25786009)(99286004)(186003)(4326008)(71200400001)(71190400001)(102836004)(4744005)(5660300002)(386003)(6506007)(73956011)(66476007)(66556008)(66446008)(64756008)(66946007)(256004)(52116002)(7736002)(305945005)(36756003)(2501003)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3850;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: T8xLOrR0DmBkb6sVJ6DLoIUI4wglTn7AgddpovLrqq3rPDGs+VXQbZkb2GHKNnr2nEfxK4+eogLwYq1sx4QmDOeHq9GgOAokcd5bt2MyHqZOclvbYEEwxAWKphfpXG+xoWYBcFVnfGlZYrRV5JaF6M3osAHBQqlvCV8ORF6iZM1g8jgOyQtAAmuTPHIlScR5dCBcLdA3wfCn66cZ0Xe2DVJ5KddSZrHXJUvkkKRV47uPl7kboS36SS9XexzIssef3+XPruL1qKDIvfK/WcDxlf8ru7dg+bdTIIsvOIU8RXBBG3o8IomYW3lZ8jyuOqEbxp8Ga3aPuI+QhdGZY1bXB3KuFh3DImMjR8s/JZi4ffQwOprdreU+QHrIIC3yE5OEPDPXi0ztGK+Zo+ZVaw+xftekthvQhvLbzN/gjMNmzdQ=
Content-ID: <A536D3C75A2CC448A45555FC24F891F0@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 725ee209-bad8-49c6-d831-08d6dfe0705d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 00:40:38.0604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3850
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_174043_191338_7725AFE4 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.70 listed in list.dnswl.org]
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

i.MX8MQ needs CONFIG_QORIQ_THERMAL for thermal support.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index f0bad30..c91642d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -420,6 +420,7 @@ CONFIG_SENSORS_INA2XX=m
 CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
 CONFIG_CPU_THERMAL=y
 CONFIG_THERMAL_EMULATION=y
+CONFIG_QORIQ_THERMAL=m
 CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
