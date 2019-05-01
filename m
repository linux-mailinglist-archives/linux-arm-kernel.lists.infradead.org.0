Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39011065E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyevVqLUEBuY4+KhOU25XuTsAQ0+18Ml3xFc1xaJ8kk=; b=rjAUS62yZaSd3f
	T3OGK9t6PVlcTHTaPuKoNoibLKV7Sh2M6z7oMPm7BQxoX0iFoIHcI+wBnJ9M89XUaap3ZsSnBl+oL
	rhxohw9KukC/qmqOJtiwpa0FUL1PTBIL4S+rvSnLqK8LJgHuEflTwQdeuMAvvHkWX52wPiD/L/NKz
	Xu+GMPL6NESX/3wIy1MySlpgzXHrjbBafd0Hg5/elfrFsACrh369qs1+fyf5e1yJBQnS58yPThdYP
	SxQkjMj8kUxrHcEi7dP7+J0L29ksHN++9u2UrXWkadPo5vAmzuA5eu9+kspAyTIFnB+MdxVOF7m+P
	JTkN2E59Z0c0vd3oO4ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlZB-0007Uj-AM; Wed, 01 May 2019 09:30:17 +0000
Received: from mail-eopbgr20094.outbound.protection.outlook.com ([40.107.2.94]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlYJ-0006LZ-SK
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:29:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fJ5U+IHVXUTRS8hFPfc2dZSSvB14ADgBZmFg2WCmtQs=;
 b=OeYjfEDpgtDJ/kG3mI31icA3RGyHyOtMUJRd9Ov+NAmmYdlsQhUaNimb1mKlTS70YybJ/Xyis/e7v3tWPefCVaEIk/Z3N59jThMPp3jAYmKpSHVUsbqvqQF35Rs1xkPB2TcbYimLbCLgbfiRinOH++QwjQuEp/VAggbIoKJ0Qng=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM (20.177.60.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Wed, 1 May 2019 09:29:10 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 09:29:09 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v2 5/6] soc/fsl/qe: qe.c: support fsl,qe-snums property
Thread-Topic: [PATCH v2 5/6] soc/fsl/qe: qe.c: support fsl,qe-snums property
Thread-Index: AQHVAABUi/3Pp+xrakGPF1gXQ7udLQ==
Date: Wed, 1 May 2019 09:29:09 +0000
Message-ID: <20190501092841.9026-6-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: dc97cc28-bef8-46a5-7123-08d6ce1776d9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB2143; 
x-ms-traffictypediagnostic: VI1PR10MB2143:
x-microsoft-antispam-prvs: <VI1PR10MB21431FB843BED5460C6999B98A3B0@VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(39850400004)(346002)(396003)(366004)(189003)(199004)(14454004)(81166006)(110136005)(54906003)(26005)(68736007)(8676002)(6512007)(4326008)(8976002)(486006)(74482002)(71200400001)(2906002)(7416002)(6486002)(72206003)(186003)(316002)(478600001)(2501003)(36756003)(6436002)(71190400001)(25786009)(1076003)(6506007)(2616005)(305945005)(3846002)(44832011)(256004)(11346002)(6116002)(5660300002)(8936002)(446003)(476003)(50226002)(76176011)(42882007)(7736002)(99286004)(66446008)(64756008)(53936002)(52116002)(107886003)(386003)(66066001)(66946007)(66476007)(102836004)(66556008)(81156014)(73956011)(142933001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB2143;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3YJSKbs3ZK4ERtCT6aOJk5VP68QOpc1fNwgDcqDr5j+M9XBY40RyU5J6viJ7B4RbWRg6Yf7Yazp8WoAfqWHGkawnH1dXJ/lFSxXvI4uTrUbSK3NAxJVjCHPyWBek4Pat2LDwxwElTV4lciagWbRhpgZ0tfiQo8hbqHDRbpEwvKIELwsJDNsK3V+pEMvCoG3YoxCv6mhlBvqcOvHpbKJ9I3L3OntZsVVpQNjjRuOEAq3tpX7W5iNA/ryqiQvpj58ioEciE2pAz3JFF3VZzgiUMz0wBg80MWZFwgIsELKzpHiC0qRnstXoC36ITx5R1z/dPg03WXUplVqFSH8nP9XkacYfsyj2wtrgoupZMgkqrxRPhH6kv6jiq5UH6TBKXWCr80d/l5xKYfKjTRH3mcZ7wMfzfRBa0P7w8MPpng6hU4A=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: dc97cc28-bef8-46a5-7123-08d6ce1776d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 09:29:09.7998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_022924_605623_6CCB68E3 
X-CRM114-Status: GOOD (  14.43  )
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

Add driver support for the newly introduced fsl,qe-snums property.

Conveniently, of_property_read_variable_u8_array does exactly what we
need: If the property fsl,qe-snums is found (and has an allowed size),
the array of values get copied to snums, and the return value is the
number of snums - we cannot assign directly to num_of_snums, since we
need to check whether the return value is negative.

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 drivers/soc/fsl/qe/qe.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 0fb8b59f61ad..325d689cbf5c 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -283,7 +283,6 @@ EXPORT_SYMBOL(qe_clock_source);
  */
 static void qe_snums_init(void)
 {
-	int i;
 	static const u8 snum_init_76[] = {
 		0x04, 0x05, 0x0C, 0x0D, 0x14, 0x15, 0x1C, 0x1D,
 		0x24, 0x25, 0x2C, 0x2D, 0x34, 0x35, 0x88, 0x89,
@@ -304,7 +303,21 @@ static void qe_snums_init(void)
 		0x28, 0x29, 0x38, 0x39, 0x48, 0x49, 0x58, 0x59,
 		0x68, 0x69, 0x78, 0x79, 0x80, 0x81,
 	};
+	struct device_node *qe;
 	const u8 *snum_init;
+	int i;
+
+	bitmap_zero(snum_state, QE_NUM_OF_SNUM);
+	qe = qe_get_device_node();
+	if (qe) {
+		i = of_property_read_variable_u8_array(qe, "fsl,qe-snums",
+						       snums, 1, QE_NUM_OF_SNUM);
+		of_node_put(qe);
+		if (i > 0) {
+			qe_num_of_snum = i;
+			return;
+		}
+	}
 
 	qe_num_of_snum = qe_get_num_of_snums();
 
@@ -313,7 +326,6 @@ static void qe_snums_init(void)
 	else
 		snum_init = snum_init_46;
 
-	bitmap_zero(snum_state, QE_NUM_OF_SNUM);
 	memcpy(snums, snum_init, qe_num_of_snum);
 }
 
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
