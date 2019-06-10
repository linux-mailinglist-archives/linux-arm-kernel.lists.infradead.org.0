Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64083B376
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EFqYYOyLYEK/mu7oAjzKyiRu15eftRj+lUUyJfXwsRM=; b=P7jpgG8VteYtFF
	FGRWFKf3OQXrKlXBK8adOBS3RlG9/YTjWRAVRkyWNKidcnngx2b5NMYR1iWDZ7dcwGP9I9mTGVIGp
	Yjrffyt1hHG7UDlNztjbBXbcOfnX+jusJdU8oyH6KWVWRo8/0wlI9dvM9Qwf9sb9HbvRkSvZzQfYU
	fsEqy0E1WiGBiYmbfUjDjdjQWTof5CcAXIS8klCHqpxKhSlxzUz4TAED12lINQmihTkttxR5zX3lt
	Bsm3oxg8Ej7gVvjDB5oGJSo8DRlRyoauGDF4HEPXWmab5G/9noCnHbqaUqEapXqqiRt1h4q4zGBok
	tBVl4v3gzDLdwfaCgijg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHud-0001DB-JO; Mon, 10 Jun 2019 10:52:27 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHuU-0001CG-L0
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:52:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1560163938; x=1591699938;
 h=to:cc:from:subject:message-id:date:mime-version:
 content-transfer-encoding;
 bh=clpm+5SOjdv+JFhxjYHFQLyawr88S0m/57U7l/fdAKQ=;
 b=EPj4XDUUtzQgyW7p4VWslH8zrl80YqBxW3TLRfx2oUdulDoyjlxy2xZq
 go6ab2yByCvQ5DW0CqIB4vUvjJmeUdwgFOo/SSYJxCWYtJaSWvlrIaPxn
 pBfRTCWge3yaQzdj+Micle5bujCIrU7GNbi7WSQp4CiIUqJXiZoTy2KD+ A=;
X-IronPort-AV: E=Sophos;i="5.60,575,1549929600"; d="scan'208";a="679047652"
Received: from sea3-co-svc-lb6-vlan3.sea.amazon.com (HELO
 email-inbound-relay-2a-e7be2041.us-west-2.amazon.com) ([10.47.22.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 10 Jun 2019 10:52:14 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx1-ws-svc-p6-lb9-vlan2.pdx.amazon.com [10.236.137.194])
 by email-inbound-relay-2a-e7be2041.us-west-2.amazon.com (Postfix) with ESMTPS
 id 3737FA213D; Mon, 10 Jun 2019 10:52:14 +0000 (UTC)
Received: from EX13D07EUB001.ant.amazon.com (10.43.166.214) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 10 Jun 2019 10:52:13 +0000
Received: from [10.220.227.170] (10.43.161.225) by
 EX13D07EUB001.ant.amazon.com (10.43.166.214) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 10 Jun 2019 10:52:07 +0000
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-acpi@vger.kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 <barakw@amazon.com>, <dwmw@amazon.co.uk>, <jonnyc@amazon.com>,
 <hanochu@amazon.com>, <talel@amazon.com>
From: Zeev Zilberman <zeev@amazon.com>
Subject: [PATCH v2 1/1] irqchip/gic: Add support for Amazon Graviton variant
 of GICv3+GICv2m
Message-ID: <2cba86c2-77de-0b27-f23c-c83d9c6a03b2@amazon.com>
Date: Mon, 10 Jun 2019 13:52:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.43.161.225]
X-ClientProxiedBy: EX13D07UWA004.ant.amazon.com (10.43.160.32) To
 EX13D07EUB001.ant.amazon.com (10.43.166.214)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_035218_782887_35ADC71F 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: benh@kernel.crashing.org, Hanna Hawa <hhhawa@amazon.com>, "Aerov,
 Vladimir" <vaerov@amazon.com>, ronenk@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch adds support for Amazon Graviton custom variant of GICv2m, where
hw irq is encoded using the MSI message address, as opposed to standard
GICv2m, where hw irq is encoded in the MSI message data.
In addition, the Graviton flavor of GICv2m is used along GICv3 (and not
GICv2).

Co-developed-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Signed-off-by: Zeev Zilberman <zeev@amazon.com>
---
Changes from v1:
- Fixed Signed-off-by order and added Co-developed-by tag
- Removed redundant #ifdef CONFIG_ACPI
---
 drivers/irqchip/irq-gic-v2m.c          | 85 +++++++++++++++++++++++++++-------
 drivers/irqchip/irq-gic-v3.c           |  3 ++
 include/linux/irqchip/arm-gic-common.h |  5 ++
 include/linux/irqchip/arm-gic.h        |  3 --
 4 files changed, 76 insertions(+), 20 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v2m.c b/drivers/irqchip/irq-gic-v2m.c
index 3c77ab6..5356739 100644
--- a/drivers/irqchip/irq-gic-v2m.c
+++ b/drivers/irqchip/irq-gic-v2m.c
@@ -56,6 +56,7 @@
 
 /* List of flags for specific v2m implementation */
 #define GICV2M_NEEDS_SPI_OFFSET		0x00000001
