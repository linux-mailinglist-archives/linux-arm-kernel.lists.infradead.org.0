Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BAA1E718C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 02:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7cqe7QCU2u5HKibEhYRGrXLbRefIL61EaZARz/pg9Q=; b=bBeBfPWITKUHWn
	nra0Umb5JV55tjQ06pxkBV9jk2X+S1677jR6uV76jcCD7gTKK9K3F6iW7vk371t4vdWEjg8YCCSyW
	5IWwvmkgTBIVo4n06ZzLQi6xiuJad/7sepPz8dqH9IIRZtoYS4JHH57kQ6nR7rCKcMT1DK48Mmq77
	tWeozw+A/XKbJNXSnE7gf1P0GFdAjxniOb+RxjVrxV28jkfu8KPrtgER1iPFQibDYdHdyD832dD+Y
	p0xVD5qQ3iU98GMdy9dOdTuU24Uo+YydMIlrRwepjMZEDh6G3y6TrG7NOEuf8lzhQSiTm5lIMkS/7
	e81iwqH6VqoSqhaZt/mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeSxR-0005yH-NT; Fri, 29 May 2020 00:33:09 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSqJ-0006CX-LO; Fri, 29 May 2020 00:25:49 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 3F9C4200002;
 Fri, 29 May 2020 00:25:44 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v7 13/20] mtd: nand: Rename a core structure
Date: Fri, 29 May 2020 02:25:10 +0200
Message-Id: <20200529002517.3546-14-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529002517.3546-1-miquel.raynal@bootlin.com>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_172547_842983_B5FC53D4 
X-CRM114-Status: GOOD (  11.03  )
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

Prepare the migration to a generic ECC engine by renaming the
nand_ecc_req structure into nand_ecc_props. This structure will be the
base of a wider 'nand_ecc' structure.

In nand_device, these properties are still named "eccreq" even if
"eccprops" might be more descriptive. This is just a transition step,
this field is being replaced very soon by a much wider structure. The
impact of renaming this field would be huge compared to its interest.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 include/linux/mtd/nand.h    | 8 ++++----
 include/linux/mtd/spinand.h | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 60d158e183ce..6add464fd18b 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -128,11 +128,11 @@ struct nand_page_io_req {
 };
 
 /**
- * struct nand_ecc_req - NAND ECC requirements
+ * struct nand_ecc_props - NAND ECC properties
  * @strength: ECC strength
- * @step_size: ECC step/block size
+ * @step_size: Number of bytes per step
  */
-struct nand_ecc_req {
+struct nand_ecc_props {
 	unsigned int strength;
 	unsigned int step_size;
 };
@@ -191,7 +191,7 @@ struct nand_ops {
 struct nand_device {
 	struct mtd_info mtd;
 	struct nand_memory_organization memorg;
-	struct nand_ecc_req eccreq;
+	struct nand_ecc_props eccreq;
 	struct nand_row_converter rowconv;
 	struct nand_bbt bbt;
 	const struct nand_ops *ops;
diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
index 1077c45721ff..7b78c4ba9b3e 100644
--- a/include/linux/mtd/spinand.h
+++ b/include/linux/mtd/spinand.h
@@ -309,7 +309,7 @@ struct spinand_info {
 	struct spinand_devid devid;
 	u32 flags;
 	struct nand_memory_organization memorg;
-	struct nand_ecc_req eccreq;
+	struct nand_ecc_props eccreq;
 	struct spinand_ecc_info eccinfo;
 	struct {
 		const struct spinand_op_variants *read_cache;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
