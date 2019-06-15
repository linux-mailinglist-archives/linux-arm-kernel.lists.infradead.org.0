Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5221546D68
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 03:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpEbVG3tUqbOMeetJfA2Q6m4sDLnRoZJv3Nxe5pjKJw=; b=DXsLaWMpI79jPf
	+a8Ll/i8AUMhfp1m542ou5KpJKOoNchJlecxDtff6bw82na0seKZ3WoKsWRxqUmXSMhXsgMeABoya
	F8YHgvdEw2SObuVtxlEgNLCPnqCOdJz24Pkr5ccNGbcaivJHcxjHtU4lbOc6fo7gUOCeIo/B8mQM4
	QhcF1NjEnJj/vbFeul9fSz1q/ZFYqY16dvbsIRWvNMn1xhGaQ9EEXxgO0WcNLFfCNhyknR8sD8dH/
	vg+L1xL9mC0FWi7XousMoFXkm6XJASrBdkM/zy/TtTh8h34OD8x4Q6raBS6Oe3x3OWxTtBhyNrmEy
	oyrg4AZwJ/qpRJOmqH7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbxE9-00078E-Q8; Sat, 15 Jun 2019 01:11:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbxDf-0006wr-UE
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 01:11:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC658344;
 Fri, 14 Jun 2019 18:10:58 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DAC753F718;
 Fri, 14 Jun 2019 18:10:58 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] ACPI/PPTT: Modify node flag detection to find last
 IDENTICAL
Date: Fri, 14 Jun 2019 20:09:07 -0500
Message-Id: <20190615010910.33921-2-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190615010910.33921-1-jeremy.linton@arm.com>
References: <20190615010910.33921-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_181100_015581_85327EC3 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ACPI specification implies that the IDENTICAL flag should be
set on all non leaf nodes where the children are identical.
This means that we need to be searching for the last node with
the identical flag set rather than the first one.

Since this flag is also dependent on the table revision, we
need to add a bit of extra code to verify the table revision,
and the next node's state in the traversal. Since we want to
avoid function pointers here, lets just special case
the IDENTICAL flag.

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
---
 drivers/acpi/pptt.c | 35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
index b72e6afaa8fb..05344413f199 100644
--- a/drivers/acpi/pptt.c
+++ b/drivers/acpi/pptt.c
@@ -432,17 +432,40 @@ static void cache_setup_acpi_cpu(struct acpi_table_header *table,
 	}
 }
 
+static bool flag_identical(struct acpi_table_header *table_hdr,
+			   struct acpi_pptt_processor *cpu)
+{
+	struct acpi_pptt_processor *next;
+
+	/* heterogeneous machines must use PPTT revision > 1 */
+	if (table_hdr->revision < 2)
+		return false;
+
+	/* Locate the last node in the tree with IDENTICAL set */
+	if (cpu->flags & ACPI_PPTT_ACPI_IDENTICAL) {
+		next = fetch_pptt_node(table_hdr, cpu->parent);
+		if (!(next && next->flags & ACPI_PPTT_ACPI_IDENTICAL))
+			return true;
+	}
+
+	return false;
+}
+
 /* Passing level values greater than this will result in search termination */
 #define PPTT_ABORT_PACKAGE 0xFF
 
-static struct acpi_pptt_processor *acpi_find_processor_package_id(struct acpi_table_header *table_hdr,
-								  struct acpi_pptt_processor *cpu,
-								  int level, int flag)
+static struct acpi_pptt_processor *acpi_find_processor_tag(struct acpi_table_header *table_hdr,
+							   struct acpi_pptt_processor *cpu,
+							   int level, int flag)
 {
 	struct acpi_pptt_processor *prev_node;
 
 	while (cpu && level) {
-		if (cpu->flags & flag)
+		/* special case the identical flag to find last identical */
+		if (flag == ACPI_PPTT_ACPI_IDENTICAL) {
+			if (flag_identical(table_hdr, cpu))
+				break;
+		} else if (cpu->flags & flag)
 			break;
 		pr_debug("level %d\n", level);
 		prev_node = fetch_pptt_node(table_hdr, cpu->parent);
@@ -480,8 +503,8 @@ static int topology_get_acpi_cpu_tag(struct acpi_table_header *table,
 
 	cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
 	if (cpu_node) {
-		cpu_node = acpi_find_processor_package_id(table, cpu_node,
-							  level, flag);
+		cpu_node = acpi_find_processor_tag(table, cpu_node,
+						   level, flag);
 		/*
 		 * As per specification if the processor structure represents
 		 * an actual processor, then ACPI processor ID must be valid.
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
