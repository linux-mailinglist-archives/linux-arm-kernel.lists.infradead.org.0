Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 420E51065F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHfqEnYHMoCAxTPRGJfqnBj9Vn6eCPyAvrAEI4GA26Y=; b=kb0e2wkPJL8HUn
	jB8tJtLUzb7XdkoQ/z/N0/EoKWqemav7BA/8R1aaHNLpXdJBfao7rT1ZYwJ5sPEi5vgn2Zi35ti0T
	IM+tBaI+MP02kMjNMMTtVF5javxU+STHUzWhjzPNw90vp8vwMkQi8/FR/3gPWCnTrwSMv4cjsfsSW
	ZjNDrs2sjrvEpBgwxa2uLusmefkybmf/s0sZagBcANqGMQgPN6ikly3fw1fFJn26OxEsyCTVgZDyw
	8JIwtksYnkGvtFRjhojLGeNmIZ6+XUE/9L6azskvTOS4uqZlEPpCbs/nwwqKBLRlBcL+9IpGJDhC9
	zRTX1M8HIKAUVC5wkU4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlZL-0000Rj-P0; Wed, 01 May 2019 09:30:27 +0000
Received: from mail-eopbgr20094.outbound.protection.outlook.com ([40.107.2.94]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlYO-0006LZ-SM
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:29:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TUYEFJ/d9CzBlIQmgaigVK06BHrlyUyeyA0ldcLlxps=;
 b=EIKqxYr7ppxqIK7gwQd5FjEIXoxTrbFMaPE1Y+nV1MifWA2Dr7H4YZrWYQDyjpRv6Z0VNiuxwn/xuUNMgBV4B7FdCoJPQ0rOhxbkNGvHLK/4dGP/PMdLOH3vRs36YFhgUT7zrI0Ej3rHxQEgsNKUCXjpqteMnjVXUhIJiZysQHk=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM (20.177.60.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Wed, 1 May 2019 09:29:11 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 09:29:11 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v2 6/6] soc/fsl/qe: qe.c: fold qe_get_num_of_snums into
 qe_snums_init
Thread-Topic: [PATCH v2 6/6] soc/fsl/qe: qe.c: fold qe_get_num_of_snums into
 qe_snums_init
Thread-Index: AQHVAABVwy8gTssBaU2it9Xt8hlR9w==
Date: Wed, 1 May 2019 09:29:11 +0000
Message-ID: <20190501092841.9026-7-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: 8e836d97-bd8c-46fa-76d8-08d6ce1777cb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB2143; 
x-ms-traffictypediagnostic: VI1PR10MB2143:
x-microsoft-antispam-prvs: <VI1PR10MB2143428AEB0092BC33890EA48A3B0@VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(39850400004)(346002)(396003)(366004)(189003)(199004)(14454004)(81166006)(110136005)(54906003)(26005)(68736007)(8676002)(6512007)(4326008)(8976002)(486006)(74482002)(71200400001)(2906002)(7416002)(6486002)(72206003)(186003)(316002)(478600001)(2501003)(36756003)(6436002)(71190400001)(25786009)(1076003)(6506007)(2616005)(305945005)(3846002)(44832011)(256004)(11346002)(6116002)(5660300002)(8936002)(446003)(476003)(50226002)(76176011)(42882007)(7736002)(99286004)(66446008)(64756008)(53936002)(52116002)(107886003)(386003)(66066001)(66946007)(66476007)(102836004)(66556008)(81156014)(73956011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB2143;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qhtg5M63n5P1md+BVAQm+hKvEjikUdMaUTcJaH0w8SqLKDIXU7pMHpXu1P5bm7rKwuZ21bFPGIHiGLIRZbPAyev4K95W3dW2ZhdGXqsqKRai3NP1JEyIhloraDesi7ZayHOGpo/s7wneVxc4pygWwbSeGylLv5uJcn52AxOVBiB+QVYSAIwggn0fSWciCJWPSm3gzTAbtOhiE7tdSL4vIdqQDjHZoh804xuSheu1u74uTRC1bmCPNQxeSJKG9V3SukB/KN5YICbE4HS+0KeJP9KAe0CNQKCG/6oBaX6wvI1PL4XvRcHLD3MseXmv9+WzGU2yWL1PLBPUZXQgtFLtI7w+gEiAoj8vPXH3J9mXZjj0H8LlL+SE6LwKfuu4vaO47auYekpljmpfsVfwCsjnz3vTaKrTk3TSy3ZWxkyxnmk=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e836d97-bd8c-46fa-76d8-08d6ce1777cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 09:29:11.7492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_022929_433351_C2E72712 
X-CRM114-Status: GOOD (  17.87  )
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

The comment "No QE ever has fewer than 28 SNUMs" is false; e.g. the
MPC8309 has 14. The code path returning -EINVAL is also a recipe for
instant disaster, since the caller (qe_snums_init) uncritically
assigns the return value to the unsigned qe_num_of_snum, and would
thus proceed to attempt to copy 4GB from snum_init_46[] to the snum[]
array.

So fold the handling of the legacy fsl,qe-num-snums into
qe_snums_init, and make sure we do not end up using the snum_init_46
array in cases other than the two where we know it makes sense.

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 drivers/soc/fsl/qe/qe.c | 46 ++++++++++++++---------------------------
 1 file changed, 16 insertions(+), 30 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 325d689cbf5c..276d7d78ebfc 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -308,24 +308,33 @@ static void qe_snums_init(void)
 	int i;
 
 	bitmap_zero(snum_state, QE_NUM_OF_SNUM);
+	qe_num_of_snum = 28; /* The default number of snum for threads is 28 */
 	qe = qe_get_device_node();
 	if (qe) {
 		i = of_property_read_variable_u8_array(qe, "fsl,qe-snums",
 						       snums, 1, QE_NUM_OF_SNUM);
-		of_node_put(qe);
 		if (i > 0) {
+			of_node_put(qe);
 			qe_num_of_snum = i;
 			return;
 		}
+		/*
+		 * Fall back to legacy binding of using the value of
+		 * fsl,qe-num-snums to choose one of the static arrays
+		 * above.
+		 */
+		of_property_read_u32(qe, "fsl,qe-num-snums", &qe_num_of_snum);
+		of_node_put(qe);
 	}
 
-	qe_num_of_snum = qe_get_num_of_snums();
-
-	if (qe_num_of_snum == 76)
+	if (qe_num_of_snum == 76) {
 		snum_init = snum_init_76;
-	else
+	} else if (qe_num_of_snum == 28 || qe_num_of_snum == 46) {
 		snum_init = snum_init_46;
-
+	} else {
+		pr_err("QE: unsupported value of fsl,qe-num-snums: %u\n", qe_num_of_snum);
+		return;
+	}
 	memcpy(snums, snum_init, qe_num_of_snum);
 }
 
@@ -641,30 +650,7 @@ EXPORT_SYMBOL(qe_get_num_of_risc);
 
 unsigned int qe_get_num_of_snums(void)
 {
-	struct device_node *qe;
-	int size;
-	unsigned int num_of_snums;
-	const u32 *prop;
-
-	num_of_snums = 28; /* The default number of snum for threads is 28 */
-	qe = qe_get_device_node();
-	if (!qe)
-		return num_of_snums;
-
-	prop = of_get_property(qe, "fsl,qe-num-snums", &size);
-	if (prop && size == sizeof(*prop)) {
-		num_of_snums = *prop;
-		if ((num_of_snums < 28) || (num_of_snums > QE_NUM_OF_SNUM)) {
-			/* No QE ever has fewer than 28 SNUMs */
-			pr_err("QE: number of snum is invalid\n");
-			of_node_put(qe);
-			return -EINVAL;
-		}
-	}
-
-	of_node_put(qe);
-
-	return num_of_snums;
+	return qe_num_of_snum;
 }
 EXPORT_SYMBOL(qe_get_num_of_snums);
 
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
