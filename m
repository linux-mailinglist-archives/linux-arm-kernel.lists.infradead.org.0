Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75B9B81F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NuXoIQUG9ZtDCSZ1p9lDAkd/4xqzvDqiFH2T1rQylg=; b=TApwgAOUju7k6g
	+T3CwGAXmeJ9ORStAFZlhRZZUR5Tacs71j/Q3I0P5eae2pqcCtLjnD+ej/ykoBvooJBh7WyOj0zBQ
	iYa7lTigYOLR1xWitDpmBWXqJeXVyiBN2IYXdWgrCDN4Er8fOjM1dX4jjCxpGn4WAkm9lz3fc+je9
	85mYCtk3St9jjxvPif0itrCNgxaERTgc9vRTsceYKkWROXq0llQI+XAav5bupII/OKWI35o5W5Yrb
	LHEwMOedNtc8ukvqQrJrWZWEx/N+pueHrUNscAGGoYtBZJFOj0Bnm376oeEL0QtT6mlsIEUe3lU6o
	fOWyafewcU3Vtu268rnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Wb-0000T7-T9; Thu, 19 Sep 2019 19:55:34 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2Ao-0002jj-MJ; Thu, 19 Sep 2019 19:33:04 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1C70C240006;
 Thu, 19 Sep 2019 19:32:59 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 35/40] mtd: nand: Add helpers to manage ECC engines and
 configurations
Date: Thu, 19 Sep 2019 21:31:35 +0200
Message-Id: <20190919193141.7865-36-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123303_340248_2CEC1AFE 
X-CRM114-Status: GOOD (  15.67  )
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

Add the logic in the NAND core to find the right ECC engine depending
on the NAND chip requirements and the user desires. Right now, the
choice may be made between (more will come):
* software Hamming
* software BCH
* on-die (SPI-NAND devices only)

Once the ECC engine has been found, the ECC engine must be
configured.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/core.c  | 124 +++++++++++++++++++++++++++++++++++++++
 include/linux/mtd/nand.h |   4 ++
 2 files changed, 128 insertions(+)

diff --git a/drivers/mtd/nand/core.c b/drivers/mtd/nand/core.c
index 0a2be5e6d669..062a65e131db 100644
--- a/drivers/mtd/nand/core.c
+++ b/drivers/mtd/nand/core.c
@@ -207,6 +207,130 @@ int nanddev_mtd_max_bad_blocks(struct mtd_info *mtd, loff_t offs, size_t len)
 }
 EXPORT_SYMBOL_GPL(nanddev_mtd_max_bad_blocks);
 
+/**
+ * nanddev_get_ecc_engine() - Find and get a suitable ECC engine
+ * @nand: NAND device
+ */
+static int nanddev_get_ecc_engine(struct nand_device *nand)
+{
+	int provider;
+
+	/* Read the user desires in terms of ECC engine/configuration */
+	nand_ecc_read_user_conf(nand);
+
+	provider = nand->ecc.user_conf.provider;
+	if (provider == NAND_INVALID_ECC_ENGINE)
+		provider = nand->ecc.defaults.provider;
+
+	switch (provider) {
+	case NAND_NO_ECC_ENGINE:
+		return 0;
+	case NAND_SOFT_ECC_ENGINE:
+		nand->ecc.engine = nand_ecc_get_sw_engine(nand);
+		break;
+	case NAND_ON_DIE_ECC_ENGINE:
+		nand->ecc.engine = nand_ecc_get_ondie_engine(nand);
+		break;
+	case NAND_HW_ECC_ENGINE:
+		pr_err("Hardware ECC engines not supported yet\n");
+		break;
+	default:
+		pr_err("Missing ECC engine provider\n");
+	}
+
+	if (!nand->ecc.engine)
+		return  -EINVAL;
+
+	return 0;
+}
+
+/**
+ * nanddev_put_ecc_engine() - Dettach and put the in-use ECC engine
+ * @nand: NAND device
+ */
+static int nanddev_put_ecc_engine(struct nand_device *nand)
+{
+	switch (nand->ecc.ctx.conf.provider) {
+	case NAND_HW_ECC_ENGINE:
+		pr_err("Hardware ECC engines not supported yet\n");
+		break;
+	case NAND_NO_ECC_ENGINE:
+	case NAND_SOFT_ECC_ENGINE:
+	case NAND_ON_DIE_ECC_ENGINE:
+	default:
+		break;
+	}
+
+	return 0;
+}
+
+/**
+ * nanddev_find_ecc_configuration() - Find a suitable ECC configuration
+ * @nand: NAND device
+ */
+static int nanddev_find_ecc_configuration(struct nand_device *nand)
+{
+	int ret;
+
+	if (!nand->ecc.engine)
+		return -ENOTSUPP;
+
+	ret = nand_ecc_init_ctx(nand);
+	if (ret)
+		return ret;
+
+	if (!nand_ecc_correction_is_enough(nand))
+		pr_warn("WARNING: %s: the ECC used on your system is too weak compared to the one required by the NAND chip\n",
+			nand->mtd.name);
+
+	return 0;
+}
+
+/**
+ * nanddev_ecc_engine_init() - Initialize an ECC engine for the chip
+ * @nand: NAND device
+ */
+int nanddev_ecc_engine_init(struct nand_device *nand)
+{
+	int ret;
+
+	/* Look for the ECC engine to use */
+	ret = nanddev_get_ecc_engine(nand);
+	if (ret) {
+		pr_err("No ECC engine found\n");
+		return ret;
+	}
+
+	/* No ECC engine requested */
+	if (!nand->ecc.engine)
+		return 0;
+
+	/* Configure the engine: balance user input and chip requirements */
+	ret = nanddev_find_ecc_configuration(nand);
+	if (ret) {
+		pr_err("No suitable ECC configuration\n");
+		nanddev_put_ecc_engine(nand);
+
+		return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nanddev_ecc_engine_init);
+
+/**
+ * nanddev_ecc_engine_cleanup() - Cleanup ECC engine initializations
+ * @nand: NAND device
+ */
+void nanddev_ecc_engine_cleanup(struct nand_device *nand)
+{
+	if (nand->ecc.engine)
+		nand_ecc_cleanup_ctx(nand);
+
+	nanddev_put_ecc_engine(nand);
+}
+EXPORT_SYMBOL_GPL(nanddev_ecc_engine_cleanup);
+
 /**
  * nanddev_init() - Initialize a NAND device
  * @nand: NAND device
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index b25d17ef9714..5a745f74eb35 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -858,6 +858,10 @@ bool nanddev_isreserved(struct nand_device *nand, const struct nand_pos *pos);
 int nanddev_erase(struct nand_device *nand, const struct nand_pos *pos);
 int nanddev_markbad(struct nand_device *nand, const struct nand_pos *pos);
 
+/* ECC related functions */
+int nanddev_ecc_engine_init(struct nand_device *nand);
+void nanddev_ecc_engine_cleanup(struct nand_device *nand);
+
 /* BBT related functions */
 enum nand_bbt_block_status {
 	NAND_BBT_BLOCK_STATUS_UNKNOWN,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
