Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6260118D50C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEVVmN1YFf4LvreI7YE7ZRAYkta3TkNi1PFJvMQFiJM=; b=HXyv4p9PxQBI6i
	LQ88ZegABSHAojEOTt7id8b0Y5NQcvnwdDs4Fu/DMVB+61Q16QoSU1Hv8GRmukkvEKMWyXH4tnMNK
	FekPhTIpRMkY1Nkb9UeXDyS5GfqUiAETP6hqne1vMyA2Q3fftWGQ/74dYpka+a8ReiLPA7CajPaVs
	rT/He7ll8E2tRq1j9YVhXV4BBDpkTZIJfgAHPZd1ql/9wgxXhUIr/xy0u6nuH1VQ59QXAWXAzqtTi
	pqqAtWXoiFf8r4gIHofAqaI+92QOqwTfQzz4YlCBstDN0H5B2wv5ekDbcM4WkKyjtOzdtyOozHlWT
	yZXs7OQcsnOybnscGljw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKvf-0004f5-IA; Fri, 20 Mar 2020 16:55:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKtV-00036v-L0
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 16:53:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id c19so3534318pfo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 09:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z6cesOotNQclzBDlnCAz5clEYNPUNj+4DeSiXVOvChA=;
 b=qPczJpYD4cPedICo6Rkh7Sp07c9fJpHW/J+CqyZVIAwYSBA0KOJ1b3pMPNDAEXcE0c
 YhmF/idaj2VbfYN6S/Xz930ltAN5dN0gxV7nQ6YzJMZOilNuYjsVR6RSJXL7fQ0r6X1V
 Fv7LfNVfcmmcjv5UnW48/S9qDzUOVF4vaSaU2KPinjv2SoWDt3wwzGdSNSTYIr5tdi2u
 c+09Jif8LaAOGicfH8PB3ENpByl40/Zie3fOgC5Mhm9XHWK25XbKz0TRNjOiwFPXQ6zi
 CrxMtib/Bhab6wyA5OPU8Ct6EkbXcVjYfhH+wF8qJEpZevfZWYHdstsSEzEl4bgpy61B
 TgDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z6cesOotNQclzBDlnCAz5clEYNPUNj+4DeSiXVOvChA=;
 b=N1zsmSKMacHvY0Qqzg7zgNp38MR0r/S9Vw9tSF9CeDU/fbgAB3L4OGJvIt5gztbrGv
 QAt+uQFaP4lcnLezOGrf2EJ7qKx/sgmlIv6jdEqeYEze9T6kxwfxaVu6quTMLHb4xEdL
 5j5QT3kM9DZfay1nmeiHFvasSldpBNe5ELGrmK6brkyAzzNatDBa358FcBzdWmdmnryQ
 EJHbt1yQN/uH+UAIctP/z+7bE1v9OfsyFL6IhXtBkgYHE+UgAPnuk4aEvOhCKafywwN6
 nDyCYgiJ/Qp03IjQ4774rCBCyXguk9ZXv87tVS/b2wZy/HXQ3TkuntKUOGpR9wNC4L85
 IjjQ==
X-Gm-Message-State: ANhLgQ2FLFDQfN10O0LiM7HBOD/Je68eQNPkqZW6sffpbXasqTVDUUMb
 hQMCaYM48DXRcsFolpmb9FDtUw==
X-Google-Smtp-Source: ADFU+vuI7nT06bdeO9pMS4nrln4Rgu9+81GgjIB7fkHesqqtB81STnZ5fFMIurJZkOcG5DZUM+6IEQ==
X-Received: by 2002:a62:1a90:: with SMTP id
 a138mr10505943pfa.105.1584723192156; 
 Fri, 20 Mar 2020 09:53:12 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x17sm6064216pfn.16.2020.03.20.09.53.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 09:53:11 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v11 06/12] coresight: cti: Add device tree support for v8 arch
 CTI
