Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C48158525
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 22:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tB1Mz7fOhDO/I8hujjzzYYVzhT3bCFmLMSa1txk8tGs=; b=jvZDXJY+TtPSLDQ6rrydCCuE73
	FSZm8M3BtJ+VD4L8RbPtg++Io3bkIqb3rRoHSPJltWGZfgcLytSzuaV9evGyp9Mn7JFnDxKobP/t9
	bRrB847Mgtr7qRJch5ovULPgYWs7e3NU1szF2x0CqZTCcmIb8g8O0AvRK5VGTYa2MKyBOH+ti4pcu
	z2bevcGT9wfpgj0XfGqxcoaW6Gh0QIw4TWZftuRVAXOhZqui6naNDHWZRWtTe7wA0u/GaFQQLwjua
	hW0T1Y0p7ZgrzO6lY7HU8SHOe01KOFz06KXV1Qls61evj5Vh5iqs9EiXLvKgiVP0XXF/VBRTHcgJ1
	nDl+DxeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Gpg-0006Ux-2M; Mon, 10 Feb 2020 21:43:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Gmv-0004BZ-5V
 for linux-arm-kernel@bombadil.infradead.org; Mon, 10 Feb 2020 21:40:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=U/CDan1t5+QSZuWw9vjZhOBUHt7h6dhPztLilhxTaFA=; b=jVkcxTiUlxfyB5txyKOMV8D0nR
 3+bMxXWqNfuO7zgOI1BPHPUKX8gS+Vxvxf/aPXA1Fzygrrrtw5Hvh1WGj+ff8fKT/BQ5KGrJB8DQn
 PEC4Y9OD5VeldVROF7+7gZMYxEqFo3X/s9qjyDkZxCckXh9J2Ebm74+PGbhaTi+zsADsNDZn8uAr0
 RXm9NHjpJObt9znePVa3DxHsS6V7T7ys8ifhkIXzXy0XNvNGU4SutpP63Xph0o1BuTqkKbvwgXklO
 yGXFXfpDNBo7ql1EARe7tO/uE2VxJEGsRg9ViE/bp6pdGRJIwIMB7eTiaW+8qVBuElhzlVej5kzxR
 kZY9FO9A==;
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Gmg-0006YQ-0T
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 21:40:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so9670363wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 13:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U/CDan1t5+QSZuWw9vjZhOBUHt7h6dhPztLilhxTaFA=;
 b=PDHB3RbZhZCBwYWd729Y0BG7OT7i+7faLHfBZn3KagG5fhnY2WoRks9YHuJ9BLdqLa
 UZyWKX+5RLzZTEP0whWIYxxwUieUvpxnbZadDiBo24rhrBacsdYqboiRiPeC02lFxpW9
 3SZPt6J5S7KEfDi1Ak+7WoTjjCNrtf8QBLPGe7tWOry7L1DCNXLPT0GGDJdzDw99yltG
 ufpaKgEyORpqphjNKWdgMlHqicN7J9R6pYbgpA30I895oB6cR5+TmbkFezZISPeFS8l8
 Rq8ZT+fDdP8NDM+d9Mn1AI8599wSVYCVkUrMbG27Gvetr02j8ZUGo3EafM/xMbgrj4Do
 tRYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U/CDan1t5+QSZuWw9vjZhOBUHt7h6dhPztLilhxTaFA=;
 b=sFGGVJoa+ka+9JynUhwZ5W3It+exFvyWPHPGh8L0uDQptKFGCZ1eQK6VlJrATt98ZD
 q6Gr0x0ri6Vl9x9zyZLcfOdu4YJ0bXRByyT64zkpfBq7LOgZWu2tXC+TigTaNcVlrhmS
 /WRUTKDa0zm1qu5IwyEvaXsF9mpja6U42CgKSeAqleSOlQvYJXQ3wlJVExyyEdAKOlrl
 eS/8oOVIqwTMshmpsuK2CZsGy3/stKO9l3P/N3TAGrre0M/SpUKQ2WslypUnIzYTfXOE
 Hr097kSs2ZGtpYpmxMIMEZf8lKGM2xxiUydcuytZtZ6lCbSfakOA5aywBAaRtCLSApwp
 ifaA==
X-Gm-Message-State: APjAAAUSpv4s+HEycKeHOTiTQs1QpVsqRzIbO0nXY8pNLT3saVNeGm+q
 7JeKp4hvpokpyrmkYzvKy83AqA==
X-Google-Smtp-Source: APXvYqy+GQt7H50G2HN1qUnWwQt1/TIRS6WcV7IVClUjW/4D9nH1Q3xERABgusv/9VNLymfLg9JKtQ==
X-Received: by 2002:a5d:530e:: with SMTP id e14mr3943512wrv.250.1581370799588; 
 Mon, 10 Feb 2020 13:39:59 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id u14sm2118582wrm.51.2020.02.10.13.39.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 13:39:58 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v9 08/15] coresight: cti: Enable CTI associated with devices.
