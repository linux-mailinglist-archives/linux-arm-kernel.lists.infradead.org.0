Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E641746D38
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 02:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1cTAvrYBHWQMFqPJedLlZ2h4uup5OohrCo7nWTPEJVQ=; b=IfT/UrUQf+TtKXJdqCd1wPAiS6
	sI9R/Y0m1QlP11JYzej8Fh8pLzcqhML2v7IrHl+NCrt9AyZNGMkrCSw4NlDkFmmXLINOtPxGLzSZc
	9bRQHTx6Mfrvh+cUVR61WIZgPjUnzjIk4C2mEPB6jmiPwjuXAq8f6/bhIIG/3EPIoSbIO7DQbS6CD
	y/+Vv92x/barucE0sXnu+l7ziexNenswEj3blPCR3Mj4pxrNlMS2LO54Vi9JK0+OvOrwV8oVY9QCy
	emos3pnRJerGQyPUfsueeoUUcvepvitWOC004B+pXsdM4PWW9gtjJkPG08qeKv1o9v/Fj9M7eY7Rk
	wmctSoIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbwak-0001ZS-Qk; Sat, 15 Jun 2019 00:30:46 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbwa4-00007Z-TZ
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 00:30:06 +0000
Received: from ufdda393ec48b57.ant.amazon.com (localhost.localdomain
 [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5F0TfFR010961;
 Fri, 14 Jun 2019 19:29:46 -0500
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-pci@vger.kernel.org
Subject: [PATCH 2/4] pci: acpi: Read _DSM #5 from ACPI on root bridges
Date: Sat, 15 Jun 2019 10:23:57 +1000
Message-Id: <20190615002359.29577-2-benh@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190615002359.29577-1-benh@kernel.crashing.org>
References: <20190615002359.29577-1-benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_173005_204007_536315DB 
X-CRM114-Status: GOOD (  13.43  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Sinan Kaya <okaya@kernel.org>, Zeev Zilberman <zeev@amazon.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Ali Saidi <alisaidi@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reads _DSM #5 value on root bridges, and when 0, sets a "preserve_config"
flag in the host bridge structure indicating that the FW has requested that
the existing configuration be preserved.

The upcoming spec change to define _DSM #5 for host bridges states that
this should be the default behaviour, however doing so would be very
intrusive and break existing setups. So we leave the default to be
the existing behaviour.

Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---
 drivers/acpi/pci_root.c  | 23 +++++++++++++++++++++++
 include/linux/pci-acpi.h |  7 ++++---
 include/linux/pci.h      |  2 ++
 3 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/acpi/pci_root.c b/drivers/acpi/pci_root.c
index 39f5d172e84f..217b3916f0f1 100644
--- a/drivers/acpi/pci_root.c
+++ b/drivers/acpi/pci_root.c
@@ -881,6 +881,7 @@ struct pci_bus *acpi_pci_root_create(struct acpi_pci_root *root,
 	int node = acpi_get_node(device->handle);
 	struct pci_bus *bus;
 	struct pci_host_bridge *host_bridge;
+	union acpi_object *obj;
 
 	info->root = root;
 	info->bridge = device;
@@ -917,6 +918,28 @@ struct pci_bus *acpi_pci_root_create(struct acpi_pci_root *root,
 	if (!(root->osc_control_set & OSC_PCI_EXPRESS_LTR_CONTROL))
 		host_bridge->native_ltr = 0;
 
+	/*
+	 * Invoke the PCI device specific method (_DSM) #5 'Ignore PCI Boot
+	 * Configuration', on the host bridge. This tells us whether the
+	 * firmware wants us to preserve or reassign the configuration of
+	 * the PCI resource tree for this root bridge.
+	 *
+	 * For now, we only care about the function being present and returning
+	 * 0, which we use to set a flag indicating that we'll preserve the
+	 * FW configuration.
+	 *
+	 * This diverges from the spec which states that 0 is also the default
+	 * in absence of _DSM #5. We do that today to work around the fact that
+	 * our arm64 code doesn't implement the right defaults otherwise. This
+	 * will be superseeded by a more thorough handling of _DSM #5 once the
+	 * resource survey code has been consolidated further.
+	 */
+	obj = acpi_evaluate_dsm(ACPI_HANDLE(bus->bridge), &pci_acpi_dsm_guid, 1,
+	                        IGNORE_PCI_BOOT_CONFIG_DSM, NULL);
+	if (obj && obj->type == ACPI_TYPE_INTEGER && obj->integer.value == 0)
+		host_bridge->preserve_config = 1;
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
index dd436da7eccc..c50389b8df3c 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -506,6 +506,8 @@ struct pci_host_bridge {
 	unsigned int	native_shpc_hotplug:1;	/* OS may use SHPC hotplug */
 	unsigned int	native_pme:1;		/* OS may use PCIe PME */
 	unsigned int	native_ltr:1;		/* OS may use PCIe LTR */
+        unsigned int    preserve_config:1;	/* Preserve FW resources setup */
+
 	/* Resource alignment requirements */
 	resource_size_t (*align_resource)(struct pci_dev *dev,
 			const struct resource *res,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
