Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845BE106D11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:57:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltimISfZtx5R+WVWMEFu+OxBvR5oNYcdAk3g4NajKzs=; b=dpZQiSitgXvDI9
	qyjbXUncdHtjxKFiXgOtVNeLMa8VXWFOGnSzmMYlaRGyTG9Xd1kv0yhTpYsOO8Q5UyxKTKtpTiNLS
	OodgK3aw9roBswMGvPC+IlgY//UmmZG6Bv4TJsqMatbWuak2qOgqDhaGgXShFDQmskAHI9BzMs+Fi
	HOF88R51CKxstfizChidZbz+QOSiuw25ZOwvpilzgjE7y+LOwPEzRmobjJrBaKrgcboBsXdwfCcXn
	R3Z24oQ5VUWUB8CR9ACR5EaV9N6CNbJ7BKUlWzdcUQyPMX9EMjIH05QLvnNrvCYkwekdyTaOAzwGq
	EtzRx/7eiNo6uMVIuQkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6co-0003iJ-Uw; Fri, 22 Nov 2019 10:57:18 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Ws-0005HA-4k
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:51:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id l1so6936521wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aC26ZRBFbmYV70jSo1HKJJ7IjzbboDUYJkvkZ3EdYLg=;
 b=vfaDiLT7EtBRsRXW4Zgm+1DrCHnQDwDqHpLwRYu5XOUtKTalNxQZgX9tAqVJjvg7r6
 LgZk39/YvtK71zxYp6NS58JLske+P7l3rl3zVLu4Cd4zeVP6dj9x/ISOAEo7oNTMd6qS
 XolSSPHxVb9lKQ1b0C9qxFbBAHSICl1Ml0n22n6MAt916pi+sExNtOoYjESps6GFd9bR
 4X44ci9NZHVdxQyOXYl2JlVPNX6oEb5vJDoEXR/bRRs30Ozu2Kzy2zOfoPqcWclfwFXe
 eV6DVfH8u652cASKVFeqzXATGvPEHCWbFo1ZDIdOEre3ZuXRUN9ySrOmlpGZ1JnsU6j8
 hX8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aC26ZRBFbmYV70jSo1HKJJ7IjzbboDUYJkvkZ3EdYLg=;
 b=M6cerD5Tu5w1Qstue7Pb7VZsDYrikccTI0GOmyCEogiubMZVpuTxbvvofuTBtUiEvR
 gp+LHk4usQu55e/veKqw8NYGGVSjeGVW15VYE//6+6V+UgLZqAZjy1jLhfFl3VN5T6VP
 RUGrHOel80N/EBCKUtKJXBDj3QPE9boIQ0lHvipbCd5GeIjIu2xKvUXtEVDtSanb10as
 3MwTRz5QIJIUkSAkMMocIaCivSjhLMbw2fSNofYCzvRacqSzPp8SO0mKie11Fa49GRRk
 XOfpqc+u4WHXgKFZ52z4dl4RgFYtxT5w93bZNv3vYlJ5WtzADEsOOAmn9Z0PNWG9erhh
 OqDA==
X-Gm-Message-State: APjAAAVIPM3flVWhsc7Nj3MQ4b1vfAS6BsiPHOn8R0DaaUfr5ImrT3xQ
 dq+FZHPgtZ8JJr+zgdxhMhSpPA==
X-Google-Smtp-Source: APXvYqwl/JTWkXjvxyNRIC06Ln+WPzSWKoYX/wHiOUMJz/VIl9vQ1AJB5MwhK+htUraqSB9dqnSVcA==
X-Received: by 2002:a7b:c006:: with SMTP id c6mr4006022wmb.52.1574419868455;
 Fri, 22 Nov 2019 02:51:08 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.51.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:51:07 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 13/13] iommu/virtio: Add topology description to
