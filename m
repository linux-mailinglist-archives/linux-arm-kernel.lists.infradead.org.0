Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CEA200376
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/cicobUB+bUbWqg05C3fm0HD4TwNx79j41Vq7BgQl50=; b=VFK8/Ep147E5EK
	hjpU4yFrDCprCrC8mQWuwrhfwb00UZgtrk++4N1GamKYuMEZi8j9lo9dXqXMG4CNGgstdg3rGBdbg
	vxXgiTN2CKcwh7MoCAD4vXjTSxm1M+MTNSeY+DD3jOwtMmxkVly0DVKYDfYMe9HHdUdi6gwWgv4OR
	zksrjvKNHs/1Hisn3uQ/nWnGJrMXtcOxVMxXCP9MNCqqYGlcG10iqTHch29Wz2yu2m9QgWXeU2uf4
	9i85s0OChVQleq1aN4NJ2sCw+weoxznpopmX3PGXgyhy98hYIl+5zkFxF8efWL2jN9bgS6wHHozIK
	3sauaTXAmDqqRQRodFLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCGS-0002P4-2W; Fri, 19 Jun 2020 08:20:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCGH-0002O5-Ji
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:20:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7289101E;
 Fri, 19 Jun 2020 01:20:30 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.58.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F6D23F71F;
 Fri, 19 Jun 2020 01:20:28 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 01/12] ACPI/IORT: Make iort_match_node_callback walk the
 ACPI namespace for NC
Date: Fri, 19 Jun 2020 09:20:02 +0100
Message-Id: <20200619082013.13661-2-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012033_691794_57E5A4B1 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marc Zyngier <maz@kernel.org>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 linux-pci@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Robin Murphy <robin.murphy@arm.com>,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the iort_match_node_callback is invoked for a named component
the match should be executed upon a device with an ACPI companion.

For devices with no ACPI companion set-up the ACPI device tree must be
walked in order to find the first parent node with a companion set and
check the parent node against the named component entry to check whether
there is a match and therefore an IORT node describing the in/out ID
translation for the device has been found.

Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Hanjun Guo <guohanjun@huawei.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
---
 drivers/acpi/arm64/iort.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 28a6b387e80e..5eee81758184 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -264,15 +264,31 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
 
 	if (node->type == ACPI_IORT_NODE_NAMED_COMPONENT) {
 		struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, NULL };
-		struct acpi_device *adev = to_acpi_device_node(dev->fwnode);
+		struct acpi_device *adev;
 		struct acpi_iort_named_component *ncomp;
+		struct device *nc_dev = dev;
+
+		/*
+		 * Walk the device tree to find a device with an
+		 * ACPI companion; there is no point in scanning
+		 * IORT for a device matching a named component if
+		 * the device does not have an ACPI companion to
+		 * start with.
+		 */
+		do {
+			adev = ACPI_COMPANION(nc_dev);
+			if (adev)
+				break;
+
+			nc_dev = nc_dev->parent;
+		} while (nc_dev);
 
 		if (!adev)
 			goto out;
 
 		status = acpi_get_name(adev->handle, ACPI_FULL_PATHNAME, &buf);
 		if (ACPI_FAILURE(status)) {
-			dev_warn(dev, "Can't get device full path name\n");
+			dev_warn(nc_dev, "Can't get device full path name\n");
 			goto out;
 		}
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
