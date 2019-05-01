Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509C8109ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YL+xJhwCdDWjKD8TS+Tj+8Yfxw4JKbUnu+Lz/XAhC5s=; b=PcjYnBDx8SO1EZ
	W75FbzZa5r1ZkZJBcVmXUI3RfshikiL+lCJ7hQ9/LS4Czg2i1Aepv0nxkJf//fhhsrDfzC9XJCVLm
	N9IJ7UP7Hic7OcEjYzq2+hW3OFMl/ELdP9LTzcGqk8Y3kYjNVCluJCA5tSK0cdbx4HUejPW5XRfnX
	ccwtBT/bmzvCg259Ouc5VYH4b7XzWDOoqsdCxcrcwuCysYlqjn09aqwytWmN/dYEQ556weqBLP7Y7
	xe8U7J1eELZbzx9BxDt5ttYdD4q2WcPH4rtWvil7LbPSq7yK5gAAcLShkymcJy2SspuXRfGqSHk+2
	4Y/isxMFVgqMWOOguQ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLr3J-0000ia-5L; Wed, 01 May 2019 15:21:45 +0000
Received: from mail-eopbgr60050.outbound.protection.outlook.com ([40.107.6.50]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLr2k-0008Uo-Of
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:21:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQAGhxRObBtZ6xtkTywA7qHX2Tw6wchYZRoLvESKZG8=;
 b=JG0Dz3SEnkAx7MRheA+3GvBG+uSi9oFTZGpqJeWwcZpaEaEH0W+gDdbMFs7QJ0MBThjCE5ADiQiygqIqAi+MDkL1FjTnT7T1uy11Y0jqQKkLUq8iYuJ/0sepS8zYA6ozEXjf8NLSawjzEF00Kei64pgP5xJ+sXmFxX/17A1Mz0o=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB6045.eurprd04.prod.outlook.com (20.179.24.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Wed, 1 May 2019 15:21:06 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 15:21:06 +0000
From: Frank Li <frank.li@nxp.com>
To: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V11 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Topic: [PATCH V11 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Index: AQHVADF+30cjAxK9vEKXkM+muXaTHQ==
Date: Wed, 1 May 2019 15:21:05 +0000
Message-ID: <1556724043-3961-4-git-send-email-Frank.Li@nxp.com>
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0010.namprd05.prod.outlook.com
 (2603:10b6:803:40::23) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 816d1385-7475-4cd0-773f-08d6ce48a10e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6045; 
x-ms-traffictypediagnostic: VI1PR04MB6045:
x-microsoft-antispam-prvs: <VI1PR04MB6045BBA64DEFAFD3A7B2235F883B0@VI1PR04MB6045.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(376002)(39860400002)(136003)(189003)(199004)(81156014)(478600001)(5660300002)(6512007)(6116002)(2501003)(7416002)(25786009)(316002)(305945005)(99286004)(256004)(110136005)(14454004)(3846002)(4326008)(7736002)(53936002)(446003)(386003)(476003)(102836004)(71190400001)(66446008)(50226002)(73956011)(64756008)(11346002)(6486002)(26005)(52116002)(2906002)(4744005)(76176011)(36756003)(2201001)(66066001)(6436002)(71200400001)(8676002)(68736007)(86362001)(8936002)(486006)(81166006)(66946007)(186003)(6506007)(2616005)(66556008)(66476007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6045;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RxIUzIUatXABEQ4aIaESg9urz+VGI8iJFPfMCmymQXjf95iCCbajRQAuuD6akAfKrAZ58U9boVI2A7t59P3k9hA5hsHQjqgTUp43wU8Mr+Wm567R8ntRbkCpktkm8r+CSr0IAQ5L7SwTdX0FJH/IywPOGXj0yTV1kegNo51a5OzgS0hSnDh1x7fALRtFN5xXyzV/SPZ++9W9JeQ9bH7HML5uVxu2+CXCRjM8ykBWov8UQntr6qFmSj6Tvjjn84DqiRqZV8In3qW74Q5H8+nW3QEtJLwdiPlccrc7RwTc0j1okKqF1ZbJfSmMjj4127GP76muDVUMkhxPWtjwsa64/iJe93X5lLJvj3ZF53uEckZU7h7Ep/5qLYURP28r+rjL3jtpG1KuBx1YlE48IFiROrpOGXIHGrebRK2AadEEVRo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 816d1385-7475-4cd0-773f-08d6ce48a10e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 15:21:05.9164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_082111_182120_5DD7E578 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Frank Li <frank.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DDR perf counter driver maintainer information

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---

Notes:
    No change from v1 to v11

 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2c7d4e1..6a9868b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6264,6 +6264,13 @@ L:	linux-i2c@vger.kernel.org
 S:	Maintained
 F:	drivers/i2c/busses/i2c-cpm.c
 
+FREESCALE IMX DDR Performance Monitor DRIVER
+M:	Frank Li <Frank.li@nxp.com>
+L:	linux-arm-kernel@lists.infradead.org
+S:	Maintained
+F:	drivers/perf/fsl_imx8_ddr_perf.c
+F:	Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
+
 FREESCALE IMX LPI2C DRIVER
 M:	Dong Aisheng <aisheng.dong@nxp.com>
 L:	linux-i2c@vger.kernel.org
-- 
2.5.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
