Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C999F894
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkFnFutDZhr0zR3cuGqjGSDh4l8019eQNniPORqzrn4=; b=IEOB3VFzbzc5mq
	HsJD77fcmOFLml2A0xDurPQW6q/DT7TI0NgN4wdBW7doxCHdW0tZiUjXp3ZAEZJ/PtyniWqBr/UM7
	6LkgFtnmLl5T3w9Y6lXmWId1wbd90Fk6DI+pVnZGMl1xJDMqyam4Vk/3RT8T3o+cNLE13V2H/cav3
	jf7g1PaYxdukHU1fsldH/9iqnbVMPLLNZGpEKlZz8oz8j/6mpulv4b6BiLWJsDKEJt7ZdfWv3GHTo
	b7eKGRz4At/Dnik/UDwsYJX5PW9irdZHRQRMM7GDxqpEsP6BI537cF21hSkhZ5diOH2nJ129jg85B
	js/mK7Ew00PSOM8Ffu9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oI4-0005oR-Fq; Wed, 28 Aug 2019 03:06:32 +0000
Received: from mail-eopbgr30072.outbound.protection.outlook.com ([40.107.3.72]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oHL-0005No-Ac
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 03:05:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NdQjIboAvCI4eUsaFRptJFxlHqPebhgaCPIJR43PVBN1WL2/adldlqKtbk6LZQqgZBeAyaeHsHgRqYCvj5YdH3GbfrpzqKENI0S2UBKtTsUkLRZ3x5W4PYaEgRS908lNn1ky3jv5fQMNIB9ftPmTOJ7UIROqO0NV0blsdNyBRo24KH5oiNnSoR4OUqMAVCLw8bCrsr6oivqW9+BRGJnn0CQZ1xwz6jUT7SD9xd9mpgnOPF4nXhsRP5MYh0bgr6jeq9VPDiZQ4KuL17aYwXXuvOH6WUrangyC6SoK3zyikRHezDLqKpFNk3KzRBvO0fFZEWZDBEmlqqBef1kuTFg0Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FohEVPWYbz7eign/Mp4XVK9ws4LDY2zc6uw37C5rtGo=;
 b=aCvo6QeJkMlZz6uAEZ2vxQ34pKR+rgqlx0Bx87ZWVp8y6GU0jBWd939qmmix9BU48CelY1KPfTfHM6I8O7fZx7RIPTbqJ2tShrJ6VLo9mGOKP/cKL3/gbPSAL3413zGSCdXaZ7DpkVJxpNaGHnQRJBmwupsK9fhq2uYoIxvmmwEyO7bub5pFu2Fv04s1I0fyoBBDWC+mteu6tcdTZ4K0uiBPREzlHvdhMK7YV6S6yxzUtrvMYxOvOGZT3v4k+Ebtjxkk9LvCS5/sKv6bbUlfKPGT8r9TmtQ5uxwCdThHEMcDbPm2znT0bPOO7+PZorUJfPwyWAXMKPFzdtBBZ2OmeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FohEVPWYbz7eign/Mp4XVK9ws4LDY2zc6uw37C5rtGo=;
 b=huSxHbTxgmyRpNS7aU4HdFhlcvi+B9xSO/OLPZ798bHXuJhbL0KpYOe26Mrng4Qgh/6bXCWUWIs8W7HqT6BIGEcpbJIOE6C1otsZpF1vG/tM8H0Saiqo2Wz2sdim99F28GSnqOOtTYEGHf8qyQE/5dLz6ntm5chnf776nQ+I7fA=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4633.eurprd04.prod.outlook.com (52.135.138.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 28 Aug 2019 03:05:44 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 03:05:44 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will@kernel.org"
 <will@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V8 3/3] MAINTAINERS: add imx8 ddr perf admin-guide maintainer
 information
Thread-Topic: [PATCH V8 3/3] MAINTAINERS: add imx8 ddr perf admin-guide
 maintainer information
Thread-Index: AQHVXU17yptAr2v6O0CqDdaqkLeJfg==
Date: Wed, 28 Aug 2019 03:05:44 +0000
Message-ID: <20190828030305.7190-3-qiangqing.zhang@nxp.com>
References: <20190828030305.7190-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190828030305.7190-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR06CA0118.apcprd06.prod.outlook.com
 (2603:1096:1:1d::20) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da90efb4-9c46-436d-949e-08d72b649db9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4633; 
x-ms-traffictypediagnostic: DB7PR04MB4633:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4633E5D5BA8B67D688F3ACDCE6A30@DB7PR04MB4633.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(54534003)(199004)(189003)(305945005)(6512007)(26005)(7736002)(36756003)(4744005)(1076003)(2906002)(2616005)(6486002)(186003)(476003)(14454004)(53936002)(3846002)(6116002)(446003)(52116002)(11346002)(76176011)(478600001)(6436002)(5660300002)(386003)(6506007)(8936002)(2501003)(66946007)(2201001)(71190400001)(71200400001)(86362001)(66476007)(66556008)(64756008)(66446008)(25786009)(256004)(54906003)(8676002)(81166006)(110136005)(4326008)(50226002)(102836004)(66066001)(486006)(99286004)(316002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4633;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yMzsAza60vXlmIIekZMV+QRG7VUm/4gJCZOf6OUYX387J2w93JJNTKvdcKFL8tluwO7h4BDc92ZZ8+WUFsaUP7nK1962zBN2uZYDcQRqRDJE0SZ9CtER1M+MSL2LqG7+Vz2s682gnjIrO5dadMfjpLanzzfoESNcxKt5t+gs1fKupyP34+10LYAylqNmJcQ9SIWzVtwKJ5N9eJPMrD4lun4QVEj2n673aSOg9Ejc/zCM9n5BOFsPH0Rm6O89LJeTOWZm0FcWnO/rV3y8lInBihHmN7JmVnaKIIZ29NQAzZng/w6Rl8HR1zGFJ6RLFPc84ve/vQkNs5reDon4/NqSq/9ENSNQgRk+B51TN0DGHVPNar7jTdU0DYgEiwZkDUDv/XKBERdmPKHH+ew9OdIUx0v1cg1Y8BlQOCwxVJmFRYY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da90efb4-9c46-436d-949e-08d72b649db9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 03:05:44.3271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lX82CJT09Ud+DNzWhb9/uu/IgtbhjJb33iEzUymDz0q8D7R3NcakbnjMUp25fq8H+zdvd2spyfeh3r14as9ZzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4633
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_200547_444802_E9D91C5C 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add imx8 ddr perf admin-guide maintainer information.

ChangeLog:
V1 -> V5:
	* new add in V5.
V5 -> V6:
	* no change.
V6 -> V7:
	* no change.
V7 -> V8:
	* no change.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
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
