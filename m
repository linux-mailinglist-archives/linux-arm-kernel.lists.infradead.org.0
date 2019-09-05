Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74B8AAB9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 21:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pXXeMyUajGhtuqOjsgLrJusJdNK4cr1umnVRr3deFB0=; b=OkWQBGEECai9zw
	7uTQi7EkrgC/R8dnyqTfSak/b+xdEh8aMK06ln4GF1A5NMglOX2pwF3wFw+sfPuvSs2Hzigg+sjD9
	mTwGhF95F/jpf3F590p1Owerrs1SZ5i999CmASoLNM22oEyfrx94K2/UxLT3vIUx7F/Dah0fgkogx
	xDSCAOaDGE1ryyeNrQKCMAqpAtmZ8CJ6D4uymqDThZddbHERiQYQYCUVGg0OCm9IajYURtnInEEOL
	t/ZbbiVUIJIJ+eeEqYQRb26ipzbgiFqGeEGnIcTYN4xtnWaMAToO5QCU7I+0DriwDo/aBEFqOFhrV
	WOtb1pr4b9aMIgUjTcyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5x1D-0008Tj-U0; Thu, 05 Sep 2019 19:02:07 +0000
Received: from mail-db5eur03on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::618]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5x12-0008TB-HG
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 19:02:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XzsZE1l6LsVYekwjhHg3Yifiz+6yvQd8FgyHNjarfUTTcmEBKuyMpk+6D6QTxkwy2IHiO0kklJZREnMI9T9kNgDEautKkIR0/dZvjUIyDaT8tMMlaZ93Qob6d4jC2/RdE1M4HrpNAahAhLmh86SyD/a05rAO14cAGNpZ1BeFboiFTwyqtVqMjx9wWwytg2GfV4GFXAcK8yjrS1x0/9j03ONQ6Vahd6110GayM5rBSLoPH6O/cKQgz0VwuWuj8bevx7drrGsoAPutWEDXW/8AS6lw1wUdBzfFVpMdiksfYdSCRgmqXBX5TlTdcscaafAr580/lp71CURSCkFQjEQmKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WzynJA1t7meK9SxC9Hs6QVU6rvV+7FdZf5pg0k10TB8=;
 b=lPI4EkNX3185HXQhbduumMqz8/8f9r+2eX8Hjb4pZFY1a59Nf7t4NpBptvzYblYIvEKFpNeFlN/Km0tljniRr/ZmGXIQ0Ja3UlEye7KQLsHXibR5hwnoJ9cvtHQWj1kNxYbauUKjr9qSlE13uiEODduSLLZutDL75ecK/9V5iKC9nWK7xKEUCDYFfgdmtF1+g8/Qm5btl2AgtaYt0AYtE2QTB3F2WcT/inGZfQSe97e3DIZp+7pAci4OHq2skiNVGXiL8yeOYAK9OrwywfjWG4nFhKEic8tfB+6durgkScXcvIB058YRYAERvwLj3B6X4FRQ75o9ezq1KvO2R+GI+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WzynJA1t7meK9SxC9Hs6QVU6rvV+7FdZf5pg0k10TB8=;
 b=ODe8kbyNaGOT6NF0gH0uVw7R4BnRpCs0GtqiekF2ytBmlTePJ85ui57wKRNDxHLebBlHgNK2+2dLjT6/uhcJjem3bZ1IujUi4MTdMZbj0verjoUBPIIUkyKVCYsdG4O9kau00M1VGO9OHi4MoO4aQLh49huvLREOGptbOlP37Kc=
Received: from DB8PR04MB5931.eurprd04.prod.outlook.com (20.179.11.140) by
 DB8PR04MB5754.eurprd04.prod.outlook.com (20.179.10.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Thu, 5 Sep 2019 19:01:51 +0000
Received: from DB8PR04MB5931.eurprd04.prod.outlook.com
 ([fe80::1103:c959:3d3d:86d5]) by DB8PR04MB5931.eurprd04.prod.outlook.com
 ([fe80::1103:c959:3d3d:86d5%4]) with mapi id 15.20.2241.014; Thu, 5 Sep 2019
 19:01:51 +0000
From: Youri Querry <youri.querry_1@nxp.com>
To: Roy Pledge <roy.pledge@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Ioana Ciocoi Radulescu
 <ruxandra.radulescu@nxp.com>, Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v2] soc: fsl: dpio: Add support for QBMan ring bulk enqueue.
Thread-Topic: [PATCH v2] soc: fsl: dpio: Add support for QBMan ring bulk
 enqueue.
