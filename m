Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CB7433E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IJ7RnzJURM04o0LkwDXCnw+G9s5/5dRyQmy237Lme+U=; b=NWn4fYEuV3Yo9m
	k7Mb2KmT/W7kLFqatGpyjncFk2KgKkD5JKR2XY4iyvXdhES5zYwMUT5VP1VgPlQUGlmiksKygAPOo
	TXPJ4ZKccgSDVz1BPzD5Wg/EgeNIQtB+jWLAX5UJekxkfN5DolE4+Z4RDzim/0n9s0+GYTzOq/kry
	4+pxcuFt0p2hzn6rAwJRDi5odRPyeWQso9rUBjwYzXfNmXWSrAjTLGwx0LuKZ/28dxeZDoZdgEozY
	UV51OGLyep8zv3sy3f9Ow3wTiKfLDty2HJDe62KuKwso5ObHwwJ5nmQ29W3Zef8wIisf+/LJstLpz
	HlxnIB/m4XbgIC+TIWYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbKZs-0005qM-9g; Thu, 13 Jun 2019 07:55:20 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbKZf-0005au-Nr
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 07:55:09 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5D7suM2000424;
 Thu, 13 Jun 2019 02:54:57 -0500
Message-ID: <5783e36561bb77a1deb6ba67e5a9824488cc69c6.camel@kernel.crashing.org>
Subject: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Thu, 13 Jun 2019 17:54:56 +1000
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_005507_945546_3ACAE79C 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: linux-pci@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sinan Kaya <okaya@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current arm64 PCI code for ACPI platforms will unconditionally
reassign all resources.

This is not only suboptimal, it's also wrong for a number of cases, for
example, this could invalidate a UEFI framebuffer address, or a runtime
firmware could be using some of the devices in their original location.

