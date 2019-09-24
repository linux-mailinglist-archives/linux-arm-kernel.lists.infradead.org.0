Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447ACBD1AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 20:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjLvcvNOZCc6AlDf0Bws35tqo/c3xbfZcpQyUrwNLfo=; b=HpFVvEjy/J/Brr
	vzFp4CouJsMLTqadiydMuCvshOgmGVAC7EqdHTfHDrRwU1GOGKlazPRBOyyZo4nwg9zdbFa9q8Jlg
	YryG2gD78WaZBD6KTDC3hMhRtXteMbQz2OMNyU/EEoMOy2Xane8mcSg2nLC9/KSOHt1euhfKGr0Pj
	t/0RwwMWw/nNVK5c/RbVCfnlUXIowffh+9Qmy1/Y4fR061pelWnG8eyMk20sTNQHdvjqQ3Fxl38Bp
	5pRAb15t31SULrV8jVkDLiYah9w+WWtfN8ZMbtH/aE90fQvaY+jNUaYzle0o8viqp9MfmAIOPR4tK
	O9BBfiZ3OBGMIIRxLfUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCpLf-0005vW-6W; Tue, 24 Sep 2019 18:15:39 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCpJ4-00036p-Ew
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:13:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D66E4AE78;
 Tue, 24 Sep 2019 18:12:56 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: [PATCH 05/11] of: expose __of_get_dma_parent() to OF subsystem
Date: Tue, 24 Sep 2019 20:12:36 +0200
Message-Id: <20190924181244.7159-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190924181244.7159-1-nsaenzjulienne@suse.de>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_111258_902369_CFF6ABF9 
X-CRM114-Status: GOOD (  10.67  )
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

The function was only available locally to of/address.c, make it
available to the OF subsystem.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

 drivers/of/address.c    | 18 ------------------
 drivers/of/base.c       | 25 +++++++++++++++++++++++++
 drivers/of/of_private.h |  2 ++
 3 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index c9eb4ebcc2e9..53666063e938 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -681,24 +681,6 @@ u64 of_translate_address(struct device_node *dev, const __be32 *in_addr)
 }
 EXPORT_SYMBOL(of_translate_address);
 
-static struct device_node *__of_get_dma_parent(const struct device_node *np)
-{
-	struct of_phandle_args args;
-	int ret, index;
-
-	index = of_property_match_string(np, "interconnect-names", "dma-mem");
-	if (index < 0)
-		return of_get_parent(np);
-
-	ret = of_parse_phandle_with_args(np, "interconnects",
-					 "#interconnect-cells",
-					 index, &args);
-	if (ret < 0)
-		return of_get_parent(np);
-
-	return of_node_get(args.np);
-}
-
 static u64 of_translate_dma_address_parent(struct device_node *parent,
 					   const __be32 *in_addr)
 {
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 94f83051910c..ec161e6b5222 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -716,6 +716,31 @@ struct device_node *of_get_parent(const struct device_node *node)
 }
 EXPORT_SYMBOL(of_get_parent);
 
+/**
+ *	__of_get_dma_parent - Get a node's dma parent if any
+ *	@node:	Node to get dma parent
+ *
+ *	Returns a node pointer with refcount incremented, use
+ *	of_node_put() on it when done.
+ */
+struct device_node *__of_get_dma_parent(const struct device_node *np)
+{
+	struct of_phandle_args args;
+	int ret, index;
+
+	index = of_property_match_string(np, "interconnect-names", "dma-mem");
+	if (index < 0)
+		return of_get_parent(np);
+
+	ret = of_parse_phandle_with_args(np, "interconnects",
+					 "#interconnect-cells",
+					 index, &args);
+	if (ret < 0)
+		return of_get_parent(np);
+
+	return of_node_get(args.np);
+}
+
 /**
  *	of_get_next_parent - Iterate to a node's parent
  *	@node:	Node to get parent of
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index b528304be244..63bb16cc454c 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -42,6 +42,8 @@ extern struct kset *of_kset;
 int __of_n_addr_cells_parent(struct device_node *parent);
 int __of_n_size_cells_parent(struct device_node *parent);
 
+struct device_node *__of_get_dma_parent(const struct device_node *np);
+
 #if defined(CONFIG_OF_DYNAMIC)
 extern int of_property_notify(int action, struct device_node *np,
 			      struct property *prop, struct property *old_prop);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
