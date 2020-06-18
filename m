Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700721FDC33
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8wbLEFyar8/KWPB6MZG/9FsO9JBlT0ZaUfygOkKgao=; b=LuI3xsFSES1bU8
	ayrofd2q6HruS9BUWA8hw0dhNdcFfBd+yLmyOV2dS3coigu00cWWiZLWhg3VeKLDTRnzlQr2D1uzB
	6bZhrzQ4gHZwxZFKLUkbzMDYwJzFnUo+dqK2sgL6NFmcbC7q7RmuJ4ZOosU1DQS8yZlAdOAma0KuU
	JFEd4BuZjsn64wEHdynXM95DeugtMnB16Eoy0kriz2+9SGUt0+3nx5m3qDGl+6qnbicVp/awtT+Db
	yjUwLC/bru75T72lDL1Bu+rQ4idVODDuzVruUp+v0p4rcVXm/okQKKv/M19ADfQy6jYjd/DpJnk8G
	h+E3eOtQRtiz+BBqa7Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljBo-0008JB-7l; Thu, 18 Jun 2020 01:18:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj4m-0000XL-DV; Thu, 18 Jun 2020 01:10:47 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 340CF221FA;
 Thu, 18 Jun 2020 01:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442644;
 bh=+M0W5qBbHTPjU1IEEobOMiZujG9hxISML1JRsZPtPdA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vd2uZbKD2Ul2FKiwxWd9kVMVRRMFSqEDDPIakzR+makaXrgofbbgRDfD+goyngmcF
 TQXyzQYF8lsF/xKT3pANXNjeB8VrZw84W6Skx0a2K8iOWmfZ1QguS8gTEkJ5ERu7iv
 tdCahUV5W9ZRZUil2ALTAnjxooetfwPaEQG8h1Uw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 118/388] staging: mt7621-pci: fix PCIe interrupt
 mapping
Date: Wed, 17 Jun 2020 21:03:35 -0400
Message-Id: <20200618010805.600873-118-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181044_529950_F6E0B6E0 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sergio Paracuellos <sergio.paracuellos@gmail.com>

[ Upstream commit fab6710e4c51f4eb622f95a08322ab5fdbe3f295 ]

MT7621 has three assigned interrupts for the pcie. This
interrupts should properly being mapped taking into account
which devices are finally connected in which bus according
to link status. So the irq mappings should be as follows
according to link status (three bits indicating which devices
are link up):

* For PCIe Bus 1 slot 0:
  - status = 0x2 || status = 0x6 => IRQ = pcie1_irq (24).
  - status = 0x4 => IRQ = pcie2_irq (25).
  - default => IRQ = pcie0_irq (23).
* For PCIe Bus 2 slot 0:
  - status = 0x5 || status = 0x6 => IRQ = pcie2_irq (25).
  - default => IRQ = pcie1_irq (24).
* For PCIe Bus 2 slot 1:
  - status = 0x5 || status = 0x6 => IRQ = pcie2_irq (25).
  - default => IRQ = pcie1_irq (24).
* For PCIe Bus 3 any slot:
  - default => IRQ = pcie2_irq (25).

Because of this, the function 'of_irq_parse_and_map_pci' cannot
be used and we need to change device tree information from using
the 'interrupt-map' and 'interrupt-map-mask' properties into an
'interrupts' property to be able to get irq information from the
ports using the 'platform_get_irq' and storing an 'irq-map' into
the pcie driver data node to properly map correct irq using a
new 'mt7621_map_irq' function where this map will be read and the
correct irq returned.

