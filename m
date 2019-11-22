Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC84106C99
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:54:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Q3Z+PuDo3fyWG6OMJOhxmIXZzTxUY3fRunY35PEreI=; b=rhg5ytH/5cqsgu
	Twrqd15z8rYaHOFDxmkjCU4YF8bAYjCKYRh3UCmArh9IItdSbMEco6js9r6Rb2DYGRP8lG7TcafSj
	lSdwnMoKA9Rl5N89fYRh98LsLF+55CvEL9roZzT+xgSEe0fsCQVGic12zzZm+l9+MGP4URlQ4EEck
	j0hgolrF3PM5EMwhSkrGFU7l5yezKYvPRaZdPBeqtp/2nnjClgmiNExvhlruqI289NBPCJYVIKuw6
	ixj8P7Cp9o/8LuZ3kGRSUskkknHdTa7u4sQofrBLQt+LLvesBeCa+kmgV7rcRrFsrbK+Osd3FerCE
	C3qe/ons0iiCo/yaKC9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6aF-0008Lq-NP; Fri, 22 Nov 2019 10:54:39 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Wf-00054r-RQ
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:51:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so4938402wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MfTtXiG/W/rObmsyirkEQ0i6+kv30tKWKHAFlzXsK50=;
 b=KGaaTyS3Lc/ef+t1SZuZlTE1UsU+JnOw0CHre56ANUeiS1fG2WU5O/YFQcBx5DFQ+g
 C3eEzhT3EtsVVDaPXc0JJnwFtgO1xkFqrrE6GycrJ2S4YEKOcx4s42s4o+D2QSUmsenY
 giJa7ayJtTWwW60SOcSL7s5TyIuTMeag5BlKYTNd2Vpv5b3Ku4VoOfgVTWmpiuNgZfga
 0U9jEO3Ob60MHJopefjx77FsOCYeO+1ZpoKfR2ZI8XHgbGZFlpcgyTQN/mBvo0haJZcQ
 4WN5cxwZz8VzF5n+E1gDTt+EyPoR0GPG3uAOf5O3TZXJzM8psHGvEWv0Dabay2iZKY72
 vmuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MfTtXiG/W/rObmsyirkEQ0i6+kv30tKWKHAFlzXsK50=;
 b=HjUNMdGz1fxkf8iaxY47Qv9cMyT+DHQOvbyElr+Dh9ks24O3rKNa4qxf7onAcreCkf
 tDea0ttyjGw7GaGm+yp1uBza93dv+P5aJHt0qRnszash8hq3fIBTuH0NNB3uMljIVs/5
 saoTAeLxPk6/YuhoQ/iJwza6DA/MiQ+JMrni538r5ctSmTuOOEzbU1QrOk6tjKw9DFr2
 TbYAzUxJjmNN1iWAmIPzZ8GSAjjI0py+z1bsRmIKBQ1+xaASM6+wyylbg83nh1Zydrdp
 snNWV6EntmWn378ddpQlH9DrL4mg/hAl/TWWKeK8QrlyMbTnp8xAi9Zf8r99eBMVJVpb
 rwEw==
X-Gm-Message-State: APjAAAU0RiYCrhTqHRrJaX4t+EA5U9k7Z1WQHno9kd228s0i5bpqgODe
 4fDSkw5422yyFIBSt8hGkmtA+g==
X-Google-Smtp-Source: APXvYqzYWFFlrhHka1Vw/6sChVYtvTiOJin0SbfQOyNoZG5nnElEymYjGNuUm72JutIfgIh/3EoY2g==
X-Received: by 2002:adf:e885:: with SMTP id d5mr17167901wrm.117.1574419856320; 
 Fri, 22 Nov 2019 02:50:56 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.50.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:50:55 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 04/13] ACPI/IORT: Add node categories
Date: Fri, 22 Nov 2019 11:49:51 +0100
Message-Id: <20191122105000.800410-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025057_978435_0463DC3B 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kevin.tian@intel.com, lorenzo.pieralisi@arm.com, mst@redhat.com,
 gregkh@linuxfoundation.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, eric.auger@redhat.com, sebastien.boeuf@intel.com,
 jacob.jun.pan@intel.com, guohanjun@huawei.com, bhelgaas@google.com,
 jasowang@redhat.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current node filtering won't work when introducing node types
greater than 63 (such as the virtio-iommu nodes). Add
node_type_matches() to filter nodes by category.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/iort.c | 34 ++++++++++++++++++++++++----------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/acpi/iort.c b/drivers/acpi/iort.c
index 9c6c91e06f8f..1d43fbc0001f 100644
--- a/drivers/acpi/iort.c
+++ b/drivers/acpi/iort.c
@@ -18,10 +18,10 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 
-#define IORT_TYPE_MASK(type)	(1 << (type))
-#define IORT_MSI_TYPE		(1 << ACPI_IORT_NODE_ITS_GROUP)
-#define IORT_IOMMU_TYPE		((1 << ACPI_IORT_NODE_SMMU) |	\
-				(1 << ACPI_IORT_NODE_SMMU_V3))
+enum iort_node_category {
+	IORT_MSI_TYPE,
+	IORT_IOMMU_TYPE,
+};
 
 struct iort_its_msi_chip {
 	struct list_head	list;
@@ -38,6 +38,20 @@ struct iort_fwnode {
 static LIST_HEAD(iort_fwnode_list);
 static DEFINE_SPINLOCK(iort_fwnode_lock);
 
+static bool iort_type_matches(u8 type, enum iort_node_category category)
+{
+	switch (category) {
+	case IORT_IOMMU_TYPE:
+		return type == ACPI_IORT_NODE_SMMU ||
+		       type == ACPI_IORT_NODE_SMMU_V3;
+	case IORT_MSI_TYPE:
+		return type == ACPI_IORT_NODE_ITS_GROUP;
+	default:
+		WARN_ON(1);
+		return false;
+	}
+}
+
 /**
  * iort_set_fwnode() - Create iort_fwnode and use it to register
  *		       iommu data in the iort_fwnode_list
@@ -397,7 +411,7 @@ static int iort_get_id_mapping_index(struct acpi_iort_node *node)
 
 static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
 					       u32 id_in, u32 *id_out,
-					       u8 type_mask)
+					       enum iort_node_category category)
 {
 	u32 id = id_in;
 
@@ -406,7 +420,7 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
 		struct acpi_iort_id_mapping *map;
 		int i, index;
 
-		if (IORT_TYPE_MASK(node->type) & type_mask) {
+		if (iort_type_matches(node->type, category)) {
 			if (id_out)
 				*id_out = id;
 			return node;
@@ -458,8 +472,8 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
 }
 
 static struct acpi_iort_node *iort_node_map_platform_id(
-		struct acpi_iort_node *node, u32 *id_out, u8 type_mask,
-		int index)
+		struct acpi_iort_node *node, u32 *id_out,
+		enum iort_node_category category, int index)
 {
 	struct acpi_iort_node *parent;
 	u32 id;
@@ -475,8 +489,8 @@ static struct acpi_iort_node *iort_node_map_platform_id(
 	 * as NC (named component) -> SMMU -> ITS. If the type is matched,
 	 * return the initial dev id and its parent pointer directly.
 	 */
-	if (!(IORT_TYPE_MASK(parent->type) & type_mask))
-		parent = iort_node_map_id(parent, id, id_out, type_mask);
+	if (!iort_type_matches(parent->type, category))
+		parent = iort_node_map_id(parent, id, id_out, category);
 	else
 		if (id_out)
 			*id_out = id;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