Date: Fri, 22 Nov 2019 11:50:00 +0100
Message-Id: <20191122105000.800410-14-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025110_301005_4BF78B5C 
X-CRM114-Status: GOOD (  23.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Some hypervisors don't implement either device-tree or ACPI, but still
need a method to describe the IOMMU topology. Read the virtio-iommu
config early and parse the topology description. Hook into the
dma_setup() callbacks to initialize the IOMMU before probing endpoints.

If the virtio-iommu uses the virtio-pci transport, this will only work
if the PCI root complex is the first device probed. We don't currently
support virtio-mmio.

Initially I tried to generate a fake IORT table and feed it to the IORT
driver, in order to avoid rewriting the whole DMA code, but it wouldn't
work with platform endpoints, which are references to items in the ACPI
table on IORT.

Signed-off-by: Eric Auger <eric.auger@redhat.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

---
Note that we only call virt_dma_configure() if the host didn't provide
either DT or ACPI method. If you want to test this with QEMU, you'll
need to manually disable the acpi_dma_configure() part in pci-driver.c
---
 drivers/base/platform.c               |   3 +
 drivers/iommu/Kconfig                 |   9 +
 drivers/iommu/Makefile                |   1 +
 drivers/iommu/virtio-iommu-topology.c | 410 ++++++++++++++++++++++++++
 drivers/iommu/virtio-iommu.c          |   3 +
 drivers/pci/pci-driver.c              |   3 +
 include/linux/virtio_iommu.h          |  18 ++
 include/uapi/linux/virtio_iommu.h     |  26 ++
 8 files changed, 473 insertions(+)
 create mode 100644 drivers/iommu/virtio-iommu-topology.c
 create mode 100644 include/linux/virtio_iommu.h

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index b230beb6ccb4..70b12c8ef2fb 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -27,6 +27,7 @@
 #include <linux/limits.h>
 #include <linux/property.h>
 #include <linux/kmemleak.h>
+#include <linux/virtio_iommu.h>
 
 #include "base.h"
 #include "power/power.h"
@@ -1257,6 +1258,8 @@ int platform_dma_configure(struct device *dev)
 	} else if (has_acpi_companion(dev)) {
 		attr = acpi_get_dma_attr(to_acpi_device_node(dev->fwnode));
 		ret = acpi_dma_configure(dev, attr);
+	} else if (IS_ENABLED(CONFIG_VIRTIO_IOMMU_TOPOLOGY)) {
+		ret = virt_dma_configure(dev);
 	}
 
 	return ret;
diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index e6eb4f238d1a..d02c0d36019d 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -486,4 +486,13 @@ config VIRTIO_IOMMU
 
 	  Say Y here if you intend to run this kernel as a guest.
 
+config VIRTIO_IOMMU_TOPOLOGY
+	bool "Topology properties for the virtio-iommu"
+	depends on VIRTIO_IOMMU
+	help
+	  Enable early probing of the virtio-iommu device, to detect the
+	  topology description.
+
+	  Say Y here if you intend to run this kernel as a guest.
+
 endif # IOMMU_SUPPORT
diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
index 4f405f926e73..6b51c4186ebc 100644
--- a/drivers/iommu/Makefile
+++ b/drivers/iommu/Makefile
@@ -35,3 +35,4 @@ obj-$(CONFIG_S390_IOMMU) += s390-iommu.o
 obj-$(CONFIG_QCOM_IOMMU) += qcom_iommu.o
 obj-$(CONFIG_HYPERV_IOMMU) += hyperv-iommu.o
 obj-$(CONFIG_VIRTIO_IOMMU) += virtio-iommu.o
