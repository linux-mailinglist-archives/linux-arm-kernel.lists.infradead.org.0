Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4443482B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjzMR1tsvJfMVKExzgQsP1O/Yo86xUkFH9dfnNJWb7Q=; b=J8/d5D9nrxhto8
	kBRWC12qe784ow84UVkY0bdb+58YyKSz6XFXkuIxZP214YMaCJp0J4K6dVERDHVBvH7J73+PZP0MY
	ouLtsOkui/daPM4fzFFRxUSTEf/KREMVZBftcerqSlp50Nqr6E5WWjONe9gGdzaf5k4zKGyv5E6mF
	TCs62iQ6uOt4Fh1z33QIZa5Sn73SPj2OYCHAEX77FG2VSGyA6xBA67sIXLU6MaAdAs6gdhygYo7a3
	TAo4YOGWGnaeCdTriZuLMA/GfTnbn5GC8buYnFfmn8mt8lSKVsMAoGB6PVCL7CbXb/bOtm6UlzWIB
	7jblfgW8CjwYk3DjmT+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9Li-0005UA-Ka; Tue, 04 Jun 2019 13:19:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9KP-0003vJ-2n; Tue, 04 Jun 2019 13:18:57 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DI4oQ028116;
 Tue, 4 Jun 2019 08:18:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654284;
 bh=hKZXGYlFN1fONABLyDc+vJLlvFIrfsKSse6yqM2h9dA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=mjI62sqN49gPl6cFJoxDVZjHIy1szKlLsYrpK+qUK7OsUlDcarolB+Y1l0glDzmkw
 rCcYm5koW4668+uWqe9Ruauc15dW3/xB4kVJrO0rwJ0KOTxrRTlWPPsqqv1K4gcAIw
 KkBadx9sQrcMDAkmjT1R1LMMePS9cWYIjYNLXewo=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DI3Y0043183
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:18:03 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:18:03 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:18:03 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGU098972;
 Tue, 4 Jun 2019 08:17:57 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 14/30] PCI: endpoint: Use notification chain mechanism to
 notify EPC events to EPF
Date: Tue, 4 Jun 2019 18:45:00 +0530
Message-ID: <20190604131516.13596-15-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061814_127434_815613B2 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
 linux-pci@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use atomic_notifier_call_chain to notify EPC events like linkup to EPF
instead of using linkup ops in EPF driver. This is in preparation for
adding proper locking mechanism to EPF ops. This will also enable to
add more events (in addition to linkup) in the future.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Signed-off-by: Sekhar Nori <nsekhar@ti.com>
---
 drivers/pci/endpoint/functions/pci-epf-test.c | 13 ++++++++---
 drivers/pci/endpoint/pci-epc-core.c           |  9 ++------
 drivers/pci/endpoint/pci-epf-core.c           | 22 +------------------
 include/linux/pci-epc.h                       |  8 +++++++
 include/linux/pci-epf.h                       |  6 ++---
 5 files changed, 23 insertions(+), 35 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index 27806987e93b..6380641ccc7a 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -360,12 +360,16 @@ static void pci_epf_test_cmd_handler(struct work_struct *work)
 			   msecs_to_jiffies(1));
 }
 
-static void pci_epf_test_linkup(struct pci_epf *epf)
+static int pci_epf_test_notifier(struct notifier_block *nb, unsigned long val,
+				 void *data)
 {
+	struct pci_epf *epf = container_of(nb, struct pci_epf, nb);
 	struct pci_epf_test *epf_test = epf_get_drvdata(epf);
 
 	queue_delayed_work(kpcitest_workqueue, &epf_test->cmd_handler,
 			   msecs_to_jiffies(1));
+
+	return NOTIFY_OK;
 }
 
 static void pci_epf_test_unbind(struct pci_epf *epf)
@@ -541,8 +545,12 @@ static int pci_epf_test_bind(struct pci_epf *epf)
 		}
 	}
 
-	if (!linkup_notifier)
+	if (linkup_notifier) {
+		epf->nb.notifier_call = pci_epf_test_notifier;
+		pci_epc_register_notifier(epc, &epf->nb);
+	} else {
 		queue_work(kpcitest_workqueue, &epf_test->cmd_handler.work);
+	}
 
 	return 0;
 }
