Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4D01DCD8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQB1Ff1GDIUUU/Snc2yQi1HyKY+j+X1z5FvAGuCvJUE=; b=dGHtLNVdD8wWMr
	nZvEVZew73f4wPCpflurR87mGunD/OKeBf5A8/5cHVUKDHOrgwXcfzFcpe4r+C2vgCu47SZ9hKM97
	OI+Hi2N+0ByEMF7H65hKROl50bSu4mdGTXqBOFNmIgZNhvPSi2bU1H1JCpxI1ZKvDlZMec4cq+hVP
	vX23KtOFBgWtPNdk+ZN/3ge4gUJXizPKWWXnR3EBJeNBgVJ3T4AsN5IoBySi2PSIpZe9TWNKC2TDO
	xzoM7S3tqcWlM7f7q3XF7wzV1oML3GTznPr/wNKLHIXh+daBZuFDLuUXbU0GP49l45veK7R3cpach
	R7cmjj6zifqCFcQN2iKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkoN-0007wd-Te; Thu, 21 May 2020 13:00:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbko8-0007ve-OB
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:00:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 906A91042;
 Thu, 21 May 2020 06:00:19 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.29.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1B2DD3F305;
 Thu, 21 May 2020 06:00:16 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 01/12] ACPI/IORT: Make iort_match_node_callback walk the ACPI
 namespace for NC
Date: Thu, 21 May 2020 13:59:57 +0100
Message-Id: <20200521130008.8266-2-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_060020_824386_D6EF32F6 
X-CRM114-Status: GOOD (  16.25  )
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
index 7d04424189df..7cfd77b5e6e8 100644
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
