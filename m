Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A926F3EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0NkrmnQMFuCtJgBtTW3MiJz6p6tUR/hy896Pf5GE3g=; b=NzkuJOk/a8GiPL
	RJwb+kLabSHmATGn1J1Mulw/ySTvsbgam3uBBcGmXQiECoXV4S+9aHLvLOpc/9NovEt6DQbJNI3jS
	NzAwNQJtAxrXK13nu7xkSthRb2Vu+1U5aCge9jmo+8H7a1cZUOhyGfEBdENq81sa1Yn4iuPpuUOWG
	DxlSEl/N3uDugk3zfSVqXGlrkLVrs5DJl/VtrOg/Hsok7rwD4K26LmJ973dbFo4WvpHoHcR1lnXqU
	N3I7T7dO/iFerKq3MYEqgXGVrPp1fjxX0nuP6GvDSXMuO2yYFCskzeWOKalGZuSz6S+gbYwY1XqyP
	lASLpEmF+6MWV+Tw6ffA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPmq-0007oI-TY; Tue, 30 Apr 2019 10:14:56 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPlh-0006aA-3R
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:13:54 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x3UADSF3010125;
 Tue, 30 Apr 2019 05:13:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556619208;
 bh=xB8+sHzFeAPYz6OUk7yFrdhmaJQvk87dL4cgXCxOYqc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=vMb5Mlhb7Qbau4mTKPELqgHcSoeZeTP9zCv/hjxOf7AUsZjZYbpW20kILwJwP1n/q
 PdAT77yTPhP0OXQZAzMmmt+UOWOV7DVhX1JRrPLbjiylNf/FwLqxMkylOwSJyY/B6l
 llJ1s6G6aYlW3OtTmZNfD/OHVVVSxO3xFP5uave4=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x3UADSGb124759
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Apr 2019 05:13:28 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Apr 2019 05:13:28 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Apr 2019 05:13:28 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x3UAD0Y7085082;
 Tue, 30 Apr 2019 05:13:24 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, Nishanth Menon
 <nm@ti.com>, <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH v8 05/14] firmware: ti_sci: Add helper apis to manage resources
Date: Tue, 30 Apr 2019 15:42:21 +0530
Message-ID: <20190430101230.21794-6-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190430101230.21794-1-lokeshvutla@ti.com>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_031345_606478_803C06A7 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, linus.walleij@linaro.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each resource with in the device can be uniquely identified as defined
by TISCI. Since this is generic across the devices, resource allocation
also can be made generic instead of each client driver handling the
resource. So add helper apis to manage the resource.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
Changes since v7:
-None

 drivers/firmware/ti_sci.c              | 130 +++++++++++++++++++++++++
 include/linux/soc/ti/ti_sci_protocol.h |  54 ++++++++++
 2 files changed, 184 insertions(+)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 551895535767..ef93406ace1b 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2262,6 +2262,136 @@ const struct ti_sci_handle *devm_ti_sci_get_by_phandle(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_ti_sci_get_by_phandle);
 
