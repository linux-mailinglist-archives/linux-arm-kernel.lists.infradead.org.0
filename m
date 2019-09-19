Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15910B81CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggnni5zpYiXlQa+i5950h9/aMJsJtysc/UyoO0ljaoI=; b=TVETxYCUnhyh2d
	bH8uDJeVxMiJzQjw3K/Z55FmDURqBmvI17WZJ3yrHUINrAA+fF39Qo2jha3g3M8Tk2kpPKIvRc9si
	1+6WeW1c5C6ipBFVh8DrpIVGiNY8meF7z8ijqLMyKi8M9lCtVKbParqXPHV9v3ax9o6v3yAC5ZsK5
	DqQUpyiMcGCvAjjtzvakEYjKz11lsokPTg3Br1hGtYHkrLujezyZAT/OAR0tBxFiKHrPnf1NL9KQK
	ajON0mqWvx0DCycXMcQ8CoIt1nvuqzoGoGpLHgqhZ7hTOQgxnaGT9jWJbrj5sRinEempd9nPNi3aJ
	oq7UfAHfXPrTCVcdy0ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2T1-00048J-CE; Thu, 19 Sep 2019 19:51:51 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2AY-0002aE-SN; Thu, 19 Sep 2019 19:32:48 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 40D9C240009;
 Thu, 19 Sep 2019 19:32:43 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 28/40] mtd: nand: Let software ECC engines be retrieved
 from the NAND core
Date: Thu, 19 Sep 2019 21:31:28 +0200
Message-Id: <20190919193141.7865-29-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123247_311272_D313DA34 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before making use of the ECC engines, we must retrieve them. Add the
boilerplate for the ones already available: software engines (Hamming
and BCH).

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/ecc.c                  | 20 ++++++++++++++++++++
 include/linux/mtd/nand-ecc-sw-bch.h     |  3 +++
 include/linux/mtd/nand-ecc-sw-hamming.h |  3 +++
 include/linux/mtd/nand.h                |  3 +++
 4 files changed, 29 insertions(+)

diff --git a/drivers/mtd/nand/ecc.c b/drivers/mtd/nand/ecc.c
index 8e7859355a10..da3aa2379b94 100644
--- a/drivers/mtd/nand/ecc.c
+++ b/drivers/mtd/nand/ecc.c
@@ -480,6 +480,26 @@ bool nand_ecc_correction_is_enough(struct nand_device *nand)
 }
 EXPORT_SYMBOL(nand_ecc_correction_is_enough);
 
+struct nand_ecc_engine *nand_ecc_get_sw_engine(struct nand_device *nand)
+{
+	unsigned int algo = nand->ecc.user_conf.algo;
+
+	if (algo == NAND_ECC_UNKNOWN)
+		algo = nand->ecc.defaults.algo;
+
+	switch (algo) {
+	case NAND_ECC_HAMMING:
+		return nand_ecc_sw_hamming_get_engine();
+	case NAND_ECC_BCH:
+		return nand_ecc_sw_bch_get_engine();
+	default:
+		break;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(nand_ecc_get_sw_engine);
+
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Miquel Raynal <miquel.raynal@bootlin.com>");
 MODULE_DESCRIPTION("Generic ECC engine");
diff --git a/include/linux/mtd/nand-ecc-sw-bch.h b/include/linux/mtd/nand-ecc-sw-bch.h
index eec5373a2423..3c0cf42b7a1d 100644
--- a/include/linux/mtd/nand-ecc-sw-bch.h
+++ b/include/linux/mtd/nand-ecc-sw-bch.h
@@ -11,6 +11,9 @@
 #include <linux/mtd/nand.h>
 #include <linux/bch.h>
 
+/* Needed for cross inclusion with nand.h */
+struct nand_device;
+
 /**
  * struct nand_ecc_sw_bch_conf - private software BCH ECC engine structure
  * @reqooblen: Save the actual user OOB length requested before overwriting it
diff --git a/include/linux/mtd/nand-ecc-sw-hamming.h b/include/linux/mtd/nand-ecc-sw-hamming.h
index 3ae51bd2e2ab..d79a72393ef4 100644
--- a/include/linux/mtd/nand-ecc-sw-hamming.h
+++ b/include/linux/mtd/nand-ecc-sw-hamming.h
@@ -12,6 +12,9 @@
 
 #include <linux/mtd/nand.h>
 
+/* Needed for cross inclusion with nand.h */
+struct nand_device;
+
 /**
  * struct nand_ecc_sw_hamming_conf - private software Hamming ECC engine structure
  * @reqooblen: Save the actual user OOB length requested before overwriting it
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 9d7b62933cc1..b410ef778e52 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -11,6 +11,8 @@
 #define __LINUX_MTD_NAND_H
 
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/nand-ecc-sw-hamming.h>
+#include <linux/mtd/nand-ecc-sw-bch.h>
 
 struct nand_device;
 
@@ -270,6 +272,7 @@ int nand_ecc_prepare_io_req(struct nand_device *nand,
 int nand_ecc_finish_io_req(struct nand_device *nand,
 			   struct nand_page_io_req *req, void *oobbuf);
 bool nand_ecc_correction_is_enough(struct nand_device *nand);
+struct nand_ecc_engine *nand_ecc_get_sw_engine(struct nand_device *nand);
 
 /**
  * struct nand_ecc - High-level ECC object
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