@@ -575,7 +583,6 @@ static int pci_epf_test_probe(struct pci_epf *epf)
 static struct pci_epf_ops ops = {
 	.unbind	= pci_epf_test_unbind,
 	.bind	= pci_epf_test_bind,
-	.linkup = pci_epf_test_linkup,
 };
 
 static struct pci_epf_driver test_driver = {
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index e4712a0f249c..80831a874dbd 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -538,16 +538,10 @@ EXPORT_SYMBOL_GPL(pci_epc_remove_epf);
  */
 void pci_epc_linkup(struct pci_epc *epc)
 {
-	unsigned long flags;
-	struct pci_epf *epf;
-
 	if (!epc || IS_ERR(epc))
 		return;
 
-	spin_lock_irqsave(&epc->lock, flags);
-	list_for_each_entry(epf, &epc->pci_epf, list)
-		pci_epf_linkup(epf);
-	spin_unlock_irqrestore(&epc->lock, flags);
+	atomic_notifier_call_chain(&epc->notifier, 0, NULL);
 }
 EXPORT_SYMBOL_GPL(pci_epc_linkup);
 
@@ -611,6 +605,7 @@ __pci_epc_create(struct device *dev, const struct pci_epc_ops *ops,
 
 	spin_lock_init(&epc->lock);
 	INIT_LIST_HEAD(&epc->pci_epf);
+	ATOMIC_INIT_NOTIFIER_HEAD(&epc->notifier);
 
 	device_initialize(&epc->dev);
 	epc->dev.class = pci_epc_class;
diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index fb1306de8f40..93f28c65ace0 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -20,26 +20,6 @@ static DEFINE_MUTEX(pci_epf_mutex);
 static struct bus_type pci_epf_bus_type;
 static const struct device_type pci_epf_type;
 
-/**
- * pci_epf_linkup() - Notify the function driver that EPC device has
- *		      established a connection with the Root Complex.
- * @epf: the EPF device bound to the EPC device which has established
- *	 the connection with the host
- *
- * Invoke to notify the function driver that EPC device has established
- * a connection with the Root Complex.
- */
-void pci_epf_linkup(struct pci_epf *epf)
-{
-	if (!epf->driver) {
-		dev_WARN(&epf->dev, "epf device not bound to driver\n");
-		return;
-	}
-
-	epf->driver->ops->linkup(epf);
-}
-EXPORT_SYMBOL_GPL(pci_epf_linkup);
-
 /**
  * pci_epf_unbind() - Notify the function driver that the binding between the
  *		      EPF device and EPC device has been lost
@@ -214,7 +194,7 @@ int __pci_epf_register_driver(struct pci_epf_driver *driver,
 	if (!driver->ops)
 		return -EINVAL;
 
-	if (!driver->ops->bind || !driver->ops->unbind || !driver->ops->linkup)
+	if (!driver->ops->bind || !driver->ops->unbind)
 		return -EINVAL;
 
 	driver->driver.bus = &pci_epf_bus_type;
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index f641badc2c61..834dfc00aa00 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -89,6 +89,7 @@ struct pci_epc_mem {
  * @max_functions: max number of functions that can be configured in this EPC
  * @group: configfs group representing the PCI EPC device
  * @lock: spinlock to protect pci_epc ops
+ * @notifier: used to notify EPF of any EPC events (like linkup)
  */
 struct pci_epc {
 	struct device			dev;
@@ -99,6 +100,7 @@ struct pci_epc {
 	struct config_group		*group;
 	/* spinlock to protect against concurrent access of EP controller */
 	spinlock_t			lock;
+	struct atomic_notifier_head	notifier;
 };
 
 /**
@@ -141,6 +143,12 @@ static inline void *epc_get_drvdata(struct pci_epc *epc)
 	return dev_get_drvdata(&epc->dev);
 }
 
+static inline int
+pci_epc_register_notifier(struct pci_epc *epc, struct notifier_block *nb)
+{
+	return atomic_notifier_chain_register(&epc->notifier, nb);
+}
+
 struct pci_epc *
 __devm_pci_epc_create(struct device *dev, const struct pci_epc_ops *ops,
 		      struct module *owner);
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 2d6f07556682..4993f7f6439b 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -55,13 +55,10 @@ struct pci_epf_header {
  * @bind: ops to perform when a EPC device has been bound to EPF device
  * @unbind: ops to perform when a binding has been lost between a EPC device
  *	    and EPF device
- * @linkup: ops to perform when the EPC device has established a connection with
- *	    a host system
  */
 struct pci_epf_ops {
 	int	(*bind)(struct pci_epf *epf);
 	void	(*unbind)(struct pci_epf *epf);
-	void	(*linkup)(struct pci_epf *epf);
 };
 
 /**
@@ -112,6 +109,7 @@ struct pci_epf_bar {
  * @epc: the EPC device to which this EPF device is bound
  * @driver: the EPF driver to which this EPF device is bound
  * @list: to add pci_epf as a list of PCI endpoint functions to pci_epc
+ * @nb: notifier block to notify EPF of any EPC events (like linkup)
  */
 struct pci_epf {
 	struct device		dev;
@@ -125,6 +123,7 @@ struct pci_epf {
 	struct pci_epc		*epc;
 	struct pci_epf_driver	*driver;
 	struct list_head	list;
+	struct notifier_block   nb;
 };
 
 #define to_pci_epf(epf_dev) container_of((epf_dev), struct pci_epf, dev)
@@ -154,5 +153,4 @@ void *pci_epf_alloc_space(struct pci_epf *epf, size_t size, enum pci_barno bar,
 void pci_epf_free_space(struct pci_epf *epf, void *addr, enum pci_barno bar);
 int pci_epf_bind(struct pci_epf *epf);
 void pci_epf_unbind(struct pci_epf *epf);
-void pci_epf_linkup(struct pci_epf *epf);
 #endif /* __LINUX_PCI_EPF_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
