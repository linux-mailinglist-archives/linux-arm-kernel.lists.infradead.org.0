Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE101DB406
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNNyO/qK5K9SFWEgWlM+6jTnXTythT3koEfnPk7W3r4=; b=EyTGUl9USj85Ar
	TLJpEF5pHAkfhE2foQ3tN9EjTaBJhq45ZyAQbt2nI18Gc85H0xefKEbqY8uveLqseA6R534SgK/4H
	LToRYYlPZxOYnqWVQrK57hQG8t5tlqlyYOAn+yPjyXKrg4c8GFScR4j35c3JRloLERuo96gQst4hI
	Lq5MEHxeFvonEC+W/ww09sCqSBWDAFukmdAV5n8Lxz03h6d+dlM3dZZQ8kbsJjCry9ALh7YpWsb1z
	qEE+kodkpkaVl3hb6b+dOaaaF2x260zIn575y+VqHnEcSOvd/qBwq0/sDVMszzZhtNE4zziYw2JTm
	HXolXUS/a9A0l5JFt4SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbO6i-0005ng-DZ; Wed, 20 May 2020 12:46:00 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbO66-0005bT-Tp
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:45:28 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KCjCQN118727;
 Wed, 20 May 2020 07:45:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589978712;
 bh=0ikklT+VFwubZi0w9KBNyNVZgMBZprkY0DT2rlSGU+o=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=MZtaUozhy3MoBRW5XAG4K0dWzZx2PsNZ1OQG5JIO3BXUMvTwwYh6Gp5jzQAnD1OZg
 d48kN/6Qjerx5ppil8S3ubInQwJiJ5Q7WPVnykXG/6vW55ubccUO9AQNtgBGbCBTBS
 2jKPiv8Z9AlsVfRhBkJFMqzVG36zcFJi5WkhcPWA=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04KCjCGU106635
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 07:45:12 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 07:45:11 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 07:45:12 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCiuvN026764;
 Wed, 20 May 2020 07:45:08 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 03/12] firmware: ti_sci: Add support for getting resource with
 subtype
Date: Wed, 20 May 2020 18:14:45 +0530
Message-ID: <20200520124454.10532-4-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520124454.10532-1-lokeshvutla@ti.com>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_054523_038110_526715E7 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With SYSFW ABI 3.0 changes, interrupts coming out of an interrupt
controller is identified by a type and it is consistent across SoCs.
Similarly global events for Interrupt aggregator. So add an API to get
resource range using a resource type.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 drivers/firmware/ti_sci.c              | 89 +++++++++++++++++++-------
 include/linux/soc/ti/ti_sci_protocol.h | 13 ++++
 2 files changed, 80 insertions(+), 22 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index a81ddec9e669..918117be4a73 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -3208,61 +3208,50 @@ u32 ti_sci_get_num_resources(struct ti_sci_resource *res)
 EXPORT_SYMBOL_GPL(ti_sci_get_num_resources);
 
 /**
- * devm_ti_sci_get_of_resource() - Get a TISCI resource assigned to a device
+ * devm_ti_sci_get_resource_sets() - Get a TISCI resources assigned to a device
  * @handle:	TISCI handle
  * @dev:	Device pointer to which the resource is assigned
  * @dev_id:	TISCI device id to which the resource is assigned
- * @of_prop:	property name by which the resource are represented
+ * @sub_types:	Array of sub_types assigned corresponding to device
+ * @sets:	Number of sub_types
  *
  * Return: Pointer to ti_sci_resource if all went well else appropriate
  *	   error pointer.
  */
-struct ti_sci_resource *
-devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
-			    struct device *dev, u32 dev_id, char *of_prop)
+static struct ti_sci_resource *
+devm_ti_sci_get_resource_sets(const struct ti_sci_handle *handle,
+			      struct device *dev, u32 dev_id, u32 *sub_types,
+			      u32 sets)
 {
 	struct ti_sci_resource *res;
 	bool valid_set = false;
-	u32 resource_subtype;
 	int i, ret;
 
 	res = devm_kzalloc(dev, sizeof(*res), GFP_KERNEL);
 	if (!res)
 		return ERR_PTR(-ENOMEM);
 
-	ret = of_property_count_elems_of_size(dev_of_node(dev), of_prop,
-					      sizeof(u32));
-	if (ret < 0) {
-		dev_err(dev, "%s resource type ids not available\n", of_prop);
-		return ERR_PTR(ret);
-	}
-	res->sets = ret;
-
+	res->sets = sets;
 	res->desc = devm_kcalloc(dev, res->sets, sizeof(*res->desc),
 				 GFP_KERNEL);
 	if (!res->desc)
 		return ERR_PTR(-ENOMEM);
 
 	for (i = 0; i < res->sets; i++) {
-		ret = of_property_read_u32_index(dev_of_node(dev), of_prop, i,
-						 &resource_subtype);
-		if (ret)
-			return ERR_PTR(-EINVAL);
-
 		ret = handle->ops.rm_core_ops.get_range(handle, dev_id,
-							resource_subtype,
+							sub_types[i],
 							&res->desc[i].start,
 							&res->desc[i].num);
 		if (ret) {
 			dev_dbg(dev, "dev = %d subtype %d not allocated for this host\n",
-				dev_id, resource_subtype);
+				dev_id, sub_types[i]);
 			res->desc[i].start = 0;
 			res->desc[i].num = 0;
 			continue;
 		}
 
 		dev_dbg(dev, "dev = %d, subtype = %d, start = %d, num = %d\n",
-			dev_id, resource_subtype, res->desc[i].start,
+			dev_id, sub_types[i], res->desc[i].start,
 			res->desc[i].num);
 
 		valid_set = true;
@@ -3280,6 +3269,62 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 	return ERR_PTR(-EINVAL);
 }
 