+obj-$(CONFIG_VIRTIO_IOMMU_TOPOLOGY) += virtio-iommu-topology.o
diff --git a/drivers/iommu/virtio-iommu-topology.c b/drivers/iommu/virtio-iommu-topology.c
new file mode 100644
index 000000000000..ec22510ace3d
--- /dev/null
+++ b/drivers/iommu/virtio-iommu-topology.c
@@ -0,0 +1,410 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/acpi.h>
+#include <linux/acpi_iort.h>
+#include <linux/dma-iommu.h>
+#include <linux/iommu.h>
+#include <linux/list.h>
+#include <linux/pci.h>
+#include <linux/printk.h>
+#include <linux/virtio_config.h>
+#include <linux/virtio_iommu.h>
+#include <linux/virtio_pci.h>
+#include <uapi/linux/virtio_iommu.h>
+
+struct viommu_cap_config {
+	u8 pos; /* PCI capability position */
+	u8 bar;
+	u32 length; /* structure size */
+	u32 offset; /* structure offset within the bar */
+};
+
+struct viommu_spec {
+	struct device		*dev; /* transport device */
+	struct fwnode_handle	*fwnode;
+	struct iommu_ops	*ops;
+	struct list_head	topology;
+	struct list_head	list;
+};
+
+struct viommu_topology {
+	union {
+		struct virtio_iommu_topo_head head;
+		struct virtio_iommu_topo_pci_range pci;
+		struct virtio_iommu_topo_endpoint ep;
+	};
+	/* Index into viommu_spec->topology */
+	struct list_head list;
+};
+
+static LIST_HEAD(viommus);
+static DEFINE_MUTEX(viommus_lock);
+
+#define VPCI_FIELD(field) offsetof(struct virtio_pci_cap, field)
+
+static inline int viommu_find_capability(struct pci_dev *dev, u8 cfg_type,
+					 struct viommu_cap_config *cap)
+{
+	int pos;
+	u8 bar;
+
+	for (pos = pci_find_capability(dev, PCI_CAP_ID_VNDR);
+	     pos > 0;
+	     pos = pci_find_next_capability(dev, pos, PCI_CAP_ID_VNDR)) {
+		u8 type;
+
+		pci_read_config_byte(dev, pos + VPCI_FIELD(cfg_type), &type);
+		if (type != cfg_type)
+			continue;
+
+		pci_read_config_byte(dev, pos + VPCI_FIELD(bar), &bar);
+
+		/* Ignore structures with reserved BAR values */
+		if (type != VIRTIO_PCI_CAP_PCI_CFG && bar > 0x5)
+			continue;
+
+		cap->bar = bar;
+		cap->pos = pos;
+		pci_read_config_dword(dev, pos + VPCI_FIELD(length),
+				      &cap->length);
+		pci_read_config_dword(dev, pos + VPCI_FIELD(offset),
+				      &cap->offset);
+
+		return pos;
+	}
+	return 0;
+}
+
+/*
+ * Setup the special virtio PCI capability to read one of the config registers
+ */
+static int viommu_switch_pci_cfg(struct pci_dev *dev, int cfg,
+				 struct viommu_cap_config *cap, u32 length,
+				 u32 offset)
+{
+	offset += cap->offset;
+
+	if (offset + length > cap->offset + cap->length) {
+		dev_warn(&dev->dev,
+			 "read of %d bytes at offset 0x%x overflows cap of size %d\n",
+			 length, offset, cap->length);
+		return -EOVERFLOW;
+	}
+
+	pci_write_config_byte(dev, cfg + VPCI_FIELD(bar), cap->bar);
+	pci_write_config_dword(dev, cfg + VPCI_FIELD(length), length);
+	pci_write_config_dword(dev, cfg + VPCI_FIELD(offset), offset);
+	return 0;
+}
+
+static u32 viommu_cread(struct pci_dev *dev, int cfg,
+			struct viommu_cap_config *cap, u32 length, u32 offset)
+{
+	u8 val8;
+	u16 val16;
+	u32 val32;
+	int out = cfg + sizeof(struct virtio_pci_cap);
+
+	if (viommu_switch_pci_cfg(dev, cfg, cap, length, offset))
+		return 0;
+
+	switch (length) {
+	case 1:
+		pci_read_config_byte(dev, out, &val8);
+		return val8;
+	case 2:
+		pci_read_config_word(dev, out, &val16);
+		return val16;
+	case 4:
+		pci_read_config_dword(dev, out, &val32);
+		return val32;
+	default:
+		WARN_ON(1);
+		return 0;
+	}
+}
+
+static void viommu_cwrite(struct pci_dev *dev, int cfg,
+			  struct viommu_cap_config *cap, u32 length, u32 offset,
+			  u32 val)
+{
+	int out = cfg + sizeof(struct virtio_pci_cap);
+
+	if (viommu_switch_pci_cfg(dev, cfg, cap, length, offset))
+		return;
+
+	switch (length) {
+	case 1:
+		pci_write_config_byte(dev, out, (u8)val);
+		break;
+	case 2:
+		pci_write_config_word(dev, out, (u16)val);
+		break;
+	case 4:
+		pci_write_config_dword(dev, out, val);
+		break;
+	default:
+		WARN_ON(1);
+	}
+}
+
+static int viommu_add_topology(struct viommu_spec *viommu_spec,
+			       struct viommu_topology *cap)
+{
+	struct viommu_topology *new = kmemdup(cap, sizeof(*cap), GFP_KERNEL);
+
+	if (!new)
+		return -ENOMEM;
+
+	mutex_lock(&viommus_lock);
+	list_add(&new->list, &viommu_spec->topology);
+	mutex_unlock(&viommus_lock);
+	return 0;
+}
+
+static int viommu_parse_topology(struct pci_dev *dev, int pci_cfg,
+				 struct viommu_cap_config *dev_cfg)
+{
+	u32 offset;
+	struct viommu_topology cap;
+	struct viommu_spec *viommu_spec;
+	int iter = 0; /* Protects against config loop */
+
+	offset = viommu_cread(dev, pci_cfg, dev_cfg, 2,
+			      offsetof(struct virtio_iommu_config,
+				       topo_offset));
+	if (!offset)
+		return 0;
+
+	viommu_spec = kzalloc(sizeof(*viommu_spec), GFP_KERNEL);
+	if (!viommu_spec)
+		return -ENOMEM;
+
+	INIT_LIST_HEAD(&viommu_spec->topology);
+	viommu_spec->dev = &dev->dev;
+
+	while (offset >= sizeof(struct virtio_iommu_config) && ++iter < 0x10000) {
+		memset(&cap, 0, sizeof(cap));
+
+		cap.head.type = viommu_cread(dev, pci_cfg, dev_cfg, 2, offset);
+		cap.head.next = viommu_cread(dev, pci_cfg, dev_cfg, 2, offset + 2);
+
+		switch (cap.head.type) {
+		case VIRTIO_IOMMU_TOPO_PCI_RANGE:
+			cap.pci.endpoint_start = viommu_cread(dev, pci_cfg,
+							      dev_cfg, 2, offset
+							      + 4);
+			cap.pci.hierarchy = viommu_cread(dev, pci_cfg, dev_cfg,
+							 2, offset + 8);
+			cap.pci.requester_start = viommu_cread(dev, pci_cfg,
+							       dev_cfg, 2,
+							       offset + 10);
+			cap.pci.requester_end = viommu_cread(dev, pci_cfg,
+							     dev_cfg, 2, offset +
+							     12);
+			dev_info(&dev->dev,
+				 "topology: adding PCI range 0x%x [0x%x:0x%x] -> 0x%x\n",
+				 cap.pci.hierarchy, cap.pci.requester_start,
+				 cap.pci.requester_end, cap.pci.endpoint_start);
+			if (viommu_add_topology(viommu_spec, &cap))
+				return -ENOMEM;
+			break;
+		case VIRTIO_IOMMU_TOPO_ENDPOINT:
+			cap.ep.endpoint = viommu_cread(dev, pci_cfg, dev_cfg, 2,
+						       offset + 4);
+			cap.ep.address = viommu_cread(dev, pci_cfg, dev_cfg, 2,
+						      offset + 8);
+			dev_info(&dev->dev,
+				 "topology: adding endpoint 0x%llx -> 0x%x\n",
+				 cap.ep.address, cap.ep.endpoint);
+			if (viommu_add_topology(viommu_spec, &cap))
+				return -ENOMEM;
+			break;
+		default:
+			dev_warn(&dev->dev, "Unknown topo structure 0x%x\n",
+				 cap.head.type);
+			break;
+		}
+
+		offset = cap.head.next;
+	}
+
+	/* TODO: handle device removal */
+	mutex_lock(&viommus_lock);
+	list_add(&viommu_spec->list, &viommus);
+	mutex_unlock(&viommus_lock);
+
+	return 0;
+}
+
+static void viommu_pci_parse_topology(struct pci_dev *dev)
+{
+	int pos;
+	u32 features;
+	struct viommu_cap_config common = {0};
+	struct viommu_cap_config pci_cfg = {0};
+	struct viommu_cap_config dev_cfg = {0};
+
+	pos = viommu_find_capability(dev, VIRTIO_PCI_CAP_COMMON_CFG, &common);
+	if (!pos) {
+		dev_warn(&dev->dev, "common capability not found\n");
+		return;
+	}
+	pos = viommu_find_capability(dev, VIRTIO_PCI_CAP_DEVICE_CFG, &dev_cfg);
+	if (!pos) {
+		dev_warn(&dev->dev, "device config capability not found\n");
+		return;
+	}
+	pos = viommu_find_capability(dev, VIRTIO_PCI_CAP_PCI_CFG, &pci_cfg);
+	if (!pos) {
+		dev_warn(&dev->dev, "PCI config capability not found\n");
+		return;
+	}
+
+	/* Find out if the device supports topology description */
+	viommu_cwrite(dev, pos, &common, 4,
+		      offsetof(struct virtio_pci_common_cfg,
+			       device_feature_select),
+		      0);
+	features = viommu_cread(dev, pos, &common, 4,
+				offsetof(struct virtio_pci_common_cfg,
+					 device_feature));
+	if (!(features & VIRTIO_IOMMU_F_TOPOLOGY)) {
+		dev_dbg(&dev->dev, "device doesn't have topology description");
+		return;
+	}
+
+	viommu_parse_topology(dev, pos, &dev_cfg);
+}
+
+DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_REDHAT_QUMRANET, 0x1014,
+			viommu_pci_parse_topology);
+
+static const struct iommu_ops *virt_iommu_setup(struct device *dev)
+{
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+	const struct iommu_ops *viommu_ops = NULL;
+	struct fwnode_handle *viommu_fwnode;
+	struct viommu_spec *viommu_spec;
+	struct viommu_topology *topo;
+	struct pci_dev *pdev = NULL;
+	struct device *viommu_dev;
+	bool found = false;
+	u16 devid;
+	u32 eid;
+	int ret;
+
+	/* Already translated? */
+	if (fwspec && fwspec->ops)
+		return fwspec->ops;
+
+	if (dev_is_pci(dev)) {
+		pdev = to_pci_dev(dev);
+		devid = pci_dev_id(pdev);
+	} else {
+		/* TODO: Do something with devres */
+		return NULL;
+	}
+
+	mutex_lock(&viommus_lock);
+	list_for_each_entry(viommu_spec, &viommus, list) {
+		list_for_each_entry(topo, &viommu_spec->topology, list) {
+			if (pdev &&
+			    topo->head.type == VIRTIO_IOMMU_TOPO_PCI_RANGE &&
+			    pci_domain_nr(pdev->bus) == topo->pci.hierarchy &&
+			    devid >= topo->pci.requester_start &&
+			    devid <= topo->pci.requester_end) {
+				found = true;
+				eid = devid - topo->pci.requester_start +
+					topo->pci.endpoint_start;
+				break;
+			} else if (!pdev) {
+				/* TODO: compare address with devres */
+			}
+		}
+		if (found) {
+			viommu_ops = viommu_spec->ops;
+			viommu_fwnode = viommu_spec->fwnode;
+			viommu_dev = viommu_spec->dev;
+			break;
+		}
+	}
+	mutex_unlock(&viommus_lock);
+	if (!found)
+		return NULL;
+
+	/* We're not translating ourselves, that would be silly. */
+	if (viommu_dev == dev)
+		return NULL;
+
+	if (!viommu_ops)
+		return ERR_PTR(-EPROBE_DEFER);
+
+	ret = iommu_fwspec_init(dev, viommu_fwnode, viommu_ops);
+	if (ret)
+		return ERR_PTR(ret);
+
+	iommu_fwspec_add_ids(dev, &eid, 1);
+
+	return viommu_ops;
+}
+
+/**
+ * virt_dma_configure - Configure DMA of virtualized devices
+ * @dev: the endpoint
+ *
+ * An alternative to the ACPI and DT methods to setup DMA and the IOMMU ops of a
+ * virtual device.
+ *
+ * Return: -EPROBE_DEFER if the IOMMU hasn't been loaded yet, 0 otherwise
+ */
+int virt_dma_configure(struct device *dev)
+{
+	const struct iommu_ops *iommu_ops;
+
+	/* TODO: do we need to mess about with the dma_mask as well? */
+	WARN_ON(!dev->dma_mask);
+
+	iommu_ops = virt_iommu_setup(dev);
+	if (IS_ERR(iommu_ops)) {
+		if (PTR_ERR(iommu_ops) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		iommu_ops = NULL;
+	}
+
+	/*
+	 * If we have reason to believe the IOMMU driver missed the initial
+	 * add_device callback for dev, replay it to get things in order.
+	 */
+	if (iommu_ops && dev->bus && !device_iommu_mapped(dev))
+		iommu_probe_device(dev);
+
+#ifdef CONFIG_ARCH_HAS_SETUP_DMA_OPS
+	/* Assume coherent, as well as full 64-bit addresses. */
+	arch_setup_dma_ops(dev, 0, ~0UL, iommu_ops, true);
+#else
+	if (iommu_ops)
+		iommu_setup_dma_ops(dev, 0, ~0UL);
+#endif
+	return 0;
+}
+
+/**
+ * virt_set_iommu_ops - Set the IOMMU ops of a virtual IOMMU device
+ *
+ * Setup the iommu_ops associated to a viommu_spec, once the driver is loaded
+ * and the device probed.
+ */
+void virt_set_iommu_ops(struct device *dev, struct iommu_ops *ops)
+{
+	struct viommu_spec *viommu_spec;
+
+	mutex_lock(&viommus_lock);
+	list_for_each_entry(viommu_spec, &viommus, list) {
+		if (viommu_spec->dev == dev) {
+			viommu_spec->ops = ops;
+			viommu_spec->fwnode = ops ? dev->fwnode : NULL;
+			break;
+		}
+	}
+	mutex_unlock(&viommus_lock);
+}
diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 9847552faecc..f68ee9615b38 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -22,6 +22,7 @@
 #include <linux/virtio.h>
 #include <linux/virtio_config.h>
 #include <linux/virtio_ids.h>
+#include <linux/virtio_iommu.h>
 #include <linux/wait.h>
 
 #include <uapi/linux/virtio_iommu.h>
@@ -1134,6 +1135,7 @@ static int viommu_probe(struct virtio_device *vdev)
 	if (ret)
 		goto err_sysfs_remove;
 
+	virt_set_iommu_ops(dev->parent, &viommu_ops);
 	iommu_device_set_ops(&viommu->iommu, &viommu_ops);
 	iommu_device_register(&viommu->iommu);
 
@@ -1182,6 +1184,7 @@ static void viommu_remove(struct virtio_device *vdev)
 	struct viommu_dev *viommu = vdev->priv;
 
 	iommu_device_unregister(&viommu->iommu);
+	virt_set_iommu_ops(vdev->dev.parent, NULL);
 	viommu_clear_fwnode(viommu);
 	iommu_device_sysfs_remove(&viommu->iommu);
 
diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index a8124e47bf6e..d9b5e902ad18 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -17,6 +17,7 @@
 #include <linux/suspend.h>
 #include <linux/kexec.h>
 #include <linux/of_device.h>
+#include <linux/virtio_iommu.h>
 #include <linux/acpi.h>
 #include "pci.h"
 #include "pcie/portdrv.h"
@@ -1633,6 +1634,8 @@ static int pci_dma_configure(struct device *dev)
 		struct acpi_device *adev = to_acpi_device_node(bridge->fwnode);
 
 		ret = acpi_dma_configure(dev, acpi_get_dma_attr(adev));
+	} else if (IS_ENABLED(CONFIG_VIRTIO_IOMMU_TOPOLOGY)) {
+		ret = virt_dma_configure(dev);
 	}
 
 	pci_put_host_bridge_device(bridge);
