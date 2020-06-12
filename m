Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0201F7F3B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 00:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/vUGQxH9cC/RaDyD70PlTZ0TN+xya5IvwKCbabpNdk=; b=WFpQI9EgzKRemf
	pt37WECf45XSIBpCTI1vP6sMVLloZZ6k+LlxVzis17kJbcfMIrTf2BB1lESWNs9y82DC+T7QK1IBG
	I/G+7dt3ackUnNvukaUi3DX0dOOdp6ZFM3oWmqK9zPxcCXfRHK6wpV0VvaOXSZt8lZXCbx83LMMhu
	F+HvQ46N+0LW96N2IwEjRu46iU49x7uCDpZEQhYhSFTvmQaMR3y/+cQL6wrBiIib2lHZMHcesHWbY
	gDL3oEhvhHMsHKfKvLp8aStwi8AAmn6vS2qDdrskkrlbKejlgiLD542MYTvHV5QqEy8QgYf3hH9XC
	kwYKAMIHjbA87PFQ57Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjsVp-0004w7-V7; Fri, 12 Jun 2020 22:51:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjsUO-0001bn-SI
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 22:49:35 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05CMnT39103481;
 Fri, 12 Jun 2020 17:49:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592002169;
 bh=GP4LvDpiiVb2/sG8nBRXMGkNlpoMDKmbI3o4CyswfyQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Z0J5WdW3C4QYbSEilG73sOj0fwHpVWVXR7q5t9wRMEzqU7mC1GIWFrEWEX7mqT2Hp
 GgAIIk/XlUmpta5gICaCajK1+hRYLKQG80SD03PluA6hyDMMEXzuD3hg/D6oNMR6R5
 eFPgur8/L6YCGBzAgrzztqJZShkJU+eHNVFk4CUA=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05CMnTVt058565
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 12 Jun 2020 17:49:29 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 12
 Jun 2020 17:49:29 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 12 Jun 2020 17:49:28 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05CMnSlx089805;
 Fri, 12 Jun 2020 17:49:28 -0500
Received: from localhost ([10.250.48.148])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 05CMnSlF062169;
 Fri, 12 Jun 2020 17:49:28 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v3 2/6] remoteproc: k3: Add TI-SCI processor control helper
 functions
Date: Fri, 12 Jun 2020 17:49:10 -0500
Message-ID: <20200612224914.7634-3-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200612224914.7634-1-s-anna@ti.com>
References: <20200612224914.7634-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_154933_004530_9C9EE04A 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Texas Instruments' K3 generation SoCs have specific modules/register
spaces used for configuring the various aspects of a remote processor.
These include power, reset, boot vector and other configuration features
specific to each compute processor present on the SoC. These registers
are managed by the System Controller such as DMSC on K3 AM65x SoCs.

The Texas Instrument's System Control Interface (TI-SCI) Message Protocol
is used to communicate to the System Controller from various compute
processors to invoke specific services provided by the firmware running
on the System Controller.

Add a common processor control interface header file that can be used by
multiple remoteproc drivers. The helper functions within this header file
abstract the various TI SCI protocol ops for the remoteproc drivers, and
allow them to request the System Controller to be able to program and
manage various remote processors on the SoC. The remoteproc drivers are
expected to manage the life-cycle of their ti_sci_proc_dev local
structures.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v3: New to this series, but the patch is identical to the one from the
    K3 R5F series posted previously, with patch title adjusted
    https://patchwork.kernel.org/patch/11456379/

 drivers/remoteproc/ti_sci_proc.h | 102 +++++++++++++++++++++++++++++++
 1 file changed, 102 insertions(+)
 create mode 100644 drivers/remoteproc/ti_sci_proc.h

diff --git a/drivers/remoteproc/ti_sci_proc.h b/drivers/remoteproc/ti_sci_proc.h
new file mode 100644
index 000000000000..e42d8015b8e7
--- /dev/null
+++ b/drivers/remoteproc/ti_sci_proc.h
@@ -0,0 +1,102 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Texas Instruments TI-SCI Processor Controller Helper Functions
+ *
+ * Copyright (C) 2018-2020 Texas Instruments Incorporated - http://www.ti.com/
+ *	Suman Anna
+ */
+
+#ifndef REMOTEPROC_TI_SCI_PROC_H
+#define REMOTEPROC_TI_SCI_PROC_H
+
+/**
+ * struct ti_sci_proc - structure representing a processor control client
+ * @sci: cached TI-SCI protocol handle
+ * @ops: cached TI-SCI proc ops
+ * @dev: cached client device pointer
+ * @proc_id: processor id for the consumer remoteproc device
+ * @host_id: host id to pass the control over for this consumer remoteproc
+ *	     device
+ */
+struct ti_sci_proc {
+	const struct ti_sci_handle *sci;
+	const struct ti_sci_proc_ops *ops;
+	struct device *dev;
+	u8 proc_id;
+	u8 host_id;
+};
+
+static inline int ti_sci_proc_request(struct ti_sci_proc *tsp)
+{
+	int ret;
+
+	ret = tsp->ops->request(tsp->sci, tsp->proc_id);
+	if (ret)
+		dev_err(tsp->dev, "ti-sci processor request failed: %d\n",
+			ret);
+	return ret;
+}
+
+static inline int ti_sci_proc_release(struct ti_sci_proc *tsp)
+{
+	int ret;
+
+	ret = tsp->ops->release(tsp->sci, tsp->proc_id);
+	if (ret)
+		dev_err(tsp->dev, "ti-sci processor release failed: %d\n",
+			ret);
+	return ret;
+}
+
+static inline int ti_sci_proc_handover(struct ti_sci_proc *tsp)
+{
+	int ret;
+
+	ret = tsp->ops->handover(tsp->sci, tsp->proc_id, tsp->host_id);
+	if (ret)
+		dev_err(tsp->dev, "ti-sci processor handover of %d to %d failed: %d\n",
+			tsp->proc_id, tsp->host_id, ret);
+	return ret;
+}
+
+static inline int ti_sci_proc_set_config(struct ti_sci_proc *tsp,
+					 u64 boot_vector,
+					 u32 cfg_set, u32 cfg_clr)
+{
+	int ret;
+
+	ret = tsp->ops->set_config(tsp->sci, tsp->proc_id, boot_vector,
+				   cfg_set, cfg_clr);
+	if (ret)
+		dev_err(tsp->dev, "ti-sci processor set_config failed: %d\n",
+			ret);
+	return ret;
+}
+
+static inline int ti_sci_proc_set_control(struct ti_sci_proc *tsp,
+					  u32 ctrl_set, u32 ctrl_clr)
+{
+	int ret;
+
+	ret = tsp->ops->set_control(tsp->sci, tsp->proc_id, ctrl_set, ctrl_clr);
+	if (ret)
+		dev_err(tsp->dev, "ti-sci processor set_control failed: %d\n",
+			ret);
+	return ret;
+}
+
+static inline int ti_sci_proc_get_status(struct ti_sci_proc *tsp,
+					 u64 *boot_vector, u32 *cfg_flags,
+					 u32 *ctrl_flags, u32 *status_flags)
+{
+	int ret;
+
+	ret = tsp->ops->get_status(tsp->sci, tsp->proc_id, boot_vector,
+				   cfg_flags, ctrl_flags, status_flags);
+	if (ret)
+		dev_err(tsp->dev, "ti-sci processor get_status failed: %d\n",
+			ret);
+	return ret;
+}
+
+#endif /* REMOTEPROC_TI_SCI_PROC_H */
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
