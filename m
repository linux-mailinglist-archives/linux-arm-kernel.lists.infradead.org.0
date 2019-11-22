Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D83106CF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:56:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mALUa/KXykKzx5FYVaDw5W6ZHDZaHXsmSgnqhsSzTxM=; b=gPA6EmxlDOBp5W
	RAYRcjGUbiwqmEXjnZXyr1jHsq31iQoVj47TY8LKTu5DJ24/pEgRwMP7OxH8A0OWbMIena2syigs0
	sDANLArWw1wZMenEbaodr8tDtKWZbv8mn64DmJJp6VHnZ+zKNdWXmEZTz7//QeiPmXe0TWHwd7sGU
	k9nKBhlVuesNsyVpZ4ctJt/M/SwT2L589gWcLW21nOmUiU0W59vf8h86SQUFElSps/R8plGUlLFTX
	Hm3mIyRc2hwmAFjrawiLCFwDSVCMFUp4BTohfcpb7hhtJGWUbfDbGPzMezCOVdwP3dWtDeBmQNfcZ
	Qad10hpNl3q3saMOPbpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6cM-0003AH-JV; Fri, 22 Nov 2019 10:56:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Wp-0005Dt-EG
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:51:15 +0000
Received: by mail-wm1-x341.google.com with SMTP id n188so5119486wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X6qGp2c7p8L2l1s7Du/UosUTRGtm9jAQFCi+oOptldg=;
 b=SOMWRl5MASeOm4GNtX9OArMbaILwLPRIzg8o5jQFJjlDJs7o7+6TRqRDRJJlcZKv1S
 C2wRUga0S929l8ZmubuZMrj4IpG5Fa2Nqe1Nopf/OfaG7JXzleQDTj1N8JFM+wM4dxkw
 a0IPZK9nsydiR7+ZaHFq8+zB4Kl+q/5r1Xtc5efWJGgpcICIwIevEVheIsqYwHeQbybW
 cC1h0KeLL/1CSa0gL5NCQZiIo97Dk5CcMapCj8Pt35ahMGhjHVVuLINva1JbNz3+Gk7f
 HvHGhikrvzqw3GWpjHonq28nTbE1JPkhrHfsEMIPgU0/NbAlKrRBh/66q3xFCw04rAqj
 UPvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X6qGp2c7p8L2l1s7Du/UosUTRGtm9jAQFCi+oOptldg=;
 b=F+/ZkxBP01BH6C8J/y7sg0R2snvAt8Kyh9ry5p5zj8/lLaaHlzNr2NDZmEW435oVpq
 dw1rFOq/4CXpjNYw5GOgTWIRy0eImta9dy47epRQROAb8A6v/tYYsGVeR5Di2XBm5hqg
 sikp64ZyYL/ZQPskdE49sZs8tCW+2elDxM6jOsssR+mvnJ2DLs98Nxuhg5fYjZQQ3O4/
 iH6c8kL+TYOJz8gpQmqWsGSK2OUfK4uYxh6YKNnOEJfi9Qv99fm0iKPaF12ZRbIfK9Mv
 hjjvLftHapVuX9RoAoiGUCHUGWFepbA8p+akr5hU5xFm1NbaEwpDnAWEBTmxI4E7EJUr
 tGHA==
X-Gm-Message-State: APjAAAVaAcZ8PcBrUlqoHo0zt9oNHE4US7AlOZUv7jUakfMbFTae0DZ/
 6a9zxnphXQ35moO/txbLodl8+A==
X-Google-Smtp-Source: APXvYqyUulc/cLM8hB09K3/hFqAi2tZ8CaZnvvhDeSgluvoZSIPS68UGsollQ+F3ni0gC6lT6Ek3Mw==
X-Received: by 2002:a1c:2d49:: with SMTP id t70mr15677618wmt.131.1574419865443; 
 Fri, 22 Nov 2019 02:51:05 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.51.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:51:05 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 11/13] ACPI: Add VIOT table
Date: Fri, 22 Nov 2019 11:49:58 +0100
Message-Id: <20191122105000.800410-12-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025107_517931_176EA0BF 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kevin.tian@intel.com, lorenzo.pieralisi@arm.com, mst@redhat.com,
 gregkh@linuxfoundation.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, eric.auger@redhat.com, sebastien.boeuf@intel.com,
 jacob.jun.pan@intel.com, guohanjun@huawei.com, bhelgaas@google.com,
 jasowang@redhat.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for a new ACPI table that embeds other tables describing a
platform's IOMMU topology. Currently the only supported base table is
IORT. The VIOT contains an IORT with additional node types, that
describe a virtio-iommu.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/Kconfig      |  4 ++++
 drivers/acpi/Makefile     |  1 +
 drivers/acpi/bus.c        |  2 ++
 drivers/acpi/tables.c     |  2 +-
 drivers/acpi/viot.c       | 44 +++++++++++++++++++++++++++++++++++++++
 drivers/iommu/Kconfig     |  1 +
 include/linux/acpi_viot.h | 20 ++++++++++++++++++
 7 files changed, 73 insertions(+), 1 deletion(-)
 create mode 100644 drivers/acpi/viot.c
 create mode 100644 include/linux/acpi_viot.h

