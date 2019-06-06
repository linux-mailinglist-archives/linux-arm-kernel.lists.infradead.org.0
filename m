Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0BE36F50
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDCgXN/bqYWy7zf5oPQAFogoYuXxra+PCTbz4nsXBcA=; b=YA2AaMSwbeihXi
	i+h1PCVfQigzFZHiY/RUv/HlBi61re4bcLFjT+Uio5+ukP3YuOXvbAl5MPPf5FFysqDG0qcC+GMba
	fSFa9ALDqrZvLcV1FRKYB6ukm6OQwUByZgFKjVGU/bAZ/nI2iMDZ3iHnHJFzCRKGI5qkZf35aHZAg
	N/2CRFm/T6uvDUzfbizC89QoqLqYz26bjVMuj0b1OiC5dog5BPXR3vngf2bMlvtzW13i7se0R6vzW
	MFnQJYexmAwtq+JjjH2C/zA2cRluWLY19B6agS0HqBvZX8Me9XO6IU2sek2UlSajZolwXtDCsGoeJ
	z/FUM7Dy1i7jdu486cyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoGD-0002lq-SD; Thu, 06 Jun 2019 09:00:37 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoG5-0002lL-9E
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:00:31 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5690DKJ025744;
 Thu, 6 Jun 2019 04:00:13 -0500
Message-ID: <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
Subject: [PATCH/RESEND] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Thu, 06 Jun 2019 19:00:12 +1000
In-Reply-To: <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
 <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_020029_477721_EA7A1E82 
X-CRM114-Status: GOOD (  16.19  )
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
X-Mailman-Version: 2.1.21
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, "Zilberman, Zeev" <zeev@amazon.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

On arm64 ACPI systems, we unconditionally reconfigure the entire PCI
hierarchy at boot. This is a departure from what is customary on ACPI
systems, and may break assumptions in some places (e.g., EFIFB), that
the kernel will leave BARs of enabled PCI devices where they are.

Given that PCI already specifies a device specific ACPI method (_DSM)
for PCI root bridge nodes that tells us whether the firmware thinks
the configuration should be left alone, let's sidestep the entire
policy debate about whether the PCI configuration should be preserved
or not, and put it under the control of the firmware instead.

[BenH: Added pci_assign_unassigned_root_bus_resources()]

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---

So I would like this variant rather than mucking around with
IORESOURCE_PCI_FIXED at this stage to fix the problem with our platforms.

See my other email, IORESOURCE_PCI_FIXED doesn't really work terribly well
when using pci_bus_size_bridges and pci_bus_assign_resources, and the
resulting patches are ugly and add more mess.

Long run, I propose to start working on consolidating all those various
resource survey mechanisms around what x86 does, unless people strongly
object... (with the addition of the probe only and force reassign quirks
so platforms can still chose that).

Note: I haven't tested the effect of pci_assign_unassigned_root_bus_resources
as our platforms don't leave anything unassigned. I'm not entirely sure how
well pci_bus_claim_resources() will deal with a partially assigned setup...

We do want to support partial assignment by BIOS though, it's a trend to
reduce boot time, people seem to want BIOSes to only assign what's critical
for booting.

Bjorn: I haven't made the claim path the default in absence of _DSM #5 yet.
I suggest we do that as a separate patch in case it breaks somebody, thus
making bisection more meaningful. It will also make this one more palatable
to distros since it won't change the behaviour on systems without _DSM #5,
and we verified nobody has it except Seattle which returns 1. 

 arch/arm64/kernel/pci.c  | 23 +++++++++++++++++++++--
 include/linux/pci-acpi.h |  7 ++++---
 2 files changed, 25 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kernel/pci.c b/arch/arm64/kernel/pci.c
index bb85e2f4603f..6358e1cb4f9f 100644
--- a/arch/arm64/kernel/pci.c
+++ b/arch/arm64/kernel/pci.c
@@ -168,6 +168,7 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
 	struct acpi_pci_generic_root_info *ri;
 	struct pci_bus *bus, *child;
 	struct acpi_pci_root_ops *root_ops;
+	union acpi_object *obj;
 
 	ri = kzalloc(sizeof(*ri), GFP_KERNEL);
 	if (!ri)
@@ -193,8 +194,26 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
 	if (!bus)
 		return NULL;
 
-	pci_bus_size_bridges(bus);
-	pci_bus_assign_resources(bus);
+	/*
+	 * Invoke the PCI device specific method (_DSM) #5 'Ignore PCI Boot
+	 * Configuration', which tells us whether the firmware wants us to
+	 * preserve the configuration of the PCI resource tree for this root
+	 * bridge.
+	 */
+	obj = acpi_evaluate_dsm(ACPI_HANDLE(bus->bridge), &pci_acpi_dsm_guid, 1,
+	                        IGNORE_PCI_BOOT_CONFIG_DSM, NULL);
+	if (obj && obj->type == ACPI_TYPE_INTEGER && obj->integer.value == 0) {
+		/* preserve existing resource assignment */
+		pci_bus_claim_resources(bus);
+
+		/* Assign anything that might have been left out */
+		pci_assign_unassigned_root_bus_resources(bus);
+	} else {
+		/* reconfigure the resource tree from scratch */
+		pci_bus_size_bridges(bus);
+		pci_bus_assign_resources(bus);
+	}
+	ACPI_FREE(obj);
 
 	list_for_each_entry(child, &bus->children, node)
 		pcie_bus_configure_settings(child);
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



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
