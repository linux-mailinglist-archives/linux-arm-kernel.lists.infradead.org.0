Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B1F19DB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUsb9DXqHNeyp0eju2XJkY8qUTfR2kD7PmL6/5rOhuM=; b=dsPpcCymvqipUA
	+GFEX6PXHmwhZHIayTNamMFL4cqJfYsY2/snHvrhVY1uZes/F/llva3MuplnR+yyvwVkCtr6WkwBH
	kDcrELeGgDE+gs6BJAizCnNz8n9BS21otjvkPInNSov3eyd3MwGBvxo+dNceXbD3khEWN9sa/dw+/
	E0a6MjFkzjuWOFMZcYTMBX9mAa5S/+6sCfkIISz94aGU1X/Kkk9C4APIjoyXuZjh37+grtNhq4l/b
	LnEhYWgqzJdefXhXVeHwDI7UiOLtNO7sM+u34k1Xm1cqqhEKWBiuEGpNfPAddDgK9P6jUcEXcj9Gt
	DtiuukTV3hWSwHs0DrXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP58l-00070k-RG; Fri, 10 May 2019 13:00:43 +0000
Received: from mail-eopbgr80045.outbound.protection.outlook.com ([40.107.8.45]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP58P-0006YL-6O
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yRml9qHeUybwjVvDkrkmE4+yRQEMwTXvfEj3NpjvetQ=;
 b=bFvUA0zUwC+T2Hdszdr2rEqaFgFlvcXrMTyw5PgP1JgOLArbpdcuyKg7I48CMHPUY9zHEnFUFAyOL9B14o7h8ytPudvXB3TDPBTjlQn6a0fzac41yYWlP6VJaUYUqWfDHMcAz/kjuyE95JDz/TuDTDLhs4zRQNhDWg6CtM1zPgU=
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com (20.177.34.92) by
 AM6PR04MB6229.eurprd04.prod.outlook.com (20.179.7.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Fri, 10 May 2019 13:00:17 +0000
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::15c1:586e:553c:3cda]) by AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::15c1:586e:553c:3cda%6]) with mapi id 15.20.1856.016; Fri, 10 May 2019
 13:00:17 +0000
From: Pramod Kumar <pramod.kumar_1@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "Michal.Vokac@ysoft.com"
 <Michal.Vokac@ysoft.com>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: nxp: Add device tree binding for
 ls1046a-frwy board
Thread-Topic: [PATCH v2 1/3] dt-bindings: arm: nxp: Add device tree binding
 for ls1046a-frwy board
Thread-Index: AQHVBzBQyKO0W8hcaUmvSLfUo3GWlw==
Date: Fri, 10 May 2019 13:00:17 +0000
Message-ID: <20190510130207.14330-2-pramod.kumar_1@nxp.com>
References: <20190510130207.14330-1-pramod.kumar_1@nxp.com>
In-Reply-To: <20190510130207.14330-1-pramod.kumar_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0183.apcprd04.prod.outlook.com
 (2603:1096:4:14::21) To AM6PR04MB5032.eurprd04.prod.outlook.com
 (2603:10a6:20b:9::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pramod.kumar_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc116f59-11ea-4d49-bb2c-08d6d54772f7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6229; 
x-ms-traffictypediagnostic: AM6PR04MB6229:
x-microsoft-antispam-prvs: <AM6PR04MB62296054D9D2C8A3A8FC2345F60C0@AM6PR04MB6229.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(376002)(346002)(39860400002)(366004)(199004)(189003)(11346002)(2501003)(476003)(446003)(73956011)(66556008)(2906002)(66946007)(66476007)(64756008)(25786009)(50226002)(2616005)(486006)(14454004)(8936002)(478600001)(68736007)(66446008)(186003)(52116002)(76176011)(99286004)(5660300002)(6636002)(26005)(102836004)(386003)(6506007)(6486002)(6436002)(4326008)(3846002)(6116002)(2201001)(305945005)(66066001)(256004)(6512007)(71190400001)(53936002)(71200400001)(110136005)(86362001)(54906003)(36756003)(7736002)(316002)(81156014)(8676002)(4744005)(81166006)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6229;
 H:AM6PR04MB5032.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ti+zAgeFPtkjma4+L/joNcolr0f0cOgs+khJfBkRuS9MZ8Q/Sa8cF6L+ONNsuI74AU5fr9ESzWfV+f30luTxCnokQrT18one8PFqisa4bWW8UOMawu0pNigcRdoGDf5phjxDn42uDsWA7B5NC5niJ4T12VqncxBNPf1u+AabNYWAfqpwN+bh2AdCvIkZTB2X0Bjt8hWjspv+R6uKdQ7IMJMP7eO8KvpLJWtKA60iC70NBaJrVOXm9T//BHCvdWbTevaSqOh59wjqnXT8+5TIPYy8hjr7rF3ohzlWMVNU63loE0H3o9COHCRr1hL0QvmY06hzaZRm1gDaTMMW/SVxLTomieog2CR/7uau/XNfCTwGkn/ibTaA1VtJkjfvrNLxsQ79EN1S+oWaeKyI7ejEhsx1o89WSWIzGge35P9g+/k=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc116f59-11ea-4d49-bb2c-08d6d54772f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 13:00:17.1969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6229
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_060021_253042_B3C50550 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add "fsl,ls1046a-frwy" bindings for ls1046afrwy board based on ls1046a SoC

Signed-off-by: Vabhav Sharma <vabhav.sharma@nxp.com>
Signed-off-by: Pramod Kumar <pramod.kumar_1@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7e2cd6ad26bd..873999bf4a43 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -205,6 +205,7 @@ properties:
           - enum:
               - fsl,ls1046a-qds
               - fsl,ls1046a-rdb
+              - fsl,ls1046a-frwy
           - const: fsl,ls1046a
 
       - description: LS1088A based Boards
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
