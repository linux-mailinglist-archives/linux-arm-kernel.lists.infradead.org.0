Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DAB1B4B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6mPm1baulDn71pTIXJTUg4HbR3FqPIeHbmep+t9ta4=; b=aVbl1q0mOxKdjV
	No8GeFh/aSYQZrvpbjL1XXvG2lSqRPCTOjPKzmaA4Yy39cgJtJajDHpXi3Wyquvdg4wQ8yLo5BBBn
	KQoewkKDaNys/Whgki2id4QuJNzhNtHPI9BY+TFfVVOPiSwi/z4wKlu8nV0DXIwnEKZuiNQ7MD1ue
	4PQIp55pJ/MKFQ2izKHJSAy3fTKSlzoHCRt3pI0BGsfoZpOaX4qeEVZnOeH1MTdiAsvrq8PJHUEKs
	Udcrz6HvPYgxdoiYeXON3GUzYs1nw1GwjzvdwWFuIc8B+XseJISQWc4FwRbzf0Wpggsu8Jjy4POW/
	0jetQNklXUpcOSXZXijA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8w0-0002KU-Q4; Mon, 13 May 2019 11:15:56 +0000
Received: from mail-eopbgr60095.outbound.protection.outlook.com ([40.107.6.95]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8vG-00006d-JW
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qo+O+Ii8OjvSUslmDWw61z/f9fV+jOgr8GgArqpHKfw=;
 b=aqkUGtatxVjttxBZ+t+QTNz64cj3yK/rkJ2bzYdu2raifP1n3OhPgAqA3bLGdkwlwv0O977ilpKxz8KFeZQZxC23nfc/s+EFoURG1+ZhclRtFpcA/EFNKOVosKYMhdn69GjLsKidXz5Us7p9WG6BovIYvg8tLMUp1JKSiFDj7PA=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM (52.134.27.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 11:14:57 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:14:57 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v3 3/6] soc/fsl/qe: qe.c: introduce qe_get_device_node helper
Thread-Topic: [PATCH v3 3/6] soc/fsl/qe: qe.c: introduce qe_get_device_node
 helper
Thread-Index: AQHVCX0ZmfxjQSeIP0i7kbKp8jFn9w==
Date: Mon, 13 May 2019 11:14:57 +0000
Message-ID: <20190513111442.25724-4-rasmus.villemoes@prevas.dk>
References: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0101CA0022.eurprd01.prod.exchangelabs.com
 (2603:10a6:3:77::32) To VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e3::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Rasmus.Villemoes@prevas.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f06e736-9291-4630-cb62-08d6d7943b77
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB1950; 
x-ms-traffictypediagnostic: VI1PR10MB1950:
x-microsoft-antispam-prvs: <VI1PR10MB1950451F180E09105A4F087E8A0F0@VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39850400004)(366004)(376002)(136003)(396003)(189003)(199004)(6512007)(66066001)(53936002)(107886003)(52116002)(68736007)(256004)(71200400001)(71190400001)(76176011)(6436002)(478600001)(6486002)(1076003)(36756003)(5660300002)(72206003)(74482002)(446003)(81156014)(8676002)(14454004)(99286004)(2501003)(66946007)(66476007)(66556008)(64756008)(66446008)(73956011)(54906003)(11346002)(2616005)(42882007)(476003)(81166006)(44832011)(50226002)(486006)(8936002)(110136005)(8976002)(6116002)(7416002)(316002)(3846002)(2906002)(305945005)(7736002)(186003)(25786009)(102836004)(6506007)(386003)(4326008)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB1950;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ArtsQHOM0nwZbifYlvn6D8HfGnYeem7j6DNy57LCKPip+6AzhUJnsxVJah7P4pb5hAd9XoOxN+otW3l09psRgWNMGdGYvlmlIezYQXD3TVwuWd2fNh+/F7TjJmMWFXE1JVifDLtuiB8F0I8rJFegC4M/76k/OOwB1bP4kA09j6klALCbOQ6MTi55efL3IjH51MQM8o9z1jeg8CK3uXbAgaWW44zG3+ngTRRgx1j8afZhD1iYMJ4Bk+S2PAQeoBr6swUjmVhmzimQoIytlHd3lS1a1bt3oPLUGnjZA0xfaz7JyBRTwogNgQZX9D8yEEuPuVG86pFofzkT6TB0gZXqlaZIPy+xeHsYpt/HBS/u2lnEQm7Wuh32A+jtX/BS+7NVvgAUW6Be+uqs3gk7WW/twTK+8CgLnrVqBXf6VOhWj9c=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f06e736-9291-4630-cb62-08d6d7943b77
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:14:57.4903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB1950
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041511_068011_46B8C3BC 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
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

Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
Reviewed-by: Qiang Zhao <qiang.zhao@nxp.com>
Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 drivers/soc/fsl/qe/qe.c | 71 +++++++++++++++++------------------------
 1 file changed, 29 insertions(+), 42 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 4b59109df22b..4b444846d590 100644
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
@@ -558,16 +566,9 @@ struct qe_firmware_info *qe_get_firmware_info(void)
 
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
@@ -613,16 +614,9 @@ unsigned int qe_get_num_of_risc(void)
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
@@ -642,16 +636,9 @@ unsigned int qe_get_num_of_snums(void)
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
