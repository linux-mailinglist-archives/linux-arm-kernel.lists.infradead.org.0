Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB9E1C839E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6Ukruikt/JKfYkdXOFsQ96I8WeImkFda4fUh6Z9JSx0=; b=j9oB1mM+3hGT7vN/ZlUx32zkwo
	iLSnCquuaryPWs6k6h6VZrD0RVd0jIRRKEDwbTtrd8LH3hDO/reEMyqTc1bpozFrF74pUFvBhiYoC
	Ao8HGC4LR2UPgo9xlpwqL47B/Gczam6oF/Hx3hojjV+GeWDOuwiSPf6FlnDAR9mIkJ+1WE9mq9Eno
	adozai8N3Am2Msvl2lpRbqWOAp8OAd9CrMJ1QB4S0ElktMkG8CHZw4jxQ4S2ELSbiW2WrZiZ017lT
	t2HTU+btHi08nlmVyzUXMg+8VJ9zTJgSBY332MQsy9cv790MOY9RmWBWM+C6rVBcJWcq/8UuSb35B
	Af2GUrqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWb6t-0003lb-Oh; Thu, 07 May 2020 07:38:23 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWb4Q-0001b2-2O
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:35:52 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0F404201783;
 Thu,  7 May 2020 09:35:48 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 02F18201782;
 Thu,  7 May 2020 09:35:48 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A11E3203C5;
 Thu,  7 May 2020 09:35:47 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 12/12] bus/fsl-mc: Extend ICID size from 16bit to 32bit
Date: Thu,  7 May 2020 10:34:31 +0300
Message-Id: <20200507073431.2710-13-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
References: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_003550_280133_4E80D8F3 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
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

In virtual machines the device-id range is defined
between 0x10000-0x20000. The reason for using such a
large range is to avoid overlapping with the PCI range.

Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc.c           | 2 +-
 drivers/bus/fsl-mc/fsl-mc-bus.c     | 2 +-
 drivers/bus/fsl-mc/fsl-mc-private.h | 5 ++---
 include/linux/fsl/mc.h              | 2 +-
 4 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc.c b/drivers/bus/fsl-mc/dprc.c
index 44bde72bdea7..3f08752c2c19 100644
--- a/drivers/bus/fsl-mc/dprc.c
+++ b/drivers/bus/fsl-mc/dprc.c
@@ -360,7 +360,7 @@ int dprc_get_attributes(struct fsl_mc_io *mc_io,
 	/* retrieve response parameters */
 	rsp_params = (struct dprc_rsp_get_attributes *)cmd.params;
 	attr->container_id = le32_to_cpu(rsp_params->container_id);
-	attr->icid = le16_to_cpu(rsp_params->icid);
+	attr->icid = le32_to_cpu(rsp_params->icid);
 	attr->options = le32_to_cpu(rsp_params->options);
 	attr->portal_id = le32_to_cpu(rsp_params->portal_id);
 
diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index bf4f01ddf846..f44a5e9d0c4a 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -461,7 +461,7 @@ static int get_dprc_attr(struct fsl_mc_io *mc_io,
 }
 
 static int get_dprc_icid(struct fsl_mc_io *mc_io,
-			 int container_id, u16 *icid)
+			 int container_id, u32 *icid)
 {
 	struct dprc_attributes attr;
 	int error;
diff --git a/drivers/bus/fsl-mc/fsl-mc-private.h b/drivers/bus/fsl-mc/fsl-mc-private.h
index 48255e8944bd..e6fcff12c68d 100644
--- a/drivers/bus/fsl-mc/fsl-mc-private.h
+++ b/drivers/bus/fsl-mc/fsl-mc-private.h
@@ -159,8 +159,7 @@ struct dprc_cmd_clear_irq_status {
 struct dprc_rsp_get_attributes {
 	/* response word 0 */
 	__le32 container_id;
-	__le16 icid;
-	__le16 pad;
+	__le32 icid;
 	/* response word 1 */
 	__le32 options;
 	__le32 portal_id;
@@ -337,7 +336,7 @@ int dprc_clear_irq_status(struct fsl_mc_io *mc_io,
  */
 struct dprc_attributes {
 	int container_id;
-	u16 icid;
+	u32 icid;
 	int portal_id;
 	u64 options;
 };
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index 648ad06f58eb..10637590460c 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -187,7 +187,7 @@ struct fsl_mc_device {
 	struct device dev;
 	u64 dma_mask;
 	u16 flags;
-	u16 icid;
+	u32 icid;
 	u16 mc_handle;
 	struct fsl_mc_io *mc_io;
 	struct fsl_mc_obj_desc obj_desc;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