Date: Mon, 10 Feb 2020 21:39:17 +0000
Message-Id: <20200210213924.20037-9-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210213924.20037-1-mike.leach@linaro.org>
References: <20200210213924.20037-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_214002_467182_B800E31F 
X-CRM114-Status: GOOD (  35.28  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CoreSight subsystem enables a path of devices from source to sink.
Any CTI devices associated with the path devices must be enabled at the
same time.

This patch adds an associated coresight_device element to the main
coresight device structure, and uses this to create associations between
the CTI and other devices based on the device tree data. The associated
device element is used to enable CTI in conjunction with the path elements.

CTI devices are reference counted so where a single CTI is associated with
multiple elements on the path, it will be enabled on the first associated
device enable, and disabled with the last associated device disable.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c  | 129 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-cti.h  |   1 +
 drivers/hwtracing/coresight/coresight-priv.h |  12 ++
 drivers/hwtracing/coresight/coresight.c      |  71 +++++++++-
 include/linux/coresight.h                    |   4 +
 5 files changed, 212 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 77c2af247917..c4494923d030 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -4,6 +4,7 @@
  * Author: Mike Leach <mike.leach@linaro.org>
  */
 
+#include <linux/property.h>
 #include "coresight-cti.h"
 
 /**
@@ -440,6 +441,131 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
 	return err;
 }
 
+/*
+ * Look for a matching connection device name in the list of connections.
+ * If found then swap in the csdev name, set trig con association pointer
+ * and return found.
+ */
+static bool
+cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
+		      struct coresight_device *csdev)
+{
+	struct cti_trig_con *tc;
+	const char *csdev_name;
+
+	list_for_each_entry(tc, &ctidev->trig_cons, node) {
+		if (tc->con_dev_name) {
+			if (!strcmp(node_name, tc->con_dev_name)) {
+				/* match: so swap in csdev name & dev */
+				csdev_name = dev_name(&csdev->dev);
+				tc->con_dev_name =
+					devm_kstrdup(&csdev->dev, csdev_name,
+						     GFP_KERNEL);
+				tc->con_dev = csdev;
+				return true;
+			}
+		}
+	}
+	return false;
+}
+
+/*
+ * Search the cti list to add an associated CTI into the supplied CS device
+ * This will set the association if CTI declared before the CS device.
+ * (called from coresight_register() with coresight_mutex locked).
+ */
+void cti_add_assoc_to_csdev(struct coresight_device *csdev)
+{
+	struct cti_drvdata *ect_item;
+	struct cti_device *ctidev;
+	const char *node_name = NULL;
+
+	/* protect the list */
+	mutex_lock(&ect_mutex);
+
+	/* exit if current is an ECT device.*/
+	if ((csdev->type == CORESIGHT_DEV_TYPE_ECT) || list_empty(&ect_net))
+		goto cti_add_done;
+
+	/* if we didn't find the csdev previously we used the fwnode name */
+	node_name = cti_plat_get_node_name(dev_fwnode(csdev->dev.parent));
+	if (!node_name)
+		goto cti_add_done;
+
+	/* for each CTI in list... */
+	list_for_each_entry(ect_item, &ect_net, node) {
+		ctidev = &ect_item->ctidev;
+		if (cti_match_fixup_csdev(ctidev, node_name, csdev)) {
+			/*
+			 * if we found a matching csdev then update the ECT
+			 * association pointer for the device with this CTI.
+			 */
+			csdev->ect_dev = ect_item->csdev;
+			break;
+		}
+	}
+cti_add_done:
+	mutex_unlock(&ect_mutex);
+}
+EXPORT_SYMBOL_GPL(cti_add_assoc_to_csdev);
+
+/*
+ * Removing the associated devices is easier.
+ * A CTI will not have a value for csdev->ect_dev.
+ */
+void cti_remove_assoc_from_csdev(struct coresight_device *csdev)
+{
+	struct cti_drvdata *ctidrv;
+	struct cti_trig_con *tc;
+	struct cti_device *ctidev;
+
+	mutex_lock(&ect_mutex);
+	if (csdev->ect_dev) {
+		ctidrv = csdev_to_cti_drvdata(csdev->ect_dev);
+		ctidev = &ctidrv->ctidev;
+		list_for_each_entry(tc, &ctidev->trig_cons, node) {
+			if (tc->con_dev == csdev->ect_dev) {
+				tc->con_dev = NULL;
+				break;
+			}
+		}
+		csdev->ect_dev = NULL;
+	}
+	mutex_unlock(&ect_mutex);
+}
+EXPORT_SYMBOL_GPL(cti_remove_assoc_from_csdev);
+
+/*
+ * Update the cross references where the associated device was found
+ * while we were building the connection info. This will occur if the
+ * assoc device was registered before the CTI.
+ */
+static void cti_update_conn_xrefs(struct cti_drvdata *drvdata)
+{
+	struct cti_trig_con *tc;
+	struct cti_device *ctidev = &drvdata->ctidev;
+
+	list_for_each_entry(tc, &ctidev->trig_cons, node) {
+		if (tc->con_dev)
+			/* set tc->con_dev->ect_dev */
+			coresight_set_assoc_ectdev_mutex(tc->con_dev,
+							 drvdata->csdev);
+	}
+}
+
+static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
+{
+	struct cti_trig_con *tc;
+	struct cti_device *ctidev = &drvdata->ctidev;
+
+	list_for_each_entry(tc, &ctidev->trig_cons, node) {
+		if (tc->con_dev) {
+			coresight_set_assoc_ectdev_mutex(tc->con_dev,
+							 NULL);
+		}
+	}
+}
+
 /** cti ect operations **/
 int cti_enable(struct coresight_device *csdev)
 {
@@ -474,6 +600,7 @@ static void cti_device_release(struct device *dev)
 	struct cti_drvdata *ect_item, *ect_tmp;
 
 	mutex_lock(&ect_mutex);
+	cti_remove_conn_xrefs(drvdata);
 
 	/* remove from the list */
 	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
@@ -565,6 +692,8 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 	/* add to list of CTI devices */
 	mutex_lock(&ect_mutex);
 	list_add(&drvdata->node, &ect_net);
+	/* set any cross references */
+	cti_update_conn_xrefs(drvdata);
 	mutex_unlock(&ect_mutex);
 
 	/* set up release chain */
diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
index 469a06a1bb78..578d7e9ac67e 100644
--- a/drivers/hwtracing/coresight/coresight-cti.h
+++ b/drivers/hwtracing/coresight/coresight-cti.h
@@ -216,6 +216,7 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
 		      u32 channel_idx);
 struct coresight_platform_data *
 coresight_cti_get_platform_data(struct device *dev);
