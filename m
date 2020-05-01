Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE841C1093
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 11:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1PfimTTcT/rfllB+vYwMXKGNHFqjqbVE+Eqd/yhR1m8=; b=td94bTvoQfrrunb1CV7TiJmTyf
	IkfEp2ghuTo+gAvfHFTbRQaDH1FkeLaAP5a6CQFL3HX6Lvm/48LPhjvo2v0i+SOnJPD9zjXkSOdIy
	hbaFW8LjgL6iZk7j8EWlRIL+NADf70pTXMCQhdd5rzLEFtFdrfVC0HDLcb815rqngyQ01IQzqhqBD
	dfA52VsU3DO36g62ooyhkdwO4BHKyoqHIe8KzS/YHRqnU8hSCt0xlMZQxVswoXGkszcZkPekmlMa4
	RADsU78BIulYASM+83T4kbFJB+X3LMhgXIlffK88CgunT0BTRLhZ6SqN4xOIVLFSe7T/DGkrB3O9A
	57YQ2/NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUSSN-0000tt-2G; Fri, 01 May 2020 09:59:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUSRj-0000SE-6K
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 09:59:04 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A47722184D;
 Fri,  1 May 2020 09:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588327142;
 bh=S5ZDpsLyWfU1rfV4y4NUHWurv9nZWihyTCZvqMc9DQY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YhW+0ZLDcOsNllJkazCkwC95mG97vEEaoIPqESx4Y/nE4MsVqM3zP3zv15bYonqhb
 Fu/AHXMeGZkOGxU+fQhCSA19SAGN4DEnot7TJQFS69Z7yzYuR18VcJg0eaOtP5X7Ke
 ncF25Mx1Qh/uHJRKPXqZypW+1Q6pihB6bVN8BUpg=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RFC 2/2] ACPI/IORT: work around num_ids ambiguity
Date: Fri,  1 May 2020 11:58:43 +0200
Message-Id: <20200501095843.25401-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501095843.25401-1-ardb@kernel.org>
References: <20200501095843.25401-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_025903_276076_A1DA971E 
X-CRM114-Status: GOOD (  16.32  )
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

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/acpi/arm64/iort.c | 23 +++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 98be18266a73..d826dd9dc4c5 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -316,10 +316,19 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 	}
 
 	if (rid_in < map->input_base ||
-	    (rid_in >= map->input_base + map->id_count))
+	    (rid_in > map->input_base + map->id_count))
 		return -ENXIO;
 
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
 
@@ -404,7 +413,8 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
 	/* Parse the ID mapping tree to find specified node type */
 	while (node) {
 		struct acpi_iort_id_mapping *map;
-		int i, index;
+		int i, index, rc = 0;
+		u32 out_ref = 0, map_id = id;
 
 		if (IORT_TYPE_MASK(node->type) & type_mask) {
 			if (id_out)
@@ -438,15 +448,18 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
 			if (i == index)
 				continue;
 
-			if (!iort_id_map(map, node->type, id, &id))
+			rc = iort_id_map(map, node->type, map_id, &id);
+			if (!rc)
 				break;
+			if (rc == -EAGAIN)
+				out_ref = map->output_reference;
 		}
 
-		if (i == node->mapping_count)
+		if (i == node->mapping_count && rc != -EAGAIN)
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