+/**
+ * devm_ti_sci_get_of_resource() - Get a TISCI resource assigned to a device
+ * @handle:	TISCI handle
+ * @dev:	Device pointer to which the resource is assigned
+ * @dev_id:	TISCI device id to which the resource is assigned
+ * @of_prop:	property name by which the resource are represented
+ *
+ * Return: Pointer to ti_sci_resource if all went well else appropriate
+ *	   error pointer.
+ */
+struct ti_sci_resource *
+devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
+			    struct device *dev, u32 dev_id, char *of_prop)
+{
+	struct ti_sci_resource *res;
+	u32 *sub_types;
+	int sets;
+
+	sets = of_property_count_elems_of_size(dev_of_node(dev), of_prop,
+					       sizeof(u32));
+	if (sets < 0) {
+		dev_err(dev, "%s resource type ids not available\n", of_prop);
+		return ERR_PTR(sets);
+	}
+
+	sub_types = kcalloc(sets, sizeof(*sub_types), GFP_KERNEL);
+	if (!sub_types)
+		return ERR_PTR(-ENOMEM);
+
+	of_property_read_u32_array(dev_of_node(dev), of_prop, sub_types, sets);
+	res = devm_ti_sci_get_resource_sets(handle, dev, dev_id, sub_types,
+					    sets);
+
+	kfree(sub_types);
+	return res;
+}
+EXPORT_SYMBOL_GPL(devm_ti_sci_get_of_resource);
+
+/**
+ * devm_ti_sci_get_resource() - Get a resource range assigned to the device
+ * @handle:	TISCI handle
+ * @dev:	Device pointer to which the resource is assigned
+ * @dev_id:	TISCI device id to which the resource is assigned
+ * @suub_type:	TISCI resource subytpe representing the resource.
+ *
+ * Return: Pointer to ti_sci_resource if all went well else appropriate
+ *	   error pointer.
+ */
+struct ti_sci_resource *
+devm_ti_sci_get_resource(const struct ti_sci_handle *handle, struct device *dev,
+			 u32 dev_id, u32 sub_type)
+{
+	return devm_ti_sci_get_resource_sets(handle, dev, dev_id, &sub_type, 1);
+}
+EXPORT_SYMBOL_GPL(devm_ti_sci_get_resource);
+
 static int tisci_reboot_handler(struct notifier_block *nb, unsigned long mode,
 				void *cmd)
 {
diff --git a/include/linux/soc/ti/ti_sci_protocol.h b/include/linux/soc/ti/ti_sci_protocol.h
index 9531ec823298..68e47f6324be 100644
--- a/include/linux/soc/ti/ti_sci_protocol.h
+++ b/include/linux/soc/ti/ti_sci_protocol.h
@@ -220,6 +220,9 @@ struct ti_sci_rm_core_ops {
 				    u16 *range_start, u16 *range_num);
 };
 
+#define TI_SCI_RESASG_SUBTYPE_IR_OUTPUT		0
+#define TI_SCI_RESASG_SUBTYPE_IA_VINT		0xa
+#define TI_SCI_RESASG_SUBTYPE_GLOBAL_EVENT_SEVT	0xd
 /**
  * struct ti_sci_rm_irq_ops: IRQ management operations
  * @set_irq:		Set an IRQ route between the requested source
@@ -556,6 +559,9 @@ u32 ti_sci_get_num_resources(struct ti_sci_resource *res);
 struct ti_sci_resource *
 devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 			    struct device *dev, u32 dev_id, char *of_prop);
+struct ti_sci_resource *
+devm_ti_sci_get_resource(const struct ti_sci_handle *handle, struct device *dev,
+			 u32 dev_id, u32 sub_type);
 
 #else	/* CONFIG_TI_SCI_PROTOCOL */
 
@@ -609,6 +615,13 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 {
 	return ERR_PTR(-EINVAL);
 }
+
+static inline struct ti_sci_resource *
+devm_ti_sci_get_resource(const struct ti_sci_handle *handle, struct device *dev,
+			 u32 dev_id, u32 sub_type);
+{
+	return ERR_PTR(-EINVAL);
+}
 #endif	/* CONFIG_TI_SCI_PROTOCOL */
 
 #endif	/* __TISCI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
