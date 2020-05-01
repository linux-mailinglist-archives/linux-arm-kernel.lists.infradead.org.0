Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEB41C1A62
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vRCzHUZnSZdiMIm04K2OmH1LoqYi9YaIVyv5+8gM0HY=; b=dDDnWqdnL6HseWHZ0kuTyFoZGe
	wDy5r+goMtQUJ2Buk01vq2v+oWP6qIPtQFjKmNk0Crv8d9m6LJ8PbcYt3k4OHvkLEVBZIaVGM8j5h
	4AaambRFCY3cx6/EV78odZscEJZSAczz0Np5zKnyr4DmenhcgeN83PkV9/5fU+MvPQOqww6hN5j5P
	sUMkTEhqgJGIVWRUmGTSNZv2M3suUo6kF48POF04ulclGUlccBOS3+Y2JCbmQOSkRN+TXt4zwZhtO
	2VFdvNyT8D1IaG1ZUsFq0RE50BQtfX+Z2QmWOHnTdviJy6PeRsC1mJbBqT5I7G0ET0PEYG7Sj3Kkd
	i0rkLsLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYG2-0007Xo-GU; Fri, 01 May 2020 16:11:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYFC-0006fw-KW
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:10:32 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C53824957;
 Fri,  1 May 2020 16:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588349430;
 bh=0Sszvt5a994Rw/6MNs8ExhBptMa9b9Vl/iIWVwl6VKI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wh/shXif544RAUtlzDXCytz/e/F8IhDcdAfIS5WdH0tw9GCAUofaRGNxW81x9MQeU
 ducpt0+h9bxXLMh4VHAb6X70tt+JuTq7a+E4iSwTqahUN6PMoHW5WPmMH9YQNIhnCg
 keuOsc84GbwRbLUebJnTs97hsov8uqyHXiB67JpM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] ACPI/IORT: work around num_ids ambiguity
Date: Fri,  1 May 2020 18:10:14 +0200
Message-Id: <20200501161014.5935-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501161014.5935-1-ardb@kernel.org>
References: <20200501161014.5935-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_091030_723855_55976B3E 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-acpi@vger.kernel.org,
 Hanjun Guo <guohanjun@huawei.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ID mapping table structure of the IORT table describes the size of
a range using a num_ids field carrying the number of IDs in the region
minus one. This has been misinterpreted in the past in the parsing code,
and firmware is known to have shipped where this results in an ambiguity,
where regions that should be adjacent have an overlap of one value.

So let's work around this by detecting this case specifically: when
resolving an ID translation, allow one that matches right at the end of
a multi-ID region to be superseded by a subsequent one.

To prevent potential regressions on broken firmware that happened to
work before, only take the subsequent match into account if it occurs
at the start of a mapping region.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/acpi/arm64/iort.c | 40 +++++++++++++++++---
 1 file changed, 34 insertions(+), 6 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 98be18266a73..9f139a94a1d3 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -300,7 +300,7 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
 }
 
 static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
-		       u32 *rid_out)
+		       u32 *rid_out, bool check_overlap)
 {
 	/* Single mapping does not care for input id */
 	if (map->flags & ACPI_IORT_ID_SINGLE_MAPPING) {
@@ -316,10 +316,34 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 	}
 
 	if (rid_in < map->input_base ||
-	    (rid_in >= map->input_base + map->id_count))
+	    (rid_in > map->input_base + map->id_count))
 		return -ENXIO;
 
+	if (check_overlap) {
+		/*
+		 * We already found a mapping for this input ID at the end of
+		 * another region. If it coincides with the start of this
+		 * region, we assume the prior match was due to the off-by-1
+		 * issue mentioned below, and allow it to be superseded.
+		 * Otherwise, things are *really* broken, and we just disregard
+		 * duplicate matches entirely to retain compatibility.
+		 */
+		pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x\n",
+		       map, rid_in);
+		if (rid_in != map->input_base)
+			return -ENXIO;
+	}
+
 	*rid_out = map->output_base + (rid_in - map->input_base);
+
+	/*
+	 * Due to confusion regarding the meaning of the id_count field (which
+	 * carries the number of IDs *minus 1*), we may have to disregard this
+	 * match if it is at the end of the range, and overlaps with the start
+	 * of another one.
+	 */
+	if (map->id_count > 0 && rid_in == map->input_base + map->id_count)
+		return -EAGAIN;
 	return 0;
 }
 
@@ -404,7 +428,8 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
 	/* Parse the ID mapping tree to find specified node type */
 	while (node) {
 		struct acpi_iort_id_mapping *map;
-		int i, index;
+		int i, index, rc = 0;
+		u32 out_ref = 0, map_id = id;
 
 		if (IORT_TYPE_MASK(node->type) & type_mask) {
 			if (id_out)
@@ -438,15 +463,18 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
 			if (i == index)
 				continue;
 
-			if (!iort_id_map(map, node->type, id, &id))
+			rc = iort_id_map(map, node->type, map_id, &id, out_ref);
+			if (!rc)
 				break;
+			if (rc == -EAGAIN)
+				out_ref = map->output_reference;
 		}
 
-		if (i == node->mapping_count)
+		if (i == node->mapping_count && !out_ref)
 			goto fail_map;
 
 		node = ACPI_ADD_PTR(struct acpi_iort_node, iort_table,
-				    map->output_reference);
+				    rc ? out_ref : map->output_reference);
 	}
 
 fail_map:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
