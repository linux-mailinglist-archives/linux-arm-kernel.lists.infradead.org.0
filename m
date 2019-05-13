Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC5A1B4B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HT/LhrQL1R5bitzUxFknPVBgPYikuhj5DoX8cuuD3R4=; b=kiphPW0AUZf9En
	92fpjKzOWp/V8VF53er8fMgYKxzW18ys1LdVq7NNb0CJnz3Fw8UUmvmZLiQzu1ctFN/mWT3Dyp5Wb
	ROY7pJV8EFGMd0MkMWuu/N0VuLmCQE6JWINzm2WEqxMv+o9yneBOgVQIAm98NFNPsUzM876iWVKGK
	QhL6LjxwPZMfVK/ZzcJMm5wbtRsjG+/HmIIAYk7f9sg1zYVMRfPKhbJ21VQ0a1WW5GVA/rHKnWIS8
	Gcfno6Zcha2YmdJ53QWsmq/lUOTMY7fkW3gI6ItK6bDNhOnqRsjM+fkz1i5yNNuQh/1rhcevDBQbH
	3+0dnOA2zdCu+RUIwBTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8vq-00020i-2g; Mon, 13 May 2019 11:15:46 +0000
Received: from mail-eopbgr60095.outbound.protection.outlook.com ([40.107.6.95]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8vA-00006d-3y
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tQ+Vu1B7o4nUf0HtPMhFACUNFbgaLB1ESmjsz6wJxf4=;
 b=bzn+jfDWwo8KzGuNTqEElJ4p062d852hqj7JJqiOhHrJiLwa84f6wbS/ztaaT87zfbJiRM0IQkYbHo6O3OJCT2b18dQ6vMbfrwabbOjQO7JNdQLydyjwqCM1/5IFVPLaUkbLdFuTV9BU97x+47+pF+ZiLWW/N57OUiGjmzAT39k=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM (52.134.27.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 11:14:56 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:14:56 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v3 2/6] soc/fsl/qe: qe.c: reduce static memory footprint by
 1.7K
Thread-Topic: [PATCH v3 2/6] soc/fsl/qe: qe.c: reduce static memory footprint
 by 1.7K
Thread-Index: AQHVCX0YHaTN9I1nZ0mTjY4/MGa+1g==
Date: Mon, 13 May 2019 11:14:56 +0000
Message-ID: <20190513111442.25724-3-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: e116e3c1-1d4e-4e3c-9350-08d6d7943a9f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB1950; 
x-ms-traffictypediagnostic: VI1PR10MB1950:
x-microsoft-antispam-prvs: <VI1PR10MB1950432702C788FC4A5ECE568A0F0@VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39850400004)(366004)(376002)(136003)(396003)(189003)(199004)(6512007)(66066001)(53936002)(107886003)(52116002)(68736007)(256004)(14444005)(71200400001)(71190400001)(76176011)(6436002)(478600001)(6486002)(1076003)(36756003)(5660300002)(72206003)(74482002)(446003)(81156014)(8676002)(14454004)(99286004)(2501003)(66946007)(66476007)(66556008)(64756008)(66446008)(73956011)(54906003)(11346002)(2616005)(42882007)(476003)(81166006)(44832011)(50226002)(486006)(8936002)(110136005)(8976002)(6116002)(7416002)(316002)(3846002)(2906002)(305945005)(7736002)(186003)(25786009)(102836004)(6506007)(386003)(4326008)(26005)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB1950;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /MzA1gMzdmwXeo0B+phDTnQTsjVLbVMjknSi9MggE1xlwzbm55Ke8j6v3DuupP7wMJZZaVh8QjSyRPVporVefDeIvQdaUvzFxo0axPtOvbz8flaRqAW67+Prgz8kj/V1f4Y8h57Ky1qwDwKJjMKXr1Yx3l+a01qW/TxUD/Sw0jlFWbTKUckaZ/LNEZ/J/R0EzuGVppLtl/u/2PGS5BrcSXAu1BehUQ3zo+i972bFN+Dt5nLFUQNXYAEo9dFlKN6wydOEioSJ3DU009xx0ATcxkVpcK5hkzt/OVy2kiTnmKz3x/PDDquLd70HgbUPZcngmIAZAeSKShPWus5pJ4Tx6KnjJmUgc1dsrYyEz2jGkxGytJqZ1r81OxMC875S7J8BMF3UleO6I4o3opcqjWYpcbYOIeWA0ZVczDEugbfzGTw=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: e116e3c1-1d4e-4e3c-9350-08d6d7943a9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:14:56.0733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB1950
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041504_575279_ACE8DEA8 
X-CRM114-Status: GOOD (  14.92  )
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

