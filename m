Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCB01E5E5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 13:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZk4LBwEyS1uwQdTXWZ4lgdXyF9MHLF/ybqqjvtXvg4=; b=vCCw5jKGuK8iOR
	eqDwHiI8T0o55AxqOh489M/60Ow/Q+WF9YuZ9GTyuhW+FqMyiC+007Zky6YnrPq6MbtyAJEf/iyke
	nMU93Pt36/84VoMB8ZrDi+eadkErp0td3kJee/7wDgsEJKbfUGgLRbg0k5xU/AJFuRf+bxeZ73fKh
	Sa3eoyU9SkfRfTn3U05AEyVF7E6jCdWdzBsqlv0xWHl6qEHGZzpACI3p3BQVSgVjg3jSGCdnDQXHf
	X7WJ+v5zxyekla/KasqgN2D16Hc7Fw02ElvbgOrqOqQ1999kV7O7FxwtZmFIBmvIxlRkLhG3mGdFB
	to/RsFdqjZjQGORzbnjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeGmq-0002cV-Mk; Thu, 28 May 2020 11:33:24 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeGkv-0001Nf-3L; Thu, 28 May 2020 11:31:26 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id AEFB9200007;
 Thu, 28 May 2020 11:31:21 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v6 02/18] mtd: rawnand: Create a new enumeration to describe
 OOB placement
Date: Thu, 28 May 2020 13:30:57 +0200
Message-Id: <20200528113113.9166-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528113113.9166-1-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_043125_271115_37D76558 
X-CRM114-Status: GOOD (  10.51  )
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

There is currently a confusion between the ECC type/mode/provider
(eg. on-host, software, on-die or none) and the ECC bytes placement.

Create a new enumeration to describe this placement.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c |  5 +++++
 include/linux/mtd/rawnand.h      | 14 ++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index bd3f5a875e39..4d2d444f9db9 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5018,6 +5018,11 @@ static const char * const nand_ecc_modes[] = {
 	[NAND_ECC_ON_DIE]	= "on-die",
 };
 
+static const char * const nand_ecc_placement[] = {
+	[NAND_ECC_PLACEMENT_OOB] = "oob",
+	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
+};
+
 static int of_get_nand_ecc_mode(struct device_node *np)
 {
 	const char *pm;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 65b1c1c18b41..5e014807e050 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -92,6 +92,20 @@ enum nand_ecc_mode {
 	NAND_ECC_ON_DIE,
 };
 
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
 enum nand_ecc_algo {
 	NAND_ECC_UNKNOWN,
 	NAND_ECC_HAMMING,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
