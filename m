Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01248FA95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5EiGqryHXqDu6DlzklyQhx2jzjuHjpKKXlHRx2tW04=; b=sOCTjcnqdYzzQo
	EiPzNObGFnWvSFsYfPeYBzYoGpRcjd/2L/3VCEKTEiV0ldu6hLRBTafxtWN/qAkCLQJKFbgtjtSrb
	xeXRLMiFqH4AR84Da8GUIYzN8XEtu6V18eTekEyLBofB4HZMAweY/DGAbq9ihK7SMDLBWtodXd2y/
	yyNV+VoCEW2avIu7LAzX4Bx5h7iCxUVVPMrFgchCjoYbq4wIb/oa4nR+jdrZ/Ix0sQ55fqZHuiCth
	iCRVi2XaaWZt7ScwgXvN2vHuq6EAGAEfnYg3I6UrKYuTZiWnfXWVq7xjgV/VSUSPZv9IdKYWIJtf/
	msEsmOOyTEGgUyQJaOYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSwg-0002Jt-1Q; Tue, 30 Apr 2019 13:37:18 +0000
Received: from mail-eopbgr140093.outbound.protection.outlook.com
 ([40.107.14.93] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSw2-0001gZ-Om
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:36:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15YlhkkngP7FTeHnNre9hbREldWz2c9n4Ff+15e5dWI=;
 b=TDoKfp1DDwvvF4iMeDdInxpdeqtgb63fjrKKFlbtPu1B73JIJvk9/ssmqWI863mb2cgislYdIlsu88QOQzKufRDjPJenSW38J9Ci0Z369c2KJnD+G6YlBKDLtWnOXQZ9eU2VLgwJLagxhQC+7mNuVFcrK/4OeHQJByq/JB3/9E8=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB0735.EURPRD10.PROD.OUTLOOK.COM (10.167.203.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 13:36:31 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 13:36:31 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH 2/5] soc/fsl/qe: qe.c: reduce static memory footprint by 1.7K
Thread-Topic: [PATCH 2/5] soc/fsl/qe: qe.c: reduce static memory footprint by
 1.7K
Thread-Index: AQHU/1m4QeMNIhRtn0+qXCERrOOPqg==
Date: Tue, 30 Apr 2019 13:36:31 +0000
Message-ID: <20190430133615.25721-3-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: 8c025aa9-dff8-4545-8958-08d6cd70da9c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB0735; 
x-ms-traffictypediagnostic: VI1PR10MB0735:
x-microsoft-antispam-prvs: <VI1PR10MB0735F18DBE4EC1043411AB918A3A0@VI1PR10MB0735.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(396003)(136003)(39850400004)(366004)(376002)(346002)(199004)(189003)(81156014)(36756003)(8676002)(6436002)(478600001)(81166006)(107886003)(50226002)(52116002)(8976002)(8936002)(74482002)(72206003)(4326008)(7736002)(6486002)(6506007)(386003)(25786009)(1076003)(53936002)(54906003)(76176011)(305945005)(110136005)(316002)(99286004)(14454004)(6512007)(476003)(11346002)(446003)(5660300002)(44832011)(66446008)(26005)(73956011)(42882007)(2616005)(6116002)(2906002)(71200400001)(66556008)(66476007)(64756008)(66066001)(97736004)(66946007)(3846002)(256004)(14444005)(68736007)(71446004)(186003)(486006)(102836004)(71190400001)(2004002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB0735;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YiAhazi1t2rMgonoDLCmTaFaWESZsaOeVF9nNJT/rLLm1/BbEdIo/cOM3LNK84jgtaHikEpmZu7gNtaltUFEX5QpzqkGmXKkc5Y4jrnnkJjsHEmmQA+ZLwz5QrOpopwo4Jwwv/L+dfPAjutNmQNZl3jDNDF+39kv4ELGKoN6XJnLwbUB5Ip6GjNMpJUBXLzjoCNMponpiwos2PBMlZ47/KGuKimAVfMXwpn4AqXBQuUq9jRwfB2LQxkMsKI1uiS5u9CjeKQX1gWFcuoSaHai5GWxjz+dfHUa2c8tgILfKgnPMktsRdMIXPU127sQDfqfS71tQ7tKE8fd0EqJKcOFQ2CeD9Knh9YUZXe6OtQNSx699VZUluPJ1lwo3z7NEc8f/9gFCFQ1OIUb+ZnIwMIoLgOcPo56tYXDAdBJS5EWLco=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c025aa9-dff8-4545-8958-08d6cd70da9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 13:36:31.0259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB0735
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_063638_802073_FC92F382 
X-CRM114-Status: GOOD (  14.81  )
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
 drivers/soc/fsl/qe/qe.c | 37 ++++++++++++-------------------------
 1 file changed, 12 insertions(+), 25 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 855373deb746..d0393f83145c 100644
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
@@ -308,6 +298,7 @@ static void qe_snums_init(void)
 	};
 	const u8 *snum_init;
 
+	bitmap_zero(snum_state, QE_NUM_OF_SNUM);
 	qe_num_of_snum = qe_get_num_of_snums();
 
 	if (qe_num_of_snum == 76)
@@ -315,10 +306,8 @@ static void qe_snums_init(void)
 	else
 		snum_init = snum_init_46;
 
-	for (i = 0; i < qe_num_of_snum; i++) {
-		snums[i].num = snum_init[i];
-		snums[i].state = QE_SNUM_STATE_FREE;
-	}
+	for (i = 0; i < qe_num_of_snum; i++)
+		snums[i] = snum_init[i];
 }
 
 int qe_get_snum(void)
@@ -328,12 +317,10 @@ int qe_get_snum(void)
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
 
@@ -346,8 +333,8 @@ void qe_put_snum(u8 snum)
 	int i;
 
 	for (i = 0; i < qe_num_of_snum; i++) {
-		if (snums[i].num == snum) {
-			snums[i].state = QE_SNUM_STATE_FREE;
+		if (snums[i] == snum) {
+			clear_bit(i, snum_state);
 			break;
 		}
 	}
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
