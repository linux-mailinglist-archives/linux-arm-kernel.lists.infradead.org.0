Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27615BD1A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 20:15:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtQrQSphG2VgTvRLlFWsyxlVaDhAufZpe1LmBnJ6EYM=; b=NEMPesgOQFa7a7
	QdNa6rzrEJxapNbqiFgMorkpYIwnYBzzkxViUqV0FDTmHqAndq8c1SdNXoREjpEwNjGLjDhTQxw5V
	dmdIULG/IJUFXyGs1HjqQVcvqLwXS42cFec129KOea96ZkkIUTCCvhQK3pMcmgPEnt0a0BiGT/lAw
	3FiTelNmyjzOKYnlcQnUfpabQphRhgWcdauZOQ+2q2XfJg05TFYVupZdlSdu5gYVtc0PL6sf4xoV6
	ZTp3dj6OWnMYvynzASl5iJNIX7mPfxpbsvfZUmp0O66OpZVFNPUWld6/YSeaMeQEDKEwni3kIIjV4
	LTHfb777/s/iN7mzxZKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCpKy-0004FK-4u; Tue, 24 Sep 2019 18:14:56 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCpJ2-00034b-IU
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:12:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E4980AEF8;
 Tue, 24 Sep 2019 18:12:53 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: [PATCH 03/11] of: address: use parent DT node in bus->count_cells()
Date: Tue, 24 Sep 2019 20:12:34 +0200
Message-Id: <20190924181244.7159-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190924181244.7159-1-nsaenzjulienne@suse.de>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_111256_896314_48A19E4F 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: f.fainelli@gmail.com, mbrugger@suse.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, robin.murphy@arm.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function provides the cell sizes for a specific bus type. Instead of
passing it the device DT node sitting on top of that bus we directly
pass its parent which is the actual node the function will start looking
from.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

 drivers/of/address.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 0f898756199d..9c1e638fa8ea 100644
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
@@ -42,7 +44,7 @@ struct of_bus {
 	const char	*name;
 	const char	*addresses;
 	int		(*match)(struct device_node *parent);
-	void		(*count_cells)(struct device_node *child,
+	void		(*count_cells)(struct device_node *parent,
 				       int *addrc, int *sizec);
 	u64		(*map)(__be32 *addr, const __be32 *range,
 				int na, int ns, int pna);
@@ -54,13 +56,13 @@ struct of_bus {
  * Default translator (generic bus)
  */
 
-static void of_bus_default_count_cells(struct device_node *dev,
+static void of_bus_default_count_cells(struct device_node *parent,
 				       int *addrc, int *sizec)
 {
 	if (addrc)
-		*addrc = of_n_addr_cells(dev);
+		*addrc = __of_n_addr_cells_parent(parent);
 	if (sizec)
-		*sizec = of_n_size_cells(dev);
+		*sizec = __of_n_size_cells_parent(parent);
 }
 
 static u64 of_bus_default_map(__be32 *addr, const __be32 *range,
@@ -192,7 +194,7 @@ const __be32 *of_get_pci_address(struct device_node *dev, int bar_no, u64 *size,
 		of_node_put(parent);
 		return NULL;
 	}
-	bus->count_cells(dev, &na, &ns);
+	bus->count_cells(parent, &na, &ns);
 	of_node_put(parent);
 	if (!OF_CHECK_ADDR_COUNT(na))
 		return NULL;
@@ -592,7 +594,7 @@ static u64 __of_translate_address(struct device_node *dev,
 	bus = of_match_bus(parent);
 
 	/* Count address cells & copy address locally */
-	bus->count_cells(dev, &na, &ns);
+	bus->count_cells(parent, &na, &ns);
 	if (!OF_CHECK_COUNTS(na, ns)) {
 		pr_debug("Bad cell count for %pOF\n", dev);
 		goto bail;
@@ -634,7 +636,7 @@ static u64 __of_translate_address(struct device_node *dev,
 
 		/* Get new parent bus and counts */
 		pbus = of_match_bus(parent);
-		pbus->count_cells(dev, &pna, &pns);
+		pbus->count_cells(parent, &pna, &pns);
 		if (!OF_CHECK_COUNTS(pna, pns)) {
 			pr_err("Bad cell count for %pOF\n", dev);
 			break;
@@ -726,7 +728,7 @@ const __be32 *of_get_address(struct device_node *dev, int index, u64 *size,
 	if (parent == NULL)
 		return NULL;
 	bus = of_match_bus(parent);
-	bus->count_cells(dev, &na, &ns);
+	bus->count_cells(parent, &na, &ns);
 	of_node_put(parent);
 	if (!OF_CHECK_ADDR_COUNT(na))
 		return NULL;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