+#define GICV2M_GRAVITON_ADDRESS_ONLY	0x00000002
 
 static LIST_HEAD(v2m_nodes);
 static DEFINE_SPINLOCK(v2m_lock);
@@ -98,15 +99,26 @@ static struct msi_domain_info gicv2m_msi_domain_info = {
 	.chip	= &gicv2m_msi_irq_chip,
 };
 
+static phys_addr_t gicv2m_get_msi_addr(struct v2m_data *v2m, int hwirq)
+{
+	if (v2m->flags & GICV2M_GRAVITON_ADDRESS_ONLY)
+		return v2m->res.start | ((hwirq - 32) << 3);
+	else
+		return v2m->res.start + V2M_MSI_SETSPI_NS;
+}
+
 static void gicv2m_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
 {
 	struct v2m_data *v2m = irq_data_get_irq_chip_data(data);
-	phys_addr_t addr = v2m->res.start + V2M_MSI_SETSPI_NS;
+	phys_addr_t addr = gicv2m_get_msi_addr(v2m, data->hwirq);
 
 	msg->address_hi = upper_32_bits(addr);
 	msg->address_lo = lower_32_bits(addr);
-	msg->data = data->hwirq;
 
+	if (v2m->flags & GICV2M_GRAVITON_ADDRESS_ONLY)
+		msg->data = 0;
+	else
+		msg->data = data->hwirq;
 	if (v2m->flags & GICV2M_NEEDS_SPI_OFFSET)
 		msg->data -= v2m->spi_offset;
 
@@ -188,7 +200,7 @@ static int gicv2m_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
 	hwirq = v2m->spi_start + offset;
 
 	err = iommu_dma_prepare_msi(info->desc,
-				    v2m->res.start + V2M_MSI_SETSPI_NS);
+				    gicv2m_get_msi_addr(v2m, hwirq));
 	if (err)
 		return err;
 