diff --git a/drivers/acpi/Kconfig b/drivers/acpi/Kconfig
index 548976c8b2b0..513a5e4d3526 100644
--- a/drivers/acpi/Kconfig
+++ b/drivers/acpi/Kconfig
@@ -579,6 +579,10 @@ config TPS68470_PMIC_OPREGION
 config ACPI_IORT
 	bool
 
+config ACPI_VIOT
+	bool
+	select ACPI_IORT
+
 endif	# ACPI
 
 config X86_PM_TIMER
diff --git a/drivers/acpi/Makefile b/drivers/acpi/Makefile
index 9d1792165713..6abdc6cc32c7 100644
--- a/drivers/acpi/Makefile
+++ b/drivers/acpi/Makefile
@@ -124,3 +124,4 @@ obj-y				+= dptf/
 
 obj-$(CONFIG_ARM64)		+= arm64/
 obj-$(CONFIG_ACPI_IORT) 	+= iort.o
+obj-$(CONFIG_ACPI_VIOT)		+= viot.o
diff --git a/drivers/acpi/bus.c b/drivers/acpi/bus.c
index 48bc96d45bab..6f364e0c9240 100644
--- a/drivers/acpi/bus.c
+++ b/drivers/acpi/bus.c
@@ -25,6 +25,7 @@
 #include <linux/dmi.h>
 #endif
 #include <linux/acpi_iort.h>
+#include <linux/acpi_viot.h>
 #include <linux/pci.h>
 #include <acpi/apei.h>
 #include <linux/suspend.h>
@@ -1246,6 +1247,7 @@ static int __init acpi_init(void)
 
 	pci_mmcfg_late_init();
 	acpi_iort_init();
+	acpi_viot_init();
 	acpi_scan_init();
 	acpi_ec_init();
 	acpi_debugfs_init();
diff --git a/drivers/acpi/tables.c b/drivers/acpi/tables.c
index 180ac4329763..9662ea5e1064 100644
--- a/drivers/acpi/tables.c
+++ b/drivers/acpi/tables.c
@@ -501,7 +501,7 @@ static const char * const table_sigs[] = {
 	ACPI_SIG_WDDT, ACPI_SIG_WDRT, ACPI_SIG_DSDT, ACPI_SIG_FADT,
 	ACPI_SIG_PSDT, ACPI_SIG_RSDT, ACPI_SIG_XSDT, ACPI_SIG_SSDT,
 	ACPI_SIG_IORT, ACPI_SIG_NFIT, ACPI_SIG_HMAT, ACPI_SIG_PPTT,
-	NULL };
+	ACPI_SIG_VIOT, NULL };
 
 #define ACPI_HEADER_SIZE sizeof(struct acpi_table_header)
 
diff --git a/drivers/acpi/viot.c b/drivers/acpi/viot.c
new file mode 100644
index 000000000000..ab9a6e43ad9b
--- /dev/null
+++ b/drivers/acpi/viot.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Linaro
+ *
+ * Virtual IOMMU table
+ */
+#define pr_fmt(fmt)	"ACPI: VIOT: " fmt
+
+#include <linux/acpi.h>
+#include <linux/acpi_iort.h>
+#include <linux/acpi_viot.h>
+
+int __init acpi_viot_init(void)
+{
+	struct acpi_table_viot *viot;
+	struct acpi_table_header *acpi_header;
+	acpi_status status;
+
+	status = acpi_get_table(ACPI_SIG_VIOT, 0, &acpi_header);
+	if (ACPI_FAILURE(status)) {
+		if (status != AE_NOT_FOUND) {
+			const char *msg = acpi_format_exception(status);
+
+			pr_err("Failed to get table, %s\n", msg);
+			return -EINVAL;
+		}
+
+		return 0;
+	}
+
+	if (acpi_header->length < sizeof(*viot)) {
+		pr_err("VIOT table overflow, bad table!\n");
+		return -EINVAL;
+	}
+
+	viot = (struct acpi_table_viot *)acpi_header;
+	if (ACPI_COMPARE_NAMESEG(viot->base_table.signature, ACPI_SIG_IORT)) {
+		acpi_iort_register_table(&viot->base_table, IORT_SOURCE_VIOT);
+		return 0;
+	}
+
+	pr_err("Unknown base table header\n");
+	return -EINVAL;
+}
diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index e3842eabcfdd..e6eb4f238d1a 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -480,6 +480,7 @@ config VIRTIO_IOMMU
 	depends on ARM64
 	select IOMMU_API
 	select INTERVAL_TREE
+	select ACPI_VIOT if ACPI
 	help
 	  Para-virtualised IOMMU driver with virtio.
 
diff --git a/include/linux/acpi_viot.h b/include/linux/acpi_viot.h
new file mode 100644
index 000000000000..6c282d5eb793
--- /dev/null
+++ b/include/linux/acpi_viot.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Linaro
+ */
+
+#ifndef __ACPI_VIOT_H__
+#define __ACPI_VIOT_H__
+
+#ifdef CONFIG_ACPI_VIOT
+
+int acpi_viot_init(void);
+
+#else /* !CONFIG_ACPI_VIOT */
+
+static inline int acpi_viot_init(void)
+{}
+
+#endif /* !CONFIG_ACPI_VIOT */
+
+#endif /* __ACPI_VIOT_H__ */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