Fixes: 46d093124df4 ("staging: mt7621-pci: improve interrupt mapping")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Link: https://lore.kernel.org/r/20200413055942.2714-1-sergio.paracuellos@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/mt7621-dts/mt7621.dtsi  |  9 +++----
 drivers/staging/mt7621-pci/pci-mt7621.c | 36 +++++++++++++++++++++++--
 2 files changed, 38 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 9e5cf68731bb..82aa93634eda 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -523,11 +523,10 @@ pcie: pcie@1e140000 {
 			0x01000000 0 0x00000000 0x1e160000 0 0x00010000 /* io space */
 		>;
 
-		#interrupt-cells = <1>;
-		interrupt-map-mask = <0xF0000 0 0 1>;
-		interrupt-map = <0x10000 0 0 1 &gic GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH>,
-				<0x20000 0 0 1 &gic GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH>,
-				<0x30000 0 0 1 &gic GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH
+				GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH
+				GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
 
 		status = "disabled";
 
diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index b9d460a9c041..36207243a71b 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -97,6 +97,7 @@
  * @pcie_rst: pointer to port reset control
  * @gpio_rst: gpio reset
  * @slot: port slot
+ * @irq: GIC irq
  * @enabled: indicates if port is enabled
  */
 struct mt7621_pcie_port {
@@ -107,6 +108,7 @@ struct mt7621_pcie_port {
 	struct reset_control *pcie_rst;
 	struct gpio_desc *gpio_rst;
 	u32 slot;
+	int irq;
 	bool enabled;
 };
 
@@ -120,6 +122,7 @@ struct mt7621_pcie_port {
  * @dev: Pointer to PCIe device
  * @io_map_base: virtual memory base address for io
  * @ports: pointer to PCIe port information
+ * @irq_map: irq mapping info according pcie link status
  * @resets_inverted: depends on chip revision
  * reset lines are inverted.
  */
@@ -135,6 +138,7 @@ struct mt7621_pcie {
 	} offset;
 	unsigned long io_map_base;
 	struct list_head ports;
+	int irq_map[PCIE_P2P_MAX];
 	bool resets_inverted;
 };
 
@@ -279,6 +283,16 @@ static void setup_cm_memory_region(struct mt7621_pcie *pcie)
 	}
 }
 
+static int mt7621_map_irq(const struct pci_dev *pdev, u8 slot, u8 pin)
+{
+	struct mt7621_pcie *pcie = pdev->bus->sysdata;
+	struct device *dev = pcie->dev;
+	int irq = pcie->irq_map[slot];
+
+	dev_info(dev, "bus=%d slot=%d irq=%d\n", pdev->bus->number, slot, irq);
+	return irq;
+}
+
 static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
@@ -330,6 +344,7 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 {
 	struct mt7621_pcie_port *port;
 	struct device *dev = pcie->dev;
+	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *pnode = dev->of_node;
 	struct resource regs;
 	char name[10];
@@ -371,6 +386,12 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 	port->slot = slot;
 	port->pcie = pcie;
 
+	port->irq = platform_get_irq(pdev, slot);
+	if (port->irq < 0) {
+		dev_err(dev, "Failed to get IRQ for PCIe%d\n", slot);
+		return -ENXIO;
+	}
+
 	INIT_LIST_HEAD(&port->list);
 	list_add_tail(&port->list, &pcie->ports);
 
@@ -585,13 +606,15 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 {
 	u32 pcie_link_status = 0;
 	u32 n;
-	int i;
+	int i = 0;
 	u32 p2p_br_devnum[PCIE_P2P_MAX];
+	int irqs[PCIE_P2P_MAX];
 	struct mt7621_pcie_port *port;
 
 	list_for_each_entry(port, &pcie->ports, list) {
 		u32 slot = port->slot;
 
+		irqs[i++] = port->irq;
 		if (port->enabled)
 			pcie_link_status |= BIT(slot);
 	}
@@ -614,6 +637,15 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 		 (p2p_br_devnum[1] << PCIE_P2P_BR_DEVNUM1_SHIFT) |
 		 (p2p_br_devnum[2] << PCIE_P2P_BR_DEVNUM2_SHIFT));
 
+	/* Assign IRQs */
+	n = 0;
+	for (i = 0; i < PCIE_P2P_MAX; i++)
+		if (pcie_link_status & BIT(i))
+			pcie->irq_map[n++] = irqs[i];
+
+	for (i = n; i < PCIE_P2P_MAX; i++)
+		pcie->irq_map[i] = -1;
+
 	return 0;
 }
 
@@ -638,7 +670,7 @@ static int mt7621_pcie_register_host(struct pci_host_bridge *host,
 	host->busnr = pcie->busn.start;
 	host->dev.parent = pcie->dev;
 	host->ops = &mt7621_pci_ops;
-	host->map_irq = of_irq_parse_and_map_pci;
+	host->map_irq = mt7621_map_irq;
 	host->swizzle_irq = pci_common_swizzle;
 	host->sysdata = pcie;
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
