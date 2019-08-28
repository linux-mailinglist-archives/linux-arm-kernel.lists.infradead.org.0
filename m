Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D000BA0147
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xuquSpAMU7QZ4abzStfjupW0P940xMyuxUOP/azkcqM=; b=pKOnmCKOEXMz9s
	U0T7ARsRXKUffzn+zNnJWRaT2x+pDvraWvDoNi/arlCDiVXdeXRrY8AOk4TrpQ7djaueCdYKMtgf7
	VDmx/Wz9K++zG0Cko862Zv5cRH5G8lawmoib1sYVpgPlYxG63hj2cRjjaW1atOR04+Pw8dbPTG+H5
	8FMzgka3IzBgPL0QxzfSY8U8R/DVTiuAGEGPnKYlDZ/Hjj4bhgoUtO8HMY3nChR+0M8h0WqLbXEzJ
	3ZSdmCfC8zE4+iaHxTnkWxUFkFnxCNgT96VIhuU82nVUhVHEwy+qgev3Iyi48nNXHhp24O8I/FDPD
	Dqx5T8gZ79IvHxM8IHlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wks-00034Q-Cp; Wed, 28 Aug 2019 12:08:50 +0000
Received: from mail-eopbgr20081.outbound.protection.outlook.com ([40.107.2.81]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wkA-0002cr-1C
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:08:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XaqLqzCvsyqdIv6R+efCT76DkN7IU86eLz5Nj+P7PzPFIcfLQ3GTP00ONUUcaOpYud0g4QfPtxyk07VX0obhb+DVsZgw6zpwcgi9hEP6jIQSjilhztUQU5j9oci2X7s96bQcV04qFExAL4PCbPHS6fF4ydtAzJU4xXBL6jmSbFhHjtDibOq/we7N90+3/y5Ppx6Cbd93zpWcAENWMObURJwxgw3MbBmndqAyYK+AU8slbegevLw5KUBU9a+bQpuaZ0XqirwEugC4d85JdEqOdTAmQkWY8v3LiKAnc2ysBWhAf5wjMlnu+bKDIA+8x/hvORT6nQJ3w8x2L0ZESX5J3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OQu1tsGKuFkiCuONTH+5spD7dMVPGRoYIzXYR9RRCrY=;
 b=C+B4Lubxn4CLJEgzDtXEfwA4CVVtfTKK79TNY1AZjVT2Re4hv0kHb0NTY43h1BHmBu9cQ3ccQQhw2kG/p9IzzphzxCptnCPxDVfwbhM7+vFl55n7GPU07uXRDn6qpnx62rV1U7fWEgChITZ8i/fo6kZ9p9xgp2mCPWoixU//dbI+mBDP/wVHA/yGlK3jqCbNoAa+/4x6UPxPV4lmOg/RjahbJoXx0XL8EGTa0bfipSU6CfTs7p4UUH1RpyZkDD4S7IRQ8Ik1YuSgdhbsXIVzFam4GU9VBODorLpTSGMLP/nBLPFQyPDnccsKxl1xI+tP7of06OIyZrnkSEN2mopVkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OQu1tsGKuFkiCuONTH+5spD7dMVPGRoYIzXYR9RRCrY=;
 b=obr/h3yiaba5XYJNbfWDiYIJtfPxdi2wJsTRql8XXGK1tdokQO/GypKKsX8spFopjNSzpJfoyhOIY+PTFoAfpL4g2Keb01eEsad/j5Kg2sowKqd+3ecP2dCTAZFNr6t2nG5Z/soHqxnU67ATOZQVocn1xvYYlzTRaTafPNo/JTA=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4666.eurprd04.prod.outlook.com (52.135.133.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Wed, 28 Aug 2019 12:07:59 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 12:07:59 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will@kernel.org"
 <will@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V9 3/3] MAINTAINERS: add imx8 ddr perf admin-guide maintainer
 information
Thread-Topic: [PATCH V9 3/3] MAINTAINERS: add imx8 ddr perf admin-guide
 maintainer information
Thread-Index: AQHVXZk70BTIqR84qUq7E/rjo3whwg==
Date: Wed, 28 Aug 2019 12:07:59 +0000
Message-ID: <20190828120524.9038-3-qiangqing.zhang@nxp.com>
References: <20190828120524.9038-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190828120524.9038-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR01CA0127.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::31) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62eded31-cbc5-4638-7868-08d72bb05e1f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4666; 
x-ms-traffictypediagnostic: DB7PR04MB4666:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB466605440C0EC34C528108C8E6A30@DB7PR04MB4666.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(136003)(366004)(189003)(199004)(54534003)(50226002)(99286004)(6116002)(81156014)(2906002)(53936002)(8676002)(81166006)(6512007)(66066001)(1076003)(71190400001)(76176011)(8936002)(3846002)(52116002)(6506007)(6486002)(386003)(7736002)(478600001)(4744005)(11346002)(14454004)(446003)(110136005)(476003)(316002)(25786009)(86362001)(71200400001)(486006)(305945005)(6436002)(2501003)(36756003)(4326008)(54906003)(64756008)(102836004)(26005)(186003)(66946007)(66556008)(256004)(66446008)(66476007)(5660300002)(2201001)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4666;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IdPfUVruYOwry4wCFyphTg9/VVACcp6Sc3igBpkkZxyvqzdMeiVdC7H88SdYNW9FZQn4zBCHHp1YZ8PX/f0dGhywlFDMfx53X3GYCk8lCnY8kRw3DftCLRzyjPpOhM3XqIxYipyzaxuWELIYjM7ZnwrTd7t1SHglSgd+X0kPvodRcFg+C5C5ZUkyB9o3MeBeK4MrNjVRFdw4mb/EduAtQ7TkAu2DHN0GamwWIP1rgG61zKp0dEybouGilCsEbvhYKXpJWfAapzk251DLOawD5LMh056Q62EZztNG2fMA1UaQpU8bR6+tUcMqkBdWDVWyb55yzJ+YsJEq3XoQGxbsGHJcqPM944B8CpUoNRiofR0SCTqkGhrjP145w9U5reC5D0bdlCIQ0yk61qZtQfuMnYu4xwr7+4K7jvmzG5bMGC4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62eded31-cbc5-4638-7868-08d72bb05e1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 12:07:59.3291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UZJyq5rzUwE9px8XLECnuowViv2mkAEr5EvSzOUK/PIw0og3SN0ByXiIAkEcsbXrZDHHvTFKtehEx/6YcKv2zA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4666
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_050806_104970_E0E7529D 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.81 listed in list.dnswl.org]
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add imx8 ddr perf admin-guide maintainer information.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>

---
ChangeLog:
V1 -> V5:
	* new add in V5.
V5 -> V6:
	* no change.
V6 -> V7:
	* no change.
V7 -> V8:
	* no change.
V8 -> V9:
	* no change.
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e60f5c361969..2ba378e806c7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6462,6 +6462,7 @@ M:	Frank Li <Frank.li@nxp.com>
 L:	linux-arm-kernel@lists.infradead.org
 S:	Maintained
 F:	drivers/perf/fsl_imx8_ddr_perf.c
+F:	Documentation/admin-guide/perf/imx-ddr.rst
 F:	Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
 
 FREESCALE IMX LPI2C DRIVER
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
