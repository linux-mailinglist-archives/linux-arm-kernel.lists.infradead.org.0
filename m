Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B910214A2D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ljVymqdYzWGbcC0kkV2BjMRaXQOFxnkbMGZNBD1r10Y=; b=sFf
	MOjiFrWZtWU6f+j0QPoogxTimTH0r+ZPun2nYRdXYTH1vjytIrzUcU+N0jYdQneNSOZ+xXYsvmQxp
	C2f9aTEa15fdMaMWRaYK0dckeXipZqPJcaDyyTETDF3zVq7VcnlLLhh0whCQBnfvEGkidsZjtiEfz
	rfiqt0ZnFwI0dbHsU8GKZ2aH160SFgDXQg9brps1DwWRzAC5Ab+pJ3iVIuPL8nTdabyk0GyappFNT
	j8pQ2E8ZR4j6N3zNOo3xYvg7h4dwIVIOSRSFx6rqsba+aA0gviDSNRE2uO20PmptxnhMsfzXU27ic
	m8KZz4RjcVzjVbiUB8U2Ve5DxEQCgYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2OF-0003cc-BV; Mon, 27 Jan 2020 11:17:11 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2O5-0003bG-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:17:03 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 02C5D1B6B0D;
 Mon, 27 Jan 2020 12:16:58 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E9BCA1B6B02;
 Mon, 27 Jan 2020 12:16:57 +0100 (CET)
Received: from lorenz.ea.freescale.net (lorenz.ea.freescale.net [10.171.71.5])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 9BC92205C6;
 Mon, 27 Jan 2020 12:16:57 +0100 (CET)
From: Andrei Botila <andrei.botila@nxp.com>
To: Stuart Yoder <stuyoder@gmail.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH] bus: fsl-mc: add api to retrieve mc version
Date: Mon, 27 Jan 2020 13:16:01 +0200
Message-Id: <1580123761-19536-1-git-send-email-andrei.botila@nxp.com>
X-Mailer: git-send-email 2.1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_031701_619338_8D613631 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Andrei Botila <andrei.botila@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new api that returns Management Complex firmware version
and make the required structure public. The api's first user will be
the caam driver for setting prediction resistance bits.

Signed-off-by: Andrei Botila <andrei.botila@nxp.com>
---
 drivers/bus/fsl-mc/fsl-mc-bus.c | 33 +++++++++++++++++----------------
 include/linux/fsl/mc.h          | 16 ++++++++++++++++
 2 files changed, 33 insertions(+), 16 deletions(-)

diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index a07cc19becdb..330c76181604 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -26,6 +26,8 @@
  */
 #define FSL_MC_DEFAULT_DMA_MASK	(~0ULL)
 
+static struct fsl_mc_version mc_version;
+
 /**
  * struct fsl_mc - Private data of a "fsl,qoriq-mc" platform device
  * @root_mc_bus_dev: fsl-mc device representing the root DPRC
@@ -54,20 +56,6 @@ struct fsl_mc_addr_translation_range {
 	phys_addr_t start_phys_addr;
 };
 
-/**
- * struct mc_version
- * @major: Major version number: incremented on API compatibility changes
- * @minor: Minor version number: incremented on API additions (that are
- *		backward compatible); reset when major version is incremented
- * @revision: Internal revision number: incremented on implementation changes
- *		and/or bug fixes that have no impact on API
- */
-struct mc_version {
-	u32 major;
-	u32 minor;
-	u32 revision;
-};
-
 /**
  * fsl_mc_bus_match - device to driver matching callback
  * @dev: the fsl-mc device to match against
@@ -338,7 +326,7 @@ EXPORT_SYMBOL_GPL(fsl_mc_driver_unregister);
  */
 static int mc_get_version(struct fsl_mc_io *mc_io,
 			  u32 cmd_flags,
-			  struct mc_version *mc_ver_info)
+			  struct fsl_mc_version *mc_ver_info)
 {
 	struct fsl_mc_command cmd = { 0 };
 	struct dpmng_rsp_get_version *rsp_params;
@@ -363,6 +351,20 @@ static int mc_get_version(struct fsl_mc_io *mc_io,
 	return 0;
 }
 
+/**
+ * fsl_mc_get_version - function to retrieve the MC f/w version information
+ *
+ * Return:	mc version when called after fsl-mc-bus probe; NULL otherwise.
+ */
+struct fsl_mc_version *fsl_mc_get_version(void)
+{
+	if (mc_version.major)
+		return &mc_version;
+
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(fsl_mc_get_version);
+
 /**
  * fsl_mc_get_root_dprc - function to traverse to the root dprc
  */
@@ -862,7 +864,6 @@ static int fsl_mc_bus_probe(struct platform_device *pdev)
 	int container_id;
 	phys_addr_t mc_portal_phys_addr;
 	u32 mc_portal_size;
-	struct mc_version mc_version;
 	struct resource res;
 
 	mc = devm_kzalloc(&pdev->dev, sizeof(*mc), GFP_KERNEL);
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index 54d9436600c7..2b5f8366dbe1 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -381,6 +381,22 @@ int __must_check __fsl_mc_driver_register(struct fsl_mc_driver *fsl_mc_driver,
 
 void fsl_mc_driver_unregister(struct fsl_mc_driver *driver);
 
+/**
+ * struct fsl_mc_version
+ * @major: Major version number: incremented on API compatibility changes
+ * @minor: Minor version number: incremented on API additions (that are
+ *		backward compatible); reset when major version is incremented
+ * @revision: Internal revision number: incremented on implementation changes
+ *		and/or bug fixes that have no impact on API
+ */
+struct fsl_mc_version {
+	u32 major;
+	u32 minor;
+	u32 revision;
+};
+
+struct fsl_mc_version *fsl_mc_get_version(void);
+
 int __must_check fsl_mc_portal_allocate(struct fsl_mc_device *mc_dev,
 					u16 mc_io_flags,
 					struct fsl_mc_io **new_mc_io);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