diff --git a/include/linux/virtio_iommu.h b/include/linux/virtio_iommu.h
new file mode 100644
index 000000000000..b700256f1063
--- /dev/null
+++ b/include/linux/virtio_iommu.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef VIRTIO_IOMMU_H_
+#define VIRTIO_IOMMU_H_
+
+#if IS_ENABLED(CONFIG_VIRTIO_IOMMU_TOPOLOGY)
+int virt_dma_configure(struct device *dev);
+void virt_set_iommu_ops(struct device *dev, struct iommu_ops *ops);
+#else /* !CONFIG_VIRTIO_IOMMU_TOPOLOGY */
+static inline int virt_dma_configure(struct device *dev)
+{
+	return -ENODEV;
+}
+
+static inline void virt_set_iommu_ops(struct device *dev, struct iommu_ops *ops)
+{ }
+#endif /* !CONFIG_VIRTIO_IOMMU_TOPOLOGY */
+
+#endif /* VIRTIO_IOMMU_H_ */
diff --git a/include/uapi/linux/virtio_iommu.h b/include/uapi/linux/virtio_iommu.h
index 237e36a280cb..d3b7cd2a076f 100644
--- a/include/uapi/linux/virtio_iommu.h
+++ b/include/uapi/linux/virtio_iommu.h
@@ -16,6 +16,7 @@
 #define VIRTIO_IOMMU_F_BYPASS			3
 #define VIRTIO_IOMMU_F_PROBE			4
 #define VIRTIO_IOMMU_F_MMIO			5
+#define VIRTIO_IOMMU_F_TOPOLOGY			6
 
 struct virtio_iommu_range_64 {
 	__le64					start;
@@ -36,6 +37,31 @@ struct virtio_iommu_config {
 	struct virtio_iommu_range_32		domain_range;
 	/* Probe buffer size */
 	__le32					probe_size;
+	/* Offset to the beginning of the topology table */
+	__le16					topo_offset;
+};
+
+struct virtio_iommu_topo_head {
+	__le16					type;
+	__le16					next;
+};
+
+#define VIRTIO_IOMMU_TOPO_PCI_RANGE		0x0
+#define VIRTIO_IOMMU_TOPO_ENDPOINT		0x1
+
+struct virtio_iommu_topo_pci_range {
+	struct virtio_iommu_topo_head		head;
+	__le32					endpoint_start;
+	__le16					hierarchy;
+	__le16					requester_start;
+	__le16					requester_end;
+	__le16					reserved;
+};
+
+struct virtio_iommu_topo_endpoint {
+	struct virtio_iommu_topo_head		head;
+	__le32					endpoint;
+	__le64					address;
 };
 
 /* Request types */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