Date: Fri, 20 Mar 2020 10:52:57 -0600
Message-Id: <20200320165303.13681-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320165303.13681-1-mathieu.poirier@linaro.org>
References: <20200320165303.13681-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_095313_899819_B433997F 
X-CRM114-Status: GOOD (  25.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

The v8 architecture defines the relationship between a PE, its optional ETM
and a CTI. Unlike non-architectural CTIs which are implementation defined,
this has a fixed set of connections which can therefore be represented as a
simple tag in the device tree.

This patch defines the tags needed to create an entry for this PE/ETM/CTI
relationship, and provides functionality to implement the connection model
in the CTI driver.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../coresight/coresight-cti-platform.c        | 205 ++++++++++++++++++
 .../hwtracing/coresight/coresight-platform.c  |  20 ++
 drivers/hwtracing/coresight/coresight-priv.h  |   2 +
 drivers/hwtracing/coresight/coresight.c       |  12 +-
 4 files changed, 230 insertions(+), 9 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
index 665be86c585d..36a276eda50a 100644
--- a/drivers/hwtracing/coresight/coresight-cti-platform.c
+++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
@@ -3,10 +3,208 @@
  * Copyright (c) 2019, The Linaro Limited. All rights reserved.
  */
 
+#include <dt-bindings/arm/coresight-cti-dt.h>
 #include <linux/of.h>
 
 #include "coresight-cti.h"
 
+/* Number of CTI signals in the v8 architecturally defined connection */
+#define NR_V8PE_IN_SIGS		2
+#define NR_V8PE_OUT_SIGS	3
+#define NR_V8ETM_INOUT_SIGS	4
+
+/* CTI device tree connection property keywords */
+#define CTI_DT_V8ARCH_COMPAT	"arm,coresight-cti-v8-arch"
+#define CTI_DT_CSDEV_ASSOC	"arm,cs-dev-assoc"
+
+#ifdef CONFIG_OF
+/*
+ * CTI can be bound to a CPU, or a system device.
+ * CPU can be declared at the device top level or in a connections node
+ * so need to check relative to node not device.
+ */
+static int of_cti_get_cpu_at_node(const struct device_node *node)
+{
+	int cpu;
+	struct device_node *dn;
+
+	if (node == NULL)
+		return -1;
+
+	dn = of_parse_phandle(node, "cpu", 0);
+	/* CTI affinity defaults to no cpu */
+	if (!dn)
+		return -1;
+	cpu = of_cpu_node_to_id(dn);
+	of_node_put(dn);
+
+	/* No Affinity  if no cpu nodes are found */
+	return (cpu < 0) ? -1 : cpu;
+}
+
+#else
+static int of_cti_get_cpu_at_node(const struct device_node *node)
+{
+	return -1;
+}
+
+#endif
+
+/*
+ * CTI can be bound to a CPU, or a system device.
+ * CPU can be declared at the device top level or in a connections node
+ * so need to check relative to node not device.
+ */
+static int cti_plat_get_cpu_at_node(struct fwnode_handle *fwnode)
+{
+	if (is_of_node(fwnode))
+		return of_cti_get_cpu_at_node(to_of_node(fwnode));
+	return -1;
+}
+
+const char *cti_plat_get_node_name(struct fwnode_handle *fwnode)
+{
+	if (is_of_node(fwnode))
+		return of_node_full_name(to_of_node(fwnode));
+	return "unknown";
+}
+
+/*
+ * Extract a name from the fwnode.
+ * If the device associated with the node is a coresight_device, then return
+ * that name and the coresight_device pointer, otherwise return the node name.
+ */
+static const char *
+cti_plat_get_csdev_or_node_name(struct fwnode_handle *fwnode,
+				struct coresight_device **csdev)
+{
+	const char *name = NULL;
+	*csdev = coresight_find_csdev_by_fwnode(fwnode);
+	if (*csdev)
+		name = dev_name(&(*csdev)->dev);
+	else
+		name = cti_plat_get_node_name(fwnode);
+	return name;
+}
+
+static int cti_plat_create_v8_etm_connection(struct device *dev,
+					     struct cti_drvdata *drvdata)
+{
+	int ret = -ENOMEM, i;
+	struct fwnode_handle *root_fwnode, *cs_fwnode;
+	const char *assoc_name = NULL;
+	struct coresight_device *csdev;
+	struct cti_trig_con *tc = NULL;
+
+	root_fwnode = dev_fwnode(dev);
+	if (IS_ERR_OR_NULL(root_fwnode))
+		return -EINVAL;
+
+	/* Can optionally have an etm node - return if not  */
+	cs_fwnode = fwnode_find_reference(root_fwnode, CTI_DT_CSDEV_ASSOC, 0);
+	if (IS_ERR_OR_NULL(cs_fwnode))
+		return 0;
+
+	/* allocate memory */
+	tc = cti_allocate_trig_con(dev, NR_V8ETM_INOUT_SIGS,
+				   NR_V8ETM_INOUT_SIGS);
+	if (!tc)
+		goto create_v8_etm_out;
+
+	/* build connection data */
+	tc->con_in->used_mask = 0xF0; /* sigs <4,5,6,7> */
+	tc->con_out->used_mask = 0xF0; /* sigs <4,5,6,7> */
+
+	/*
+	 * The EXTOUT type signals from the ETM are connected to a set of input
+	 * triggers on the CTI, the EXTIN being connected to output triggers.
+	 */
+	for (i = 0; i < NR_V8ETM_INOUT_SIGS; i++) {
+		tc->con_in->sig_types[i] = ETM_EXTOUT;
+		tc->con_out->sig_types[i] = ETM_EXTIN;
+	}
+
+	/*
+	 * We look to see if the ETM coresight device associated with this
+	 * handle has been registered with the system - i.e. probed before
+	 * this CTI. If so csdev will be non NULL and we can use the device
+	 * name and pass the csdev to the connection entry function where
+	 * the association will be recorded.
+	 * If not, then simply record the name in the connection data, the
+	 * probing of the ETM will call into the CTI driver API to update the
+	 * association then.
+	 */
+	assoc_name = cti_plat_get_csdev_or_node_name(cs_fwnode, &csdev);
+	ret = cti_add_connection_entry(dev, drvdata, tc, csdev, assoc_name);
+
+create_v8_etm_out:
+	fwnode_handle_put(cs_fwnode);
+	return ret;
+}
+
+/*
+ * Create an architecturally defined v8 connection
+ * must have a cpu, can have an ETM.
+ */
+static int cti_plat_create_v8_connections(struct device *dev,
+					  struct cti_drvdata *drvdata)
+{
+	struct cti_device *cti_dev = &drvdata->ctidev;
+	struct cti_trig_con *tc = NULL;
+	int cpuid = 0;
+	char cpu_name_str[16];
+	int ret = -ENOMEM;
+
+	/* Must have a cpu node */
+	cpuid = cti_plat_get_cpu_at_node(dev_fwnode(dev));
+	if (cpuid < 0) {
+		dev_warn(dev,
+			 "ARM v8 architectural CTI connection: missing cpu\n");
+		return -EINVAL;
+	}
+	cti_dev->cpu = cpuid;
+
+	/* Allocate the v8 cpu connection memory */
+	tc = cti_allocate_trig_con(dev, NR_V8PE_IN_SIGS, NR_V8PE_OUT_SIGS);
+	if (!tc)
+		goto of_create_v8_out;
+
+	/* Set the v8 PE CTI connection data */
+	tc->con_in->used_mask = 0x3; /* sigs <0 1> */
+	tc->con_in->sig_types[0] = PE_DBGTRIGGER;
+	tc->con_in->sig_types[1] = PE_PMUIRQ;
+	tc->con_out->used_mask = 0x7; /* sigs <0 1 2 > */
+	tc->con_out->sig_types[0] = PE_EDBGREQ;
+	tc->con_out->sig_types[1] = PE_DBGRESTART;
+	tc->con_out->sig_types[2] = PE_CTIIRQ;
+	scnprintf(cpu_name_str, sizeof(cpu_name_str), "cpu%d", cpuid);
+
+	ret = cti_add_connection_entry(dev, drvdata, tc, NULL, cpu_name_str);
+	if (ret)
+		goto of_create_v8_out;
+
+	/* Create the v8 ETM associated connection */
+	ret = cti_plat_create_v8_etm_connection(dev, drvdata);
+	if (ret)
+		goto of_create_v8_out;
+
+	/* filter pe_edbgreq - PE trigout sig <0> */
+	drvdata->config.trig_out_filter |= 0x1;
+
+of_create_v8_out:
+	return ret;
+}
+
+static int cti_plat_check_v8_arch_compatible(struct device *dev)
+{
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+
+	if (is_of_node(fwnode))
+		return of_device_is_compatible(to_of_node(fwnode),
+					       CTI_DT_V8ARCH_COMPAT);
+	return 0;
+}
+
 /* get the hardware configuration & connection data. */
 int cti_plat_get_hw_data(struct device *dev,
 			 struct cti_drvdata *drvdata)
@@ -14,6 +212,13 @@ int cti_plat_get_hw_data(struct device *dev,
 	int rc = 0;
 	struct cti_device *cti_dev = &drvdata->ctidev;
 
+	/* check for a v8 architectural CTI device */
+	if (cti_plat_check_v8_arch_compatible(dev)) {
+		rc = cti_plat_create_v8_connections(dev, drvdata);
+		if (rc)
+			return rc;
+	}
+
 	/* if no connections, just add a single default based on max IN-OUT */
 	if (cti_dev->nr_trig_con == 0)
 		rc = cti_add_default_connection(dev, drvdata);
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 3c5bee429105..43418a2126ff 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -57,6 +57,26 @@ coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)
 	return bus_find_device_by_fwnode(&amba_bustype, fwnode);
 }
 
