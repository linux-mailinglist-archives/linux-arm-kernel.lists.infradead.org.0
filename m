Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C08B1C0559
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 20:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L+/86QhJRFl5JA9oNN4YrBYefri66uE2pDLq4in3rRc=; b=tpGG2oIqP3Vyn3sx+SZb1KFvXq
	hcqk37+Fa/ULnKiK3lgGnN+t0j40qaoQ+Ee8TxOLQ7/Qf+lWGfWyTVnOPikQoV92siqkhAsaaQxr2
	j6FGUP9h0pdPWLjguT6mF8I2Ub27Gd5IELncVyBF3MJwKQ7fdXqgV1mofD/8WGZPOecRkX7Jg8yh/
	QddlMOneZEs7RTljMSl+OH/305tPtmOfX1kUWcB8JC3cPptklAvTaSD5kU3U/OF2ubX73JX+08f+U
	fipo7Vwdquf+mWLcmrcrKZQ+Fl0GPFByI3nQqXkjym6ylsG5uSvkCNxig+Ack1hvsvKx2UKimiHSX
	XAKzmOug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUELw-0003Vk-Mq; Thu, 30 Apr 2020 18:56:08 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUELV-0003Lv-6M; Thu, 30 Apr 2020 18:55:42 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 67CBD30C0C7;
 Thu, 30 Apr 2020 11:55:31 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 67CBD30C0C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1588272931;
 bh=CCuZ5sgSNCjCfw59P5WerFNtMeSC3recQoakjLMrWEA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=slgm+6f+5wLO+mcNnTAIGmgDbnnPEPI3PL5el1hU5F8aHaMkWZ3TpacglHsYToRrL
 oObmoc9tRxXM1KsN+X3xY2E5FrRsocrcVk0goZExKpdzv+aathwvujHmwDlFc0Eefh
 /vjhqv7ExtsSmDDiSjpXwT+dhqMk/QvUmXFM2RRM=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 0BF9E14008B;
 Thu, 30 Apr 2020 11:55:37 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: james.quinlan@broadcom.com
Subject: [PATCH 3/5] PCI: brcmstb: enable CRS
Date: Thu, 30 Apr 2020 14:55:20 -0400
Message-Id: <20200430185522.4116-3-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430185522.4116-1-james.quinlan@broadcom.com>
References: <20200430185522.4116-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_115541_247789_915FCCAE 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jquinlan@broadcom.com>

Configuration Retry Request Status is off by default on this
PCIe controller.  Turn it on.

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 5b0dec5971b8..2bc913c0262c 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -34,6 +34,9 @@
 #define BRCM_PCIE_CAP_REGS				0x00ac
 
 /* Broadcom STB PCIe Register Offsets */
+#define PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL			0x00c8
+#define  PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL_RC_CRS_EN_MASK	0x10
+
 #define PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1				0x0188
 #define  PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1_ENDIAN_MODE_BAR2_MASK	0xc
 #define  PCIE_RC_CFG_VENDOR_SPCIFIC_REG1_LITTLE_ENDIAN			0x0
@@ -827,6 +830,12 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 		 pci_speed_string(pcie_link_speed[cls]), nlw,
 		 ssc_good ? "(SSC)" : "(!SSC)");
 
+	/* Enable configuration request retry (CRS) */
+	tmp = readl(base + PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL);
+	u32p_replace_bits(&tmp, 1,
+			  PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL_RC_CRS_EN_MASK);
+	writel(tmp, base + PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL);
+
 	/* PCIe->SCB endian mode for BAR */
 	tmp = readl(base + PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1);
 	u32p_replace_bits(&tmp, PCIE_RC_CFG_VENDOR_SPCIFIC_REG1_LITTLE_ENDIAN,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
