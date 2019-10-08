Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C9CD0154
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 21:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K2q4zlkcJ9zDOhQpJ/xG1BVYuZMZ13lBBRmn057uXP4=; b=lvsIpV/xGWGRRc
	pWd8Ifq0Z7O4MQp39LhyBVu764S2Va2RLw+DkAV6OqpMxDbTGWqPkozrh+X7EqM2HcBa8cNLzduZ7
	/elrLYPgs9y1+8PU+gF+Jpsj0R/xazRAbdqui0vOUn4IOdzkiLg2o1BmsseYXlq1PQq2zBS/3W4/U
	t+X/HjsCEeVAF4fAXRVdCddmI+jkxF0KxF1hP6U0Hi7B2DC38++isAb9kwx/Dy6lmk2BWW3RYkDMH
	ZsnSUQIOXRrhzpOKKw1IPv3OPMJaHVp2Y0Oz9dOzguJo3tQJU6QcuJDmNMaAIHtBaEV5JeFLrZSsg
	GPV7dqWRCd3xs3oTfvdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHvO4-0006aS-R0; Tue, 08 Oct 2019 19:43:12 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHvNx-0006ZV-3G
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 19:43:06 +0000
Received: by mail-ot1-f66.google.com with SMTP id z6so15120290otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 12:43:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+hHpNdmx6ZCCeIfcgfwoHn6k+baku1ya57GjAAC0jCk=;
 b=MCeIP+1UmZGR/d2jpu7YytudQ42Z89gKKQaJqP7s2MVmPLPesyGXn5i3m9byufizKY
 Ou5SdAiuwOST7pxCQZbRFY9iq9weegSGg10a4HpWCull5XDP39uqhGuKE7rWr7ZUvRuc
 mThzX3Y8SAnrGEql34JZ4PLr5U4Q7uGizhGCGy0Y6DVhm6lmyhVotsgDYqTrY0nxd95j
 tYRRuDb3naMP/g5EoaRHl774DMGyd8f/WMBaahqFJRd/XX0REZCH89lfaQJ4QicXr8gb
 JHIwaQin//MOnx+s91t9B+YV3yQMpvy0HJrXdiMUWpVpLk84XjOpg/st/FNgpeAYBxRL
 N5IQ==
X-Gm-Message-State: APjAAAWfsGmQjUlnzwwljNsPUmBrbbnVInEfoYNVbhinNONB/5I5CbVb
 1afoszy6uWH5ssmUcewLDA==
X-Google-Smtp-Source: APXvYqx0hRy7RDge7tDO8F/mdn/AaiNxsFZGFE5MtHui5GF4agtZ9gjqzUAbj2L8XkP8g+AKBmIBHg==
X-Received: by 2002:a9d:64c8:: with SMTP id n8mr5431476otl.342.1570563781495; 
 Tue, 08 Oct 2019 12:43:01 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id y16sm5481079otg.7.2019.10.08.12.43.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 12:43:00 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH v2] of: Make of_dma_get_range() work on bus nodes
Date: Tue,  8 Oct 2019 14:43:00 -0500
Message-Id: <20191008194300.12626-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_124305_139041_45AB7B52 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

Since the "dma-ranges" property is only valid for a node representing a
bus, of_dma_get_range() currently assumes the node passed in is a leaf
representing a device, and starts the walk from its parent. In cases
like PCI host controllers on typical FDT systems, however, where the PCI
endpoints are probed dynamically the initial leaf node represents the
'bus' itself, and this logic means we fail to consider any "dma-ranges"
describing the host bridge itself. Rework the logic such that
of_dma_get_range() also works correctly starting from a bus node
containing "dma-ranges".

While this does mean "dma-ranges" could incorrectly be in a device leaf
node, there isn't really any way in this function to ensure that a leaf
node is or isn't a bus node.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
[robh: Allow for the bus child node to still be passed in]
Signed-off-by: Rob Herring <robh@kernel.org>

---
v2:
 - Ensure once we find dma-ranges, every parent has it.
 - Only get the #{size,address}-cells after we find non-empty dma-ranges
 - Add a check on the 'dma-ranges' length
---
 drivers/of/address.c | 44 ++++++++++++++++++--------------------------
 1 file changed, 18 insertions(+), 26 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 5ce69d026584..99c1b8058559 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -930,47 +930,39 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
 	const __be32 *ranges = NULL;
 	int len, naddr, nsize, pna;
 	int ret = 0;
+	bool found_dma_ranges = false;
 	u64 dmaaddr;
 
-	if (!node)
-		return -EINVAL;
-
-	while (1) {
-		struct device_node *parent;
-
-		naddr = of_n_addr_cells(node);
-		nsize = of_n_size_cells(node);
-
-		parent = __of_get_dma_parent(node);
-		of_node_put(node);
-
-		node = parent;
-		if (!node)
-			break;
-
+	while (node) {
 		ranges = of_get_property(node, "dma-ranges", &len);
 
 		/* Ignore empty ranges, they imply no translation required */
 		if (ranges && len > 0)
 			break;
 
-		/*
-		 * At least empty ranges has to be defined for parent node if
-		 * DMA is supported
-		 */
-		if (!ranges)
-			break;
+		/* Once we find 'dma-ranges', then a missing one is an error */
+		if (found_dma_ranges && !ranges) {
+			ret = -ENODEV;
+			goto out;
+		}
+		found_dma_ranges = true;
+
+		node = of_get_next_dma_parent(node);
 	}
 
-	if (!ranges) {
+	if (!node || !ranges) {
 		pr_debug("no dma-ranges found for node(%pOF)\n", np);
 		ret = -ENODEV;
 		goto out;
 	}
 
-	len /= sizeof(u32);
-
+	naddr = of_bus_n_addr_cells(node);
+	nsize = of_bus_n_size_cells(node);
 	pna = of_n_addr_cells(node);
+	if ((len / sizeof(__be32)) % (pna + naddr + nsize)) {
+		ret = -EINVAL;
+		goto out;
+	}
 
 	/* dma-ranges format:
 	 * DMA addr	: naddr cells
@@ -978,7 +970,7 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
 	 * size		: nsize cells
 	 */
 	dmaaddr = of_read_number(ranges, naddr);
-	*paddr = of_translate_dma_address(np, ranges);
+	*paddr = of_translate_dma_address(node, ranges + naddr);
 	if (*paddr == OF_BAD_ADDR) {
 		pr_err("translation of DMA address(%llx) to CPU address failed node(%pOF)\n",
 		       dmaaddr, np);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
