Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7989910653
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4V88FKBRRbGbhPm9VmRoRQA+GnnfuwGCVFdYqZ7Yf8Y=; b=G/obocfEcnpqCx
	6jmr1jp1hZ+/1QEKqzg1fNYvfuriIQU9gwSgpBSf8oztjj1U5u9nQH/ZN1qwH9xTa4QAC0hcK09EL
	KNawQRMOXv+qsaCQyfI5LqHz4nozN29WiARN51UDUrw8C9Q4y0dRKFT7LGJiw4BH1/wHXut5cN7YF
	qkSm0C1BZ/ZTas60PK/9I+B8sddD3lLn6v5qZPwhpPpSC3GSqoGFYCxMHImNYUFPdNQRybZTAXJ1h
	/LgxeFBG+giLtbt06pVZ8hWGLznBOBjKmmfBZCU7pj2C8QAQj9pW8L5reHIVzTRib0Y1Ov0SCCipN
	0NUAyZwlkQgMrxir9pwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlYj-00073q-IU; Wed, 01 May 2019 09:29:49 +0000
Received: from mail-eopbgr20094.outbound.protection.outlook.com ([40.107.2.94]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlYA-0006LZ-T3
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:29:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LGCe21VBNZQEqboh3NbPhYW9ZL6uUqWxQCSeiux7swc=;
 b=UmQ6EI3cxjexna0zxeXCjn1GshWHIumhplUml+pMj1nNLjTi8ft6PAB+PNktM5uqm1Hqv+9P9b72r0Nn4AhICy2mjAlaEsG8XLB7CB3rcbeO+VJvCRWe9n8s2NoNPa+mSoOpKoJ+V5GO0SoXn8O/0JaJK+O17dGpJURlvmWpeeA=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM (20.177.60.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Wed, 1 May 2019 09:29:06 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 09:29:06 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v2 3/6] soc/fsl/qe: qe.c: introduce qe_get_device_node helper
Thread-Topic: [PATCH v2 3/6] soc/fsl/qe: qe.c: introduce qe_get_device_node
 helper
Thread-Index: AQHVAABSO9n6ywgWGk+dEmrZ/tNNCA==
Date: Wed, 1 May 2019 09:29:06 +0000
Message-ID: <20190501092841.9026-4-rasmus.villemoes@prevas.dk>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0102CA0052.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:7d::29) To VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e3::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Rasmus.Villemoes@prevas.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b3f79db-2e4b-4133-4e00-08d6ce177520
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB2143; 
x-ms-traffictypediagnostic: VI1PR10MB2143:
x-microsoft-antispam-prvs: <VI1PR10MB21430D1FA12DCCE11590FF208A3B0@VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(39850400004)(346002)(396003)(366004)(189003)(199004)(14454004)(81166006)(110136005)(54906003)(26005)(68736007)(8676002)(6512007)(4326008)(8976002)(486006)(74482002)(71200400001)(2906002)(7416002)(6486002)(72206003)(186003)(316002)(478600001)(2501003)(36756003)(6436002)(71190400001)(25786009)(1076003)(6506007)(2616005)(305945005)(3846002)(44832011)(256004)(11346002)(6116002)(5660300002)(8936002)(446003)(476003)(50226002)(76176011)(42882007)(7736002)(99286004)(66446008)(64756008)(53936002)(52116002)(107886003)(386003)(66066001)(66946007)(66476007)(102836004)(66556008)(81156014)(73956011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB2143;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ddS6KUlmkuerLJu3VBh7ANR62saeoQCJ/h1tDWkl3LKwIUxSWy/3zTFWmig4Awyf2QKmEfQscr51qeTwKl+5P1KwZ/gHlrKBbT/ESHmTi15E2DLWE7GR9b9RJ0uU7m237g93Jw//wiMBIa04rfKXYlf9t4B686rZ5P1pONqsZTnq9lEKKTzGKGG/QQqeHeHmx8aEFxz2zgD7pryYrQIr6Xs+WuHmKW7aTyGdWolv93zegqg8Fd0539aOcWpE74lBdpVvmlo7BbM4msH92OWIIQIJMQM13hdo5nmxH5DlWIg+xkU+ZLvlAInWosAC0xzddtFgUr09jfkRjJ34tO4oacygxIXr31apwX9gGek4KA5M3zWcwsjgTnNuLQ+jfsuAH5xy0FjZssEoIFTI8T5D8cDWcpCbtsAdrG2uYLwaoik=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b3f79db-2e4b-4133-4e00-08d6ce177520
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 09:29:06.7657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_022915_177952_A3475A66 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.94 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
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

Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 drivers/soc/fsl/qe/qe.c | 71 +++++++++++++++++------------------------
 1 file changed, 29 insertions(+), 42 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 303aa29cb27d..0fb8b59f61ad 100644
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
@@ -557,16 +565,9 @@ struct qe_firmware_info *qe_get_firmware_info(void)
 
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
@@ -612,16 +613,9 @@ unsigned int qe_get_num_of_risc(void)
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
@@ -641,16 +635,9 @@ unsigned int qe_get_num_of_snums(void)
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
