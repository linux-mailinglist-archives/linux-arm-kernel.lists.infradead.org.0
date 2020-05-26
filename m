Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093F61E2C6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 21:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=55zEvRlN7mBD3OHiLPS/FfVe3aqqoLXS91oTMRReXFQ=; b=CLPnXyu2V+5gYIOab+uHRHx5Fz
	JG957lzU21hIB0YqANHr6wbYsrg2LYi85pGytEHOkUhcEPh40UocsXU3s9l0NQa0YJxXVpy+V8voE
	BkE1iaD3nGAN0b++C43vs+d8l5gVqIzvyFYRQKQFGYLwtKU55Q3C6YFaByAISZLKY/MZhessjwPF5
	4B/rNgP42gs/fUMlp1LNRI9w3VISSWh0qLiAT6bGamrgc7I6P+COIwcZ9aolxhlKm/qvdtE7rOgTc
	MQcfbGNWeiTINzX214E/6Rcw67XC8uTSRgsJtgBAZ58bqr1w+8CWE+TvcsGLb7febhtaJI8CloeHc
	uVtaaM0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdf2K-0003sP-7T; Tue, 26 May 2020 19:14:52 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdf0w-00034u-7Y; Tue, 26 May 2020 19:13:27 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 4724130D778;
 Tue, 26 May 2020 12:13:25 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 4724130D778
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1590520405;
 bh=aUi8AAMa+t96erb8wOXlvNHvozoS5xgqKvIjmp2MH08=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=a+EXKnCZcCR4qhHPHNeN8QQbhuH+DEuugNCL3rg+DGIbTOIpmLVfPGMnyXjpUmFm9
 TPNkHtHCbGE0NrDHg5YZCQgQaegWip68CwY3WdCGRIpg+F/upB9/okwNh/c6pIdsGQ
 /QiYRjRBrVus70UWlx/sEbWizCjS7EZ7CJRaFr/U=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id BB09D140069;
 Tue, 26 May 2020 12:13:23 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, james.quinlan@broadcom.com
Subject: [PATCH v2 05/14] PCI: brcmstb: Add suspend and resume pm_ops
Date: Tue, 26 May 2020 15:12:44 -0400
Message-Id: <20200526191303.1492-6-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526191303.1492-1-james.quinlan@broadcom.com>
References: <20200526191303.1492-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_121326_336888_2A696E19 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Broadcom Set-top (BrcmSTB) boards typically support S2, S3, and S5 suspend
and resume.  Now the PCIe driver may do so as well.

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 49 +++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 7c707e483181..f444751e247c 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -979,6 +979,49 @@ static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
 	brcm_pcie_bridge_sw_init_set(pcie, 1);
 }
 
+static int brcm_pcie_suspend(struct device *dev)
+{
+	struct brcm_pcie *pcie = dev_get_drvdata(dev);
+	int ret = 0;
+
+	brcm_pcie_turn_off(pcie);
+	clk_disable_unprepare(pcie->clk);
+
+	return ret;
+}
+
+static int brcm_pcie_resume(struct device *dev)
+{
+	struct brcm_pcie *pcie = dev_get_drvdata(dev);
+	void __iomem *base;
+	u32 tmp;
+	int ret;
+
+	base = pcie->base;
+	clk_prepare_enable(pcie->clk);
+
+	/* Take bridge out of reset so we can access the SERDES reg */
+	brcm_pcie_bridge_sw_init_set(pcie, 0);
+
+	/* SERDES_IDDQ = 0 */
+	tmp = readl(base + PCIE_MISC_HARD_PCIE_HARD_DEBUG);
+	u32p_replace_bits(&tmp, 0,
+			  PCIE_MISC_HARD_PCIE_HARD_DEBUG_SERDES_IDDQ_MASK);
+	writel(tmp, base + PCIE_MISC_HARD_PCIE_HARD_DEBUG);
+
+	/* wait for serdes to be stable */
+	udelay(100);
+
+	ret = brcm_pcie_setup(pcie);
+	if (ret)
+		return ret;
+
+	if (pcie->msi)
+		brcm_msi_set_regs(pcie->msi);
+
+	return 0;
+}
+
 static void __brcm_pcie_remove(struct brcm_pcie *pcie)
 {
 	brcm_msi_remove(pcie);
@@ -1095,12 +1138,18 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 
 MODULE_DEVICE_TABLE(of, brcm_pcie_match);
 
+static const struct dev_pm_ops brcm_pcie_pm_ops = {
+	.suspend_noirq = brcm_pcie_suspend,
+	.resume_noirq = brcm_pcie_resume,
+};
+
 static struct platform_driver brcm_pcie_driver = {
 	.probe = brcm_pcie_probe,
 	.remove = brcm_pcie_remove,
 	.driver = {
 		.name = "brcm-pcie",
 		.of_match_table = brcm_pcie_match,
+		.pm = &brcm_pcie_pm_ops,
 	},
 };
 module_platform_driver(brcm_pcie_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
