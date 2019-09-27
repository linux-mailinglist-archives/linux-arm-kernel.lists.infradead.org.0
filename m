Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEEDBFC69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYTqCq5j+lFbFr97QJu9txGjp02NLRKdFr2QWch65H0=; b=Ph4UrBe96sKSJY
	QdE51ZEoMDBDIvOhjpkgv2aMMwsx8/c+iOl2ADVa70TqxE2XoSmEsuR9cJN1D2zb+9GpaDttR+Qnh
	aq2ie+AtC3BrW6SmRRdbIiq91XrrBbDZfUQUfhR1dq5l0sZSyhi4e2JfJ8Ttd76uZfVZn1vMsX5Pj
	z7fGZ898ZG1kdhdGEs3DdPbV9ybgnvbE0wzfptXh4WtWSlpUELx3m1hrwrXaqWVMRQ2WpPABTl+XK
	aiJm9mvTfC08D5wYq+OyZNVkdglN5uIUxjaKzWSXosfEaEz6bcLrvzPuVbOLYZe5xhy1hZbZspMYa
	gcwP+BpQoQj4nVMUDzpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe6X-00072V-0r; Fri, 27 Sep 2019 00:27:25 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4L-0004pr-Tq
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:11 +0000
Received: by mail-oi1-f195.google.com with SMTP id e18so3767494oii.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:25:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UKCh970cxpKTSE4xQt8EA5TvLAg6lDEOHEZjgVQOiEg=;
 b=ihe96zvZEkP1okdziyeJDxHZc1hoznzH2oxkXAi/EFrIuw7KEguihzZ9wb5P/4tyFO
 5NIKAyXuYPlhA1mRueCR25JwJg0b5k78hjDx8LSGUDwPRqUdzqs1jSt0rNJGqVh84+Ic
 OPXdd9JQXeNSVfpNm4R9dQ8vzPgp9rOqJufIEEZ5tCnvFkSBjlKZxZoWKtO1C2DUn40c
 oNVlF4M/ow9glLD/CHPNk66nXhtaVxhVPHvJVduMD+mObQ2j4XTJuCBVcQq0Pl2i7bzf
 xPatEzSH8lNuae2iEmGj+PhUm/HwPALDxuUizHzyxJCt/3oLvRjqYdxyEbdsdmFIER0F
 pjyA==
X-Gm-Message-State: APjAAAUbKcFk13Ks1+bwHv10NnhmANKVCfAa0DjWISwcrmyvXXDIzk3D
 rtSX33jxmcdHpM7qNK0Bdg==
X-Google-Smtp-Source: APXvYqy1CQ/pJ4u81ZjOTBygjp0HyvnzRjfsumqlZMQhMMHtdm91xx5NicQ33wJ1JMQxCbhI++4dWg==
X-Received: by 2002:a05:6808:316:: with SMTP id
 i22mr4935938oie.18.1569543908911; 
 Thu, 26 Sep 2019 17:25:08 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:25:08 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 08/11] of: Factor out #{addr,size}-cells parsing
Date: Thu, 26 Sep 2019 19:24:52 -0500
Message-Id: <20190927002455.13169-9-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172509_999656_11050019 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

In some cases such as PCI host controllers, we may have a "parent bus"
which is an OF leaf node, but still need to correctly parse ranges from
the point of view of that bus. For that, factor out variants of the
"#addr-cells" and "#size-cells" parsers which do not assume they have a
device node and thus immediately traverse upwards before reading the
relevant property.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
[robh: don't make of_bus_n_{addr,size}_cells() public]
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/address.c    |  2 ++
 drivers/of/base.c       | 32 ++++++++++++++++++++++----------
 drivers/of/of_private.h |  3 +++
 3 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 3fd34f7ad772..887c0413f648 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -14,6 +14,8 @@
 #include <linux/slab.h>
 #include <linux/string.h>
 
+#include "of_private.h"
+
 /* Max address size we deal with */
 #define OF_MAX_ADDR_CELLS	4
 #define OF_CHECK_ADDR_COUNT(na)	((na) > 0 && (na) <= OF_MAX_ADDR_CELLS)
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 55e7f5bb0549..12b2e9287117 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -86,34 +86,46 @@ static bool __of_node_is_type(const struct device_node *np, const char *type)
 	return np && match && type && !strcmp(match, type);
 }
 
-int of_n_addr_cells(struct device_node *np)
+int of_bus_n_addr_cells(struct device_node *np)
 {
 	u32 cells;
 
-	do {
-		if (np->parent)
-			np = np->parent;
+	for (; np; np = np->parent)
 		if (!of_property_read_u32(np, "#address-cells", &cells))
 			return cells;
-	} while (np->parent);
+
 	/* No #address-cells property for the root node */
 	return OF_ROOT_NODE_ADDR_CELLS_DEFAULT;
 }
+
+int of_n_addr_cells(struct device_node *np)
+{
+	if (np->parent)
+		np = np->parent;
+
+	return of_bus_n_addr_cells(np);
+}
 EXPORT_SYMBOL(of_n_addr_cells);
 
-int of_n_size_cells(struct device_node *np)
+int of_bus_n_size_cells(struct device_node *np)
 {
 	u32 cells;
 
-	do {
-		if (np->parent)
-			np = np->parent;
+	for (; np; np = np->parent)
 		if (!of_property_read_u32(np, "#size-cells", &cells))
 			return cells;
-	} while (np->parent);
+
 	/* No #size-cells property for the root node */
 	return OF_ROOT_NODE_SIZE_CELLS_DEFAULT;
 }
+
+int of_n_size_cells(struct device_node *np)
+{
+	if (np->parent)
+		np = np->parent;
+
+	return of_bus_n_size_cells(np);
+}
 EXPORT_SYMBOL(of_n_size_cells);
 
 #ifdef CONFIG_NUMA
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index f8c58615c393..66294d29942a 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -158,6 +158,9 @@ extern void __of_sysfs_remove_bin_file(struct device_node *np,
 #define for_each_transaction_entry_reverse(_oft, _te) \
 	list_for_each_entry_reverse(_te, &(_oft)->te_list, node)
 
+extern int of_bus_n_addr_cells(struct device_node *np);
+extern int of_bus_n_size_cells(struct device_node *np);
+
 #ifdef CONFIG_OF_ADDRESS
 extern int of_dma_get_range(struct device_node *np, u64 *dma_addr,
 			    u64 *paddr, u64 *size);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
