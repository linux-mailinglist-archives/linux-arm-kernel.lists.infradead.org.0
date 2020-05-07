Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5041C9C03
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ztIwHvLt/NdKYfI/1FKG6JJl3mbVY7WBZBHr99Rj2bY=; b=hHWYLlvO06Yhw1wVn03IbSgHLd
	QIjUq4hfhNlB9RUodJ4lBV/g4dvsPR33AUkR0ywNRl8wmcVsb9F8MjttsE5iyXXC3UPyFdyT73BVu
	Q4w8vlNy9PWRQ+tIuVzpc+l+H1zLKVm5/PJFhNgDFm8y5oa5cy6FGTy2MILzhgatKEENomzoz++Cp
	n7I0yw8uqKkf4fixqlo3QW+juXtS0Z6aEY3j30+boFv7JA24cve6V3IpYuryhaAVuGXs0mdaUFdhv
	ythaohsplBuzs/tWEjFyiCZExJvl7AuDNKBZcHFUkM2LsiQtLHKk+XWK8by+zXDCyv53XSCAX2mJs
	BmCYddWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmxF-0000Pf-VX; Thu, 07 May 2020 20:17:13 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmw9-0007ue-Qv; Thu, 07 May 2020 20:16:07 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 4D56130C07C;
 Thu,  7 May 2020 13:15:29 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 4D56130C07C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1588882529;
 bh=oFHk9VaUvsDwZCOGkYPtno7t1fm1Qk5TvgnXILVu774=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g6WaUiIYt7T8JBD5hNN4dnAYffCjzYDtC1OPxx+CsAyVzyC1rKGHqKYwFYl0qwsn6
 NqNl5BXxDUxd6qLir88ZrPxmM/j75k8dm4JA4PtuKaaynO1bw7nUXzaTet8rMSSQMv
 VBhT1XeL7Lt4iEFSq3UgmeCiX9XH0Jr7CGA7G/KY=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 682E5140069;
 Thu,  7 May 2020 13:16:03 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: james.quinlan@broadcom.com
Subject: [PATCH v3 4/4] PCI: brcmstb: Disable L0s component of ASPM if
 requested
Date: Thu,  7 May 2020 16:15:43 -0400
Message-Id: <20200507201544.43432-5-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507201544.43432-1-james.quinlan@broadcom.com>
References: <20200507201544.43432-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_131605_911269_C1957936 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
