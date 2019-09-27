Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9AFBFC6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKVXmQLpUB6a4HUUCQdVG1Bgr8Zm56UhkhS1Egi7Wfk=; b=hN3AjKV5LPMQnT
	72ve9cLzkKHPXwqeuRN/XpupHAIr9Wyb/wlRGVxDVsugHX7peiSZBiZW+4lTljNE3TRPlGmECwNua
	bnuGTDQWQIYHHOrjSqZosolkbMbzc+JYa2QTj4CGPUV2ckSrlqotiPe22rn5iWC/hQN7GAavUUoUY
	acnxq6Ddi/ioQS3fl9VGaCAN80xG2PGe+BbhqFRyhPE5nD+2AMYf2e8epVV6GUnVlX7NZpc4YSJ9U
	rq4AWor9onM9YruDO0pSyeau0bu6kQL+FDGGYaVVQsul9gwhqV/YbIbgto9o0Tn031qyhWoU683TF
	OO7BjVoBC06bQZdWhivg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe6l-0007Gz-Fl; Fri, 27 Sep 2019 00:27:39 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4N-0004xK-9u
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:13 +0000
Received: by mail-ot1-f67.google.com with SMTP id g13so764077otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:25:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+t0HPsSboHAO+BoQ/6wZRtvX50rdRybsdCc4k/BGGOU=;
 b=MCoCY78twM0JRmtkUhOcqXrNBqal0OOxjUPCbwXYkLdGPQuJT/ch/eK9/OKy7vYtoP
 9QCVGlzNZexWB1LI/jxMIo8V9AwBonrJ8yQpa+0bAlFdHi4ftSDrBev0ws5BQsedLo+K
 EHO1JnKJsiCp9R5IhndmFmUG2LVnF/FVWTGQzv2LS1BebKSz+FLLlNKGLDBVqwfrOpHK
 ivJiPykR/lI5ljmBidXtCcNfrJbM5FUkxwwShBjalE43o7+od+bPKJarEgc3OTYCoXOu
 sfZ4veu9YhJN+Tssyu4NTzsM6gTALYEiFzVRKCo+ePn4iEXxKkISaUjScWBRI3Z2YbbS
 BzBQ==
X-Gm-Message-State: APjAAAV4JHPHO5SPw6htEWyQjzuogdwfJdR6uu4t4APst5V2vV+4EuZd
 H6poAhenRg1QhehhUEPKQA==
X-Google-Smtp-Source: APXvYqwlqui2UKuMtp8r6la4AcjByFeStlouN8pLtfIFhhyhtZVP8xij2Q0PurThyDu0Z4XEh1j7IQ==
X-Received: by 2002:a05:6830:4a5:: with SMTP id
 l5mr991746otd.150.1569543910071; 
 Thu, 26 Sep 2019 17:25:10 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.25.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:25:09 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 09/11] of: Make of_dma_get_range() work on bus nodes
Date: Thu, 26 Sep 2019 19:24:53 -0500
Message-Id: <20190927002455.13169-10-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172511_502132_874C62DE 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Frank Rowand <frowand.list@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
of_dma_get_range() works correctly starting from a bus node containing
"dma-ranges".

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
[robh: Allow for the bus child node to still be passed in]
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/address.c | 24 +++++-------------------
 1 file changed, 5 insertions(+), 19 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 887c0413f648..e918001c7798 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -922,18 +922,9 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
 	if (!node)
 		return -EINVAL;
 
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
+	while (node) {
+		naddr = of_bus_n_addr_cells(node);
+		nsize = of_bus_n_size_cells(node);
 
 		ranges = of_get_property(node, "dma-ranges", &len);
 
@@ -941,12 +932,7 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
 		if (ranges && len > 0)
 			break;
 
-		/*
-		 * At least empty ranges has to be defined for parent node if
-		 * DMA is supported
-		 */
-		if (!ranges)
-			break;
+		node = of_get_next_dma_parent(node);
 	}
 
 	if (!ranges) {
@@ -965,7 +951,7 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
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