The current array of struct qe_snum use 256*4 bytes for just keeping
track of the free/used state of each index, and the struct layout
means there's another 768 bytes of padding. If we just unzip that
structure, the array of snum values just use 256 bytes, while the
free/inuse state can be tracked in a 32 byte bitmap.

So this reduces the .data footprint by 1760 bytes. It also serves as
preparation for introducing another DT binding for specifying the snum
values.

Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
Reviewed-by: Qiang Zhao <qiang.zhao@nxp.com>
Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 drivers/soc/fsl/qe/qe.c | 42 ++++++++++++-----------------------------
 1 file changed, 12 insertions(+), 30 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 855373deb746..4b59109df22b 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -14,6 +14,7 @@
  * Free Software Foundation;  either version 2 of the  License, or (at your
  * option) any later version.
  */
+#include <linux/bitmap.h>
 #include <linux/errno.h>
 #include <linux/sched.h>
 #include <linux/kernel.h>
@@ -43,25 +44,14 @@ static DEFINE_SPINLOCK(qe_lock);
 DEFINE_SPINLOCK(cmxgcr_lock);
 EXPORT_SYMBOL(cmxgcr_lock);
 
-/* QE snum state */
-enum qe_snum_state {
-	QE_SNUM_STATE_USED,
-	QE_SNUM_STATE_FREE
-};
-
-/* QE snum */
-struct qe_snum {
-	u8 num;
-	enum qe_snum_state state;
-};
-
 /* We allocate this here because it is used almost exclusively for
  * the communication processor devices.
  */
 struct qe_immap __iomem *qe_immr;
 EXPORT_SYMBOL(qe_immr);
 
-static struct qe_snum snums[QE_NUM_OF_SNUM];	/* Dynamically allocated SNUMs */
+static u8 snums[QE_NUM_OF_SNUM];	/* Dynamically allocated SNUMs */
+static DECLARE_BITMAP(snum_state, QE_NUM_OF_SNUM);
 static unsigned int qe_num_of_snum;
 
 static phys_addr_t qebase = -1;
@@ -315,10 +305,8 @@ static void qe_snums_init(void)
 	else
 		snum_init = snum_init_46;
 
-	for (i = 0; i < qe_num_of_snum; i++) {
-		snums[i].num = snum_init[i];
-		snums[i].state = QE_SNUM_STATE_FREE;
-	}
+	bitmap_zero(snum_state, QE_NUM_OF_SNUM);
+	memcpy(snums, snum_init, qe_num_of_snum);
 }
 
 int qe_get_snum(void)
@@ -328,12 +316,10 @@ int qe_get_snum(void)
 	int i;
 
 	spin_lock_irqsave(&qe_lock, flags);
-	for (i = 0; i < qe_num_of_snum; i++) {
-		if (snums[i].state == QE_SNUM_STATE_FREE) {
-			snums[i].state = QE_SNUM_STATE_USED;
-			snum = snums[i].num;
-			break;
-		}
+	i = find_first_zero_bit(snum_state, qe_num_of_snum);
+	if (i < qe_num_of_snum) {
+		set_bit(i, snum_state);
+		snum = snums[i];
 	}
 	spin_unlock_irqrestore(&qe_lock, flags);
 
@@ -343,14 +329,10 @@ EXPORT_SYMBOL(qe_get_snum);
 
 void qe_put_snum(u8 snum)
 {
-	int i;
+	const u8 *p = memchr(snums, snum, qe_num_of_snum);
 
-	for (i = 0; i < qe_num_of_snum; i++) {
-		if (snums[i].num == snum) {
-			snums[i].state = QE_SNUM_STATE_FREE;
-			break;
-		}
-	}
+	if (p)
+		clear_bit(p - snums, snum_state);
 }
 EXPORT_SYMBOL(qe_put_snum);
 
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
