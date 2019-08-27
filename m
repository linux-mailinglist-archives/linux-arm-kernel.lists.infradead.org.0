Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87209DBB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 04:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33nhTyFtIYEeFkEqGyk4gNCS3CWh/e+dymnogWQNDMI=; b=O6p6HUYAQQsFgu
	mw8rM1mbF94N4vWTirk1xT2+4LBsSqAXl0O2quz1eDDn1iZXiFTgJ+m9lKRpNDDupVC4A9qj6CgJx
	RQLQwbYuSGnsRyQ1tyzBBvxgQ/AejvYdDa51NHjyepj5SN6IKsHxAuSGykqlqqRq3DtL97HG1+8Gs
	bT1+S9D+K0R92Rb6KHKCFd3Mh41OGsVgfp1EqFulEx+QAFVxQeMh7KES52NwQjwJhhkGpvS+gVsqt
	JhtYfjlY/+A1tYrTWRAxZCg8N09f4DhFczkeSxqFf3+WJo+/uu6VS1dGTMYf3Ag+5ut8CvZ9s7rNG
	XXVUh/XjgBteykNea8oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2RPJ-0008Or-0n; Tue, 27 Aug 2019 02:40:29 +0000
Received: from mail-eopbgr10068.outbound.protection.outlook.com ([40.107.1.68]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ROX-0006jM-Mq
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 02:39:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P4vrWJOQx2tIxpe8ksJrqkN1qv0LbVeLvv/AekVFrcIo1Fzjpa9P7iLGqiVuJs0OqnsZmQHr8PaWeKRtmmURX6Xq0ankQZGQT1tO0BiA9IOreWjysQNacjRskWe+zRNRLpbgiqVoX2FrMJjUuy6wQi0btrn7MchFUFVRKO+R8VSQwTAsxO9IDQRfglrTxzAF4zqRhnQtstU5g/PmETSJE11eu2vhswm8XOovHJbWN2CaR4zDNlsjrLmiGvZH8zBasFwm+ajpguesaaCJQGwafpqCRoQe8Phg1o7yyK37nEh5zlU0HkoRVa1Acp8fDFUlNGP9ylpei69gzJIgt1ea5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s7IdiSrM6M3uQoLTD/3Sj65KSl5Pq/27U/+Mn71XQvA=;
 b=d/xuTeGzP/2dwwoxmpy4GDMCKTqjEGDRlRnJ8uqo/7gY9MrPxr5unRD3opmhMGR6sHAjHzpFpFgxuHa5C+SqrWcEZs7zwYN2m0JB9hAxcA9oqS07z2qHUjzA5tAbNkMivJh/2/eaesxxms1OHqyDST7oNt+kOG8lrXIoXL8Bbe0+AvrVqZNlhqnNqjAUHpmZzRmtGdbCFjoWK4XDypYV6TLOX40eaPIdM7NsScgIMSnB9jk3K3qga5d9K/PyneVGGVfeJCkEYyHg1YnnDLfTdx5xM2XJod/vqE3aY8LsZHMHxASxXWc2y8b7Fq9HbsqU61x3VE5kJ1h7/oBNRRXYjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s7IdiSrM6M3uQoLTD/3Sj65KSl5Pq/27U/+Mn71XQvA=;
 b=qP6Ab3TKgSssulZruLAICnc1vqgm7yZJaMJHEoq9NaC8jM5SWCY3SoyPF7buEvbdY2eC+BiQh4Uh0fk42xinlora8rJHzdInBYuaTiUUVzLhkdYiauVUYihlef+mD0SNcKO7sP7zRqI4YN5LoCJJkJ1bdLVUqN9nnrjpVZ3Xs5Q=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4156.eurprd04.prod.outlook.com (52.134.110.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 02:39:39 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 02:39:39 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will@kernel.org"
 <will@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V7 3/3] MAINTAINERS: add imx8 ddr perf admin-guide maintainer
 information
Thread-Topic: [PATCH V7 3/3] MAINTAINERS: add imx8 ddr perf admin-guide
 maintainer information
Thread-Index: AQHVXICsCPV8+v9w5UqvQkmFlgsQXA==
Date: Tue, 27 Aug 2019 02:39:39 +0000
Message-ID: <20190827023557.7071-3-qiangqing.zhang@nxp.com>
References: <20190827023557.7071-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190827023557.7071-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR01CA0111.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::15) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0cb4cec4-b7e2-4e4a-a120-08d72a97ce74
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB4156; 
x-ms-traffictypediagnostic: DB7PR04MB4156:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB415698A6E051B7E071C8EC9CE6A00@DB7PR04MB4156.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(346002)(136003)(39860400002)(54534003)(189003)(199004)(99286004)(81156014)(81166006)(6506007)(386003)(26005)(71200400001)(71190400001)(1076003)(102836004)(25786009)(2906002)(6116002)(8676002)(186003)(36756003)(76176011)(7736002)(3846002)(8936002)(66066001)(4744005)(256004)(52116002)(316002)(110136005)(54906003)(14454004)(50226002)(4326008)(478600001)(2201001)(5660300002)(53936002)(6436002)(486006)(476003)(2616005)(11346002)(6486002)(446003)(66556008)(305945005)(86362001)(2501003)(66946007)(66446008)(64756008)(66476007)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4156;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OVFtxyfC1PlY/9ZTrGg2tBqNB0KbZt5DnHO4RN4RUDkCjpmZ5I55pQ7dsi3ddiMF2Ydt+9WR2pKYc3QXq/GyfHMWC9vnMlyZxoc6FdtXuWkDQD9YF1G8duIvGMkZPkqnXb2Rk2CodzDD2juYMhwQBx39GlcT79Y/dj+6jclpFrzbnTeMUF3ygVRq4CuAjA0AexyZJLMsSzypJ/ygMRGXhDRhm9nfNPE2mqR/tw+Z/NYuPzAPLVr3Mo+8s2kxlqMBH5inXQnE8GoAykPKBX1ntXvPt7DMtWNJS7uLLBzOGOus4A372zbYZ4kG+DnR3XzFFWXKqay7MhXHqYp3sD4OSCg2a1gkf3hGlPWef4I2WyQnQmhF0nU0BcnLPSk8F1FDQzEYSwLjsV1pyl6seDDQQBJs8MwYa9OCMbV42yk+Z2k=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cb4cec4-b7e2-4e4a-a120-08d72a97ce74
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 02:39:39.2420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pW/RtBe5dxTIjJitPTfJ0xIkj0H+VRTmGoiddUzidRqDz9lSj+JR4fBNK6gOo1bX16mc6muFZccRQrYjbME3Wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_193941_795621_F2BEB96A 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
