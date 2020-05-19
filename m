Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B711DA2D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=59aFSurYEdqpSaiKDoYElduhnbkhqEcMh7LPIbP40Vc=; b=j7JJFu4yLOQpca78AWfqUg9K8i
	eyAYAQuZDZ6g3LsQCJesjvNpyIdbSj0OpP0DcXIpXas8x5ma8IFJxrMowmlsHuQ5JCL0QfQWsZii1
	FGAfQ7yqQ3YmElbufWQCsdiDNMhGruVzcYAj0hF1jvyjiRdsxhtO3BZNiBht+W0UV+gCmPdsmHCB+
	t55d2Ia7mL5XwtJcdCsLRZ1QwMucFkkzNhdmqtKfpQLx4xZTjNmm0onHnWoNSEpe/zlwf+W2CY1Yl
	Y0f7amqLAvOS1c9cT9/r5tF9HOQu4CMoNNsWh2c5w8hCah0h5cRBYwvKFGXj8WSaWK9qu4AUs526T
	2o/ATRXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8zP-0003tv-UY; Tue, 19 May 2020 20:37:27 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8xC-0000iv-KQ; Tue, 19 May 2020 20:35:12 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 899F130D85A;
 Tue, 19 May 2020 13:33:45 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 899F130D85A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1589920425;
 bh=KNHZZXTwwJMPWpvTATnyRar79T3FUVslG7xZeIt966A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qRVjK3qyeoQZ+4PRxEXZdtasJG903jg4VMZsuOYkaU1s1x/xTN4rqAGsJUBevWzRw
 rJbidZVmDMGh9IWTZcXCH7lhis6jKyiSeMX6CKdOAOsr5UOmUjHM8zgzJmTQESANEG
 fww6h9SVwk6HBwigrnmXGAYVNzwBt3HHbnuc5K64=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id B4FF714075A;
 Tue, 19 May 2020 13:35:06 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: james.quinlan@broadcom.com, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH 14/15] PCI: brcmstb: Set bus max burst side by chip type
Date: Tue, 19 May 2020 16:34:12 -0400
Message-Id: <20200519203419.12369-15-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200519203419.12369-1-james.quinlan@broadcom.com>
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_133510_996331_8C41122C 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jquinlan@broadcom.com>

The proper value of the parameter SCB_MAX_BURST_SIZE varies
per chip.  The 2711 family requires 128B whereas other devices
can employ 512.  The assignment is complicated by the fact
that the values for this two-bit field have different meanings;

  Value   Type_Generic    Type_7278

     00       Reserved         128B
     01           128B         256B
     10           256B         512B
     11           512B     Reserved

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 7bf945efd71b..0dfa1bbd9764 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -53,7 +53,7 @@
 #define  PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK		0x1000
 #define  PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK	0x2000
 #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK	0x300000
-#define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128		0x0
+
 #define  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK		0xf8000000
 #define  PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK		0x07c00000
 #define  PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK		0x0000001f
@@ -276,6 +276,7 @@ struct brcm_pcie {
 	int			num_memc;
 	u64			memc_size[PCIE_BRCM_MAX_MEMC];
 	u32			hw_rev;
+	const struct of_device_id *of_id;
 };
 
 /*
@@ -841,7 +842,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 	int num_out_wins = 0;
 	u16 nlw, cls, lnksta;
 	int i, ret, memc;
-	u32 tmp, aspm_support;
+	u32 tmp, burst, aspm_support;
 
 	/* Reset the bridge */
 	brcm_pcie_bridge_sw_init_set(pcie, 1);
@@ -857,10 +858,20 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 	/* Wait for SerDes to be stable */
 	usleep_range(100, 200);
 
+	/*
+	 * SCB_MAX_BURST_SIZE is a two bit field.  For GENERIC chips it
+	 * is encoded as 0=128, 1=256, 2=512, 3=Rsvd, for BCM7278 it
+	 * is encoded as 0=Rsvd, 1=128, 2=256, 3=512.
+	 */
+	if (strcmp(pcie->of_id->compatible, "brcm,bcm2711-pcie") == 0)
+		burst = 0x0; /* 128B */
+	else
+		burst = (pcie->type == BCM7278) ? 0x3 : 0x2; /* 512 bytes */
+
 	/* Set SCB_MAX_BURST_SIZE, CFG_READ_UR_MODE, SCB_ACCESS_EN */
 	u32p_replace_bits(&tmp, 1, PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK);
 	u32p_replace_bits(&tmp, 1, PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK);
-	u32p_replace_bits(&tmp, PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128,
+	u32p_replace_bits(&tmp, burst,
 			  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK);
 	writel(tmp, base + PCIE_MISC_MISC_CTRL);
 
@@ -1200,6 +1211,7 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 	pcie->reg_offsets = data->offsets;
 	pcie->reg_field_info = data->reg_field_info;
 	pcie->type = data->type;
+	pcie->of_id = of_id;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	pcie->base = devm_ioremap_resource(&pdev->dev, res);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
