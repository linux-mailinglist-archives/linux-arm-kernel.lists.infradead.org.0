Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC803482D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrOsa/77luuZW1g34GBXi+keysz7mdyEgFzAnYpbo4c=; b=rBdY2Z0ZoEJvcg
	Ut2OzJ96VBXRuLVuMtwD42FV127+qKP4ffmGgGsOZotHyu0/XYxu/f8VLq6eTDh47sLiVW6JX8Q9k
	fM60/frb09Wtx1kxLA8iVtaeK8Y40EZIBPyuVZ78vdFfeDGhrMjVPZbh4XGIT47coL6jveEBMg/5E
	7kDyHC1U/xGbNHdX+/BxYXpXubl0BcmJmuwGy4+Y/ipgaWf2yiH62peScM2DM11lHucCZq57lw/E6
	outvOg5kRe/l7wY3HwVmXkBSu0mGaGEbmc8BnXj/JzbBOnlYb/ieR7+CnTybi8sQM3P6rjKsa8LO3
	0zD7LEPuL16LvjHOrrNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9Ly-0005nI-8N; Tue, 04 Jun 2019 13:19:50 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9KZ-00049u-Tz; Tue, 04 Jun 2019 13:19:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DIEoq119974;
 Tue, 4 Jun 2019 08:18:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654294;
 bh=iGGz8aJS305f8zkEMQQLmC9ZNt7J1jEUCbTcSQRPp8c=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=N8jkDEwpWuoOdA9t6AYdQYMuDLTffL+VUteLJp1OVzUM3ExXPoBOaemiDe1fXwRLR
 Glb+o8SJQmgSkmPXTcE5fy+Tosxatv+/DcmsyY7omogGVF2OYIUCZp5iShHHYCT7rO
 lpwRrvi1TP5cLGxqyTOADGGeWmDgY/RHw4XiW754=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DIENZ009122
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:18:14 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:18:14 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:18:14 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGW098972;
 Tue, 4 Jun 2019 08:18:09 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 16/30] PCI: endpoint: Assign function number of each PF in
 EPC core
Date: Tue, 4 Jun 2019 18:45:02 +0530
Message-ID: <20190604131516.13596-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061824_655069_C41E21F6 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The endpoint core relies on the drivers that invoke the API to bind
a controller driver with a function driver to allocate and assign a
function number to each physical function. Ideally the function
numbers should be assinged by EPC core for each of the physical
function that is bound to the EPC.

Assign function number of each PF in EPC core and remove function
number allocation in endpoint configfs.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-ep-cfs.c   | 27 +++++----------------------
 drivers/pci/endpoint/pci-epc-core.c | 12 +++++++++++-
 include/linux/pci-epc.h             |  2 ++
 3 files changed, 18 insertions(+), 23 deletions(-)

diff --git a/drivers/pci/endpoint/pci-ep-cfs.c b/drivers/pci/endpoint/pci-ep-cfs.c
index d1288a0bd530..e7e8367eead1 100644
--- a/drivers/pci/endpoint/pci-ep-cfs.c
+++ b/drivers/pci/endpoint/pci-ep-cfs.c
@@ -29,7 +29,6 @@ struct pci_epc_group {
 	struct config_group group;
 	struct pci_epc *epc;
 	bool start;
-	unsigned long function_num_map;
 };
 
 static inline struct pci_epf_group *to_pci_epf_group(struct config_item *item)
@@ -89,37 +88,22 @@ static int pci_epc_epf_link(struct config_item *epc_item,
 			    struct config_item *epf_item)
 {
 	int ret;
-	u32 func_no = 0;
 	struct pci_epf_group *epf_group = to_pci_epf_group(epf_item);
 	struct pci_epc_group *epc_group = to_pci_epc_group(epc_item);
 	struct pci_epc *epc = epc_group->epc;
 	struct pci_epf *epf = epf_group->epf;
 
-	func_no = find_first_zero_bit(&epc_group->function_num_map,
-				      BITS_PER_LONG);
-	if (func_no >= BITS_PER_LONG)
-		return -EINVAL;
-
-	set_bit(func_no, &epc_group->function_num_map);
-	epf->func_no = func_no;
-
 	ret = pci_epc_add_epf(epc, epf);
 	if (ret)
-		goto err_add_epf;
+		return ret;
 
 	ret = pci_epf_bind(epf);
-	if (ret)
-		goto err_epf_bind;
+	if (ret) {
+		pci_epc_remove_epf(epc, epf);
+		return ret;
+	}
 
 	return 0;
-
-err_epf_bind:
-	pci_epc_remove_epf(epc, epf);
-
-err_add_epf:
-	clear_bit(func_no, &epc_group->function_num_map);
-
-	return ret;
 }
 
 static void pci_epc_epf_unlink(struct config_item *epc_item,
@@ -134,7 +118,6 @@ static void pci_epc_epf_unlink(struct config_item *epc_item,
 
 	epc = epc_group->epc;
 	epf = epf_group->epf;
-	clear_bit(epf->func_no, &epc_group->function_num_map);
 	pci_epf_unbind(epf);
 	pci_epc_remove_epf(epc, epf);
 }
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index eea07f9ec5ff..e5d8d8370686 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -471,6 +471,8 @@ EXPORT_SYMBOL_GPL(pci_epc_write_header);
  */
 int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf)
 {
+	u32 func_no = 0;
+
 	if (epf->epc)
 		return -EBUSY;
 
@@ -480,9 +482,16 @@ int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf)
 	if (epf->func_no > epc->max_functions - 1)
 		return -EINVAL;
 
+	mutex_lock(&epc->lock);
+	func_no = find_first_zero_bit(&epc->function_num_map,
+				      BITS_PER_LONG);
+	if (func_no >= BITS_PER_LONG)
+		return -EINVAL;
+
+	set_bit(func_no, &epc->function_num_map);
+	epf->func_no = func_no;
 	epf->epc = epc;
 
-	mutex_lock(&epc->lock);
 	list_add_tail(&epf->list, &epc->pci_epf);
 	mutex_unlock(&epc->lock);
 
@@ -503,6 +512,7 @@ void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf)
 		return;
 
 	mutex_lock(&epc->lock);
+	clear_bit(epf->func_no, &epc->function_num_map);
 	list_del(&epf->list);
 	mutex_unlock(&epc->lock);
 }
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index a430d02aa1ff..ad118a3f1330 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -89,6 +89,7 @@ struct pci_epc_mem {
  * @max_functions: max number of functions that can be configured in this EPC
  * @group: configfs group representing the PCI EPC device
  * @lock: mutex to protect pci_epc ops
+ * @function_num_map: bitmap to manage physical function number
  * @notifier: used to notify EPF of any EPC events (like linkup)
  */
 struct pci_epc {
@@ -100,6 +101,7 @@ struct pci_epc {
 	struct config_group		*group;
 	/* mutex to protect against concurrent access of EP controller */
 	struct mutex			lock;
+	unsigned long			function_num_map;
 	struct atomic_notifier_head	notifier;
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
