Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8C3B81BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPzDX8HzreQEIY3QMQrtmgpwBtK1Bq2nMPE+ab7yrpo=; b=T1YQfDNeWU+vJZ
	lp/tpDHxm6lUfDToOFcd3FmBjA/OiPaEHEeGDP48foiR+b8z3O2e8toIxbvIPQB90gFt/jnu7cidI
	sOCnXGTfJmx7L7FpnuncKwZrqTO2abjhJjDeYTNxPslmilMiQQ1IgJ3TuVKxf3g8geSWcRvQbsy66
	8299n2A7XeTtd8dLoWLGuNZHLnMaJbAXTybVnMfGcxyuELzMGucCn20F3FsKkX2xbc81j8kt4wyY6
	A75a5wBfZNH5rgxPLPbsYIRY2h0FExvYx/g8OqqaOulUQs9dcPGw7ViwJhbdaYBYG3cZS+rM2cvNx
	vbErGAjs7yIK+qEo4lXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Rh-0002k0-Oz; Thu, 19 Sep 2019 19:50:29 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2AS-0002Wc-Pr; Thu, 19 Sep 2019 19:32:44 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 644DC240003;
 Thu, 19 Sep 2019 19:32:37 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 25/40] mtd: nand: ecc: Let the software Hamming ECC engine
 be unselected
Date: Thu, 19 Sep 2019 21:31:25 +0200
Message-Id: <20190919193141.7865-26-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123242_706831_040ECCC8 
X-CRM114-Status: GOOD (  13.98  )
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

There is no reason to always embed the software Hamming ECC engine
implementation. By default it is (with raw NAND), but we can let the
user decide.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/Kconfig                | 11 +++++++-
 drivers/mtd/nand/raw/Kconfig            |  2 +-
 include/linux/mtd/nand-ecc-sw-hamming.h | 36 +++++++++++++++++++++++++
 3 files changed, 47 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 04eaed7b6ab5..ebd2a4f7ec48 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -15,7 +15,16 @@ config MTD_NAND_ECC
 	bool
 
 config MTD_NAND_ECC_SW_HAMMING
-	bool
+	bool "Software Hamming ECC engine"
+	default y if MTD_RAW_NAND
+	select MTD_NAND_ECC
+	help
+	  This enables support for software Hamming error
+	  correction. This correction can correct up to 1 bit error
+	  per chunk and detect up to 2 bit errors. While it used to be
+	  widely used with old parts, newer NAND chips usually require
+	  more strength correction and in this case BCH or RS will be
+	  preferred.
 
 config MTD_NAND_ECC_SW_HAMMING_SMC
 	bool "NAND ECC Smart Media byte order"
diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index fd98860be20f..5c502e80d79e 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -3,7 +3,6 @@ menuconfig MTD_RAW_NAND
 	tristate "Raw/Parallel NAND Device Support"
 	select MTD_NAND_CORE
 	select MTD_NAND_ECC
-	select MTD_NAND_ECC_SW_HAMMING
 	help
 	  This enables support for accessing all type of raw/parallel
 	  NAND flash devices. For further information see
@@ -72,6 +71,7 @@ config MTD_NAND_AU1550
 config MTD_NAND_NDFC
 	tristate "IBM/MCC 4xx NAND controller"
 	depends on 4xx
+	select MTD_NAND_ECC_SW_HAMMING
 	select MTD_NAND_ECC_SW_HAMMING_SMC
 	help
 	  NDFC Nand Flash Controllers are integrated in IBM/AMCC's 4xx SoCs
diff --git a/include/linux/mtd/nand-ecc-sw-hamming.h b/include/linux/mtd/nand-ecc-sw-hamming.h
index aed46e43d2f6..9de80d324cfa 100644
--- a/include/linux/mtd/nand-ecc-sw-hamming.h
+++ b/include/linux/mtd/nand-ecc-sw-hamming.h
@@ -30,6 +30,8 @@ struct nand_ecc_sw_hamming_conf {
 	unsigned int sm_order;
 };
 
+#if IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING)
+
 int ecc_sw_hamming_calculate(const unsigned char *buf, unsigned int step_size,
 			     unsigned char *code, bool sm_order);
 int nand_ecc_sw_hamming_calculate(struct nand_device *nand,
@@ -42,4 +44,38 @@ int nand_ecc_sw_hamming_correct(struct nand_device *nand, unsigned char *buf,
 				unsigned char *read_ecc,
 				unsigned char *calc_ecc);
 
+#else /* !CONFIG_MTD_NAND_ECC_SW_HAMMING */
+
+static inline int ecc_sw_hamming_calculate(const unsigned char *buf,
+					   unsigned int step_size,
+					   unsigned char *code, bool sm_order)
+{
+	return -ENOTSUPP;
+}
+
+static inline int nand_ecc_sw_hamming_calculate(struct nand_device *nand,
+						const unsigned char *buf,
+						unsigned char *code)
+{
+	return -ENOTSUPP;
+}
+
+static inline int ecc_sw_hamming_correct(unsigned char *buf,
+					 unsigned char *read_ecc,
+					 unsigned char *calc_ecc,
+					 unsigned int step_size, bool sm_order)
+{
+	return -ENOTSUPP;
+}
+
+static inline int nand_ecc_sw_hamming_correct(struct nand_device *nand,
+					      unsigned char *buf,
+					      unsigned char *read_ecc,
+					      unsigned char *calc_ecc)
+{
+	return -ENOTSUPP;
+}
+
+#endif /* CONFIG_MTD_NAND_ECC_SW_HAMMING */
+
 #endif /* __MTD_NAND_ECC_SW_HAMMING_H__ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
