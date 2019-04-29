Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B218E80C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:45:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+PB/JdDFRcK5UkmDp3HtkqFF7vAEzpixOQGhbrQnVM=; b=O+SUxoMCnHG6sT
	jsalthyB40hzogX7nC8irJZ9n0NGJUJYiQAWLyMCC6oTKRb3OxGZEpoD8+R3xlKBaGic2G108tpfP
	DECx5H9odGm4DlEcLmFKmeugOB9hzXdFgQD9bFwn7FSsXKQhnomZW7/ZrzvElzypG/MIl+5RCyHj3
	HBEfCxr1nTRZsrdQael0wEgDMnoL5Q7kl2UH0m5e0rc5gEYvFejDdbjjWMNqeYWUUQyoVCbo0ohXW
	xKc7VaUKd1cGGQboqtIPuY0HDNxPIj4K96RHZ83m5wEppfBKirdPDGlqTw3efCacodo7h9+rJ76V+
	bywPH7eZ/KPGLRU4H6Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9PC-0003Lj-L1; Mon, 29 Apr 2019 16:45:26 +0000
Received: from mail-ve1eur02on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::619]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9OU-0001ZL-JE
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5Fcj63ZxLJBXBRZvo/zOWz3bF5Gowdk6G4dTIzG0H0=;
 b=ZK7idqVDDWnYMRDNbHJ4dqX+RgJhZLyUcdtMn0iQTrsxZw5/Yj9dmxZUxrquSfp1L0m8Gtu6WOoytq3eAzedTOI/fgsCO9zXgsX+ZNX9/3+bSgweEhEs40rjorQlnxAZZMmAjssGZdlZbAKKwt3PNtHn7neNZUfhLgsbl7ewn4g=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4000.eurprd04.prod.outlook.com (10.171.182.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Mon, 29 Apr 2019 16:44:37 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 16:44:37 +0000
From: Frank Li <frank.li@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V9 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Topic: [PATCH V9 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Index: AQHU/qrV4EH7OwlV1E21FEPgHnlu7Q==
Date: Mon, 29 Apr 2019 16:44:37 +0000
Message-ID: <1556556252-22868-4-git-send-email-Frank.Li@nxp.com>
References: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN6PR01CA0009.prod.exchangelabs.com (2603:10b6:805:b6::22)
 To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 432830e9-4da9-4d92-9ea1-08d6ccc1f799
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4000; 
x-ms-traffictypediagnostic: VI1PR04MB4000:
x-microsoft-antispam-prvs: <VI1PR04MB4000F616DF88EB89D91103C588390@VI1PR04MB4000.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(376002)(136003)(346002)(199004)(189003)(110136005)(6486002)(316002)(68736007)(81156014)(53936002)(73956011)(305945005)(7416002)(6512007)(8676002)(71200400001)(71190400001)(476003)(8936002)(86362001)(4744005)(52116002)(7736002)(386003)(6506007)(81166006)(50226002)(5660300002)(99286004)(76176011)(486006)(2201001)(36756003)(478600001)(97736004)(186003)(4326008)(2501003)(256004)(66556008)(66946007)(66446008)(64756008)(66476007)(11346002)(446003)(2906002)(14454004)(2616005)(6436002)(6116002)(3846002)(26005)(102836004)(66066001)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4000;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k3tEOdcz48ZCa6Piv/thlYigUInBJdcf9knvq0nk7/FDL5RegprTOUtandnmyLDtbOyfup+3ptcCFpOB5enXrRhhi8q1BISWfUthCDvvx2agnMB9C4/os5es+QBiZc+1aXV0RYnDA6QkQJnOJP3Od1I6IpvpYDNZC3tLKn4kiOv7ekpndH2KNMHoAnhcPN5d55kGK2sT+q0mrrwzNDjXX+96TPwwHezGFTH6LPfulH5Xsv++qS2KtZ9chrPNx/zoSjO4o1P8mASjK1R4ijX6kh4SOe11Re/paCArP7oyEDtcHHYyfxhtXcamGXtviUSz3DwL/5O9sWpYWAqHqAm/sFBmyiuN9H96CYaFNOI+t/XQnxMSCbp/7oUAkm1qirdJCEzudaiE+licaZ9Nq/RQjSF4rHLP4n0jDtpz4UhoguY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 432830e9-4da9-4d92-9ea1-08d6ccc1f799
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 16:44:37.8731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_094442_961318_4C06D158 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:619 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Frank Li <frank.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DDR perf counter driver maintainer information

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
No change from v1 to v9

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
