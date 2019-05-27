Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 740952B425
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtD6CfXrgsd8aJ7I3BZJ2V6oKXQeL3RODbLn9mtaPGQ=; b=BFt82x/aYVzjwI
	tLtEHJ3kfaQOOFN2ktC/2ojd7aiGEdfSrk/Q6F95CmFZIbF2Pv9xgAp4V6OMiV3vPHK94pBn4gV56
	o0HFEp/dTt1vIjYMYfiBgaDER6tsS0YMdjAhlRgQA4N2dCU+SGVVk2YRt2+UDs86GSzGj0gMn2fH9
	/xVWWKqr6VQ36zvYk3+13VBkBOlk6y/XhHTCa6O71JXOV3+oRk43bHxKi1NdtvSMsTyVWtGcWfVXi
	sBdWQZZyhBmA9X5OJqx8ni+uAtyfCS1qhnVI7pIFgZ+scMMz93CoX3fttXRDY7Oye+NEUDLjaRRdK
	xe40C4DPHahBj2FLmgug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEMx-0006Bn-3T; Mon, 27 May 2019 12:04:47 +0000
Received: from mail-eopbgr140059.outbound.protection.outlook.com
 ([40.107.14.59] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEMZ-0005vw-Ua
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:04:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X2kJI0bnG9vYr0Dv9257snPjYQvX9ItSIa4yQA+mCIM=;
 b=gEnJMmJuw1c+OQBepqLJA/72UwTcm0kvlZrf+k8MBPggjDVyOZReF6KkTnnDp6PKA/YlJJ3IckkfuJxCk4Z8UuZC4HfBOhwG3v2mkTwdSr74IUy9kQtuNE8VRZJhW6Lv6HnveBNiv/p+AitRzHOHl+J4+mNZQXrCHwSpvEdEjSE=
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com (20.177.34.92) by
 AM6PR04MB6421.eurprd04.prod.outlook.com (20.179.244.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Mon, 27 May 2019 12:04:21 +0000
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21]) by AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21%4]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 12:04:20 +0000
From: Pramod Kumar <pramod.kumar_1@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "Michal.Vokac@ysoft.com"
 <Michal.Vokac@ysoft.com>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH 1/3] dt-bindings: arm: nxp: Add device tree binding for
 ls1046a-frwy board
Thread-Topic: [PATCH 1/3] dt-bindings: arm: nxp: Add device tree binding for
 ls1046a-frwy board
Thread-Index: AQHVFIRRpMWsXBrg60uRsn27aYR0sw==
Date: Mon, 27 May 2019 12:04:20 +0000
Message-ID: <20190527120619.30546-2-pramod.kumar_1@nxp.com>
References: <20190527120619.30546-1-pramod.kumar_1@nxp.com>
In-Reply-To: <20190527120619.30546-1-pramod.kumar_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: BMXPR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::26) To AM6PR04MB5032.eurprd04.prod.outlook.com
 (2603:10a6:20b:9::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pramod.kumar_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33617f59-cadf-42e1-7a0b-08d6e29b7360
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6421; 
x-ms-traffictypediagnostic: AM6PR04MB6421:
x-microsoft-antispam-prvs: <AM6PR04MB64213FC5E0941CEE710A256FF61D0@AM6PR04MB6421.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(396003)(39860400002)(366004)(189003)(199004)(6636002)(4326008)(6486002)(256004)(102836004)(99286004)(3846002)(6436002)(8676002)(478600001)(71200400001)(71190400001)(53936002)(305945005)(2501003)(1076003)(2201001)(54906003)(6116002)(4744005)(8936002)(110136005)(5660300002)(36756003)(14454004)(66446008)(73956011)(186003)(52116002)(86362001)(7736002)(26005)(486006)(2616005)(386003)(446003)(11346002)(81156014)(81166006)(6506007)(476003)(316002)(76176011)(25786009)(6512007)(2906002)(66946007)(66476007)(66556008)(64756008)(66066001)(50226002)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6421;
 H:AM6PR04MB5032.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KXVMh+SNnWnkyesMXW5IJcgWmyh/rt74zEmkzEoyvzmVVyFZAEM8bwZWTAomqzcVhj9KWimwTZuisTCvR3WwgK6A6fVrHZWHFxHrvODqSSn9nNJPnw1MoZCv6jaaO31+yBYznBkZpNk9mgyPgCGKLtYzG9pZ5Wlo8NoORjsRxJTi2wJF7zWXdG/vy1VHPDFj5P1LgGKZRTYVyybNmpfdcKWsnF7XUkDt6CorcgmBLejSQw8v7dVntrtvX0Uq9wacnqS+OCb9pQiC4jrddZGmaeuabnk3e9fgiolJ0z+H7tmaJ8t7MK2XdQEt1Ha+uohSDlDI4Mexi2iEZyZh7tSMUOk/CnDiYfOIzQcOlXILfYyY28bIfd4/FVg3CHMmGpnZEqFDlBuvXVSsjXiPXgEAde5kQqpYDePB6dAw4Nj4R3M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33617f59-cadf-42e1-7a0b-08d6e29b7360
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 12:04:20.8251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pramod.kumar_1@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6421
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_050423_990097_5A849EA8 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 407138ebc0d0..09ff1999ce96 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -241,6 +241,7 @@ properties:
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
