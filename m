Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A7D1C838F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YBdzEPwiMxhmqLkALSu0nV4FuX2dMArskAG8LdXtCuc=; b=CzLlfbDDShIxR5gqSVw9Ux48FK
	g/xndQWILiRdhd1I+bfkzKLXptS+73Imf272LdBzMUqKZg5pDumO1HoLXBYpquBZ7lCtPfTB4DBei
	lHfP/le1Zp16/G8S8Z0c7yvlhrH+JDWC1i6f9gg+yzhe8i0cqVEhgkwBjDOkioy1cSwYWnpnecLDk
	de1zQx+s3kPzr5DFBTL4kRpuYl2DaT6n7lq5ujn7aOj0laqoMd1DdOLusoFVCeVujqBPWVJYlhL5x
	M10VN3ls8DoMRORDVjhAeDVrDCdLpO4LmUXn6GPqmIIBPwqFpeR0lphDEOUodVELRSuVC1/GFziho
	s+bEV4Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWb4s-0001nN-3B; Thu, 07 May 2020 07:36:18 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWb4M-0001Y8-R1
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:35:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AABDB200F27;
 Thu,  7 May 2020 09:35:45 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9E03A200F10;
 Thu,  7 May 2020 09:35:45 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 47A58203C5;
 Thu,  7 May 2020 09:35:45 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/12] bus/fsl-mc: Add dprc-reset-container support
Date: Thu,  7 May 2020 10:34:25 +0300
Message-Id: <20200507073431.2710-7-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
References: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_003547_143356_01434770 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: stuyoder@gmail.com, gregkh@linuxfoundation.org, leoyang.li@nxp.com,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Bharat Bhushan <Bharat.Bhushan@nxp.com>, linux-arm-kernel@lists.infradead.org,
 laurentiu.tudor@nxp.com
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
 drivers/bus/fsl-mc/dprc.c           | 71 +++++++++++++++++++++++++++++
 drivers/bus/fsl-mc/fsl-mc-private.h |  7 +++
 include/linux/fsl/mc.h              |  7 +++
 3 files changed, 85 insertions(+)

diff --git a/drivers/bus/fsl-mc/dprc.c b/drivers/bus/fsl-mc/dprc.c
index 01bf41743efc..44bde72bdea7 100644
--- a/drivers/bus/fsl-mc/dprc.c
+++ b/drivers/bus/fsl-mc/dprc.c
@@ -80,6 +80,77 @@ int dprc_close(struct fsl_mc_io *mc_io,
 }
 EXPORT_SYMBOL_GPL(dprc_close);
 
+/**
+ * dprc_reset_container - Reset child container.
+ * @mc_io:	Pointer to MC portal's I/O object
+ * @cmd_flags:	Command flags; one or more of 'MC_CMD_FLAG_'
+ * @token:	Token of DPRC object
+ * @child_container_id:	ID of the container to reset
+ * @options: 32 bit options:
+ *   - 0 (no bits set) - all the objects inside the container are
+ *     reset. The child containers are entered recursively and the
+ *     objects reset. All the objects (including the child containers)
+ *     are closed.
+ *   - bit 0 set - all the objects inside the container are reset.
+ *     However the child containers are not entered recursively.
+ *     This option is supported for API versions >= 6.5
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
+			 int child_container_id,
+			 u32 options)
+{
+	struct fsl_mc_command cmd = { 0 };
+	struct dprc_cmd_reset_container *cmd_params;
+	u32 cmdid = DPRC_CMDID_RESET_CONT;
+	int err;
+
+	/**
+	 * If the DPRC object version was not yet cached, cache it now.
+	 * Otherwise use the already cached value.
+	 */
+	if (!dprc_major_ver && !dprc_minor_ver) {
+		err = dprc_get_api_version(mc_io, 0,
+				&dprc_major_ver,
+				&dprc_minor_ver);
+		if (err)
+			return err;
+	}
+
+	/**
+	 * MC API 6.5 introduced a new field in the command used to pass
+	 * some flags.
+	 * Bit 0 indicates that the child containers are not recursively reset.
+	 */
+	if (dprc_major_ver > 6 || (dprc_major_ver == 6 && dprc_minor_ver >= 5))
+		cmdid = DPRC_CMDID_RESET_CONT_V2;
+
+	/* prepare command */
+	cmd.header = mc_encode_cmd_header(cmdid, cmd_flags, token);
+	cmd_params = (struct dprc_cmd_reset_container *)cmd.params;
+	cmd_params->child_container_id = cpu_to_le32(child_container_id);
+	cmd_params->options = cpu_to_le32(options);
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
index c2a688c07ee2..fdd9e9aa6701 100644
--- a/drivers/bus/fsl-mc/fsl-mc-private.h
+++ b/drivers/bus/fsl-mc/fsl-mc-private.h
@@ -91,6 +91,8 @@ int dpmcp_reset(struct fsl_mc_io *mc_io,
 #define DPRC_CMDID_GET_API_VERSION              DPRC_CMD(0xa05)
 
 #define DPRC_CMDID_GET_ATTR                     DPRC_CMD(0x004)
+#define DPRC_CMDID_RESET_CONT                   DPRC_CMD(0x005)
+#define DPRC_CMDID_RESET_CONT_V2                DPRC_CMD_V2(0x005)
 
 #define DPRC_CMDID_SET_IRQ                      DPRC_CMD(0x010)
 #define DPRC_CMDID_SET_IRQ_ENABLE               DPRC_CMD(0x012)
@@ -111,6 +113,11 @@ struct dprc_cmd_open {
 	__le32 container_id;
 };
 
+struct dprc_cmd_reset_container {
+	__le32 child_container_id;
+	__le32 options;
+};
+
 struct dprc_cmd_set_irq {
 	/* cmd word 0 */
 	__le32 irq_val;
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index 4e9b570a1845..805a19516338 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -486,6 +486,13 @@ static inline bool is_fsl_mc_bus_dpseci(const struct fsl_mc_device *mc_dev)
 	return mc_dev->dev.type == &fsl_mc_bus_dpseci_type;
 }
 
+#define DPRC_RESET_OPTION_NON_RECURSIVE                0x00000001
+int dprc_reset_container(struct fsl_mc_io *mc_io,
+			 u32 cmd_flags,
+			 u16 token,
+			 int child_container_id,
+			 u32 options);
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