There is an ACPI method defined today for P2P bridges (_DSM #5) that
can indicate that a bridge resources set by firmware. There is current
discussions to extend that method to cover host bridges, and define
a value of "0" as meaning that the resources must be preserved.

This patch adds the resource assignment policy to struct
pci_host_bridge and sets it based on the presence of that method and if
present the value returned, and honors it on arm64.

No other architectures are currently affected, and the default is kept
to "reassign everything" on arm64 for now via an #ifdef, though we do
plan to get rid of that in a separate patch.

The setting in pci_host_bridge "looks" generic because I intend in
subsquent work to consolidate the resource allocation policy accross
architectures and I intend for that setting to be the canonical
location used by the generic code to decide what to do.

This is based on some earlier work by
Ard Biesheuvel <ard.biesheuvel@linaro.org>

Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---

 arch/arm64/kernel/pci.c  | 12 ++++++++++--
 drivers/acpi/pci_root.c  | 42 ++++++++++++++++++++++++++++++++++++++++
 include/linux/pci-acpi.h |  7 ++++---
 include/linux/pci.h      | 10 ++++++++++
 4 files changed, 66 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kernel/pci.c b/arch/arm64/kernel/pci.c
index bb85e2f4603f..b209a506f390 100644
--- a/arch/arm64/kernel/pci.c
+++ b/arch/arm64/kernel/pci.c
@@ -168,6 +168,7 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
 	struct acpi_pci_generic_root_info *ri;
 	struct pci_bus *bus, *child;
 	struct acpi_pci_root_ops *root_ops;
+	struct pci_host_bridge *hb;
 
 	ri = kzalloc(sizeof(*ri), GFP_KERNEL);
 	if (!ri)
@@ -193,8 +194,15 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
 	if (!bus)
 		return NULL;
 
-	pci_bus_size_bridges(bus);
-	pci_bus_assign_resources(bus);
+	hb = pci_find_host_bridge(bus);
+
+	/* If the policy is normal or probe only, claim existing resources */
+	if (hb->rsrc_policy != pci_rsrc_reassign)
+		pci_bus_claim_resources(bus);
+
+	/* If the policy is not probe only, assign what's left unassigned */
+	if (hb->rsrc_policy != pci_rsrc_probe_only)
+		pci_assign_unassigned_root_bus_resources(bus);
 
 	list_for_each_entry(child, &bus->children, node)
 		pcie_bus_configure_settings(child);
diff --git a/drivers/acpi/pci_root.c b/drivers/acpi/pci_root.c
index 39f5d172e84f..410f7f2b2587 100644
--- a/drivers/acpi/pci_root.c
+++ b/drivers/acpi/pci_root.c
@@ -881,6 +881,7 @@ struct pci_bus *acpi_pci_root_create(struct acpi_pci_root *root,
 	int node = acpi_get_node(device->handle);
 	struct pci_bus *bus;
 	struct pci_host_bridge *host_bridge;
+	union acpi_object *obj;
 
 	info->root = root;
 	info->bridge = device;
@@ -917,6 +918,47 @@ struct pci_bus *acpi_pci_root_create(struct acpi_pci_root *root,
 	if (!(root->osc_control_set & OSC_PCI_EXPRESS_LTR_CONTROL))
 		host_bridge->native_ltr = 0;
 
+	/*
+	 * Invoke the PCI device specific method (_DSM) #5 'Ignore PCI Boot
+	 * Configuration', on the host bridge. This tells us whether the
+	 * firmware wants us to preserve or reassign the configuration of
+	 * the PCI resource tree for this root bridge.
+	 *
+	 * There are three possible outcomes here:
+	 *
+	 *  - _DSM #5 is absent. This is the default. Currently it will be
+	 *    architecture specific in order to maintain existing behaviours
+	 *    but the plan is to move arm64 into the fold: x86 and ia64 will
+	 *    claim the existing config, and reassign if needed. arm64 will
+	 *    always reassign.
+	 *
+	 *  - _DSM #5 exists and is 1. This is the FW telling us to ignore
+	 *    the configuration it performed. This is currently only supported
+	 *    on arm64.
+	 *
+	 *  - _DSM #5 exists and is 0. This should be the same as the default
+	 *    (_DSM #5 absent). However there are some assumptions flying around
+	 *    that this means we must keep the FW configuration intact. So we
+	 *    treat that as "probe only" for the time being. This is currently
+	 *    only supported on arm64.
+	 */
+	obj = acpi_evaluate_dsm(ACPI_HANDLE(bus->bridge), &pci_acpi_dsm_guid, 1,
+	                        IGNORE_PCI_BOOT_CONFIG_DSM, NULL);
+	if (obj && obj->type == ACPI_TYPE_INTEGER) {
+		if (obj->integer.value == 1)
+			host_bridge->rsrc_policy = pci_rsrc_reassign;
+		else
+			host_bridge->rsrc_policy = pci_rsrc_probe_only;
+	} else {
+		/* Default is arch specific ... for now */
+#ifdef CONFIG_ARM64
+		host_bridge->rsrc_policy = pci_rsrc_reassign;
+#else
+		host_bridge->rsrc_policy = pci_rsrc_normal;
+#endif
+	}
+	ACPI_FREE(obj);
+
 	pci_scan_child_bus(bus);
 	pci_set_host_bridge_release(host_bridge, acpi_pci_root_release_info,
 				    info);
diff --git a/include/linux/pci-acpi.h b/include/linux/pci-acpi.h
index 8082b612f561..62b7fdcc661c 100644
--- a/include/linux/pci-acpi.h
+++ b/include/linux/pci-acpi.h
@@ -107,9 +107,10 @@ static inline void acpiphp_check_host_bridge(struct acpi_device *adev) { }
 #endif
 
 extern const guid_t pci_acpi_dsm_guid;
-#define DEVICE_LABEL_DSM	0x07
-#define RESET_DELAY_DSM		0x08
-#define FUNCTION_DELAY_DSM	0x09
+#define IGNORE_PCI_BOOT_CONFIG_DSM	0x05
+#define DEVICE_LABEL_DSM		0x07
+#define RESET_DELAY_DSM			0x08
+#define FUNCTION_DELAY_DSM		0x09
 
 #else	/* CONFIG_ACPI */
 static inline void acpi_pci_add_bus(struct pci_bus *bus) { }
diff --git a/include/linux/pci.h b/include/linux/pci.h
index dd436da7eccc..7ff5cedb30cf 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -486,6 +486,12 @@ static inline int pci_channel_offline(struct pci_dev *pdev)
 	return (pdev->error_state != pci_channel_io_normal);
 }
 
+enum pci_host_rsrc_policy {
+	pci_rsrc_normal,	/* Probe and (re)assign what's missing/broken */
+	pci_rsrc_probe_only,	/* Probe only */
+	pci_rsrc_reassign,	/* Reassign resources */
+};
+
 struct pci_host_bridge {
 	struct device	dev;
 	struct pci_bus	*bus;		/* Root bus */
@@ -506,6 +512,10 @@ struct pci_host_bridge {
 	unsigned int	native_shpc_hotplug:1;	/* OS may use SHPC hotplug */
 	unsigned int	native_pme:1;		/* OS may use PCIe PME */
 	unsigned int	native_ltr:1;		/* OS may use PCIe LTR */
+
+	/* Resource assignment/allocation policy */
+	enum pci_host_rsrc_policy rsrc_policy;
+
 	/* Resource alignment requirements */
 	resource_size_t (*align_resource)(struct pci_dev *dev,
 			const struct resource *res,



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
