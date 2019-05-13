Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4389E1B4B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBo1logl/V1CU9ipoHJk/rzPIlMCQiUoIt/IezszufM=; b=ssdCdNJ7hcKySC
	a3SX8a6+JA06Rxj1Au3ouUX0XEFQ6x8mKdKtxjAlFemfZ1sS9198034DBjdhFURTquPcacifsqj3w
	+OzoM/0apnrWyMMAfWDrtBVbf9Tt7gD02DZSRhAsK3FeNZBKNA2j9kCGI3FQcsG68uoyb0pxolOnv
	N//mZKkN36jqbkHX5JHTiCaHIfZslid4KKhmYgk6YEk/tfuGbLiaD/Y3lkvp/MczOnJ6gq8rI3al5
	QVXxBi2JtzKofY1W1InEvMMAn872yil64TnC1RTsVU5EUwYfUz8xrgkG0gmL35MhVi50aHAZwUIwf
	5iA02bHEV+JcBn+ZkfCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8wa-0002hu-PV; Mon, 13 May 2019 11:16:32 +0000
Received: from mail-eopbgr60095.outbound.protection.outlook.com ([40.107.6.95]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8va-00006d-IN
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:15:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FLwTavdf2f5v45DlX8rnErmRk2XNba9+SN9MfIcFeaE=;
 b=rBowXL4LjvL0wsugji/KKaNyLowGb8DUWweNcuEJbTrJlVIyZ31flCrdaz9H6EJRcu/9ixDtmaaNeBzOKVH0fD2xg2Hbx5GzJkOi4PkVgvY5LcCpIhLqxGF5UU6pqzvd01PwAb0Au6oTQKoaJukTxZFEHobl3DNoP21hXBC6Qjs=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM (52.134.27.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 11:15:01 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:15:01 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v3 6/6] soc/fsl/qe: qe.c: fold qe_get_num_of_snums into
 qe_snums_init
Thread-Topic: [PATCH v3 6/6] soc/fsl/qe: qe.c: fold qe_get_num_of_snums into
 qe_snums_init
Thread-Index: AQHVCX0bEKLJFUyWYkaQDXSFkv+0GA==
Date: Mon, 13 May 2019 11:15:01 +0000
Message-ID: <20190513111442.25724-7-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: 2c56ed77-12be-4613-dc27-08d6d7943df2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB1950; 
x-ms-traffictypediagnostic: VI1PR10MB1950:
x-microsoft-antispam-prvs: <VI1PR10MB195082C259840BA14E2193578A0F0@VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(346002)(39850400004)(366004)(376002)(136003)(396003)(189003)(199004)(6512007)(66066001)(53936002)(107886003)(52116002)(68736007)(256004)(71200400001)(71190400001)(76176011)(6436002)(478600001)(6486002)(1076003)(36756003)(5660300002)(72206003)(74482002)(446003)(81156014)(8676002)(14454004)(99286004)(2501003)(66946007)(66476007)(66556008)(64756008)(66446008)(73956011)(54906003)(11346002)(2616005)(42882007)(476003)(81166006)(44832011)(50226002)(486006)(8936002)(110136005)(8976002)(6116002)(7416002)(316002)(3846002)(2906002)(305945005)(7736002)(186003)(25786009)(102836004)(6506007)(386003)(4326008)(26005)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB1950;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ae+KoThFXl+AYG5NmiAhCz+jvu73ZiG+fI5e2PZj362uALr9ieKBFc7kPC9sPKMqAAt97IM1457BPaeqr1JD2hZJcuR4TsJ8e8f/SqyOCmhXubQ1/+SYTpzQFV0Fj3avEBHDAKOwXLwk4FXfFHA7eZjWycEw4gjZJ0gh1Aky1Ul4HUnUi2MX8/+H0+VQ16LnMPzB5wpI6wLpoIXKgUujMbbxXRGl62cIzXiPuQKfEfVjD8d8jWQMIOj+REd9EHLG3EIuW9TAK9G2ZDOqbepmQoxCiE+7N09T4bQAonsVXsXiVS5/9rqrSgt3IRqDxkRyleRt+lSOZQO8wm2OomWvj5GThA3DOdbXIY8lLLgOUW1pBeR11aqBWHr8I4XcFofRqT2IdNoiMsQk3nAqN2V8733YYOMVlvhEaeHzd45jC4Q=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c56ed77-12be-4613-dc27-08d6d7943df2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:15:01.7434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB1950
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041531_184052_036F343B 
X-CRM114-Status: GOOD (  18.59  )
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

The comment "No QE ever has fewer than 28 SNUMs" is false; e.g. the
MPC8309 has 14. The code path returning -EINVAL is also a recipe for
instant disaster, since the caller (qe_snums_init) uncritically
assigns the return value to the unsigned qe_num_of_snum, and would
thus proceed to attempt to copy 4GB from snum_init_46[] to the snum[]
array.

So fold the handling of the legacy fsl,qe-num-snums into
qe_snums_init, and make sure we do not end up using the snum_init_46
array in cases other than the two where we know it makes sense.

Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
Reviewed-by: Qiang Zhao <qiang.zhao@nxp.com>
Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 drivers/soc/fsl/qe/qe.c | 46 ++++++++++++++---------------------------
 1 file changed, 16 insertions(+), 30 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 1d27187b251c..852060caff24 100644
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
 
@@ -642,30 +651,7 @@ EXPORT_SYMBOL(qe_get_num_of_risc);
 
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
