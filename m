Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B9A1DCDA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FuK5BbXrKuL+rsToAd5J9PM97Gimxpuxw6uWUqQHxw=; b=n9EiP0UcMdmJ0v
	hp5BqhURlq/rdbmtY8sTAFBAAqfDZX11h98siQLqcly8oTHxuoioViYhLg5TC/JVuBq0u20PYx2dy
	bhH+wm2FQ+mpStd5anbVswzjrnyUki8Uv4CDWDQiREy55+KolSm8EeE5AfOvAzNjtS+DVrUl13fcU
	2rYA7tAzkf5j8L0KfFV/foP/uK3gljzQprFK/eg7iymSTOaI8IYD5LFipElTGVVB3RB/9mmPW+DLR
	N5cU+F367Jv7uJuybtPelYCzD0bDsT6mLo/DiRguNoZwsEGYWkAw0okveXDDTj/ZM5TaFWBl+rqn+
	PUxqRkbWDSS2xpKz0tGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkr2-0001nE-35; Thu, 21 May 2020 13:03:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkoX-0008JD-7m
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:00:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B629D6E;
 Thu, 21 May 2020 06:00:44 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.29.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CAC5E3F305;
 Thu, 21 May 2020 06:00:41 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 10/12] of/irq: Make of_msi_map_rid() PCI bus agnostic
Date: Thu, 21 May 2020 14:00:06 +0100
Message-Id: <20200521130008.8266-11-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_060045_387040_784804DA 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Robin Murphy <robin.murphy@arm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is nothing PCI bus specific in the of_msi_map_rid()
implementation other than the requester ID tag for the input
ID space. Rename requester ID to a more generic ID so that
the translation code can be used by all busses that require
input/output ID translations.

Leave a wrapper function of_msi_map_rid() in place to keep
existing PCI code mapping requester ID syntactically unchanged.

No functional change intended.

Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
---
 drivers/of/irq.c       | 28 ++++++++++++++--------------
 include/linux/of_irq.h | 14 ++++++++++++--
 2 files changed, 26 insertions(+), 16 deletions(-)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index 48a40326984f..25d17b8a1a1a 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -576,43 +576,43 @@ void __init of_irq_init(const struct of_device_id *matches)
 	}
 }
 
-static u32 __of_msi_map_rid(struct device *dev, struct device_node **np,
-			    u32 rid_in)
+static u32 __of_msi_map_id(struct device *dev, struct device_node **np,
+			    u32 id_in)
 {
 	struct device *parent_dev;
-	u32 rid_out = rid_in;
+	u32 id_out = id_in;
 
 	/*
 	 * Walk up the device parent links looking for one with a
 	 * "msi-map" property.
 	 */
 	for (parent_dev = dev; parent_dev; parent_dev = parent_dev->parent)
-		if (!of_map_rid(parent_dev->of_node, rid_in, "msi-map",
-				"msi-map-mask", np, &rid_out))
+		if (!of_map_id(parent_dev->of_node, id_in, "msi-map",
+				"msi-map-mask", np, &id_out))
 			break;
-	return rid_out;
+	return id_out;
 }
 
 /**
- * of_msi_map_rid - Map a MSI requester ID for a device.
+ * of_msi_map_id - Map a MSI ID for a device.
  * @dev: device for which the mapping is to be done.
  * @msi_np: device node of the expected msi controller.
- * @rid_in: unmapped MSI requester ID for the device.
+ * @id_in: unmapped MSI ID for the device.
  *
  * Walk up the device hierarchy looking for devices with a "msi-map"
- * property.  If found, apply the mapping to @rid_in.
+ * property.  If found, apply the mapping to @id_in.
  *
- * Returns the mapped MSI requester ID.
+ * Returns the mapped MSI ID.
  */
-u32 of_msi_map_rid(struct device *dev, struct device_node *msi_np, u32 rid_in)
+u32 of_msi_map_id(struct device *dev, struct device_node *msi_np, u32 id_in)
 {
-	return __of_msi_map_rid(dev, &msi_np, rid_in);
+	return __of_msi_map_id(dev, &msi_np, id_in);
 }
 
 /**
  * of_msi_map_get_device_domain - Use msi-map to find the relevant MSI domain
  * @dev: device for which the mapping is to be done.
- * @rid: Requester ID for the device.
+ * @id: Device ID.
  * @bus_token: Bus token
  *
  * Walk up the device hierarchy looking for devices with a "msi-map"
@@ -625,7 +625,7 @@ struct irq_domain *of_msi_map_get_device_domain(struct device *dev, u32 id,
 {
 	struct device_node *np = NULL;
 
-	__of_msi_map_rid(dev, &np, id);
+	__of_msi_map_id(dev, &np, id);
 	return irq_find_matching_host(np, bus_token);
 }
 
diff --git a/include/linux/of_irq.h b/include/linux/of_irq.h
index 7142a3722758..cf9cb1e545ce 100644
--- a/include/linux/of_irq.h
+++ b/include/linux/of_irq.h
@@ -55,7 +55,12 @@ extern struct irq_domain *of_msi_map_get_device_domain(struct device *dev,
 							u32 id,
 							u32 bus_token);
 extern void of_msi_configure(struct device *dev, struct device_node *np);
-u32 of_msi_map_rid(struct device *dev, struct device_node *msi_np, u32 rid_in);
+u32 of_msi_map_id(struct device *dev, struct device_node *msi_np, u32 id_in);
+static inline u32 of_msi_map_rid(struct device *dev,
+				 struct device_node *msi_np, u32 rid_in)
+{
+	return of_msi_map_id(dev, msi_np, rid_in);
+}
 #else
 static inline int of_irq_count(struct device_node *dev)
 {
@@ -93,10 +98,15 @@ static inline struct irq_domain *of_msi_map_get_device_domain(struct device *dev
 static inline void of_msi_configure(struct device *dev, struct device_node *np)
 {
 }
+static inline u32 of_msi_map_id(struct device *dev,
+				 struct device_node *msi_np, u32 id_in)
+{
+	return id_in;
+}
 static inline u32 of_msi_map_rid(struct device *dev,
 				 struct device_node *msi_np, u32 rid_in)
 {
-	return rid_in;
+	return of_msi_map_id(dev, msi_np, rid_in);
 }
 #endif
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
