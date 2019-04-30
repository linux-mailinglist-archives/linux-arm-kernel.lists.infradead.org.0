Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED07CFA8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjuzBcNcEp+kXbBoQ8uwu6ba7PswZBrQcQDJ3AeXVsc=; b=nB38LsrfCA85ar
	tE1Z6/6i/PpDI9kVpOEQf/6aawvQkpSz3Z82k++ryVCbMLFPknkGxZKRFELHxpQuroBvqK5FH3pe/
	5twjGTnuPhQoT9RY/KGTPh04rzJtYVqR5KnsCxBexj2eWnoAHIcQjq5DiGHDp+DNX4yAblDtdMa15
	TdMDBLKUHfF5uhk0UeoG5XMRDLwEAaSU1cu3O3iP40rhvuu4Ow/fEbqP7zOnsBddWx8Qv5egHBtGw
	YUp+uZ/TAG2KnJHazq4d2bt4MFKmD7Uh2n3B8bqYS3mTWQk7dlHKUdtUXyq8dBUfsOlurwFI4bet7
	TOyiTszfVb4FbGAowCug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSwM-0001wR-6w; Tue, 30 Apr 2019 13:36:58 +0000
Received: from mail-eopbgr140093.outbound.protection.outlook.com
 ([40.107.14.93] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSw0-0001gZ-TY
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ecNZSNDauDHXaY8KYFpIs4T2Jzko72/nDQhj5Hx9xws=;
 b=XozE50ulnzwBdru6GQyYfcabpLvCc/KHrfh01PH4HBBNGqfHEkm6mgaxHn51J4dfVEOuNTX37kRwyVmlbGHHsJ6QG6ouOPecEjtFDgJn92XyDhC5RlZJL3vgFinH8R+8IvnCUkHz3gcgLnQjQh0mZ5d9oT7z+1tFtE4pylBwgRQ=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB0735.EURPRD10.PROD.OUTLOOK.COM (10.167.203.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 13:36:32 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 13:36:32 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH 3/5] soc/fsl/qe: qe.c: introduce qe_get_device_node helper
Thread-Topic: [PATCH 3/5] soc/fsl/qe: qe.c: introduce qe_get_device_node helper
Thread-Index: AQHU/1m5wwvqkwBQPEqdfO/X5o0HqA==
Date: Tue, 30 Apr 2019 13:36:32 +0000
Message-ID: <20190430133615.25721-4-rasmus.villemoes@prevas.dk>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P18901CA0005.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:3:8b::15) To VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e3::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Rasmus.Villemoes@prevas.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [5.186.118.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c1e8765-b5c5-491c-3397-08d6cd70db58
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB0735; 
x-ms-traffictypediagnostic: VI1PR10MB0735:
x-microsoft-antispam-prvs: <VI1PR10MB0735C194D1C77A8CCF5448088A3A0@VI1PR10MB0735.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(39850400004)(366004)(376002)(346002)(199004)(189003)(81156014)(36756003)(8676002)(6436002)(478600001)(81166006)(107886003)(50226002)(52116002)(8976002)(8936002)(74482002)(72206003)(4326008)(7736002)(6486002)(6506007)(386003)(25786009)(1076003)(53936002)(54906003)(76176011)(305945005)(110136005)(316002)(99286004)(14454004)(6512007)(476003)(11346002)(446003)(5660300002)(44832011)(66446008)(26005)(73956011)(42882007)(2616005)(6116002)(2906002)(71200400001)(66556008)(66476007)(64756008)(66066001)(97736004)(66946007)(3846002)(256004)(68736007)(71446004)(186003)(486006)(102836004)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB0735;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: d9QfkUDy9bOaCxWiW2IKAhW+h7gibiogP4OxmvtXybAdHvqlyGbd1cCWXi9PE8yPw1xjV1HKWjGwYvhqHw4Eq/84vs/r1mX8TSrfYvV/Hrb0iqQeifLRk694dMdDYkuxxt3ujAlEksPahsV4PgJPMEtrl/NmHt7dx7eoCwczFSvmM0ckXPrMya5MEkJLSily8MCk7ki48kJeqhSIHYmp8JpYHSPqmEzXvZNjMILBejusX6O3IyKr7LrESWFqBr3Ol+iAn8zVv2fPYkeJxk/jKeooPg27F/6ETDeB440uO4BkffXNsphQmDVx/tf0PL36uhJ9/46R+I84jXexyb1fBVwXSl3KdkpJfq0wMJPihGzejhbFpJMKcXfAPdq4vEgS9whMx5wOgYJr5tuuePf9UPr+cyxbGBjtRC2ETBnvLO4=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c1e8765-b5c5-491c-3397-08d6cd70db58
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 13:36:32.2157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB0735
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_063636_951850_8D881BE0 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.93 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>, Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'try of_find_compatible_node(NULL, NULL, "fsl,qe"), fall back to
of_find_node_by_type(NULL, "qe")' pattern is repeated five
times. Factor it into a common helper.

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 drivers/soc/fsl/qe/qe.c | 71 +++++++++++++++++------------------------
 1 file changed, 29 insertions(+), 42 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index d0393f83145c..aff9d1373529 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -56,6 +56,20 @@ static unsigned int qe_num_of_snum;
 
 static phys_addr_t qebase = -1;
 
+static struct device_node *qe_get_device_node(void)
+{
+	struct device_node *qe;
+
+	/*
+	 * Newer device trees have an "fsl,qe" compatible property for the QE
+	 * node, but we still need to support older device trees.
+	 */
+	qe = of_find_compatible_node(NULL, NULL, "fsl,qe");
+	if (qe)
+		return qe;
+	return of_find_node_by_type(NULL, "qe");
+}
+
 static phys_addr_t get_qe_base(void)
 {
 	struct device_node *qe;
@@ -65,12 +79,9 @@ static phys_addr_t get_qe_base(void)
 	if (qebase != -1)
 		return qebase;
 
-	qe = of_find_compatible_node(NULL, NULL, "fsl,qe");
-	if (!qe) {
-		qe = of_find_node_by_type(NULL, "qe");
-		if (!qe)
-			return qebase;
-	}
+	qe = qe_get_device_node();
+	if (!qe)
+		return qebase;
 
 	ret = of_address_to_resource(qe, 0, &res);
 	if (!ret)
@@ -164,12 +175,9 @@ unsigned int qe_get_brg_clk(void)
 	if (brg_clk)
 		return brg_clk;
 
-	qe = of_find_compatible_node(NULL, NULL, "fsl,qe");
-	if (!qe) {
-		qe = of_find_node_by_type(NULL, "qe");
-		if (!qe)
-			return brg_clk;
-	}
+	qe = qe_get_device_node();
+	if (!qe)
+		return brg_clk;
 
 	prop = of_get_property(qe, "brg-frequency", &size);
 	if (prop && size == sizeof(*prop))
@@ -563,16 +571,9 @@ struct qe_firmware_info *qe_get_firmware_info(void)
 
 	initialized = 1;
 
-	/*
-	 * Newer device trees have an "fsl,qe" compatible property for the QE
-	 * node, but we still need to support older device trees.
-	*/
-	qe = of_find_compatible_node(NULL, NULL, "fsl,qe");
-	if (!qe) {
-		qe = of_find_node_by_type(NULL, "qe");
-		if (!qe)
-			return NULL;
-	}
+	qe = qe_get_device_node();
+	if (!qe)
+		return NULL;
 
 	/* Find the 'firmware' child node */
 	fw = of_get_child_by_name(qe, "firmware");
@@ -618,16 +619,9 @@ unsigned int qe_get_num_of_risc(void)
 	unsigned int num_of_risc = 0;
 	const u32 *prop;
 
-	qe = of_find_compatible_node(NULL, NULL, "fsl,qe");
-	if (!qe) {
-		/* Older devices trees did not have an "fsl,qe"
-		 * compatible property, so we need to look for
-		 * the QE node by name.
-		 */
-		qe = of_find_node_by_type(NULL, "qe");
-		if (!qe)
-			return num_of_risc;
-	}
+	qe = qe_get_device_node();
+	if (!qe)
+		return num_of_risc;
 
 	prop = of_get_property(qe, "fsl,qe-num-riscs", &size);
 	if (prop && size == sizeof(*prop))
@@ -647,16 +641,9 @@ unsigned int qe_get_num_of_snums(void)
 	const u32 *prop;
 
 	num_of_snums = 28; /* The default number of snum for threads is 28 */
-	qe = of_find_compatible_node(NULL, NULL, "fsl,qe");
-	if (!qe) {
-		/* Older devices trees did not have an "fsl,qe"
-		 * compatible property, so we need to look for
-		 * the QE node by name.
-		 */
-		qe = of_find_node_by_type(NULL, "qe");
-		if (!qe)
-			return num_of_snums;
-	}
+	qe = qe_get_device_node();
+	if (!qe)
+		return num_of_snums;
 
 	prop = of_get_property(qe, "fsl,qe-num-snums", &size);
 	if (prop && size == sizeof(*prop)) {
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
