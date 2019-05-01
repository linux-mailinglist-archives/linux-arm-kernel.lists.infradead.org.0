Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230D210652
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MXEgihlCBoOJJKVfEtyEtuQK5GIGDJhZabN1jXajnI=; b=CPtH+mDUWnsIfu
	MjgHoibyE5RZIr/F7Ac4b7gBIP6ALYha3PEQ9Cd20286XbcvCrcLchXw7C2B6cnCLYIhq5cY1tp7c
	X9KmprGv8Uc0DU2aZYJD4zVJFu47JJqmh9bE82DRH8/kxbWRPOgcIsoBFO+m7Qz7wEuxDreY0pcaP
	9n4wzh6Qp9AmVJlLNrqMPD3fmHDgC7zZA3dg7ZXru4Ko/bER5xmTsWhwCcqw9FSdL2S+cxnePnamp
	d49ON1vCpjweY6E116xjUemKaN0ExUrzzsJ2FN5m+N4KsTyXp3nQ2m7ATbjraXbhEFsBNCNe14Yfe
	hxyHNMd/kryn3COaA22g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlYW-0006k2-K1; Wed, 01 May 2019 09:29:36 +0000
Received: from mail-eopbgr20094.outbound.protection.outlook.com ([40.107.2.94]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlY7-0006LZ-T5
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:29:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oV0yfpe0rfM5Tggrn/ZXZXpWsTCnh7Qw0XjpUhuyORw=;
 b=NOoN2kcQu1pS5IUYGvD3ZkkDQA3CpBIqGce8gkYWIm4TWJARfkBVdSDRgb+Q7lczVMkKvmM4C3H2te6Tgn9qo1KkonKua4ZQo2BZOXNL6jZlc1fKWv5COtWwgrgyBV8NL/tYsF5RJVeFb3cNUIBz7xqwJi2Rq91SkbYwJlGT0Rw=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM (20.177.60.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Wed, 1 May 2019 09:29:05 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 09:29:05 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v2 2/6] soc/fsl/qe: qe.c: reduce static memory footprint by
 1.7K
Thread-Topic: [PATCH v2 2/6] soc/fsl/qe: qe.c: reduce static memory footprint
 by 1.7K
Thread-Index: AQHVAABR1o7sDOpAS063f+anh88+2w==
Date: Wed, 1 May 2019 09:29:05 +0000
Message-ID: <20190501092841.9026-3-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: 4073b50e-fb21-4e5e-2995-08d6ce17740b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB2143; 
x-ms-traffictypediagnostic: VI1PR10MB2143:
x-microsoft-antispam-prvs: <VI1PR10MB21438CDE63974442D36D2AD88A3B0@VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(39850400004)(346002)(396003)(366004)(189003)(199004)(14454004)(81166006)(110136005)(54906003)(26005)(68736007)(8676002)(6512007)(4326008)(8976002)(486006)(74482002)(71200400001)(2906002)(7416002)(6486002)(72206003)(186003)(316002)(478600001)(2501003)(36756003)(6436002)(71190400001)(25786009)(1076003)(6506007)(2616005)(305945005)(3846002)(44832011)(256004)(11346002)(6116002)(5660300002)(8936002)(14444005)(446003)(476003)(50226002)(76176011)(42882007)(7736002)(99286004)(66446008)(64756008)(53936002)(52116002)(107886003)(386003)(66066001)(66946007)(66476007)(102836004)(66556008)(81156014)(73956011)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB2143;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8aPYwuYDGTZIsvYUHdjgWWVWzHF1fVq6wMf/0Xgurng7JuicD4dYp8s4cXZ+v4zW00YHr/BXwbowRlgJCbEaBa8Wgm3ihhKWuX/qoBfqlV2LVkqKpRkyR41ZyUkKRPmP0xlXEqWhh60bkfDM1L7fG2uIJsWcAmn8t5ugnxF9DkB87rk1vRZvZg9GjtV+KmRRaM6g4++BFDwbcIOnVbX/Z8IKuOkF7w02mq3FMkqb/9nZbvZ32M0t68u5j6/qJGljnknDlTs3/f66/2jELDfIXZVNJWtdMeQDuYyZ5hlK17cGqRDoTNbXhXZhais3sl7+FEhxncNu3Q8kkpAzVF0Mcre3a2aa3Ts2LyNVH2AdUeiuwXE6KuFuqMhEBtxT8kYBDyxpuo3cdS5ftArJsxlpPOgnjZjw/KzvXpfbFN06boQ=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 4073b50e-fb21-4e5e-2995-08d6ce17740b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 09:29:05.0655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_022912_103970_49A2BF87 
X-CRM114-Status: GOOD (  14.28  )
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

The current array of struct qe_snum use 256*4 bytes for just keeping
track of the free/used state of each index, and the struct layout
means there's another 768 bytes of padding. If we just unzip that
structure, the array of snum values just use 256 bytes, while the
free/inuse state can be tracked in a 32 byte bitmap.

So this reduces the .data footprint by 1760 bytes. It also serves as
preparation for introducing another DT binding for specifying the snum
values.

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 drivers/soc/fsl/qe/qe.c | 43 ++++++++++++-----------------------------
 1 file changed, 12 insertions(+), 31 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 855373deb746..303aa29cb27d 100644
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
 
@@ -343,14 +329,9 @@ EXPORT_SYMBOL(qe_get_snum);
 
 void qe_put_snum(u8 snum)
 {
-	int i;
-
-	for (i = 0; i < qe_num_of_snum; i++) {
-		if (snums[i].num == snum) {
-			snums[i].state = QE_SNUM_STATE_FREE;
-			break;
-		}
-	}
+	const u8 *p = memchr(snums, snum, qe_num_of_snum);
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