+const char *cti_plat_get_node_name(struct fwnode_handle *fwnode);
 
 /* cti powered and enabled */
 static inline bool cti_active(struct cti_config *cfg)
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 357ffef7b825..890f9a5c97c6 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -162,6 +162,16 @@ static inline int etm_readl_cp14(u32 off, unsigned int *val) { return 0; }
 static inline int etm_writel_cp14(u32 off, u32 val) { return 0; }
 #endif
 
+#ifdef CONFIG_CORESIGHT_CTI
+extern void cti_add_assoc_to_csdev(struct coresight_device *csdev);
+extern void cti_remove_assoc_from_csdev(struct coresight_device *csdev);
+
+#else
+static inline void cti_add_assoc_to_csdev(struct coresight_device *csdev) {}
+static inline void
+cti_remove_assoc_from_csdev(struct coresight_device *csdev) {}
+#endif
+
 /*
  * Macros and inline functions to handle CoreSight UCI data and driver
  * private data in AMBA ID table entries, and extract data values.
@@ -204,5 +214,7 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
 void coresight_release_platform_data(struct coresight_platform_data *pdata);
 struct coresight_device *
 coresight_find_csdev_by_fwnode(struct fwnode_handle *r_fwnode);
+void coresight_set_assoc_ectdev_mutex(struct coresight_device *csdev,
+				      struct coresight_device *ect_csdev);
 
 #endif
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 39a5d9f7a395..c71553c09f8e 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -216,6 +216,44 @@ void coresight_disclaim_device(void __iomem *base)
 	CS_LOCK(base);
 }
 
+/* enable or disable an associated CTI device of the supplied CS device */
+static int
+coresight_control_assoc_ectdev(struct coresight_device *csdev, bool enable)
+{
+	int ect_ret = 0;
+	struct coresight_device *ect_csdev = csdev->ect_dev;
+
+	if (!ect_csdev)
+		return 0;
+
+	if (enable) {
+		if (ect_ops(ect_csdev)->enable)
+			ect_ret = ect_ops(ect_csdev)->enable(ect_csdev);
+	} else {
+		if (ect_ops(ect_csdev)->disable)
+			ect_ret = ect_ops(ect_csdev)->disable(ect_csdev);
+	}
+
+	/* output warning if ECT enable is preventing trace operation */
+	if (ect_ret)
+		dev_info(&csdev->dev, "Associated ECT device (%s) %s failed\n",
+			 dev_name(&ect_csdev->dev),
+			 enable ? "enable" : "disable");
+	return ect_ret;
+}
+
+/*
+ * Set the associated ect / cti device while holding the coresight_mutex
+ * to avoid a race with coresight_enable that may try to use this value.
+ */
+void coresight_set_assoc_ectdev_mutex(struct coresight_device *csdev,
+				      struct coresight_device *ect_csdev)
+{
+	mutex_lock(&coresight_mutex);
+	csdev->ect_dev = ect_csdev;
+	mutex_unlock(&coresight_mutex);
+}
+
 static int coresight_enable_sink(struct coresight_device *csdev,
 				 u32 mode, void *data)
 {
@@ -228,9 +266,14 @@ static int coresight_enable_sink(struct coresight_device *csdev,
 	if (!sink_ops(csdev)->enable)
 		return -EINVAL;
 
-	ret = sink_ops(csdev)->enable(csdev, mode, data);
+	ret = coresight_control_assoc_ectdev(csdev, true);
 	if (ret)
 		return ret;
+	ret = sink_ops(csdev)->enable(csdev, mode, data);
+	if (ret) {
+		coresight_control_assoc_ectdev(csdev, false);
+		return ret;
+	}
 	csdev->enable = true;
 
 	return 0;
@@ -246,6 +289,7 @@ static void coresight_disable_sink(struct coresight_device *csdev)
 	ret = sink_ops(csdev)->disable(csdev);
 	if (ret)
 		return;
+	coresight_control_assoc_ectdev(csdev, false);
 	csdev->enable = false;
 }
 
@@ -269,8 +313,15 @@ static int coresight_enable_link(struct coresight_device *csdev,
 	if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT && outport < 0)
 		return outport;
 
-	if (link_ops(csdev)->enable)
-		ret = link_ops(csdev)->enable(csdev, inport, outport);
+	if (link_ops(csdev)->enable) {
+		ret = coresight_control_assoc_ectdev(csdev, true);
+		if (!ret) {
+			ret = link_ops(csdev)->enable(csdev, inport, outport);
+			if (ret)
+				coresight_control_assoc_ectdev(csdev, false);
+		}
+	}
+
 	if (!ret)
 		csdev->enable = true;
 
@@ -300,8 +351,10 @@ static void coresight_disable_link(struct coresight_device *csdev,
 		nr_conns = 1;
 	}
 
-	if (link_ops(csdev)->disable)
+	if (link_ops(csdev)->disable) {
 		link_ops(csdev)->disable(csdev, inport, outport);
+		coresight_control_assoc_ectdev(csdev, false);
+	}
 
 	for (i = 0; i < nr_conns; i++)
 		if (atomic_read(&csdev->refcnt[i]) != 0)
@@ -322,9 +375,14 @@ static int coresight_enable_source(struct coresight_device *csdev, u32 mode)
 
 	if (!csdev->enable) {
 		if (source_ops(csdev)->enable) {
-			ret = source_ops(csdev)->enable(csdev, NULL, mode);
+			ret = coresight_control_assoc_ectdev(csdev, true);
 			if (ret)
 				return ret;
+			ret = source_ops(csdev)->enable(csdev, NULL, mode);
+			if (ret) {
+				coresight_control_assoc_ectdev(csdev, false);
+				return ret;
+			};
 		}
 		csdev->enable = true;
 	}
@@ -347,6 +405,7 @@ static bool coresight_disable_source(struct coresight_device *csdev)
 	if (atomic_dec_return(csdev->refcnt) == 0) {
 		if (source_ops(csdev)->disable)
 			source_ops(csdev)->disable(csdev, NULL);
+		coresight_control_assoc_ectdev(csdev, false);
 		csdev->enable = false;
 	}
 	return !csdev->enable;
@@ -964,6 +1023,7 @@ static void coresight_device_release(struct device *dev)
 {
 	struct coresight_device *csdev = to_coresight_device(dev);
 
+	cti_remove_assoc_from_csdev(csdev);
 	fwnode_handle_put(csdev->dev.fwnode);
 	kfree(csdev->refcnt);
 	kfree(csdev);
@@ -1246,6 +1306,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 
 	coresight_fixup_device_conns(csdev);
 	coresight_fixup_orphan_conns(csdev);
+	cti_add_assoc_to_csdev(csdev);
 
 	mutex_unlock(&coresight_mutex);
 
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index b3e582d96a34..193cc9dbf448 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -163,6 +163,8 @@ struct coresight_connection {
  *		activated but not yet enabled.  Enabling for a _sink_
  *		appens when a source has been selected for that it.
  * @ea:		Device attribute for sink representation under PMU directory.
+ * @ect_dev:	Associated cross trigger device. Not part of the trace data
+ *		path or connections.
  */
 struct coresight_device {
 	struct coresight_platform_data *pdata;
@@ -176,6 +178,8 @@ struct coresight_device {
 	/* sink specific fields */
 	bool activated;	/* true only if a sink is part of a path */
 	struct dev_ext_attribute *ea;
+	/* cross trigger handling */
+	struct coresight_device *ect_dev;
 };
 
 /*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
