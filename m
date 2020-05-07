Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F891C839B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nuFbZquliqgiOr4IuHfFdJLWQlL7kKRzdNHEwC06GY8=; b=IAwcWahDThp5bsXeK5GNoTIKZq
	BPm9t7QpOllBgPprtbO8/TRLL+llhR0pG7xx2B1roY2a5VYSrutk33d98viYIGlIkdVWiJHdttKi+
	xtZNyyPoZ9cfef0/6X8lR6XGifPhR2A1A6yWu/7CRLIao5oCV8bSZLRJVrOfmLViOPntyA2BGLL0z
	sfbSuWDkvVbCfSEypwV+CyYiN81kHVTDTqNLzfLzIgCq1XjXpJYg6juiJLd86hItNHkJlaidZkw8H
	uUcBxDuZKQw3rKcen5d0go6IOfWy3l+/3jCdMpWqePxGRK9LQTjB/H83B7hyeR2vusWPBO0gfNKxt
	qVGPvsqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWb65-0002yX-RF; Thu, 07 May 2020 07:37:33 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWb4N-0001Y7-QI
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:35:51 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 44E7B1A0FDA;
 Thu,  7 May 2020 09:35:45 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 38AE81A0F14;
 Thu,  7 May 2020 09:35:45 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E558B203C5;
 Thu,  7 May 2020 09:35:44 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 05/12] bus/fsl-mc: Cache the DPRC API version
Date: Thu,  7 May 2020 10:34:24 +0300
Message-Id: <20200507073431.2710-6-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
References: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_003548_123356_AAE1F82A 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 linux-arm-kernel@lists.infradead.org, laurentiu.tudor@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are already firmware API commands that have multiple
versions. For each multiple version command, another command
to retrieve the API version is issued. This may introduce an important
overhead. The version does not change while the system is running,
so the DPRC API version can be safely cached.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc.c b/drivers/bus/fsl-mc/dprc.c
index 602f030d84eb..01bf41743efc 100644
--- a/drivers/bus/fsl-mc/dprc.c
+++ b/drivers/bus/fsl-mc/dprc.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
 /*
  * Copyright 2013-2016 Freescale Semiconductor Inc.
+ * Copyright 2020 NXP
  *
  */
 #include <linux/kernel.h>
@@ -8,6 +9,13 @@
 
 #include "fsl-mc-private.h"
 
+/**
+ * cache the DPRC version to reduce the number of commands
+ * towards the mc firmware
+ */
+static u16 dprc_major_ver;
+static u16 dprc_minor_ver;
+
 /**
  * dprc_open() - Open DPRC object for use
  * @mc_io:	Pointer to MC portal's I/O object
@@ -443,15 +451,19 @@ int dprc_get_obj_region(struct fsl_mc_io *mc_io,
 	struct fsl_mc_command cmd = { 0 };
 	struct dprc_cmd_get_obj_region *cmd_params;
 	struct dprc_rsp_get_obj_region *rsp_params;
-	u16 major_ver, minor_ver;
 	int err;
 
-	/* prepare command */
-	err = dprc_get_api_version(mc_io, 0,
-				     &major_ver,
-				     &minor_ver);
-	if (err)
-		return err;
+    /**
+     * If the DPRC object version was not yet cached, cache it now.
+     * Otherwise use the already cached value.
+     */
+	if (!dprc_major_ver && !dprc_minor_ver) {
+		err = dprc_get_api_version(mc_io, 0,
+				      &dprc_major_ver,
+				      &dprc_minor_ver);
+		if (err)
+			return err;
+	}
 
 	/**
 	 * MC API version 6.3 introduced a new field to the region
@@ -459,7 +471,7 @@ int dprc_get_obj_region(struct fsl_mc_io *mc_io,
 	 * address is set to zero to indicate it needs to be obtained elsewhere
 	 * (typically the device tree).
 	 */
-	if (major_ver > 6 || (major_ver == 6 && minor_ver >= 3))
+	if (dprc_major_ver > 6 || (dprc_major_ver == 6 && dprc_minor_ver >= 3))
 		cmd.header =
 			mc_encode_cmd_header(DPRC_CMDID_GET_OBJ_REG_V2,
 					     cmd_flags, token);
@@ -483,7 +495,7 @@ int dprc_get_obj_region(struct fsl_mc_io *mc_io,
 	rsp_params = (struct dprc_rsp_get_obj_region *)cmd.params;
 	region_desc->base_offset = le64_to_cpu(rsp_params->base_offset);
 	region_desc->size = le32_to_cpu(rsp_params->size);
-	if (major_ver > 6 || (major_ver == 6 && minor_ver >= 3))
+	if (dprc_major_ver > 6 || (dprc_major_ver == 6 && dprc_minor_ver >= 3))
 		region_desc->base_address = le64_to_cpu(rsp_params->base_addr);
 	else
 		region_desc->base_address = 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
