Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8C6348DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LE4+MVtTBQYtf1OhPhaDJ1bfSHpAZWnoYQwpxMGCVvk=; b=euVZRdBFbKJxbe
	WUxZquwz4J3SCwWDXItJ8wyl+577N0DpXYXELcW1G6Zno/06Na0huA8xfvpGBVXy+2vSr/Z/tEBtY
	XKOCyfXc3bpVLq6TLFV9pNjAj8Q//jnTZ71OCONweqLlOOBxVYqus4SxH+w48qIv9QiVGsQLCFdvG
	hlVtxu03Pfi6fXfUoum6uAA/nwH6OZndsEoa1IZlHkwYQP5UqlaXAvizh8wykwvxad9vsIQ7Rlimx
	Fkasgr19yqmXX2afxZ4omiEGF8hVRuOdZlBUvDsLko4glOoEGLnP7leMHn8l3HckdhJT09yX5x8um
	adtvKCr5r2nW/5qvCfFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9ZW-0006Og-BH; Tue, 04 Jun 2019 13:33:50 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Ya-0004oC-9H; Tue, 04 Jun 2019 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C/sbI2/b2qQ1XTfqgFKre8IkHgEbeuIVF5EXBBu+zZA=; b=Y/XWf8kuMUUEvi97un4mkCvP5
 iHE7n1q3CC6xvsHJiX/p4U9q9x7S+fYM+H2diQ24uCdB2l3RwYlazKir9GY320zKTaY0T+CQfXoky
 J1YiZMu8iCRuSLNVrRg2Q1RpsgZf8GW9/h55XWaVeAoZ/zz5QWa4kAqEsNtFCTjuTCV96l3KLMGXL
 7KuXrTO3+zkkzD9M01th7Vu0WJVSQL9m60PNFXURf6zNUBbUQElVuYIcCnlPXpht7kzhHnh4PHBjC
 qBvrnafLTjcQpycAeXtQ5UUcJNS2X7J3baS7oQAEKOmo1cdd9mOanR9EfhuVYXKhPMU6aILeqfubc
 Y/ktOQ4PA==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Km-0004Ei-HO; Tue, 04 Jun 2019 13:18:38 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DIPMD082496;
 Tue, 4 Jun 2019 08:18:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654305;
 bh=C/sbI2/b2qQ1XTfqgFKre8IkHgEbeuIVF5EXBBu+zZA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=tVtC25aNx35AwQaaMae5nBpNeFM4uhNGvd+7yjQaCL/WGiUHctq0tAyJl+UpC5i8y
 Z9urBq8jX/1Dx5ZCILpy3i8528usHA08+Qn356pGaf3GaKaTWVUH59GTnZz8Kz0WVN
 5Fc2o+VX3/2xT2cZgNT/dhQmWXOMXr7zx2c5DZ1E=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DIPSV002785
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:18:25 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:18:25 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:18:25 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGY098972;
 Tue, 4 Jun 2019 08:18:20 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 18/30] PCI: endpoint: Add support to add virtual function
 in endpoint core
