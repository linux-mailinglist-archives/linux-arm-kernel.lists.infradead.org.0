Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69D3D0180
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 21:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OuGoISNaMvSeLp/eifiKVyfzIEgCVWRdARFYeFSZzLk=; b=m6ZE8DcmPneip4
	zkd4XepxvJMHjDd35EOuf5FJnJaDtIwNe+/hVLgUU53iF+i1zy3zDcj8il4YI8iEGlGK1rdCU+jTF
	w05EJmqdk345pEXiNCF/sq8vOisNWcXI/6MfseREzOIzBKBNXF+hvfYdWjfs1nxnZvZStIm+m4FJp
	B1htforFCJPvecLr1uenzfASE55g1wcgHonf6zLnKR1s3fitT1a12Y4EzJ9maWjCRjiAvMI1l5dvw
	M6xEAt4mImQJ0lUNwshuE3H0UuABhrP9fXbWJFr/XNyO7TIbBSHHZQLf4agETkVsvYb7JAdsPjALL
	FDah6hUhviUbl95mMX8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHvXR-0002ZR-0p; Tue, 08 Oct 2019 19:52:53 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHvXH-0002YH-Ri
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 19:52:45 +0000
Received: by mail-oi1-f196.google.com with SMTP id t84so15871905oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 12:52:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2DpOnxNX3I7+J8dRMWaO+FigaTKEbqHibu1OQL1peJY=;
 b=CNTnl4dGfNJ1d7046mDI4wozUva9mm3qEYO5dDz5DFytBRVBGVfOt4MU7jp0OHMRM/
 xFK78WS0+OEq925INcD8LBiTVsFumfziFsh+YNx98TnyPm7AdZX6p733bxJSojdMo3Zp
 54K8lIA9f181Xd3eCmi9qRWhCCJ+lbh8Ka21Tm9Mk1sVVlY/6R4iX2OiqQaJLGRwoVpU
 PJo0l0NdI0VmQT+ncLcFNoeitoP+Jc48biScD+h7eqjcxZFUqEe3GoBgmzZVWlwSG0kq
 QxaXMPAR5FkB41NCMb3jRKt4tBIphKmN53zvI0gPPfgIdAu5AQ5hsVH04sFIuGRkcumS
 WwvQ==
X-Gm-Message-State: APjAAAX893HW6/gzPpXaciAYklt4DSoBBqE1F8CbchbgXSJt5sLGwXDV
 +pA9BNJPdF1OAHmIojmGug==
X-Google-Smtp-Source: APXvYqx3UCdVEhyicSwZJeq8Uk0rPo4W8xc+pe7UghGarV6P5NA3FcZJ4CC9ipmykIi72BrvPCmPhg==
X-Received: by 2002:aca:b342:: with SMTP id c63mr5424396oif.91.1570564361631; 
 Tue, 08 Oct 2019 12:52:41 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z10sm6151032ote.54.2019.10.08.12.52.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 12:52:40 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH v2] of: Make of_dma_get_range() work on bus nodes
Date: Tue,  8 Oct 2019 14:52:39 -0500
Message-Id: <20191008195239.12852-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_125243_895010_4D5B22BC 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Frank Rowand <frowand.list@gmail.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Simon Horman <horms+renesas@verge.net.au>, Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>
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
Resending, hit send too quickly.

v2:
 - Ensure once we find dma-ranges, every parent has it.
 - Only get the #{size,address}-cells after we find non-empty dma-ranges
 - Add a check on the 'dma-ranges' length

This is all that remains of the dma-ranges series. I've applied the rest 
of the series prep and fixes. I dropped "of: Ratify of_dma_configure() 
interface" as the assertions that the node pointer being the parent only 
when struct device doesn't have a DT node pointer is not always 
true.

I didn't include any tested-bys as this has changed a bit. A git branch 
is here[1].

Rob

[1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dma-masks-v2

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
