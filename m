Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828B91E7191
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 02:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqlVH9YBuwaXiCSotUk35hxhovDd4m8JzZr8l3p6unc=; b=rsBOd87NGQX+pE
	qps2Rh+u4plGM5S+5+B1eG1vJncWwrKjNtBTNn+SEPP7kcK/m16MfR0XiK2C9UQoIVCirV8d5NhdG
	1T/cwV43hIf2Jd+NbLZcaZm/UKc3UY01P0F/ID6guNm6jmRjsNjDYrxZrnno2oHwqLchUU3AyZqsi
	qqXe80G3zz5SIB7JVhvwhLup8GJVzBX3H+xtownz3uvaZeKhIRuPeLHcvc/bTKXk88cmW/q//JrdE
	nrfV06S7qVOg0/ENr6ISdZCbPhw0LzMETa0UJHzvSuJj8TlX/qdgVAIoN+rXQU3ANr5kIB5LISjY8
	ryYwZchsjmFYj2Cu//IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeSyZ-0006w7-6e; Fri, 29 May 2020 00:34:19 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSqL-0006Dg-6O; Fri, 29 May 2020 00:25:51 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id EC12B200005;
 Fri, 29 May 2020 00:25:45 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v7 14/20] mtd: nand: Add more parameters to the nand_ecc_props
 structure
Date: Fri, 29 May 2020 02:25:11 +0200
Message-Id: <20200529002517.3546-15-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529002517.3546-1-miquel.raynal@bootlin.com>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_172549_513312_AFBFA493 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Julien Su <juliensu@mxic.com.tw>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prepare the migration to the generic ECC framework by adding more
fields to the nand_ecc_props structure which will be used widely to
describe different kind of ECC properties.

Doing this imposes to move the engine type, ECC placement and
algorithm enumerations in a shared place: nand.h.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 include/linux/mtd/nand.h    | 50 +++++++++++++++++++++++++++++++++++++
 include/linux/mtd/rawnand.h | 44 --------------------------------
 2 files changed, 50 insertions(+), 44 deletions(-)

diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 6add464fd18b..9aacdf9dc779 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -127,12 +127,62 @@ struct nand_page_io_req {
 	int mode;
 };
 
+/**
+ * enum nand_ecc_engine_type - NAND ECC engine type
+ * @NAND_ECC_ENGINE_TYPE_INVALID: Invalid value
+ * @NAND_ECC_ENGINE_TYPE_NONE: No ECC correction
+ * @NAND_ECC_ENGINE_TYPE_SOFT: Software ECC correction
+ * @NAND_ECC_ENGINE_TYPE_ON_HOST: On host hardware ECC correction
+ * @NAND_ECC_ENGINE_TYPE_ON_DIE: On chip hardware ECC correction
+ */
+enum nand_ecc_engine_type {
+	NAND_ECC_ENGINE_TYPE_INVALID,
+	NAND_ECC_ENGINE_TYPE_NONE,
+	NAND_ECC_ENGINE_TYPE_SOFT,
+	NAND_ECC_ENGINE_TYPE_ON_HOST,
+	NAND_ECC_ENGINE_TYPE_ON_DIE,
+};
+
+/**
+ * enum nand_ecc_placement - NAND ECC bytes placement
+ * @NAND_ECC_PLACEMENT_UNKNOWN: The actual position of the ECC bytes is unknown
+ * @NAND_ECC_PLACEMENT_OOB: The ECC bytes are located in the OOB area
+ * @NAND_ECC_PLACEMENT_INTERLEAVED: Syndrome layout, there are ECC bytes
+ *                                  interleaved with regular data in the main
+ *                                  area
+ */
+enum nand_ecc_placement {
+	NAND_ECC_PLACEMENT_UNKNOWN,
+	NAND_ECC_PLACEMENT_OOB,
+	NAND_ECC_PLACEMENT_INTERLEAVED,
+};
+
+/**
+ * enum nand_ecc_algo - NAND ECC algorithm
+ * @NAND_ECC_ALGO_UNKNOWN: Unknown algorithm
+ * @NAND_ECC_ALGO_HAMMING: Hamming algorithm
+ * @NAND_ECC_ALGO_BCH: Bose-Chaudhuri-Hocquenghem algorithm
+ * @NAND_ECC_ALGO_RS: Reed-Solomon algorithm
+ */
+enum nand_ecc_algo {
+	NAND_ECC_ALGO_UNKNOWN,
+	NAND_ECC_ALGO_HAMMING,
+	NAND_ECC_ALGO_BCH,
+	NAND_ECC_ALGO_RS,
+};
+
 /**
  * struct nand_ecc_props - NAND ECC properties
+ * @engine_type: ECC engine type
+ * @placement: OOB placement (if relevant)
+ * @algo: ECC algorithm (if relevant)
  * @strength: ECC strength
  * @step_size: Number of bytes per step
  */
 struct nand_ecc_props {
+	enum nand_ecc_engine_type engine_type;
+	enum nand_ecc_placement placement;
+	enum nand_ecc_algo algo;
 	unsigned int strength;
 	unsigned int step_size;
 };
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index c3411a08ce61..8f7f1cce3b4b 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -92,50 +92,6 @@ enum nand_ecc_mode {
 	NAND_ECC_ON_DIE,
 };
 
-/**
- * enum nand_ecc_engine_type - NAND ECC engine type
- * @NAND_ECC_ENGINE_TYPE_INVALID: Invalid value
- * @NAND_ECC_ENGINE_TYPE_NONE: No ECC correction
- * @NAND_ECC_ENGINE_TYPE_SOFT: Software ECC correction
- * @NAND_ECC_ENGINE_TYPE_ON_HOST: On host hardware ECC correction
- * @NAND_ECC_ENGINE_TYPE_ON_DIE: On chip hardware ECC correction
- */
-enum nand_ecc_engine_type {
-	NAND_ECC_ENGINE_TYPE_INVALID,
-	NAND_ECC_ENGINE_TYPE_NONE,
-	NAND_ECC_ENGINE_TYPE_SOFT,
-	NAND_ECC_ENGINE_TYPE_ON_HOST,
-	NAND_ECC_ENGINE_TYPE_ON_DIE,
-};
-
-/**
- * enum nand_ecc_placement - NAND ECC bytes placement
- * @NAND_ECC_PLACEMENT_UNKNOWN: The actual position of the ECC bytes is unknown
- * @NAND_ECC_PLACEMENT_OOB: The ECC bytes are located in the OOB area
- * @NAND_ECC_PLACEMENT_INTERLEAVED: Syndrome layout, there are ECC bytes
- *                                  interleaved with regular data in the main
- *                                  area
- */
-enum nand_ecc_placement {
-	NAND_ECC_PLACEMENT_UNKNOWN,
-	NAND_ECC_PLACEMENT_OOB,
-	NAND_ECC_PLACEMENT_INTERLEAVED,
-};
-
-/**
- * enum nand_ecc_algo - NAND ECC algorithm
- * @NAND_ECC_ALGO_UNKNOWN: Unknown algorithm
- * @NAND_ECC_ALGO_HAMMING: Hamming algorithm
- * @NAND_ECC_ALGO_BCH: Bose-Chaudhuri-Hocquenghem algorithm
- * @NAND_ECC_ALGO_RS: Reed-Solomon algorithm
- */
-enum nand_ecc_algo {
-	NAND_ECC_ALGO_UNKNOWN,
-	NAND_ECC_ALGO_HAMMING,
-	NAND_ECC_ALGO_BCH,
-	NAND_ECC_ALGO_RS,
-};
-
 /*
  * Constants for Hardware ECC
  */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