@@ -307,7 +319,7 @@ static int gicv2m_allocate_domains(struct irq_domain *parent)
 
 static int __init gicv2m_init_one(struct fwnode_handle *fwnode,
 				  u32 spi_start, u32 nr_spis,
-				  struct resource *res)
+				  struct resource *res, u32 flags)
 {
 	int ret;
 	struct v2m_data *v2m;
@@ -320,6 +332,7 @@ static int __init gicv2m_init_one(struct fwnode_handle *fwnode,
 
 	INIT_LIST_HEAD(&v2m->entry);
 	v2m->fwnode = fwnode;
+	v2m->flags = flags;
 
 	memcpy(&v2m->res, res, sizeof(struct resource));
 
@@ -334,7 +347,14 @@ static int __init gicv2m_init_one(struct fwnode_handle *fwnode,
 		v2m->spi_start = spi_start;
 		v2m->nr_spis = nr_spis;
 	} else {
-		u32 typer = readl_relaxed(v2m->base + V2M_MSI_TYPER);
+		u32 typer;
+
+		/* Graviton should always have explicit spi_start/nr_spis */
+		if (v2m->flags & GICV2M_GRAVITON_ADDRESS_ONLY) {
+			ret = -EINVAL;
+			goto err_iounmap;
+		}
+		typer = readl_relaxed(v2m->base + V2M_MSI_TYPER);
 
 		v2m->spi_start = V2M_MSI_TYPER_BASE_SPI(typer);
 		v2m->nr_spis = V2M_MSI_TYPER_NUM_SPI(typer);
@@ -355,18 +375,21 @@ static int __init gicv2m_init_one(struct fwnode_handle *fwnode,
 	 *
 	 * Broadom NS2 GICv2m implementation has an erratum where the MSI data
 	 * is 'spi_number - 32'
+	 *
+	 * Reading that register fails on the Graviton implementation
 	 */
-	switch (readl_relaxed(v2m->base + V2M_MSI_IIDR)) {
-	case XGENE_GICV2M_MSI_IIDR:
-		v2m->flags |= GICV2M_NEEDS_SPI_OFFSET;
-		v2m->spi_offset = v2m->spi_start;
-		break;
-	case BCM_NS2_GICV2M_MSI_IIDR:
-		v2m->flags |= GICV2M_NEEDS_SPI_OFFSET;
-		v2m->spi_offset = 32;
-		break;
+	if (!(v2m->flags & GICV2M_GRAVITON_ADDRESS_ONLY)) {
+		switch (readl_relaxed(v2m->base + V2M_MSI_IIDR)) {
+		case XGENE_GICV2M_MSI_IIDR:
+			v2m->flags |= GICV2M_NEEDS_SPI_OFFSET;
+			v2m->spi_offset = v2m->spi_start;
+			break;
+		case BCM_NS2_GICV2M_MSI_IIDR:
+			v2m->flags |= GICV2M_NEEDS_SPI_OFFSET;
+			v2m->spi_offset = 32;
+			break;
+		}
 	}
-
 	v2m->bm = kcalloc(BITS_TO_LONGS(v2m->nr_spis), sizeof(long),
 			  GFP_KERNEL);
 	if (!v2m->bm) {
@@ -419,7 +442,8 @@ static int __init gicv2m_of_init(struct fwnode_handle *parent_handle,
 			pr_info("DT overriding V2M MSI_TYPER (base:%u, num:%u)\n",
 				spi_start, nr_spis);
 
-		ret = gicv2m_init_one(&child->fwnode, spi_start, nr_spis, &res);
+		ret = gicv2m_init_one(&child->fwnode, spi_start, nr_spis,
+				      &res, 0);
 		if (ret) {
 			of_node_put(child);
 			break;
@@ -451,6 +475,25 @@ static struct fwnode_handle *gicv2m_get_fwnode(struct device *dev)
 	return data->fwnode;
 }
 
+static bool acpi_check_amazon_graviton_quirks(void)
+{
+	static struct acpi_table_madt *madt;
+	acpi_status status;
+	bool rc = false;
+
+#define ACPI_AMZN_OEM_ID		"AMAZON"
+
+	status = acpi_get_table(ACPI_SIG_MADT, 0,
+				(struct acpi_table_header **)&madt);
+
+	if (ACPI_FAILURE(status) || !madt)
+		return rc;
+	rc = !memcmp(madt->header.oem_id, ACPI_AMZN_OEM_ID, ACPI_OEM_ID_SIZE);
+	acpi_put_table((struct acpi_table_header *)madt);
+
+	return rc;
+}
+
 static int __init
 acpi_parse_madt_msi(union acpi_subtable_headers *header,
 		    const unsigned long end)
@@ -460,6 +503,7 @@ acpi_parse_madt_msi(union acpi_subtable_headers *header,
 	u32 spi_start = 0, nr_spis = 0;
 	struct acpi_madt_generic_msi_frame *m;
 	struct fwnode_handle *fwnode;
+	u32 flags = 0;
 
 	m = (struct acpi_madt_generic_msi_frame *)header;
 	if (BAD_MADT_ENTRY(m, end))
@@ -469,6 +513,13 @@ acpi_parse_madt_msi(union acpi_subtable_headers *header,
 	res.end = m->base_address + SZ_4K - 1;
 	res.flags = IORESOURCE_MEM;
 
+	if (acpi_check_amazon_graviton_quirks()) {
+		pr_info("applying Amazon Graviton quirk\n");
+		res.end = res.start + SZ_8K - 1;
+		flags |= GICV2M_GRAVITON_ADDRESS_ONLY;
+		gicv2m_msi_domain_info.flags &= ~MSI_FLAG_MULTI_PCI_MSI;
+	}
+
 	if (m->flags & ACPI_MADT_OVERRIDE_SPI_VALUES) {
 		spi_start = m->spi_base;
 		nr_spis = m->spi_count;
@@ -483,7 +534,7 @@ acpi_parse_madt_msi(union acpi_subtable_headers *header,
 		return -EINVAL;
 	}
 
-	ret = gicv2m_init_one(fwnode, spi_start, nr_spis, &res);
+	ret = gicv2m_init_one(fwnode, spi_start, nr_spis, &res, flags);
 	if (ret)
 		irq_domain_free_fwnode(fwnode);
 
diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index f44cd89..1282f81 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -1343,6 +1343,9 @@ static int __init gic_init_bases(void __iomem *dist_base,
 	if (gic_dist_supports_lpis()) {
 		its_init(handle, &gic_data.rdists, gic_data.domain);
 		its_cpu_init();
+	} else {
+		if (IS_ENABLED(CONFIG_ARM_GIC_V2M))
+			gicv2m_init(handle, gic_data.domain);
 	}
 
 	if (gic_prio_masking_enabled()) {
diff --git a/include/linux/irqchip/arm-gic-common.h b/include/linux/irqchip/arm-gic-common.h
index 9a1a479..62a8821 100644
--- a/include/linux/irqchip/arm-gic-common.h
+++ b/include/linux/irqchip/arm-gic-common.h
@@ -39,4 +39,9 @@ struct gic_kvm_info {
 
 const struct gic_kvm_info *gic_get_kvm_info(void);
 
+struct irq_domain;
+struct fwnode_handle;
+int gicv2m_init(struct fwnode_handle *parent_handle,
+		struct irq_domain *parent);
+
 #endif /* __LINUX_IRQCHIP_ARM_GIC_COMMON_H */
diff --git a/include/linux/irqchip/arm-gic.h b/include/linux/irqchip/arm-gic.h
index 0f049b3..7bd3bc6 100644
--- a/include/linux/irqchip/arm-gic.h
+++ b/include/linux/irqchip/arm-gic.h
@@ -160,9 +160,6 @@ int gic_of_init_child(struct device *dev, struct gic_chip_data **gic, int irq);
  */
 void gic_init(void __iomem *dist , void __iomem *cpu);
 
-int gicv2m_init(struct fwnode_handle *parent_handle,
-		struct irq_domain *parent);
-
 void gic_send_sgi(unsigned int cpu_id, unsigned int irq);
 int gic_get_cpu_id(unsigned int cpu);
 void gic_migrate_target(unsigned int new_cpu_id);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