Date: Tue, 4 Jun 2019 18:45:04 +0530
Message-ID: <20190604131516.13596-19-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_141836_813260_8A021F46 
X-CRM114-Status: GOOD (  24.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to add virtual function in endpoint core. Every virtual
function should be associated with a physical function. Provide APIs
to associate a virtual function with a physical function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c |  2 +-
 drivers/pci/endpoint/pci-epf-core.c | 92 ++++++++++++++++++++++++++++-
 include/linux/pci-epf.h             | 18 +++++-
 3 files changed, 109 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index e5d8d8370686..55417504791b 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -473,7 +473,7 @@ int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf)
 {
 	u32 func_no = 0;
 
-	if (epf->epc)
+	if (epf->epc || epf->is_vf)
 		return -EBUSY;
 
 	if (IS_ERR(epc))
diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index 6e0648991b5c..ce9651ee552a 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -30,13 +30,20 @@ static const struct device_type pci_epf_type;
  */
 void pci_epf_unbind(struct pci_epf *epf)
 {
+	struct pci_epf *epf_vf;
+
 	if (!epf->driver) {
 		dev_WARN(&epf->dev, "epf device not bound to driver\n");
 		return;
 	}
 
 	mutex_lock(&epf->lock);
-	epf->driver->ops->unbind(epf);
+	list_for_each_entry(epf_vf, &epf->pci_vepf, list) {
+		if (epf_vf->is_bound)
+			epf_vf->driver->ops->unbind(epf_vf);
+	}
+	if (epf->is_bound)
+		epf->driver->ops->unbind(epf);
 	mutex_unlock(&epf->lock);
 	module_put(epf->driver->owner);
 }
@@ -51,6 +58,7 @@ EXPORT_SYMBOL_GPL(pci_epf_unbind);
  */
 int pci_epf_bind(struct pci_epf *epf)
 {
+	struct pci_epf *epf_vf;
 	int ret;
 
 	if (!epf->driver) {
@@ -62,13 +70,91 @@ int pci_epf_bind(struct pci_epf *epf)
 		return -EAGAIN;
 
 	mutex_lock(&epf->lock);
+	list_for_each_entry(epf_vf, &epf->pci_vepf, list) {
+		epf_vf->func_no = epf->func_no;
+		epf_vf->epc = epf->epc;
+		ret = epf_vf->driver->ops->bind(epf_vf);
+		if (ret)
+			goto ret;
+		epf_vf->is_bound = true;
+	}
+
 	ret = epf->driver->ops->bind(epf);
+	if (ret)
+		goto ret;
+	epf->is_bound = true;
+
+	mutex_unlock(&epf->lock);
+	return 0;
+
+ret:
 	mutex_unlock(&epf->lock);
+	pci_epf_unbind(epf);
 
 	return ret;
 }
 EXPORT_SYMBOL_GPL(pci_epf_bind);
 
+/**
+ * pci_epf_add_vepf() - associate virtual EP function to physical EP function
+ * @epf_pf: the physical EP function to which the virtual EP function should be
+ *   associated
+ * @epf_vf: the virtual EP function to be added
+ *
+ * A physical endpoint function can be associated with multiple virtual
+ * endpoint functions. Invoke pci_epf_add_epf() to add a virtual PCI endpoint
+ * function to a physical PCI endpoint function.
+ */
+int pci_epf_add_vepf(struct pci_epf *epf_pf, struct pci_epf *epf_vf)
+{
+	u32 vfunc_no;
+
+	if (IS_ERR_OR_NULL(epf_pf) || IS_ERR_OR_NULL(epf_vf))
+		return -EINVAL;
+
+	if (epf_pf->epc || epf_vf->epc || epf_vf->epf_pf)
+		return -EBUSY;
+
+	mutex_lock(&epf_pf->lock);
+	vfunc_no = find_first_zero_bit(&epf_pf->vfunction_num_map,
+				       BITS_PER_LONG);
+	if (vfunc_no >= BITS_PER_LONG)
+		return -EINVAL;
+
+	set_bit(vfunc_no, &epf_pf->vfunction_num_map);
+	epf_vf->vfunc_no = vfunc_no;
+
+	epf_vf->epf_pf = epf_pf;
+	epf_vf->is_vf = true;
+
+	list_add_tail(&epf_vf->list, &epf_pf->pci_vepf);
+	mutex_unlock(&epf_pf->lock);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pci_epf_add_vepf);
+
+/**
+ * pci_epf_remove_vepf() - remove virtual EP function from physical EP function
+ * @epf_pf: the physical EP function from which the virtual EP function should
+ *   be removed
+ * @epf_vf: the virtual EP function to be removed
+ *
+ * Invoke to remove a virtual endpoint function from the physcial endpoint
+ * function.
+ */
+void pci_epf_remove_vepf(struct pci_epf *epf_pf, struct pci_epf *epf_vf)
+{
+	if (IS_ERR_OR_NULL(epf_pf) || IS_ERR_OR_NULL(epf_vf))
+		return;
+
+	mutex_lock(&epf_pf->lock);
+	clear_bit(epf_vf->vfunc_no, &epf_pf->vfunction_num_map);
+	list_del(&epf_vf->list);
+	mutex_unlock(&epf_pf->lock);
+}
+EXPORT_SYMBOL_GPL(pci_epf_remove_vepf);
+
 /**
  * pci_epf_free_space() - free the allocated PCI EPF register space
  * @addr: the virtual address of the PCI EPF register space
@@ -256,6 +342,10 @@ struct pci_epf *pci_epf_create(const char *name)
 		return ERR_PTR(-ENOMEM);
 	}
 
+	/* VFs are numbered starting with 1. So set BIT(0) by default */
+	epf->vfunction_num_map = 1;
+	INIT_LIST_HEAD(&epf->pci_vepf);
+
 	dev = &epf->dev;
 	device_initialize(dev);
 	dev->bus = &pci_epf_bus_type;
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index bcdf4f07bde7..c36e474bc9c7 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -105,12 +105,20 @@ struct pci_epf_bar {
  * @header: represents standard configuration header
  * @bar: represents the BAR of EPF device
  * @msi_interrupts: number of MSI interrupts required by this function
- * @func_no: unique function number within this endpoint device
+ * @func_no: unique (physical) function number within this endpoint device
+ * @vfunc_no: unique virtual function number within a physical function
  * @epc: the EPC device to which this EPF device is bound
+ * @epf_pf: the physical EPF device to which this virtual EPF device is bound
+ *   An EPF cannot be associated with both EPC and physical EPF device at the
+ *   same time.
  * @driver: the EPF driver to which this EPF device is bound
  * @list: to add pci_epf as a list of PCI endpoint functions to pci_epc
  * @nb: notifier block to notify EPF of any EPC events (like linkup)
  * @lock: mutex to protect pci_epf_ops
+ * @is_bound: indicates if bind notification to function driver has been invoked
+ * @is_vf: true - virtual function, false - physical function
+ * @vfunction_num_map: bitmap to manage virtual function number
+ * @pci_vepf: list of virtual endpoint function associated with this function
  */
 struct pci_epf {
 	struct device		dev;
@@ -120,13 +128,19 @@ struct pci_epf {
 	u8			msi_interrupts;
 	u16			msix_interrupts;
 	u8			func_no;
+	u8			vfunc_no;
 
 	struct pci_epc		*epc;
+	struct pci_epf		*epf_pf;
 	struct pci_epf_driver	*driver;
 	struct list_head	list;
 	struct notifier_block   nb;
 	/* mutex to protect against concurrent access of pci_epf_ops */
 	struct mutex		lock;
+	unsigned int		is_bound;
+	unsigned int		is_vf;
+	unsigned long		vfunction_num_map;
+	struct list_head	pci_vepf;
 };
 
 #define to_pci_epf(epf_dev) container_of((epf_dev), struct pci_epf, dev)
@@ -156,4 +170,6 @@ void *pci_epf_alloc_space(struct pci_epf *epf, size_t size, enum pci_barno bar,
 void pci_epf_free_space(struct pci_epf *epf, void *addr, enum pci_barno bar);
 int pci_epf_bind(struct pci_epf *epf);
 void pci_epf_unbind(struct pci_epf *epf);
+int pci_epf_add_vepf(struct pci_epf *epf_pf, struct pci_epf *epf_vf);
+void pci_epf_remove_vepf(struct pci_epf *epf_pf, struct pci_epf *epf_vf);
 #endif /* __LINUX_PCI_EPF_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
