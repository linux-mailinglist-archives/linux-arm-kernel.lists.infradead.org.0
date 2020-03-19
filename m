Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73F718BB5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bwbWiErjHR2UVy3LCGW9ut7IkG+c2ayZwRwYjPdhWig=; b=X7SplO4q9kI8JqD7LT0UFGFBfg
	qjJSku/pKuiUUb6DlG9XZ2QWaP5v8SLCDWVc4otzLoiwhWbPTFliPKJM+QHp2igAGOjPxkRXXcTlq
	6aRxskWfOejHJSkz/3O4KuPfIUe5Rlpv86LFo5z32+bz3nQtqRmQfXTiYtMs36by35Kicc8RBrMvb
	qwX3+NmuwkvEydzgA1mc4R7mJ2fgw48M5BEODpak8V/eSNKx38ByKIgPeRriPjKuqybtGYSt+DNAN
	CLHLjcEXozJnbi7Gdcx5OhKu4buSYHcxbVt3xkbAfSKCcalpYopMa/N7VrFTcfE3Z3Kp4rRuvL6xi
	Si2C8d7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExKF-0002WV-KY; Thu, 19 Mar 2020 15:43:15 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExIH-0000pd-AP
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:41:15 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D610C2000C4;
 Thu, 19 Mar 2020 16:41:11 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BE3712000C2;
 Thu, 19 Mar 2020 16:41:11 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 68504205C2;
 Thu, 19 Mar 2020 16:41:11 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org, laurentiu.tudor@nxp.com, stuyoder@gmail.com,
 leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
 bharatb.yadav@gmail.com
Subject: [PATCH 06/10] bus/fsl-mc: Add dprc-reset-container support
Date: Thu, 19 Mar 2020 17:40:47 +0200
Message-Id: <20200319154051.30609-7-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_084113_647870_49C2728F 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Bharat Bhushan <Bharat.Bhushan@nxp.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bharat Bhushan <Bharat.Bhushan@nxp.com>

DPRC reset is required by VFIO-mc in order to stop a device
to further generate DMA transactions.

Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc.c           | 41 +++++++++++++++++++++++++++++
 drivers/bus/fsl-mc/fsl-mc-private.h |  5 ++++
 include/linux/fsl/mc.h              |  5 ++++
 3 files changed, 51 insertions(+)

diff --git a/drivers/bus/fsl-mc/dprc.c b/drivers/bus/fsl-mc/dprc.c
index 602f030d84eb..5ae17fd957ba 100644
--- a/drivers/bus/fsl-mc/dprc.c
+++ b/drivers/bus/fsl-mc/dprc.c
@@ -72,6 +72,47 @@ int dprc_close(struct fsl_mc_io *mc_io,
 }
 EXPORT_SYMBOL_GPL(dprc_close);
 
+/**
+ * dprc_reset_container - Reset child container.
+ * @mc_io:	Pointer to MC portal's I/O object
+ * @cmd_flags:	Command flags; one or more of 'MC_CMD_FLAG_'
+ * @token:	Token of DPRC object
+ * @child_container_id:	ID of the container to reset
+ *
+ * In case a software context crashes or becomes non-responsive, the parent
+ * may wish to reset its resources container before the software context is
+ * restarted.
+ *
+ * This routine informs all objects assigned to the child container that the
+ * container is being reset, so they may perform any cleanup operations that are
+ * needed. All objects handles that were owned by the child container shall be
+ * closed.
+ *
+ * Note that such request may be submitted even if the child software context
+ * has not crashed, but the resulting object cleanup operations will not be
+ * aware of that.
+ *
+ * Return:	'0' on Success; Error code otherwise.
+ */
+int dprc_reset_container(struct fsl_mc_io *mc_io,
+			 u32 cmd_flags,
+			 u16 token,
+			 int child_container_id)
+{
+	struct fsl_mc_command cmd = { 0 };
+	struct dprc_cmd_reset_container *cmd_params;
+
+	/* prepare command */
+	cmd.header = mc_encode_cmd_header(DPRC_CMDID_RESET_CONT,
+					  cmd_flags, token);
+	cmd_params = (struct dprc_cmd_reset_container *)cmd.params;
+	cmd_params->child_container_id = cpu_to_le32(child_container_id);
+
+	/* send command to mc*/
+	return mc_send_command(mc_io, &cmd);
+}
+EXPORT_SYMBOL_GPL(dprc_reset_container);
+
 /**
  * dprc_set_irq() - Set IRQ information for the DPRC to trigger an interrupt.
  * @mc_io:	Pointer to MC portal's I/O object
diff --git a/drivers/bus/fsl-mc/fsl-mc-private.h b/drivers/bus/fsl-mc/fsl-mc-private.h
index 81b9a9b16698..66ccf7fb34af 100644
--- a/drivers/bus/fsl-mc/fsl-mc-private.h
+++ b/drivers/bus/fsl-mc/fsl-mc-private.h
@@ -92,6 +92,7 @@ int dpmcp_reset(struct fsl_mc_io *mc_io,
 #define DPRC_CMDID_GET_API_VERSION              DPRC_CMD(0xa05)
 
 #define DPRC_CMDID_GET_ATTR                     DPRC_CMD(0x004)
+#define DPRC_CMDID_RESET_CONT                   DPRC_CMD(0x005)
 
 #define DPRC_CMDID_SET_IRQ                      DPRC_CMD(0x010)
 #define DPRC_CMDID_SET_IRQ_ENABLE               DPRC_CMD(0x012)
@@ -112,6 +113,10 @@ struct dprc_cmd_open {
 	__le32 container_id;
 };
 
+struct dprc_cmd_reset_container {
+	__le32 child_container_id;
+};
+
 struct dprc_cmd_set_irq {
 	/* cmd word 0 */
 	__le32 irq_val;
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index f997f8091408..b9d5e5955adb 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -471,6 +471,11 @@ static inline bool is_fsl_mc_bus_dpseci(const struct fsl_mc_device *mc_dev)
 	return mc_dev->dev.type == &fsl_mc_bus_dpseci_type;
 }
 
+int dprc_reset_container(struct fsl_mc_io *mc_io,
+			 u32 cmd_flags,
+			 u16 token,
+			 int child_container_id);
+
 /*
  * Data Path Buffer Pool (DPBP) API
  * Contains initialization APIs and runtime control APIs for DPBP
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
