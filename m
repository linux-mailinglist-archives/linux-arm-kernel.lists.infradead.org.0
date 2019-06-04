Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43B3348E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AkdXS6rmGQfmBanw0iFCtGhWt6iE7ApqMD3uPwz2QVQ=; b=rYLYAN41KFH5yL
	shDSsu+eTzbVGubPtpNnIuW+skLUCuHwasjwIYDajgjLQ8VIrmKm9EL5502/19XbyerGLhyetbK0V
	icC5XgA5qyJW66rzQMc/p1fqBSy8HiXhm4Tqagh3/tmP/DFzeVAYOMxtq0NkVMVP6iKZkEinOe8E1
	nLzHOB0SKq4bUQBcEkYTWitAhw83MntTyNKVGH5ZCZT/fCo1Fm5WBf2J0MBvfg7doc4x3P9tBHK0y
	HVuz7Oqbsf/j7Vnkan9/VrSrRZQY7N6ZODGoXsi2QTZnjRS9DKOBp3Nq+yQu/4gKUDJ+XJXgqAG+C
	LGklmPnhXrW/jBjZSfQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9Zi-0006hx-Ou; Tue, 04 Jun 2019 13:34:02 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Yb-0004oC-Gr; Tue, 04 Jun 2019 13:32:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oIzF4wPqwNRg9UTf2H8Siu9HoiPwFp65VY06zJhiVqk=; b=IUhN/4f89kH4/zCWz/orpKPLP
 nzllrIWIkZKtaOXcJ8/FW1hYkS5efAA85JNT44tDWulsPHh1DnKCvKlWrJ6Wb8bF/s9gCLA3nrUnL
 3ybv0LGCDr6j7H4VxrY6H652gLrWwuvg1Me2ME9R1GVTaqcMC/QqOq8EMxiUucKri1Zg7lSgZeo9+
 Zge8nC9NDGiOr+1W6kBz0ixIrJph614/okA0MRGF2dD867oThAJp0SOJqPveR8S8abyM2N5RGjx1p
 tQjhrC6WtDVZ3bdMuahkWw1zOpVcmy8jVMHbNYU1Ewm/1+bpcuvHFDEV5BDORGLpAE3hTwCSmPGOz
 PIupgnHGg==;
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Kh-0004Dj-Cn; Tue, 04 Jun 2019 13:18:33 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DIKwr120006;
 Tue, 4 Jun 2019 08:18:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654300;
 bh=oIzF4wPqwNRg9UTf2H8Siu9HoiPwFp65VY06zJhiVqk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=wna+KbYt+4VB/bLdy1bkRaCyULLvGVx/mI+oJUkghKX4lGJWopq+C4sXX9eMeiSpx
 O5qN4L99Jrr4vwmjyI4vpeX2RsUM7jj7GTW7lxK0KgEuwSBzV+lB1qycprJVS2u0O0
 +m8ljAtaLaKCE72BeDwTxsNujVHrS3BOUK1eWMjQ=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DIKlP053724
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:18:20 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:18:19 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:18:19 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGX098972;
 Tue, 4 Jun 2019 08:18:14 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 17/30] PCI: endpoint: Protect concurrent access to
 pci_epf_ops with mutex
Date: Tue, 4 Jun 2019 18:45:03 +0530
Message-ID: <20190604131516.13596-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_141831_754769_F9CB5E76 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

Protect concurrent access to pci_epf_ops with mutex.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epf-core.c | 11 ++++++++++-
 include/linux/pci-epf.h             |  3 +++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index 93f28c65ace0..6e0648991b5c 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -35,7 +35,9 @@ void pci_epf_unbind(struct pci_epf *epf)
 		return;
 	}
 
+	mutex_lock(&epf->lock);
 	epf->driver->ops->unbind(epf);
+	mutex_unlock(&epf->lock);
 	module_put(epf->driver->owner);
 }
 EXPORT_SYMBOL_GPL(pci_epf_unbind);
@@ -49,6 +51,8 @@ EXPORT_SYMBOL_GPL(pci_epf_unbind);
  */
 int pci_epf_bind(struct pci_epf *epf)
 {
+	int ret;
+
 	if (!epf->driver) {
 		dev_WARN(&epf->dev, "epf device not bound to driver\n");
 		return -EINVAL;
@@ -57,7 +61,11 @@ int pci_epf_bind(struct pci_epf *epf)
 	if (!try_module_get(epf->driver->owner))
 		return -EAGAIN;
 
-	return epf->driver->ops->bind(epf);
+	mutex_lock(&epf->lock);
+	ret = epf->driver->ops->bind(epf);
+	mutex_unlock(&epf->lock);
+
+	return ret;
 }
 EXPORT_SYMBOL_GPL(pci_epf_bind);
 
@@ -252,6 +260,7 @@ struct pci_epf *pci_epf_create(const char *name)
 	device_initialize(dev);
 	dev->bus = &pci_epf_bus_type;
 	dev->type = &pci_epf_type;
+	mutex_init(&epf->lock);
 
 	ret = dev_set_name(dev, "%s", name);
 	if (ret) {
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 4993f7f6439b..bcdf4f07bde7 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -110,6 +110,7 @@ struct pci_epf_bar {
  * @driver: the EPF driver to which this EPF device is bound
  * @list: to add pci_epf as a list of PCI endpoint functions to pci_epc
  * @nb: notifier block to notify EPF of any EPC events (like linkup)
+ * @lock: mutex to protect pci_epf_ops
  */
 struct pci_epf {
 	struct device		dev;
@@ -124,6 +125,8 @@ struct pci_epf {
 	struct pci_epf_driver	*driver;
 	struct list_head	list;
 	struct notifier_block   nb;
+	/* mutex to protect against concurrent access of pci_epf_ops */
+	struct mutex		lock;
 };
 
 #define to_pci_epf(epf_dev) container_of((epf_dev), struct pci_epf, dev)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
