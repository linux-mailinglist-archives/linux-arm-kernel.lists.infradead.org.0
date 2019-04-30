Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CCEFA97
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvaIKg+dtzh2mgVyNS1nNdYnseMBd1ySX9hHElJZDus=; b=pqJdTMzEcaYIkT
	GqCJ01g7oLLClYpKFe3pRubpaS08hRktDHpEtb/LToc+0zKvitsQJCFKS/ls8hD5meLpEVeK0vK3e
	y6iZUgvPbdbHGfjQ76VLdyr9itSHC34NPXHzB53HBccuXwioeEhpG7tVTBwZJPwmcFlJ1cmocqCTR
	0EAROBderLiWITF+SxQ7t9rpmn3FjPWsboXFti8TInkWghTQjxzTQEQ6ESXAJdGTe4Z1ekvcgcybt
	EdxxVOT+J6RboANrBuUGITCOLj4++7SEBrKlPrrvYFULViLfwGcVtGeHTqaA9dHybWMuiqOPg4PcO
	QAR5zTNtQI24vGfVxlTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSx1-0002k3-5R; Tue, 30 Apr 2019 13:37:39 +0000
Received: from mail-eopbgr140093.outbound.protection.outlook.com
 ([40.107.14.93] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSw8-0001gZ-F4
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2NOQxN47T6FsbpolumeF5W6vP2DKEHqMWsBgLFRA0aI=;
 b=bPUQCFYZ3aUpXEvnppd1ZIJ9ZmTASMXo4+VO8jV6/cfS4iGtafBzguV/g7HtJoDpxlWSD2HA9asy+d1ddxKwusmZ0QLeHR3+38jgaXzCyOsOiHOCWlJYRXCMzRWYjH3ZeEis0Dvue4kmzXVaohlAdyt/alG6OuUKCQ1aBcNCZWY=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB0735.EURPRD10.PROD.OUTLOOK.COM (10.167.203.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 13:36:34 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 13:36:34 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH 5/5] soc/fsl/qe: qe.c: fold qe_get_num_of_snums into
 qe_snums_init
Thread-Topic: [PATCH 5/5] soc/fsl/qe: qe.c: fold qe_get_num_of_snums into
 qe_snums_init
Thread-Index: AQHU/1m6D8VAO09VR06t84TvSK4Mww==
Date: Tue, 30 Apr 2019 13:36:34 +0000
Message-ID: <20190430133615.25721-6-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: 72bbfeae-6636-4c74-e405-08d6cd70dcd2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB0735; 
x-ms-traffictypediagnostic: VI1PR10MB0735:
x-microsoft-antispam-prvs: <VI1PR10MB07353B1C89623EE6AFA151068A3A0@VI1PR10MB0735.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(39850400004)(366004)(376002)(346002)(199004)(189003)(81156014)(36756003)(8676002)(6436002)(478600001)(81166006)(107886003)(50226002)(52116002)(8976002)(8936002)(74482002)(72206003)(4326008)(7736002)(6486002)(6506007)(386003)(25786009)(1076003)(53936002)(54906003)(76176011)(305945005)(110136005)(316002)(99286004)(14454004)(6512007)(476003)(11346002)(446003)(5660300002)(44832011)(66446008)(26005)(73956011)(42882007)(2616005)(6116002)(2906002)(71200400001)(66556008)(66476007)(64756008)(66066001)(97736004)(66946007)(3846002)(256004)(68736007)(71446004)(186003)(486006)(102836004)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB0735;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xRkTiuj/aGBwatyIuWkwJOoy+4oNvWxN7jNH2YXkf5yFZVkNWuguWJbSrbyW/R48XwV45OdBJ44BIg9NB6pfPiA86qIpE2+JPSu4rOuSVbTSUZmoxDRVslQM3l0yypgZq3aDXPi4vVgI+U10E9DvIj4ai+ToVfNkgJizgB8HQ3lIcdyjTeja2XSUquTjDu/WlVR2ElFyupHIq1F9KLvpQe/xkFmX+Gc6ICIKguTm8olpjF4ABAli/85bHseM2VXf5B8604KqKaRu9RKRSVfsFbUixC1Sk+74TdRGLMBIkq87R9ZUNiMVW5MCvaYVBuT03bDhmaxe/rJ44+GM2aA7h+KYPoWSMyBVdPYEfPeJ6ytaM9BzLf8FaXQc2OKLSgQWZtmBXcoAFqcoRQNJl8FVGiDZJPm17kT2eFMHt8FSbig=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 72bbfeae-6636-4c74-e405-08d6cd70dcd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 13:36:34.6955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB0735
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_063645_048015_0B9CE5AA 
X-CRM114-Status: GOOD (  20.03  )
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
 drivers/net/ethernet/freescale/ucc_geth.c |  2 +-
 drivers/soc/fsl/qe/qe.c                   | 54 +++++++----------------
 include/soc/fsl/qe/qe.h                   |  2 +-
 3 files changed, 19 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/freescale/ucc_geth.c b/drivers/net/ethernet/freescale/ucc_geth.c
index eb3e65e8868f..5748eb8464d0 100644
--- a/drivers/net/ethernet/freescale/ucc_geth.c
+++ b/drivers/net/ethernet/freescale/ucc_geth.c
@@ -3837,7 +3837,7 @@ static int ucc_geth_probe(struct platform_device* ofdev)
 		}
 
 	if (max_speed == SPEED_1000) {
-		unsigned int snums = qe_get_num_of_snums();
+		unsigned int snums = qe_num_of_snum;
 
 		/* configure muram FIFOs for gigabit operation */
 		ug_info->uf_info.urfs = UCC_GETH_URFS_GIGA_INIT;
diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index af3c2b2b268f..8c3b3c62d81b 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -52,7 +52,8 @@ EXPORT_SYMBOL(qe_immr);
 
 static u8 snums[QE_NUM_OF_SNUM];	/* Dynamically allocated SNUMs */
 static DECLARE_BITMAP(snum_state, QE_NUM_OF_SNUM);
-static unsigned int qe_num_of_snum;
+unsigned int qe_num_of_snum;
+EXPORT_SYMBOL(qe_num_of_snum);
 
 static phys_addr_t qebase = -1;
 
@@ -308,26 +309,34 @@ static void qe_snums_init(void)
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
 	if (qe_num_of_snum == 76)
 		snum_init = snum_init_76;
-	else
+	else if (qe_num_of_snum == 28 || qe_num_of_snum == 46)
 		snum_init = snum_init_46;
-
-	for (i = 0; i < qe_num_of_snum; i++)
-		snums[i] = snum_init[i];
+	else {
+		pr_err("QE: unsupported value of fsl,qe-num-snums: %u\n", qe_num_of_snum);
+		return;
+	}
+	memcpy(snums, snum_init, qe_num_of_snum);
 }
 
 int qe_get_snum(void)
@@ -645,35 +654,6 @@ unsigned int qe_get_num_of_risc(void)
 }
 EXPORT_SYMBOL(qe_get_num_of_risc);
 
-unsigned int qe_get_num_of_snums(void)
-{
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
-}
-EXPORT_SYMBOL(qe_get_num_of_snums);
-
 static int __init qe_init(void)
 {
 	struct device_node *np;
diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index b3d1aff5e8ad..af5739850bf4 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -212,7 +212,7 @@ int qe_setbrg(enum qe_clock brg, unsigned int rate, unsigned int multiplier);
 int qe_get_snum(void);
 void qe_put_snum(u8 snum);
 unsigned int qe_get_num_of_risc(void);
-unsigned int qe_get_num_of_snums(void);
+extern unsigned int qe_num_of_snum;
 
 static inline int qe_alive_during_sleep(void)
 {
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