+/**
+ * ti_sci_get_free_resource() - Get a free resource from TISCI resource.
+ * @res:	Pointer to the TISCI resource
+ *
+ * Return: resource num if all went ok else TI_SCI_RESOURCE_NULL.
+ */
+u16 ti_sci_get_free_resource(struct ti_sci_resource *res)
+{
+	unsigned long flags;
+	u16 set, free_bit;
+
+	raw_spin_lock_irqsave(&res->lock, flags);
+	for (set = 0; set < res->sets; set++) {
+		free_bit = find_first_zero_bit(res->desc[set].res_map,
+					       res->desc[set].num);
+		if (free_bit != res->desc[set].num) {
+			set_bit(free_bit, res->desc[set].res_map);
+			raw_spin_unlock_irqrestore(&res->lock, flags);
+			return res->desc[set].start + free_bit;
+		}
+	}
+	raw_spin_unlock_irqrestore(&res->lock, flags);
+
+	return TI_SCI_RESOURCE_NULL;
+}
+EXPORT_SYMBOL_GPL(ti_sci_get_free_resource);
+
+/**
+ * ti_sci_release_resource() - Release a resource from TISCI resource.
+ * @res:	Pointer to the TISCI resource
+ * @id:		Resource id to be released.
+ */
+void ti_sci_release_resource(struct ti_sci_resource *res, u16 id)
+{
+	unsigned long flags;
+	u16 set;
+
+	raw_spin_lock_irqsave(&res->lock, flags);
+	for (set = 0; set < res->sets; set++) {
+		if (res->desc[set].start <= id &&
+		    (res->desc[set].num + res->desc[set].start) > id)
+			clear_bit(id - res->desc[set].start,
+				  res->desc[set].res_map);
+	}
+	raw_spin_unlock_irqrestore(&res->lock, flags);
+}
+EXPORT_SYMBOL_GPL(ti_sci_release_resource);
+
+/**
+ * ti_sci_get_num_resources() - Get the number of resources in TISCI resource
+ * @res:	Pointer to the TISCI resource
+ *
+ * Return: Total number of available resources.
+ */
+u32 ti_sci_get_num_resources(struct ti_sci_resource *res)
+{
+	u32 set, count = 0;
+
+	for (set = 0; set < res->sets; set++)
+		count += res->desc[set].num;
+
+	return count;
+}
+EXPORT_SYMBOL_GPL(ti_sci_get_num_resources);
+
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
+	u32 resource_subtype;
+	int i, ret;
+
+	res = devm_kzalloc(dev, sizeof(*res), GFP_KERNEL);
+	if (!res)
+		return ERR_PTR(-ENOMEM);
+
+	res->sets = of_property_count_elems_of_size(dev_of_node(dev), of_prop,
+						    sizeof(u32));
+	if (res->sets < 0) {
+		dev_err(dev, "%s resource type ids not available\n", of_prop);
+		return ERR_PTR(res->sets);
+	}
+
+	res->desc = devm_kcalloc(dev, res->sets, sizeof(*res->desc),
+				 GFP_KERNEL);
+	if (!res->desc)
+		return ERR_PTR(-ENOMEM);
+
+	for (i = 0; i < res->sets; i++) {
+		ret = of_property_read_u32_index(dev_of_node(dev), of_prop, i,
+						 &resource_subtype);
+		if (ret)
+			return ERR_PTR(-EINVAL);
+
+		ret = handle->ops.rm_core_ops.get_range(handle, dev_id,
+							resource_subtype,
+							&res->desc[i].start,
+							&res->desc[i].num);
+		if (ret) {
+			dev_err(dev, "dev = %d subtype %d not allocated for this host\n",
+				dev_id, resource_subtype);
+			return ERR_PTR(ret);
+		}
+
+		dev_dbg(dev, "dev = %d, subtype = %d, start = %d, num = %d\n",
+			dev_id, resource_subtype, res->desc[i].start,
+			res->desc[i].num);
+
+		res->desc[i].res_map =
+			devm_kzalloc(dev, BITS_TO_LONGS(res->desc[i].num) *
+				     sizeof(*res->desc[i].res_map), GFP_KERNEL);
+		if (!res->desc[i].res_map)
+			return ERR_PTR(-ENOMEM);
+	}
+	raw_spin_lock_init(&res->lock);
+
+	return res;
+}
+
 static int tisci_reboot_handler(struct notifier_block *nb, unsigned long mode,
 				void *cmd)
 {
diff --git a/include/linux/soc/ti/ti_sci_protocol.h b/include/linux/soc/ti/ti_sci_protocol.h
index d0bc4123232e..568722a041bf 100644
--- a/include/linux/soc/ti/ti_sci_protocol.h
+++ b/include/linux/soc/ti/ti_sci_protocol.h
@@ -266,6 +266,33 @@ struct ti_sci_handle {
 	struct ti_sci_ops ops;
 };
 
+#define TI_SCI_RESOURCE_NULL	0xffff
+
+/**
+ * struct ti_sci_resource_desc - Description of TI SCI resource instance range.
+ * @start:	Start index of the resource.
+ * @num:	Number of resources.
+ * @res_map:	Bitmap to manage the allocation of these resources.
+ */
+struct ti_sci_resource_desc {
+	u16 start;
+	u16 num;
+	unsigned long *res_map;
+};
+
+/**
+ * struct ti_sci_resource - Structure representing a resource assigned
+ *			    to a device.
+ * @sets:	Number of sets available from this resource type
+ * @lock:	Lock to guard the res map in each set.
+ * @desc:	Array of resource descriptors.
+ */
+struct ti_sci_resource {
+	u16 sets;
+	raw_spinlock_t lock;
+	struct ti_sci_resource_desc *desc;
+};
+
 #if IS_ENABLED(CONFIG_TI_SCI_PROTOCOL)
 const struct ti_sci_handle *ti_sci_get_handle(struct device *dev);
 int ti_sci_put_handle(const struct ti_sci_handle *handle);
@@ -274,6 +301,12 @@ const struct ti_sci_handle *ti_sci_get_by_phandle(struct device_node *np,
 						  const char *property);
 const struct ti_sci_handle *devm_ti_sci_get_by_phandle(struct device *dev,
 						       const char *property);
+u16 ti_sci_get_free_resource(struct ti_sci_resource *res);
+void ti_sci_release_resource(struct ti_sci_resource *res, u16 id);
+u32 ti_sci_get_num_resources(struct ti_sci_resource *res);
+struct ti_sci_resource *
+devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
+			    struct device *dev, u32 dev_id, char *of_prop);
 
 #else	/* CONFIG_TI_SCI_PROTOCOL */
 
@@ -306,6 +339,27 @@ const struct ti_sci_handle *devm_ti_sci_get_by_phandle(struct device *dev,
 {
 	return ERR_PTR(-EINVAL);
 }
+
+static inline u16 ti_sci_get_free_resource(struct ti_sci_resource *res)
+{
+	return TI_SCI_RESOURCE_NULL;
+}
+
+static inline void ti_sci_release_resource(struct ti_sci_resource *res, u16 id)
+{
+}
+
+static inline u32 ti_sci_get_num_resources(struct ti_sci_resource *res)
+{
+	return 0;
+}
+
+static inline struct ti_sci_resource *
+devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
+			    struct device *dev, u32 dev_id, char *of_prop)
+{
+	return ERR_PTR(-EINVAL);
+}
 #endif	/* CONFIG_TI_SCI_PROTOCOL */
 
 #endif	/* __TISCI_PROTOCOL_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