+/*
+ * Find a registered coresight device from a device fwnode.
+ * The node info is associated with the AMBA parent, but the
+ * csdev keeps a copy so iterate round the coresight bus to
+ * find the device.
+ */
+struct coresight_device *
+coresight_find_csdev_by_fwnode(struct fwnode_handle *r_fwnode)
+{
+	struct device *dev;
+	struct coresight_device *csdev = NULL;
+
+	dev = bus_find_device_by_fwnode(&coresight_bustype, r_fwnode);
+	if (dev) {
+		csdev = to_coresight_device(dev);
+		put_device(dev);
+	}
+	return csdev;
+}
+
 #ifdef CONFIG_OF
 static inline bool of_coresight_legacy_ep_is_input(struct device_node *ep)
 {
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index aba6b789c969..357ffef7b825 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -202,5 +202,7 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
 }
 
 void coresight_release_platform_data(struct coresight_platform_data *pdata);
+struct coresight_device *
+coresight_find_csdev_by_fwnode(struct fwnode_handle *r_fwnode);
 
 #endif
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 1a5fdf2710ff..39a5d9f7a395 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1030,17 +1030,11 @@ static void coresight_fixup_device_conns(struct coresight_device *csdev)
 
 	for (i = 0; i < csdev->pdata->nr_outport; i++) {
 		struct coresight_connection *conn = &csdev->pdata->conns[i];
-		struct device *dev = NULL;
 
-		dev = bus_find_device_by_fwnode(&coresight_bustype, conn->child_fwnode);
-		if (dev) {
-			conn->child_dev = to_coresight_device(dev);
-			/* and put reference from 'bus_find_device()' */
-			put_device(dev);
-		} else {
+		conn->child_dev =
+			coresight_find_csdev_by_fwnode(conn->child_fwnode);
+		if (!conn->child_dev)
 			csdev->orphan = true;
-			conn->child_dev = NULL;
-		}
 	}
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
