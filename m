Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473A41FC07C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 22:58:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q+lyK0NzknhFRHUnm4qWJ08tcz7lmxBoI9qgFjIk9YU=; b=f2febJ3FHuuU9pZv19+aLr1uHn
	1E5SmwcMCI+cgpfySQKc9CKovL7PnBixsKso7dGug7WT/QkdI070WWacrrOwX1KkuZOXIJboZ9/fV
	1aKyyJjh3zaftNloFnMy/xrrOsJR0/F1zzNxb59/gpngP7BqH2DdKn0Xf3venPYsa2u9OYkJA5DC7
	18LMgI8E/9A92LoSkUArXUMIoHEJwe+ZtKNmRxkpR1BTboQ3McsfZRvD775aVobvdc6C02Hi4ZWYd
	PwwDZXDrcPEWyDe35KNr6P3dCs+EnK6mdidkfX9cZ9RUzFQJXXNms2XGVmyVRtUUvmILUcgPB2vRg
	HVEMYu9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlIey-00048X-V9; Tue, 16 Jun 2020 20:58:20 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlId2-0002fU-E8; Tue, 16 Jun 2020 20:56:24 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 3746C30D89A;
 Tue, 16 Jun 2020 13:56:19 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 3746C30D89A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1592340979;
 bh=Hf33bBktY+K2EKNdxjcAf5j79T33zNUAdOmLLOcq3Kk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q6fmMHtp+AmlGNoel0w4MsoSbaeQ9I1GRsB5OKTjxsNn3R2yj+IY6PkPROeUIsSRX
 BiT1d3La7SyEDRTRo0WpMeO6CJDCVNuYP+zjKIw7iM1lJ/vwCLzDZN7Lz7CK3zs7RD
 HUiVic5WKS5s3otjVc18MP0UJcsXHBBVRUOrmtSg=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 9DAA014008C;
 Tue, 16 Jun 2020 13:56:17 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, james.quinlan@broadcom.com
Subject: [PATCH v5 11/12] PCI: brcmstb: Set bus max burst size by chip type
Date: Tue, 16 Jun 2020 16:55:18 -0400
Message-Id: <20200616205533.3513-12-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616205533.3513-1-james.quinlan@broadcom.com>
References: <20200616205533.3513-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_135620_513706_3F321FAB 
X-CRM114-Status: UNSURE (   9.67  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
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

The proper value of the parameter SCB_MAX_BURST_SIZE varies per chip.  The
2711 family requires 128B whereas other devices can employ 512.  The
assignment is complicated by the fact that the values for this two-bit
field have different meanings;

  Value   Type_Generic    Type_7278

     00       Reserved         128B
     01           128B         256B
     10           256B         512B
     11           512B     Reserved

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 29fad717f619..02b769534e53 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -55,7 +55,7 @@
 #define  PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK		0x1000
 #define  PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK	0x2000
 #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK	0x300000
-#define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128		0x0
+
 #define  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK		0xf8000000
 #define  PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK		0x07c00000
 #define  PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK		0x0000001f
@@ -847,7 +847,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 	int num_out_wins = 0;
 	u16 nlw, cls, lnksta;
 	int i, ret, memc;
-	u32 tmp, aspm_support;
+	u32 tmp, burst, aspm_support;
 
 	/* Reset the bridge */
 	brcm_pcie_bridge_sw_init_set(pcie, 1);
@@ -864,11 +864,22 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 	/* Wait for SerDes to be stable */
 	usleep_range(100, 200);
 
+	/*
+	 * SCB_MAX_BURST_SIZE is a two bit field.  For GENERIC chips it
+	 * is encoded as 0=128, 1=256, 2=512, 3=Rsvd, for BCM7278 it
+	 * is encoded as 0=Rsvd, 1=128, 2=256, 3=512.
+	 */
+	if (pcie->type == BCM2711)
+		burst = 0x0; /* 128B */
+	else if (pcie->type == BCM7278)
+		burst = 0x3; /* 512 bytes */
+	else
+		burst = 0x2; /* 512 bytes */
+
 	/* Set SCB_MAX_BURST_SIZE, CFG_READ_UR_MODE, SCB_ACCESS_EN */
 	u32p_replace_bits(&tmp, 1, PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK);
 	u32p_replace_bits(&tmp, 1, PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK);
-	u32p_replace_bits(&tmp, PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128,
-			  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK);
+	u32p_replace_bits(&tmp, burst, PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK);
 	writel(tmp, base + PCIE_MISC_MISC_CTRL);
 
 	ret = brcm_pcie_get_rc_bar2_size_and_offset(pcie, &rc_bar2_size,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
