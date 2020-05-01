Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DDD1C17C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BfZrAiaROsgkQ96XjDXcIRw3F3p2LePOGjhUw3lTQuM=; b=XoeJnFRJ3zkyno9Pi9C4MiuBh6
	6lKFRUYkFZsbfMyYRGL1zB+NS3Xz5afdP20CxMINTSiQsq75TYvC7NFTh/2dRDaCJRgCUJcT2xmJt
	YZ5qmjEYGOuuerPUGOCejBJ/WFN21BoBPJWB0kbNdYH7a0TKMwswsqT0F4dOiQtywh28mQe4DjRbg
	CR3+9NRNCzExcYew+nI+viGgTOrN+/Lj/MI9QEhCIUgTEKCzxk0nCZnd6o56VDsz135uFIDFNtSYd
	079wNsq3fg7hQrOv+V7HWQUPKlQ7rsn/mlel/bO/1uA7xRnJPE8Xoi8P7rmOzqVNxJg2amg928QFp
	Yo8CQkpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWgA-0000Jp-AJ; Fri, 01 May 2020 14:30:14 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWf1-0007lC-3n; Fri, 01 May 2020 14:29:04 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 7C74B30C069;
 Fri,  1 May 2020 07:28:50 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 7C74B30C069
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1588343330;
 bh=+NXOKSqvwSz5PojqiSmDVNH1cnmOR0JuUEkzpZ7fLmA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ts6yX0DneB1yQTiummj/fR/OJ+Hl7Uzqg6wVXFOUC2CwnyO9TE7aqXX9nWTT/xwvg
 XFnWv409a+XTafECceyR77ZepAVkx9e/xUBE6hkIxWsBBIf9JiHurbjxhoLsBZ5o/v
 Ns7j9acWe+KtROphHwVIkJsGgywg/+zAssu/Hwlo=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 53609140091;
 Fri,  1 May 2020 07:29:00 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: james.quinlan@broadcom.com
Subject: [PATCH v2 4/4] PCI: brcmstb: Disable L0s component of ASPM if
 requested
Date: Fri,  1 May 2020 10:28:30 -0400
Message-Id: <20200501142831.35174-5-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501142831.35174-1-james.quinlan@broadcom.com>
References: <20200501142831.35174-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_072903_192505_F007C49B 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Some informal internal experiments has shown that the BrcmSTB ASPM L0s
savings may introduce an undesirable noise signal on some customers'
boards.  In addition, L0s was found lacking in realized power savings,
especially relative to the L1 ASPM component.  This is BrcmSTB's
experience and may not hold for others.  At any rate, if the
'aspm-no-l0s' property is present L0s will be disabled.

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 5b0dec5971b8..73020b4ff090 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -41,6 +41,9 @@
 #define PCIE_RC_CFG_PRIV1_ID_VAL3			0x043c
 #define  PCIE_RC_CFG_PRIV1_ID_VAL3_CLASS_CODE_MASK	0xffffff
 
+#define PCIE_RC_CFG_PRIV1_LINK_CAPABILITY			0x04dc
+#define  PCIE_RC_CFG_PRIV1_LINK_CAPABILITY_ASPM_SUPPORT_MASK	0xc00
+
 #define PCIE_RC_DL_MDIO_ADDR				0x1100
 #define PCIE_RC_DL_MDIO_WR_DATA				0x1104
 #define PCIE_RC_DL_MDIO_RD_DATA				0x1108
@@ -693,7 +696,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 	int num_out_wins = 0;
 	u16 nlw, cls, lnksta;
 	int i, ret;
-	u32 tmp;
+	u32 tmp, aspm_support;
 
 	/* Reset the bridge */
 	brcm_pcie_bridge_sw_init_set(pcie, 1);
@@ -803,6 +806,15 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 		num_out_wins++;
 	}
 
+	/* Don't advertise L0s capability if 'aspm-no-l0s' */
+	aspm_support = PCIE_LINK_STATE_L1;
+	if (!of_property_read_bool(pcie->np, "aspm-no-l0s"))
+		aspm_support |= PCIE_LINK_STATE_L0S;
+	tmp = readl(base + PCIE_RC_CFG_PRIV1_LINK_CAPABILITY);
+	u32p_replace_bits(&tmp, aspm_support,
+		PCIE_RC_CFG_PRIV1_LINK_CAPABILITY_ASPM_SUPPORT_MASK);
+	writel(tmp, base + PCIE_RC_CFG_PRIV1_LINK_CAPABILITY);
+
 	/*
 	 * For config space accesses on the RC, show the right class for
 	 * a PCIe-PCIe bridge (the default setting is to be EP mode).
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