Thread-Index: AQHVZBxfogPyBrug70O/HGqPQoZScQ==
Date: Thu, 5 Sep 2019 19:01:50 +0000
Message-ID: <1567710063-922-1-git-send-email-youri.querry_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0201CA0036.namprd02.prod.outlook.com
 (2603:10b6:803:2e::22) To DB8PR04MB5931.eurprd04.prod.outlook.com
 (2603:10a6:10:ae::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=youri.querry_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [72.142.119.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39e0fc42-849c-4c0b-c430-08d73233822c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB5754; 
x-ms-traffictypediagnostic: DB8PR04MB5754:|DB8PR04MB5754:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB57547F605D07C2595F6FBCF4F3BB0@DB8PR04MB5754.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(376002)(396003)(346002)(136003)(199004)(189003)(2501003)(386003)(6506007)(50226002)(6636002)(102836004)(486006)(476003)(5660300002)(316002)(25786009)(2616005)(2906002)(53946003)(14444005)(53936002)(256004)(99286004)(36756003)(4326008)(6436002)(2201001)(52116002)(86362001)(7736002)(6512007)(81156014)(66066001)(8936002)(14454004)(8676002)(71190400001)(110136005)(305945005)(66476007)(66556008)(186003)(66446008)(81166006)(64756008)(30864003)(3846002)(71200400001)(478600001)(26005)(6116002)(66946007)(6486002)(559001)(579004)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5754;
 H:DB8PR04MB5931.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vWHk3iqHOAJKW1KKJsZkpBMdC50u0S8+7udWIwYxlXcdyJd9Tpbkjq7AS6ZQyZOFEG+lInKKPqeL1BhafNI1Pqjy/K5WIU7vXiVc1K35P68Q2WX0MgXlhzpM+CWGG7m345aEC06eKRG+IrhU/p5g3SBmnBZWWt1UJ8jtIJJycoESHIgdB05iH3xPpLFBLySHWMmdRElyp7CQDZskIx8ZD9MdEH7pcritp4C2Iwq3zBR3yjN+wgfYcgtj1xpdEKOhK+xpaeaEcPgbclhoZKxO0g2T51CzLaedi1Y6t3AHNTL5718cm8jH7EQl6XqP9PIqex3e2rmbEaMltRxMJWtQmNWPRpGN3ng57yyt82iCfWe+nWcSjBikqTGZ7AUirt/PYyrOX4DNOQhELsWch7lbs4jIhWI0tWEa2fjWYihQpCs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39e0fc42-849c-4c0b-c430-08d73233822c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 19:01:50.9754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hTZCWAhL4S2Dm3NmAnon4PMeRdDRK7MrSi4kpL3PKcxMMRzwTHRkMslhnM8+PfF1Ri4DO7j3yy8zvuAwC4yw/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5754
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_120156_974480_E41B7E5B 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:618 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Youri Querry <youri.querry_1@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The QBMan frame descriptor enqueuing is changed from array
 mode (a single frame enqueue at a time) to bulk ring mode.

This new mode allows the enqueuing of multiple frames in one operation.
The original interface is kept but use the bulk enqueue of one frame

Signed-off-by: Youri Querry <youri.querry_1@nxp.com>
---
 drivers/soc/fsl/dpio/dpio-service.c |  69 +++-
 drivers/soc/fsl/dpio/qbman-portal.c | 772 ++++++++++++++++++++++++++++++++----
 drivers/soc/fsl/dpio/qbman-portal.h | 175 +++++++-
 3 files changed, 935 insertions(+), 81 deletions(-)

diff --git a/drivers/soc/fsl/dpio/dpio-service.c b/drivers/soc/fsl/dpio/dpio-service.c
index b9539ef..4eb53ee 100644
--- a/drivers/soc/fsl/dpio/dpio-service.c
+++ b/drivers/soc/fsl/dpio/dpio-service.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
 /*
  * Copyright 2014-2016 Freescale Semiconductor Inc.
- * Copyright 2016 NXP
+ * Copyright 2016-2019 NXP
  *
  */
 #include <linux/types.h>
@@ -435,6 +435,69 @@ int dpaa2_io_service_enqueue_fq(struct dpaa2_io *d,
 EXPORT_SYMBOL(dpaa2_io_service_enqueue_fq);
 
 /**
+ * dpaa2_io_service_enqueue_multiple_fq() - Enqueue multiple frames
+ * to a frame queue using one fqid.
+ * @d: the given DPIO service.
+ * @fqid: the given frame queue id.
+ * @fd: the list of frame descriptors enqueued.
+ * @nb: number of frames to be enqueued
+ *
+ * Return the number of enqueued frames (0 if EQCR is busy)
+ * or -ENODEV if there is no dpio service.
+ */
+int dpaa2_io_service_enqueue_multiple_fq(struct dpaa2_io *d,
+				u32 fqid,
+				const struct dpaa2_fd *fd,
+				int nb)
+{
+	struct qbman_eq_desc ed;
+
+	d = service_select(d);
+	if (!d)
+		return -ENODEV;
+
+	qbman_eq_desc_clear(&ed);
+	qbman_eq_desc_set_no_orp(&ed, 0);
+	qbman_eq_desc_set_fq(&ed, fqid);
+
+	return qbman_swp_enqueue_multiple(d->swp, &ed, fd, 0, nb);
+}
+EXPORT_SYMBOL(dpaa2_io_service_enqueue_multiple_fq);
+
+/**
+ * dpaa2_io_service_enqueue_multiple_desc_fq() - Enqueue multiple frames
+ * to different frame queue using a list of fqids.
+ * @d: the given DPIO service.
+ * @fqid: the given list of frame queue ids.
+ * @fd: the list of frame descriptors enqueued.
+ * @nb: number of frames to be enqueued
+ *
+ * Return the number of enqueued frames (0 if EQCR is busy)
+ * or -ENODEV if there is no dpio service.
+ */
+int dpaa2_io_service_enqueue_multiple_desc_fq(struct dpaa2_io *d,
+				u32 *fqid,
+				const struct dpaa2_fd *fd,
+				int nb)
+{
+	int i;
+	struct qbman_eq_desc_min ed[32];
+
+	d = service_select(d);
+	if (!d)
+		return -ENODEV;
+
+	for (i = 0; i < nb; i++) {
+		qbman_eq_desc_min_clear(&ed[i]);
+		qbman_eq_desc_set_no_orp_min(&ed[i], 0);
+		qbman_eq_desc_set_min_fq(&ed[i], fqid[i]);
+	}
+
+	return qbman_swp_enqueue_multiple_desc(d->swp, &ed[0], fd, nb);
+}
+EXPORT_SYMBOL(dpaa2_io_service_enqueue_multiple_desc_fq);
+
+/**
  * dpaa2_io_service_enqueue_qd() - Enqueue a frame to a QD.
  * @d: the given DPIO service.
  * @qdid: the given queuing destination id.
@@ -528,7 +591,7 @@ EXPORT_SYMBOL_GPL(dpaa2_io_service_acquire);
 
 /**
  * dpaa2_io_store_create() - Create the dma memory storage for dequeue result.
- * @max_frames: the maximum number of dequeued result for frames, must be <= 16.
+ * @max_frames: the maximum number of dequeued result for frames, must be <= 32.
  * @dev:        the device to allow mapping/unmapping the DMAable region.
  *
  * The size of the storage is "max_frames*sizeof(struct dpaa2_dq)".
@@ -543,7 +606,7 @@ struct dpaa2_io_store *dpaa2_io_store_create(unsigned int max_frames,
 	struct dpaa2_io_store *ret;
 	size_t size;
 
-	if (!max_frames || (max_frames > 16))
+	if (!max_frames || (max_frames > 32))
 		return NULL;
 
 	ret = kmalloc(sizeof(*ret), GFP_KERNEL);
diff --git a/drivers/soc/fsl/dpio/qbman-portal.c b/drivers/soc/fsl/dpio/qbman-portal.c
index c66f5b7..0ed2c8f 100644
--- a/drivers/soc/fsl/dpio/qbman-portal.c
+++ b/drivers/soc/fsl/dpio/qbman-portal.c
@@ -1,13 +1,14 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
 /*
  * Copyright (C) 2014-2016 Freescale Semiconductor, Inc.
- * Copyright 2016 NXP
+ * Copyright 2016-2019 NXP
  *
  */
 
 #include <asm/cacheflush.h>
 #include <linux/io.h>
 #include <linux/slab.h>
+#include <linux/spinlock.h>
 #include <soc/fsl/dpaa2-global.h>
 
 #include "qbman-portal.h"
@@ -28,6 +29,7 @@
 
 /* CINH register offsets */
 #define QBMAN_CINH_SWP_EQCR_PI      0x800
+#define QBMAN_CINH_SWP_EQCR_CI	    0x840
 #define QBMAN_CINH_SWP_EQAR    0x8c0
 #define QBMAN_CINH_SWP_CR_RT        0x900
 #define QBMAN_CINH_SWP_VDQCR_RT     0x940
@@ -51,6 +53,8 @@
 #define QBMAN_CENA_SWP_CR      0x600
 #define QBMAN_CENA_SWP_RR(vb)  (0x700 + ((u32)(vb) >> 1))
 #define QBMAN_CENA_SWP_VDQCR   0x780
+#define QBMAN_CENA_SWP_EQCR_CI 0x840
+#define QBMAN_CENA_SWP_EQCR_CI_MEMBACK 0x1840
 
 /* CENA register offsets in memory-backed mode */
 #define QBMAN_CENA_SWP_DQRR_MEM(n)  (0x800 + ((u32)(n) << 6))
@@ -78,6 +82,12 @@
 /* opaque token for static dequeues */
 #define QMAN_SDQCR_TOKEN    0xbb
 
+#define QBMAN_EQCR_DCA_IDXMASK          0x0f
+#define QBMAN_ENQUEUE_FLAG_DCA          (1ULL << 31)
+
+#define EQ_DESC_SIZE_WITHOUT_FD 29
+#define EQ_DESC_SIZE_FD_START 32
+
 enum qbman_sdqcr_dct {
 	qbman_sdqcr_dct_null = 0,
 	qbman_sdqcr_dct_prio_ics,
@@ -90,6 +100,82 @@ enum qbman_sdqcr_fc {
 	qbman_sdqcr_fc_up_to_3 = 1
 };
 
+/* Internal Function declaration */
+static int qbman_swp_enqueue_ring_mode_direct(struct qbman_swp *s,
+					      const struct qbman_eq_desc *d,
+					      const struct dpaa2_fd *fd);
+static int qbman_swp_enqueue_ring_mode_mem_back(struct qbman_swp *s,
+						const struct qbman_eq_desc *d,
+						const struct dpaa2_fd *fd);
+static int qbman_swp_enqueue_multiple_direct(struct qbman_swp *s,
+					     const struct qbman_eq_desc *d,
+					     const struct dpaa2_fd *fd,
+					     uint32_t *flags,
+					     int num_frames);
+static int qbman_swp_enqueue_multiple_mem_back(struct qbman_swp *s,
+					       const struct qbman_eq_desc *d,
+					       const struct dpaa2_fd *fd,
+					       uint32_t *flags,
+					       int num_frames);
+static int
+qbman_swp_enqueue_multiple_desc_direct(struct qbman_swp *s,
+				       const struct qbman_eq_desc_min *d,
+				       const struct dpaa2_fd *fd,
+				       int num_frames);
+static
+int qbman_swp_enqueue_multiple_desc_mem_back(struct qbman_swp *s,
+					     const struct qbman_eq_desc_min *d,
+					     const struct dpaa2_fd *fd,
+					     int num_frames);
+static int qbman_swp_pull_direct(struct qbman_swp *s,
+				 struct qbman_pull_desc *d);
+static int qbman_swp_pull_mem_back(struct qbman_swp *s,
+				   struct qbman_pull_desc *d);
+
+const struct dpaa2_dq *qbman_swp_dqrr_next_direct(struct qbman_swp *s);
+const struct dpaa2_dq *qbman_swp_dqrr_next_mem_back(struct qbman_swp *s);
+
+static int qbman_swp_release_direct(struct qbman_swp *s,
+				    const struct qbman_release_desc *d,
+				    const u64 *buffers,
+				    unsigned int num_buffers);
+static int qbman_swp_release_mem_back(struct qbman_swp *s,
+				      const struct qbman_release_desc *d,
+				      const u64 *buffers,
+				      unsigned int num_buffers);
+
+/* Function pointers */
+int (*qbman_swp_enqueue_ring_mode_ptr)(struct qbman_swp *s,
+				       const struct qbman_eq_desc *d,
+				       const struct dpaa2_fd *fd)
+	= qbman_swp_enqueue_ring_mode_direct;
+
+int (*qbman_swp_enqueue_multiple_ptr)(struct qbman_swp *s,
+				      const struct qbman_eq_desc *d,
+				      const struct dpaa2_fd *fd,
+				      uint32_t *flags,
+					     int num_frames)
+	= qbman_swp_enqueue_multiple_direct;
+
+int
+(*qbman_swp_enqueue_multiple_desc_ptr)(struct qbman_swp *s,
+				       const struct qbman_eq_desc_min *d,
+				       const struct dpaa2_fd *fd,
+				       int num_frames)
+	= qbman_swp_enqueue_multiple_desc_direct;
+
+int (*qbman_swp_pull_ptr)(struct qbman_swp *s, struct qbman_pull_desc *d)
+			= qbman_swp_pull_direct;
+
+const struct dpaa2_dq *(*qbman_swp_dqrr_next_ptr)(struct qbman_swp *s)
+			= qbman_swp_dqrr_next_direct;
+
+int (*qbman_swp_release_ptr)(struct qbman_swp *s,
+			     const struct qbman_release_desc *d,
+			     const u64 *buffers,
+			     unsigned int num_buffers)
+			= qbman_swp_release_direct;
+
 /* Portal Access */
 
 static inline u32 qbman_read_register(struct qbman_swp *p, u32 offset)
@@ -146,6 +232,15 @@ static inline u32 qbman_set_swp_cfg(u8 max_fill, u8 wn,	u8 est, u8 rpm, u8 dcm,
 
 #define QMAN_RT_MODE	   0x00000100
 
+static inline u8 qm_cyc_diff(u8 ringsize, u8 first, u8 last)
+{
+	/* 'first' is included, 'last' is excluded */
+	if (first <= last)
+		return last - first;
+	else
+		return (2 * ringsize) - (first - last);
+}
+
 /**
  * qbman_swp_init() - Create a functional object representing the given
  *                    QBMan portal descriptor.
@@ -156,8 +251,12 @@ static inline u32 qbman_set_swp_cfg(u8 max_fill, u8 wn,	u8 est, u8 rpm, u8 dcm,
  */
 struct qbman_swp *qbman_swp_init(const struct qbman_swp_desc *d)
 {
-	struct qbman_swp *p = kmalloc(sizeof(*p), GFP_KERNEL);
+	struct qbman_swp *p = kzalloc(sizeof(*p), GFP_KERNEL);
 	u32 reg;
+	u32 mask_size;
+	u32 eqcr_pi;
+
+	spin_lock_init(&p->access_spinlock);
 
 	if (!p)
 		return NULL;
@@ -189,22 +288,39 @@ struct qbman_swp *qbman_swp_init(const struct qbman_swp_desc *d)
 	if ((p->desc->qman_version & QMAN_REV_MASK) >= QMAN_REV_5000)
 		memset(p->addr_cena, 0, 64 * 1024);
 
-	reg = qbman_set_swp_cfg(p->dqrr.dqrr_size,
-				1, /* Writes Non-cacheable */
-				0, /* EQCR_CI stashing threshold */
-				3, /* RPM: Valid bit mode, RCR in array mode */
-				2, /* DCM: Discrete consumption ack mode */
-				3, /* EPM: Valid bit mode, EQCR in array mode */
-				1, /* mem stashing drop enable == TRUE */
-				1, /* mem stashing priority == TRUE */
-				1, /* mem stashing enable == TRUE */
-				1, /* dequeue stashing priority == TRUE */
-				0, /* dequeue stashing enable == FALSE */
-				0); /* EQCR_CI stashing priority == FALSE */
-	if ((p->desc->qman_version & QMAN_REV_MASK) >= QMAN_REV_5000)
+	if ((p->desc->qman_version & QMAN_REV_MASK) >= QMAN_REV_5000) {
+
+		reg = qbman_set_swp_cfg(p->dqrr.dqrr_size,
+			0, /* Writes Non-cacheable */
+			1, /* EQCR_CI stashing threshold */
+			3, /* RPM: RCR in array mode */
+			2, /* DCM: Discrete consumption ack */
+			0, /* EPM: EQCR in ring mode */
+			1, /* mem stashing drop enable */
+			1, /* mem stashing priority enable */
+			1, /* mem stashing enable */
+			1, /* dequeue stashing priority enable */
+			0, /* dequeue stashing enable */
+			0); /* EQCR_CI stashing priority enable */
+	} else {
+		reg = qbman_set_swp_cfg(p->dqrr.dqrr_size,
+			1, /* Writes Non-cacheable */
+			0, /* EQCR_CI stashing threshold */
+			3, /* RPM: RCR in array mode */
+			2, /* DCM: Discrete consumption ack */
+			2, /* EPM: EQCR in ring mode */
+			1, /* mem stashing drop enable enable */
+			1, /* mem stashing priority enable */
+			1, /* mem stashing enable */
+			1, /* dequeue stashing priority enable */
+			0, /* dequeue stashing enable enable */
+			0); /* EQCR_CI stashing priority enable */
+	}
+	if ((p->desc->qman_version & QMAN_REV_MASK) >= QMAN_REV_5000) {
 		reg |= 1 << SWP_CFG_CPBS_SHIFT | /* memory-backed mode */
 		       1 << SWP_CFG_VPM_SHIFT |  /* VDQCR read triggered mode */
 		       1 << SWP_CFG_CPM_SHIFT;   /* CR read triggered mode */
+	}
 
 	qbman_write_register(p, QBMAN_CINH_SWP_CFG, reg);
 	reg = qbman_read_register(p, QBMAN_CINH_SWP_CFG);
@@ -225,6 +341,30 @@ struct qbman_swp *qbman_swp_init(const struct qbman_swp_desc *d)
 	 * applied when dequeues from a specific channel are enabled.
 	 */
 	qbman_write_register(p, QBMAN_CINH_SWP_SDQCR, 0);
+
+	p->eqcr.pi_ring_size = 8;
+	if ((p->desc->qman_version & QMAN_REV_MASK) >= QMAN_REV_5000) {
+		p->eqcr.pi_ring_size = 32;
+		qbman_swp_enqueue_ring_mode_ptr =
+			qbman_swp_enqueue_ring_mode_mem_back;
+		qbman_swp_enqueue_multiple_ptr =
+			qbman_swp_enqueue_multiple_mem_back;
+		qbman_swp_enqueue_multiple_desc_ptr =
+			qbman_swp_enqueue_multiple_desc_mem_back;
+		qbman_swp_pull_ptr = qbman_swp_pull_mem_back;
+		qbman_swp_dqrr_next_ptr = qbman_swp_dqrr_next_mem_back;
+		qbman_swp_release_ptr = qbman_swp_release_mem_back;
+	}
+
+	for (mask_size = p->eqcr.pi_ring_size; mask_size > 0; mask_size >>= 1)
+		p->eqcr.pi_ci_mask = (p->eqcr.pi_ci_mask << 1) + 1;
+	eqcr_pi = qbman_read_register(p, QBMAN_CINH_SWP_EQCR_PI);
+	p->eqcr.pi = eqcr_pi & p->eqcr.pi_ci_mask;
+	p->eqcr.pi_vb = eqcr_pi & QB_VALID_BIT;
+	p->eqcr.ci = qbman_read_register(p, QBMAN_CINH_SWP_EQCR_CI)
+			& p->eqcr.pi_ci_mask;
+	p->eqcr.available = p->eqcr.pi_ring_size;
+
 	return p;
 }
 
@@ -378,6 +518,7 @@ enum qb_enqueue_commands {
 #define QB_ENQUEUE_CMD_ORP_ENABLE_SHIFT      2
 #define QB_ENQUEUE_CMD_IRQ_ON_DISPATCH_SHIFT 3
 #define QB_ENQUEUE_CMD_TARGET_TYPE_SHIFT     4
+#define QB_ENQUEUE_CMD_DCA_EN_SHIFT          7
 
 /**
  * qbman_eq_desc_clear() - Clear the contents of a descriptor to
@@ -389,6 +530,16 @@ void qbman_eq_desc_clear(struct qbman_eq_desc *d)
 }
 
 /**
+ * qbman_eq_desc_min_clear() - Clear the contents of a minimal
+ *			   enqueue descriptor to
+ *                         default/starting state.
+ */
+void qbman_eq_desc_min_clear(struct qbman_eq_desc_min *d)
+{
+	memset(d, 0, sizeof(*d));
+}
+
+/**
  * qbman_eq_desc_set_no_orp() - Set enqueue descriptor without orp
  * @d:                the enqueue descriptor.
  * @response_success: 1 = enqueue with response always; 0 = enqueue with
@@ -403,6 +554,22 @@ void qbman_eq_desc_set_no_orp(struct qbman_eq_desc *d, int respond_success)
 		d->verb |= enqueue_rejects_to_fq;
 }
 
+/**
+ * qbman_eq_desc_set_no_orp_min() - Set minimal enqueue descriptor without orp
+ * @d:                the enqueue descriptor.
+ * @response_success: 1 = enqueue with response always; 0 = enqueue with
+ *                    rejections returned on a FQ.
+ */
+void qbman_eq_desc_set_no_orp_min(struct qbman_eq_desc_min *d,
+				  int respond_success)
+{
+	d->verb &= ~(1 << QB_ENQUEUE_CMD_ORP_ENABLE_SHIFT);
+	if (respond_success)
+		d->verb |= enqueue_response_always;
+	else
+		d->verb |= enqueue_rejects_to_fq;
+}
+
 /*
  * Exactly one of the following descriptor "targets" should be set. (Calling any
  * one of these will replace the effect of any prior call to one of these.)
@@ -422,6 +589,17 @@ void qbman_eq_desc_set_fq(struct qbman_eq_desc *d, u32 fqid)
 }
 
 /**
+ * qbman_eq_desc_set_min_fq() - set the FQ for the minimal enqueue command
+ * @d:    the enqueue descriptor
+ * @fqid: the id of the frame queue to be enqueued
+ */
+void qbman_eq_desc_set_min_fq(struct qbman_eq_desc_min *d, u32 fqid)
+{
+	d->verb &= ~(1 << QB_ENQUEUE_CMD_TARGET_TYPE_SHIFT);
+	d->tgtid = cpu_to_le32(fqid);
+}
+
+/**
  * qbman_eq_desc_set_qd() - Set Queuing Destination for the enqueue command
  * @d:       the enqueue descriptor
  * @qdid:    the id of the queuing destination to be enqueued
@@ -453,41 +631,340 @@ static inline void qbman_write_eqcr_am_rt_register(struct qbman_swp *p,
 				     QMAN_RT_MODE);
 }
 
+#define QB_RT_BIT ((u32)0x100)
 /**
- * qbman_swp_enqueue() - Issue an enqueue command
+ * qbman_swp_enqueue_ring_mode_direct() - Issue an enqueue command
  * @s:  the software portal used for enqueue
  * @d:  the enqueue descriptor
  * @fd: the frame descriptor to be enqueued
  *
- * Please note that 'fd' should only be NULL if the "action" of the
- * descriptor is "orp_hole" or "orp_nesn".
+ * Return 0 for successful enqueue, -EBUSY if the EQCR is not ready.
+ */
+static
+int qbman_swp_enqueue_ring_mode_direct(struct qbman_swp *s,
+				       const struct qbman_eq_desc *d,
+				       const struct dpaa2_fd *fd)
+{
+	int flags = 0;
+	int ret = qbman_swp_enqueue_multiple_direct(s, d, fd, &flags, 1);
+
+	if (ret >= 0)
+		ret = 0;
+	else
+		ret = -EBUSY;
+	return  ret;
+}
+
+/**
+ * qbman_swp_enqueue_ring_mode_mem_back() - Issue an enqueue command
+ * @s:  the software portal used for enqueue
+ * @d:  the enqueue descriptor
+ * @fd: the frame descriptor to be enqueued
  *
  * Return 0 for successful enqueue, -EBUSY if the EQCR is not ready.
  */
-int qbman_swp_enqueue(struct qbman_swp *s, const struct qbman_eq_desc *d,
-		      const struct dpaa2_fd *fd)
+static
+int qbman_swp_enqueue_ring_mode_mem_back(struct qbman_swp *s,
+					 const struct qbman_eq_desc *d,
+					 const struct dpaa2_fd *fd)
 {
-	struct qbman_eq_desc *p;
-	u32 eqar = qbman_read_register(s, QBMAN_CINH_SWP_EQAR);
+	int flags = 0;
+	int ret = qbman_swp_enqueue_multiple_mem_back(s, d, fd, &flags, 1);
 
-	if (!EQAR_SUCCESS(eqar))
-		return -EBUSY;
+	if (ret >= 0)
+		ret = 0;
+	else
+		ret = -EBUSY;
+	return  ret;
+}
 
-	p = qbman_get_cmd(s, QBMAN_CENA_SWP_EQCR(EQAR_IDX(eqar)));
-	memcpy(&p->dca, &d->dca, 31);
-	memcpy(&p->fd, fd, sizeof(*fd));
+/**
+ * qbman_swp_enqueue_multiple_direct() - Issue a multi enqueue command
+ * using one enqueue descriptor
+ * @s:  the software portal used for enqueue
+ * @d:  the enqueue descriptor
+ * @fd: table pointer of frame descriptor table to be enqueued
+ * @flags: table pointer of QBMAN_ENQUEUE_FLAG_DCA flags, not used if NULL
+ * @num_frames: number of fd to be enqueued
+ *
+ * Return the number of fd enqueued, or a negative error number.
+ */
+static
+int qbman_swp_enqueue_multiple_direct(struct qbman_swp *s,
+				      const struct qbman_eq_desc *d,
+				      const struct dpaa2_fd *fd,
+				      uint32_t *flags,
+				      int num_frames)
+{
+	uint32_t *p = NULL;
+	const uint32_t *cl = (uint32_t *)d;
+	uint32_t eqcr_ci, eqcr_pi, half_mask, full_mask;
+	int i, num_enqueued = 0;
+
+	half_mask = (s->eqcr.pi_ci_mask>>1);
+	full_mask = s->eqcr.pi_ci_mask;
+
+	if (!s->eqcr.available) {
+		eqcr_ci = s->eqcr.ci;
+		p = s->addr_cena + QBMAN_CENA_SWP_EQCR_CI;
+		s->eqcr.ci = __raw_readl(p) & full_mask;
+
+		s->eqcr.available = qm_cyc_diff(s->eqcr.pi_ring_size,
+					eqcr_ci, s->eqcr.ci);
+		if (!s->eqcr.available)
+			return 0;
+	}
 
-	if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000) {
-		/* Set the verb byte, have to substitute in the valid-bit */
-		dma_wmb();
-		p->verb = d->verb | EQAR_VB(eqar);
-	} else {
-		p->verb = d->verb | EQAR_VB(eqar);
-		dma_wmb();
-		qbman_write_eqcr_am_rt_register(s, EQAR_IDX(eqar));
+	eqcr_pi = s->eqcr.pi;
+	num_enqueued = (s->eqcr.available < num_frames) ?
+			s->eqcr.available : num_frames;
+	s->eqcr.available -= num_enqueued;
+	/* Fill in the EQCR ring */
+	for (i = 0; i < num_enqueued; i++) {
+		p = (s->addr_cena + QBMAN_CENA_SWP_EQCR(eqcr_pi & half_mask));
+		/* Skip copying the verb */
+		memcpy(&p[1], &cl[1], EQ_DESC_SIZE_WITHOUT_FD - 1);
+		memcpy(&p[EQ_DESC_SIZE_FD_START/sizeof(uint32_t)],
+		       &fd[i], sizeof(*fd));
+		eqcr_pi++;
 	}
 
-	return 0;
+	dma_wmb();
+
+	/* Set the verb byte, have to substitute in the valid-bit */
+	eqcr_pi = s->eqcr.pi;
+	for (i = 0; i < num_enqueued; i++) {
+		p = (s->addr_cena + QBMAN_CENA_SWP_EQCR(eqcr_pi & half_mask));
+		p[0] = cl[0] | s->eqcr.pi_vb;
+		if (flags && (flags[i] & QBMAN_ENQUEUE_FLAG_DCA)) {
+			struct qbman_eq_desc *d = (struct qbman_eq_desc *)p;
+
+			d->dca = (1 << QB_ENQUEUE_CMD_DCA_EN_SHIFT) |
+				((flags[i]) & QBMAN_EQCR_DCA_IDXMASK);
+		}
+		eqcr_pi++;
+		if (!(eqcr_pi & half_mask))
+			s->eqcr.pi_vb ^= QB_VALID_BIT;
+	}
+
+	s->eqcr.pi = (s->eqcr.pi + num_enqueued) & full_mask;
+
+	return num_enqueued;
+}
+
+/**
+ * qbman_swp_enqueue_multiple_mem_back() - Issue a multi enqueue command
+ * using one enqueue descriptor
+ * @s:  the software portal used for enqueue
+ * @d:  the enqueue descriptor
+ * @fd: table pointer of frame descriptor table to be enqueued
+ * @flags: table pointer of QBMAN_ENQUEUE_FLAG_DCA flags, not used if NULL
+ * @num_frames: number of fd to be enqueued
+ *
+ * Return the number of fd enqueued, or a negative error number.
+ */
+static
+int qbman_swp_enqueue_multiple_mem_back(struct qbman_swp *s,
+					const struct qbman_eq_desc *d,
+					const struct dpaa2_fd *fd,
+					uint32_t *flags,
+					int num_frames)
+{
+	uint32_t *p = NULL;
+	const uint32_t *cl = (uint32_t *)(d);
+	uint32_t eqcr_ci, eqcr_pi, half_mask, full_mask;
+	int i, num_enqueued = 0;
+	unsigned long irq_flags;
+
+	spin_lock(&s->access_spinlock);
+	local_irq_save(irq_flags);
+
+	half_mask = (s->eqcr.pi_ci_mask>>1);
+	full_mask = s->eqcr.pi_ci_mask;
+	if (!s->eqcr.available) {
+		eqcr_ci = s->eqcr.ci;
+		p = s->addr_cena + QBMAN_CENA_SWP_EQCR_CI_MEMBACK;
+		s->eqcr.ci = __raw_readl(p) & full_mask;
+		s->eqcr.available = qm_cyc_diff(s->eqcr.pi_ring_size,
+					eqcr_ci, s->eqcr.ci);
+		if (!s->eqcr.available) {
+			local_irq_restore(irq_flags);
+			spin_unlock(&s->access_spinlock);
+			return 0;
+		}
+	}
+
+	eqcr_pi = s->eqcr.pi;
+	num_enqueued = (s->eqcr.available < num_frames) ?
+			s->eqcr.available : num_frames;
+	s->eqcr.available -= num_enqueued;
+	/* Fill in the EQCR ring */
+	for (i = 0; i < num_enqueued; i++) {
+		p = (s->addr_cena + QBMAN_CENA_SWP_EQCR(eqcr_pi & half_mask));
+		/* Skip copying the verb */
+		memcpy(&p[1], &cl[1], EQ_DESC_SIZE_WITHOUT_FD - 1);
+		memcpy(&p[EQ_DESC_SIZE_FD_START/sizeof(uint32_t)],
+		       &fd[i], sizeof(*fd));
+		eqcr_pi++;
+	}
+
+	/* Set the verb byte, have to substitute in the valid-bit */
+	eqcr_pi = s->eqcr.pi;
+	for (i = 0; i < num_enqueued; i++) {
+		p = (s->addr_cena + QBMAN_CENA_SWP_EQCR(eqcr_pi & half_mask));
+		p[0] = cl[0] | s->eqcr.pi_vb;
+		if (flags && (flags[i] & QBMAN_ENQUEUE_FLAG_DCA)) {
+			struct qbman_eq_desc *d = (struct qbman_eq_desc *)p;
+
+			d->dca = (1 << QB_ENQUEUE_CMD_DCA_EN_SHIFT) |
+				((flags[i]) & QBMAN_EQCR_DCA_IDXMASK);
+		}
+		eqcr_pi++;
+		if (!(eqcr_pi & half_mask))
+			s->eqcr.pi_vb ^= QB_VALID_BIT;
+	}
+	s->eqcr.pi = eqcr_pi & full_mask;
+
+	dma_wmb();
+	qbman_write_register(s, QBMAN_CINH_SWP_EQCR_PI,
+				(QB_RT_BIT)|(s->eqcr.pi)|s->eqcr.pi_vb);
+	local_irq_restore(irq_flags);
+	spin_unlock(&s->access_spinlock);
+
+	return num_enqueued;
+}
+
+/**
+ * qbman_swp_enqueue_multiple_desc_direct() - Issue a multi enqueue command
+ * using multiple enqueue descriptor
+ * @s:  the software portal used for enqueue
+ * @d:  table of minimal enqueue descriptor
+ * @fd: table pointer of frame descriptor table to be enqueued
+ * @num_frames: number of fd to be enqueued
+ *
+ * Return the number of fd enqueued, or a negative error number.
+ */
+static
+int qbman_swp_enqueue_multiple_desc_direct(struct qbman_swp *s,
+					   const struct qbman_eq_desc_min *d,
+					   const struct dpaa2_fd *fd,
+					   int num_frames)
+{
+	uint32_t *p;
+	const uint32_t *cl;
+	uint32_t eqcr_ci, eqcr_pi, half_mask, full_mask;
+	int i, num_enqueued = 0;
+
+	half_mask = (s->eqcr.pi_ci_mask>>1);
+	full_mask = s->eqcr.pi_ci_mask;
+	if (!s->eqcr.available) {
+		eqcr_ci = s->eqcr.ci;
+		p = s->addr_cena + QBMAN_CENA_SWP_EQCR_CI;
+		s->eqcr.ci = __raw_readl(p) & full_mask;
+		s->eqcr.available = qm_cyc_diff(s->eqcr.pi_ring_size,
+					eqcr_ci, s->eqcr.ci);
+		if (!s->eqcr.available)
+			return 0;
+	}
+
+	eqcr_pi = s->eqcr.pi;
+	num_enqueued = (s->eqcr.available < num_frames) ?
+			s->eqcr.available : num_frames;
+	s->eqcr.available -= num_enqueued;
+	/* Fill in the EQCR ring */
+	for (i = 0; i < num_enqueued; i++) {
+		p = (s->addr_cena + QBMAN_CENA_SWP_EQCR(eqcr_pi & half_mask));
+		cl = (uint32_t *)(&d[i]);
+		/* Skip copying the verb */
+		memcpy(&p[1], &cl[1], EQ_DESC_SIZE_WITHOUT_FD - 1);
+		memcpy(&p[EQ_DESC_SIZE_FD_START/sizeof(uint32_t)],
+		       &fd[i], sizeof(*fd));
+		eqcr_pi++;
+	}
+
+	dma_wmb();
+
+	/* Set the verb byte, have to substitute in the valid-bit */
+	eqcr_pi = s->eqcr.pi;
+	for (i = 0; i < num_enqueued; i++) {
+		p = (s->addr_cena + QBMAN_CENA_SWP_EQCR(eqcr_pi & half_mask));
+		cl = (uint32_t *)(&d[i]);
+		p[0] = cl[0] | s->eqcr.pi_vb;
+		eqcr_pi++;
+		if (!(eqcr_pi & half_mask))
+			s->eqcr.pi_vb ^= QB_VALID_BIT;
+	}
+	s->eqcr.pi = (s->eqcr.pi + num_enqueued) & full_mask;
+
+	return num_enqueued;
+}
+
+/**
+ * qbman_swp_enqueue_multiple_desc_mem_back() - Issue a multi enqueue command
+ * using multiple enqueue descriptor
+ * @s:  the software portal used for enqueue
+ * @d:  table of minimal enqueue descriptor
+ * @fd: table pointer of frame descriptor table to be enqueued
+ * @num_frames: number of fd to be enqueued
+ *
+ * Return the number of fd enqueued, or a negative error number.
+ */
+static
+int qbman_swp_enqueue_multiple_desc_mem_back(struct qbman_swp *s,
+					     const struct qbman_eq_desc_min *d,
+					     const struct dpaa2_fd *fd,
+					     int num_frames)
+{
+	uint32_t *p;
+	const uint32_t *cl;
+	uint32_t eqcr_ci, eqcr_pi, half_mask, full_mask;
+	int i, num_enqueued = 0;
+
+	half_mask = (s->eqcr.pi_ci_mask>>1);
+	full_mask = s->eqcr.pi_ci_mask;
+	if (!s->eqcr.available) {
+		eqcr_ci = s->eqcr.ci;
+		p = s->addr_cena + QBMAN_CENA_SWP_EQCR_CI_MEMBACK;
+		s->eqcr.ci = __raw_readl(p) & full_mask;
+		s->eqcr.available = qm_cyc_diff(s->eqcr.pi_ring_size,
+					eqcr_ci, s->eqcr.ci);
+		if (!s->eqcr.available)
+			return 0;
+	}
+
+	eqcr_pi = s->eqcr.pi;
+	num_enqueued = (s->eqcr.available < num_frames) ?
+			s->eqcr.available : num_frames;
+	s->eqcr.available -= num_enqueued;
+	/* Fill in the EQCR ring */
+	for (i = 0; i < num_enqueued; i++) {
+		p = (s->addr_cena + QBMAN_CENA_SWP_EQCR(eqcr_pi & half_mask));
+		cl = (uint32_t *)(&d[i]);
+		/* Skip copying the verb */
+		memcpy(&p[1], &cl[1], EQ_DESC_SIZE_WITHOUT_FD - 1);
+		memcpy(&p[EQ_DESC_SIZE_FD_START/sizeof(uint32_t)],
+		       &fd[i], sizeof(*fd));
+		eqcr_pi++;
+	}
+
+	/* Set the verb byte, have to substitute in the valid-bit */
+	eqcr_pi = s->eqcr.pi;
+	for (i = 0; i < num_enqueued; i++) {
+		p = (s->addr_cena + QBMAN_CENA_SWP_EQCR(eqcr_pi & half_mask));
+		cl = (uint32_t *)(&d[i]);
+		p[0] = cl[0] | s->eqcr.pi_vb;
+		eqcr_pi++;
+		if (!(eqcr_pi & half_mask))
+			s->eqcr.pi_vb ^= QB_VALID_BIT;
+	}
+
+	s->eqcr.pi = eqcr_pi & full_mask;
+
+	dma_wmb();
+	qbman_write_register(s, QBMAN_CINH_SWP_EQCR_PI,
+				(QB_RT_BIT)|(s->eqcr.pi)|s->eqcr.pi_vb);
+
+	return num_enqueued;
 }
 
 /* Static (push) dequeue */
@@ -645,7 +1122,7 @@ void qbman_pull_desc_set_channel(struct qbman_pull_desc *d, u32 chid,
 }
 
 /**
- * qbman_swp_pull() - Issue the pull dequeue command
+ * qbman_swp_pull_direct() - Issue the pull dequeue command
  * @s: the software portal object
  * @d: the software portal descriptor which has been configured with
  *     the set of qbman_pull_desc_set_*() calls
@@ -653,7 +1130,7 @@ void qbman_pull_desc_set_channel(struct qbman_pull_desc *d, u32 chid,
  * Return 0 for success, and -EBUSY if the software portal is not ready
  * to do pull dequeue.
  */
-int qbman_swp_pull(struct qbman_swp *s, struct qbman_pull_desc *d)
+static int qbman_swp_pull_direct(struct qbman_swp *s, struct qbman_pull_desc *d)
 {
 	struct qbman_pull_desc *p;
 
@@ -671,18 +1148,48 @@ int qbman_swp_pull(struct qbman_swp *s, struct qbman_pull_desc *d)
 	p->dq_src = d->dq_src;
 	p->rsp_addr = d->rsp_addr;
 	p->rsp_addr_virt = d->rsp_addr_virt;
+	dma_wmb();
+	/* Set the verb byte, have to substitute in the valid-bit */
+	p->verb = d->verb | s->vdq.valid_bit;
+	s->vdq.valid_bit ^= QB_VALID_BIT;
 
-	if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000) {
-		dma_wmb();
-		/* Set the verb byte, have to substitute in the valid-bit */
-		p->verb = d->verb | s->vdq.valid_bit;
-		s->vdq.valid_bit ^= QB_VALID_BIT;
-	} else {
-		p->verb = d->verb | s->vdq.valid_bit;
-		s->vdq.valid_bit ^= QB_VALID_BIT;
-		dma_wmb();
-		qbman_write_register(s, QBMAN_CINH_SWP_VDQCR_RT, QMAN_RT_MODE);
+	return 0;
+}
+
+/**
+ * qbman_swp_pull_mem_back() - Issue the pull dequeue command
+ * @s: the software portal object
+ * @d: the software portal descriptor which has been configured with
+ *     the set of qbman_pull_desc_set_*() calls
+ *
+ * Return 0 for success, and -EBUSY if the software portal is not ready
+ * to do pull dequeue.
+ */
+static int qbman_swp_pull_mem_back(struct qbman_swp *s,
+				   struct qbman_pull_desc *d)
+{
+	struct qbman_pull_desc *p;
+
+	if (!atomic_dec_and_test(&s->vdq.available)) {
+		atomic_inc(&s->vdq.available);
+		return -EBUSY;
 	}
+	s->vdq.storage = (void *)(uintptr_t)d->rsp_addr_virt;
+	if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000)
+		p = qbman_get_cmd(s, QBMAN_CENA_SWP_VDQCR);
+	else
+		p = qbman_get_cmd(s, QBMAN_CENA_SWP_VDQCR_MEM);
+	p->numf = d->numf;
+	p->tok = QMAN_DQ_TOKEN_VALID;
+	p->dq_src = d->dq_src;
+	p->rsp_addr = d->rsp_addr;
+	p->rsp_addr_virt = d->rsp_addr_virt;
+
+	/* Set the verb byte, have to substitute in the valid-bit */
+	p->verb = d->verb | s->vdq.valid_bit;
+	s->vdq.valid_bit ^= QB_VALID_BIT;
+	dma_wmb();
+	qbman_write_register(s, QBMAN_CINH_SWP_VDQCR_RT, QMAN_RT_MODE);
 
 	return 0;
 }
@@ -690,14 +1197,14 @@ int qbman_swp_pull(struct qbman_swp *s, struct qbman_pull_desc *d)
 #define QMAN_DQRR_PI_MASK   0xf
 
 /**
- * qbman_swp_dqrr_next() - Get an valid DQRR entry
+ * qbman_swp_dqrr_next_direct() - Get an valid DQRR entry
  * @s: the software portal object
  *
  * Return NULL if there are no unconsumed DQRR entries. Return a DQRR entry
  * only once, so repeated calls can return a sequence of DQRR entries, without
  * requiring they be consumed immediately or in any particular order.
  */
-const struct dpaa2_dq *qbman_swp_dqrr_next(struct qbman_swp *s)
+const struct dpaa2_dq *qbman_swp_dqrr_next_direct(struct qbman_swp *s)
 {
 	u32 verb;
 	u32 response_verb;
@@ -740,10 +1247,7 @@ const struct dpaa2_dq *qbman_swp_dqrr_next(struct qbman_swp *s)
 				       QBMAN_CENA_SWP_DQRR(s->dqrr.next_idx)));
 	}
 
-	if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000)
-		p = qbman_get_cmd(s, QBMAN_CENA_SWP_DQRR(s->dqrr.next_idx));
-	else
-		p = qbman_get_cmd(s, QBMAN_CENA_SWP_DQRR_MEM(s->dqrr.next_idx));
+	p = qbman_get_cmd(s, QBMAN_CENA_SWP_DQRR(s->dqrr.next_idx));
 	verb = p->dq.verb;
 
 	/*
@@ -785,6 +1289,98 @@ const struct dpaa2_dq *qbman_swp_dqrr_next(struct qbman_swp *s)
 }
 
 /**
+ * qbman_swp_dqrr_next_mem_back() - Get an valid DQRR entry
+ * @s: the software portal object
+ *
+ * Return NULL if there are no unconsumed DQRR entries. Return a DQRR entry
+ * only once, so repeated calls can return a sequence of DQRR entries, without
+ * requiring they be consumed immediately or in any particular order.
+ */
+const struct dpaa2_dq *qbman_swp_dqrr_next_mem_back(struct qbman_swp *s)
+{
+	u32 verb;
+	u32 response_verb;
+	u32 flags;
+	struct dpaa2_dq *p;
+
+	/* Before using valid-bit to detect if something is there, we have to
+	 * handle the case of the DQRR reset bug...
+	 */
+	if (unlikely(s->dqrr.reset_bug)) {
+		/*
+		 * We pick up new entries by cache-inhibited producer index,
+		 * which means that a non-coherent mapping would require us to
+		 * invalidate and read *only* once that PI has indicated that
+		 * there's an entry here. The first trip around the DQRR ring
+		 * will be much less efficient than all subsequent trips around
+		 * it...
+		 */
+		u8 pi = qbman_read_register(s, QBMAN_CINH_SWP_DQPI) &
+			QMAN_DQRR_PI_MASK;
+
+		/* there are new entries if pi != next_idx */
+		if (pi == s->dqrr.next_idx)
+			return NULL;
+
+		/*
+		 * if next_idx is/was the last ring index, and 'pi' is
+		 * different, we can disable the workaround as all the ring
+		 * entries have now been DMA'd to so valid-bit checking is
+		 * repaired. Note: this logic needs to be based on next_idx
+		 * (which increments one at a time), rather than on pi (which
+		 * can burst and wrap-around between our snapshots of it).
+		 */
+		if (s->dqrr.next_idx == (s->dqrr.dqrr_size - 1)) {
+			pr_debug("next_idx=%d, pi=%d, clear reset bug\n",
+				 s->dqrr.next_idx, pi);
+			s->dqrr.reset_bug = 0;
+		}
+		prefetch(qbman_get_cmd(s,
+				       QBMAN_CENA_SWP_DQRR(s->dqrr.next_idx)));
+	}
+
+	p = qbman_get_cmd(s, QBMAN_CENA_SWP_DQRR_MEM(s->dqrr.next_idx));
+	verb = p->dq.verb;
+
+	/*
+	 * If the valid-bit isn't of the expected polarity, nothing there. Note,
+	 * in the DQRR reset bug workaround, we shouldn't need to skip these
+	 * check, because we've already determined that a new entry is available
+	 * and we've invalidated the cacheline before reading it, so the
+	 * valid-bit behaviour is repaired and should tell us what we already
+	 * knew from reading PI.
+	 */
+	if ((verb & QB_VALID_BIT) != s->dqrr.valid_bit) {
+		prefetch(qbman_get_cmd(s,
+			 QBMAN_CENA_SWP_DQRR(s->dqrr.next_idx)));
+		return NULL;
+	}
+	/*
+	 * There's something there. Move "next_idx" attention to the next ring
+	 * entry (and prefetch it) before returning what we found.
+	 */
+	s->dqrr.next_idx++;
+	s->dqrr.next_idx &= s->dqrr.dqrr_size - 1; /* Wrap around */
+	if (!s->dqrr.next_idx)
+		s->dqrr.valid_bit ^= QB_VALID_BIT;
+
+	/*
+	 * If this is the final response to a volatile dequeue command
+	 * indicate that the vdq is available
+	 */
+	flags = p->dq.stat;
+	response_verb = verb & QBMAN_RESULT_MASK;
+	if (response_verb == QBMAN_RESULT_DQ &&
+	    (flags & DPAA2_DQ_STAT_VOLATILE) &&
+	    (flags & DPAA2_DQ_STAT_EXPIRED))
+		atomic_inc(&s->vdq.available);
+
+	prefetch(qbman_get_cmd(s, QBMAN_CENA_SWP_DQRR(s->dqrr.next_idx)));
+
+	return p;
+}
+
+/**
  * qbman_swp_dqrr_consume() -  Consume DQRR entries previously returned from
  *                             qbman_swp_dqrr_next().
  * @s: the software portal object
@@ -872,7 +1468,7 @@ void qbman_release_desc_set_rcdi(struct qbman_release_desc *d, int enable)
 #define RAR_SUCCESS(rar) ((rar) & 0x100)
 
 /**
- * qbman_swp_release() - Issue a buffer release command
+ * qbman_swp_release_direct() - Issue a buffer release command
  * @s:           the software portal object
  * @d:           the release descriptor
  * @buffers:     a pointer pointing to the buffer address to be released
@@ -880,8 +1476,53 @@ void qbman_release_desc_set_rcdi(struct qbman_release_desc *d, int enable)
  *
  * Return 0 for success, -EBUSY if the release command ring is not ready.
  */
-int qbman_swp_release(struct qbman_swp *s, const struct qbman_release_desc *d,
-		      const u64 *buffers, unsigned int num_buffers)
+int qbman_swp_release_direct(struct qbman_swp *s,
+			     const struct qbman_release_desc *d,
+			     const u64 *buffers, unsigned int num_buffers)
+{
+	int i;
+	struct qbman_release_desc *p;
+	u32 rar;
+
+	if (!num_buffers || num_buffers > 7)
+		return -EINVAL;
+
+	rar = qbman_read_register(s, QBMAN_CINH_SWP_RAR);
+	if (!RAR_SUCCESS(rar))
+		return -EBUSY;
+
+	/* Start the release command */
+	if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000)
+		p = qbman_get_cmd(s, QBMAN_CENA_SWP_RCR(RAR_IDX(rar)));
+	else
+		p = qbman_get_cmd(s, QBMAN_CENA_SWP_RCR_MEM(RAR_IDX(rar)));
+	/* Copy the caller's buffer pointers to the command */
+	for (i = 0; i < num_buffers; i++)
+		p->buf[i] = cpu_to_le64(buffers[i]);
+	p->bpid = d->bpid;
+
+	/*
+	 * Set the verb byte, have to substitute in the valid-bit
+	 * and the number of buffers.
+	 */
+	dma_wmb();
+	p->verb = d->verb | RAR_VB(rar) | num_buffers;
+
+	return 0;
+}
+
+/**
+ * qbman_swp_release_mem_back() - Issue a buffer release command
+ * @s:           the software portal object
+ * @d:           the release descriptor
+ * @buffers:     a pointer pointing to the buffer address to be released
+ * @num_buffers: number of buffers to be released,  must be less than 8
+ *
+ * Return 0 for success, -EBUSY if the release command ring is not ready.
+ */
+int qbman_swp_release_mem_back(struct qbman_swp *s,
+			       const struct qbman_release_desc *d,
+			       const u64 *buffers, unsigned int num_buffers)
 {
 	int i;
 	struct qbman_release_desc *p;
@@ -904,19 +1545,10 @@ int qbman_swp_release(struct qbman_swp *s, const struct qbman_release_desc *d,
 		p->buf[i] = cpu_to_le64(buffers[i]);
 	p->bpid = d->bpid;
 
-	if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000) {
-		/*
-		 * Set the verb byte, have to substitute in the valid-bit
-		 * and the number of buffers.
-		 */
-		dma_wmb();
-		p->verb = d->verb | RAR_VB(rar) | num_buffers;
-	} else {
-		p->verb = d->verb | RAR_VB(rar) | num_buffers;
-		dma_wmb();
-		qbman_write_register(s, QBMAN_CINH_SWP_RCR_AM_RT +
-				     RAR_IDX(rar)  * 4, QMAN_RT_MODE);
-	}
+	p->verb = d->verb | RAR_VB(rar) | num_buffers;
+	dma_wmb();
+	qbman_write_register(s, QBMAN_CINH_SWP_RCR_AM_RT +
+			     RAR_IDX(rar)  * 4, QMAN_RT_MODE);
 
 	return 0;
 }
diff --git a/drivers/soc/fsl/dpio/qbman-portal.h b/drivers/soc/fsl/dpio/qbman-portal.h
index f3ec5d2..f4b6e47 100644
--- a/drivers/soc/fsl/dpio/qbman-portal.h
+++ b/drivers/soc/fsl/dpio/qbman-portal.h
@@ -9,6 +9,13 @@
 
 #include <soc/fsl/dpaa2-fd.h>
 
+#define QMAN_REV_4000   0x04000000
+#define QMAN_REV_4100   0x04010000
+#define QMAN_REV_4101   0x04010001
+#define QMAN_REV_5000   0x05000000
+
+#define QMAN_REV_MASK   0xffff0000
+
 struct dpaa2_dq;
 struct qbman_swp;
 
@@ -67,6 +74,22 @@ enum qbman_pull_type_e {
 #define QBMAN_FQ_XOFF		0x4e
 
 /* structure of enqueue descriptor */
+struct qbman_eq_desc_min {
+	u8 verb;
+	u8 dca;
+	__le16 seqnum;
+	__le16 orpid;
+	__le16 reserved1;
+	__le32 tgtid;
+	__le32 tag;
+	__le16 qdbin;
+	u8 qpri;
+	u8 reserved[3];
+	u8 wae;
+	u8 rspid;
+	__le64 rsp_addr;
+};
+
 struct qbman_eq_desc {
 	u8 verb;
 	u8 dca;
@@ -132,8 +155,48 @@ struct qbman_swp {
 		u8 dqrr_size;
 		int reset_bug; /* indicates dqrr reset workaround is needed */
 	} dqrr;
+
+	struct {
+		u32 pi;
+		u32 pi_vb;
+		u32 pi_ring_size;
+		u32 pi_ci_mask;
+		u32 ci;
+		int available;
+		u32 pend;
+		u32 no_pfdr;
+	} eqcr;
+
+	spinlock_t access_spinlock;
 };
 
+/* Function pointers */
+extern
+int (*qbman_swp_enqueue_ring_mode_ptr)(struct qbman_swp *s,
+				       const struct qbman_eq_desc *d,
+				       const struct dpaa2_fd *fd);
+extern
+int (*qbman_swp_enqueue_multiple_ptr)(struct qbman_swp *s,
+				      const struct qbman_eq_desc *d,
+				      const struct dpaa2_fd *fd,
+				      uint32_t *flags,
+				      int num_frames);
+extern
+int (*qbman_swp_enqueue_multiple_desc_ptr)(struct qbman_swp *s,
+					   const struct qbman_eq_desc_min *d,
+					   const struct dpaa2_fd *fd,
+					   int num_frames);
+extern
+int (*qbman_swp_pull_ptr)(struct qbman_swp *s, struct qbman_pull_desc *d);
+extern
+const struct dpaa2_dq *(*qbman_swp_dqrr_next_ptr)(struct qbman_swp *s);
+extern
+int (*qbman_swp_release_ptr)(struct qbman_swp *s,
+			     const struct qbman_release_desc *d,
+			     const u64 *buffers,
+			     unsigned int num_buffers);
+
+/* Functions */
 struct qbman_swp *qbman_swp_init(const struct qbman_swp_desc *d);
 void qbman_swp_finish(struct qbman_swp *p);
 u32 qbman_swp_interrupt_read_status(struct qbman_swp *p);
@@ -158,29 +221,25 @@ void qbman_pull_desc_set_wq(struct qbman_pull_desc *d, u32 wqid,
 void qbman_pull_desc_set_channel(struct qbman_pull_desc *d, u32 chid,
 				 enum qbman_pull_type_e dct);
 
-int qbman_swp_pull(struct qbman_swp *p, struct qbman_pull_desc *d);
-
-const struct dpaa2_dq *qbman_swp_dqrr_next(struct qbman_swp *s);
 void qbman_swp_dqrr_consume(struct qbman_swp *s, const struct dpaa2_dq *dq);
 
 int qbman_result_has_new_result(struct qbman_swp *p, const struct dpaa2_dq *dq);
 
 void qbman_eq_desc_clear(struct qbman_eq_desc *d);
+void qbman_eq_desc_min_clear(struct qbman_eq_desc_min *d);
 void qbman_eq_desc_set_no_orp(struct qbman_eq_desc *d, int respond_success);
+void qbman_eq_desc_set_no_orp_min(struct qbman_eq_desc_min *d,
+				  int respond_success);
 void qbman_eq_desc_set_token(struct qbman_eq_desc *d, u8 token);
 void qbman_eq_desc_set_fq(struct qbman_eq_desc *d, u32 fqid);
+void qbman_eq_desc_set_min_fq(struct qbman_eq_desc_min *d, u32 fqid);
 void qbman_eq_desc_set_qd(struct qbman_eq_desc *d, u32 qdid,
 			  u32 qd_bin, u32 qd_prio);
 
-int qbman_swp_enqueue(struct qbman_swp *p, const struct qbman_eq_desc *d,
-		      const struct dpaa2_fd *fd);
-
 void qbman_release_desc_clear(struct qbman_release_desc *d);
 void qbman_release_desc_set_bpid(struct qbman_release_desc *d, u16 bpid);
 void qbman_release_desc_set_rcdi(struct qbman_release_desc *d, int enable);
 
-int qbman_swp_release(struct qbman_swp *s, const struct qbman_release_desc *d,
-		      const u64 *buffers, unsigned int num_buffers);
 int qbman_swp_acquire(struct qbman_swp *s, u16 bpid, u64 *buffers,
 		      unsigned int num_buffers);
 int qbman_swp_alt_fq_state(struct qbman_swp *s, u32 fqid,
@@ -194,6 +253,61 @@ void qbman_swp_mc_submit(struct qbman_swp *p, void *cmd, u8 cmd_verb);
 void *qbman_swp_mc_result(struct qbman_swp *p);
 
 /**
+ * qbman_swp_enqueue() - Issue an enqueue command
+ * @s:  the software portal used for enqueue
+ * @d:  the enqueue descriptor
+ * @fd: the frame descriptor to be enqueued
+ *
+ * Return 0 for successful enqueue, -EBUSY if the EQCR is not ready.
+ */
+static inline int
+qbman_swp_enqueue(struct qbman_swp *s, const struct qbman_eq_desc *d,
+		  const struct dpaa2_fd *fd)
+{
+	return qbman_swp_enqueue_ring_mode_ptr(s, d, fd);
+}
+
+/**
+ * qbman_swp_enqueue_multiple() - Issue a multi enqueue command
+ * using one enqueue descriptor
+ * @s:  the software portal used for enqueue
+ * @d:  the enqueue descriptor
+ * @fd: table pointer of frame descriptor table to be enqueued
+ * @flags: table pointer of QBMAN_ENQUEUE_FLAG_DCA flags, not used if NULL
+ * @num_frames: number of fd to be enqueued
+ *
+ * Return the number of fd enqueued, or a negative error number.
+ */
+static inline int
+qbman_swp_enqueue_multiple(struct qbman_swp *s,
+			   const struct qbman_eq_desc *d,
+			   const struct dpaa2_fd *fd,
+			   uint32_t *flags,
+			   int num_frames)
+{
+	return qbman_swp_enqueue_multiple_ptr(s, d, fd, flags, num_frames);
+}
+
+/**
+ * qbman_swp_enqueue_multiple_desc() - Issue a multi enqueue command
+ * using multiple enqueue descriptor
+ * @s:  the software portal used for enqueue
+ * @d:  table of minimal enqueue descriptor
+ * @fd: table pointer of frame descriptor table to be enqueued
+ * @num_frames: number of fd to be enqueued
+ *
+ * Return the number of fd enqueued, or a negative error number.
+ */
+static inline int
+qbman_swp_enqueue_multiple_desc(struct qbman_swp *s,
+				const struct qbman_eq_desc_min *d,
+				const struct dpaa2_fd *fd,
+				int num_frames)
+{
+	return qbman_swp_enqueue_multiple_desc_ptr(s, d, fd, num_frames);
+}
+
+/**
  * qbman_result_is_DQ() - check if the dequeue result is a dequeue response
  * @dq: the dequeue result to be checked
  *
@@ -504,4 +618,49 @@ int qbman_bp_query(struct qbman_swp *s, u16 bpid,
 
 u32 qbman_bp_info_num_free_bufs(struct qbman_bp_query_rslt *a);
 
+/**
+ * qbman_swp_release() - Issue a buffer release command
+ * @s:           the software portal object
+ * @d:           the release descriptor
+ * @buffers:     a pointer pointing to the buffer address to be released
+ * @num_buffers: number of buffers to be released,  must be less than 8
+ *
+ * Return 0 for success, -EBUSY if the release command ring is not ready.
+ */
+static inline int qbman_swp_release(struct qbman_swp *s,
+				    const struct qbman_release_desc *d,
+				    const u64 *buffers,
+				    unsigned int num_buffers)
+{
+	return qbman_swp_release_ptr(s, d, buffers, num_buffers);
+}
+
+/**
+ * qbman_swp_pull() - Issue the pull dequeue command
+ * @s: the software portal object
+ * @d: the software portal descriptor which has been configured with
+ *     the set of qbman_pull_desc_set_*() calls
+ *
+ * Return 0 for success, and -EBUSY if the software portal is not ready
+ * to do pull dequeue.
+ */
+static inline int qbman_swp_pull(struct qbman_swp *s,
+				 struct qbman_pull_desc *d)
+{
+	return qbman_swp_pull_ptr(s, d);
+}
+
+/**
+ * qbman_swp_dqrr_next() - Get an valid DQRR entry
+ * @s: the software portal object
+ *
+ * Return NULL if there are no unconsumed DQRR entries. Return a DQRR entry
+ * only once, so repeated calls can return a sequence of DQRR entries, without
+ * requiring they be consumed immediately or in any particular order.
+ */
+static inline const struct dpaa2_dq *qbman_swp_dqrr_next(struct qbman_swp *s)
+{
+	return qbman_swp_dqrr_next_ptr(s);
+}
+
 #endif /* __FSL_QBMAN_PORTAL_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
