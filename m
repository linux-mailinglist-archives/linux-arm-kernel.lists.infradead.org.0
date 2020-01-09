Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B388A1351F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 04:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yKrERd1JxzeXhn5H4hC/0XnJ+zAWQZGhaZU0ywK3We4=; b=E14CMqVpN37B/a3xBQfP9C8Lah
	YUALTDxDw/aA9IEAP5E2HL7pFwItDuZwj0FQQN8esdsPJMTUgvDqtiOn5KTAkw14C7r0TBstb1906
	QefvhVNipuenDuFrQocqjTHE3RV/bzhN+KzALaX5XWLUwwE27QF49Nj2Yw/EflsWLysb9N8SE45bh
	9/g7A2uslz+bMHsAVfKkV3rsIv1TNYF5goFMyoTYOiYObgmPHYngkXeOmNIM93xYrU3egnuIQFLuA
	oUO9OxEw5bMGEesxZQqSkdVYQB85KC2Vw4CfEssq6bs7nK1QZgN2Th5jAtyMhpjqHfkYSLe1j6nCq
	oshVaASg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipOVZ-0000wb-DG; Thu, 09 Jan 2020 03:29:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipOVH-0000of-8T
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 03:29:00 +0000
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD0F620705;
 Thu,  9 Jan 2020 03:28:58 +0000 (UTC)
From: Shawn Guo <shawn.guo@linaro.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v2 1/2] PCI: histb: Use gpio_desc for PCIe GPIO reset
Date: Thu,  9 Jan 2020 11:28:50 +0800
Message-Id: <20200109032851.13377-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200109032851.13377-1-shawn.guo@linaro.org>
References: <20200109032851.13377-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_192859_322710_35FF19EF 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pci@vger.kernel.org, Jun Nie <jun.nie@linaro.org>,
 Shawn Guo <shawn.guo@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It switches GPIO reset code to use gpio_desc, so that the code becomes
simpler and cleaner.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 drivers/pci/controller/dwc/pcie-histb.c | 29 +++++++++----------------
 1 file changed, 10 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-histb.c b/drivers/pci/controller/dwc/pcie-histb.c
index 811b5c6d62ea..112254619ed0 100644
--- a/drivers/pci/controller/dwc/pcie-histb.c
+++ b/drivers/pci/controller/dwc/pcie-histb.c
@@ -60,7 +60,7 @@ struct histb_pcie {
 	struct reset_control *sys_reset;
 	struct reset_control *bus_reset;
 	void __iomem *ctrl;
-	int reset_gpio;
+	struct gpio_desc *reset_gpio;
 	struct regulator *vpcie;
 };
 
@@ -219,8 +219,8 @@ static void histb_pcie_host_disable(struct histb_pcie *hipcie)
 	clk_disable_unprepare(hipcie->sys_clk);
 	clk_disable_unprepare(hipcie->bus_clk);
 
-	if (gpio_is_valid(hipcie->reset_gpio))
-		gpio_set_value_cansleep(hipcie->reset_gpio, 0);
+	if (hipcie->reset_gpio)
+		gpiod_set_value_cansleep(hipcie->reset_gpio, 0);
 
 	if (hipcie->vpcie)
 		regulator_disable(hipcie->vpcie);
@@ -242,8 +242,8 @@ static int histb_pcie_host_enable(struct pcie_port *pp)
 		}
 	}
 
-	if (gpio_is_valid(hipcie->reset_gpio))
-		gpio_set_value_cansleep(hipcie->reset_gpio, 1);
+	if (hipcie->reset_gpio)
+		gpiod_set_value_cansleep(hipcie->reset_gpio, 1);
 
 	ret = clk_prepare_enable(hipcie->bus_clk);
 	if (ret) {
@@ -305,10 +305,7 @@ static int histb_pcie_probe(struct platform_device *pdev)
 	struct dw_pcie *pci;
 	struct pcie_port *pp;
 	struct resource *res;
-	struct device_node *np = pdev->dev.of_node;
 	struct device *dev = &pdev->dev;
-	enum of_gpio_flags of_flags;
-	unsigned long flag = GPIOF_DIR_OUT;
 	int ret;
 
 	hipcie = devm_kzalloc(dev, sizeof(*hipcie), GFP_KERNEL);
@@ -345,17 +342,11 @@ static int histb_pcie_probe(struct platform_device *pdev)
 		hipcie->vpcie = NULL;
 	}
 
-	hipcie->reset_gpio = of_get_named_gpio_flags(np,
-				"reset-gpios", 0, &of_flags);
-	if (of_flags & OF_GPIO_ACTIVE_LOW)
-		flag |= GPIOF_ACTIVE_LOW;
-	if (gpio_is_valid(hipcie->reset_gpio)) {
-		ret = devm_gpio_request_one(dev, hipcie->reset_gpio,
-				flag, "PCIe device power control");
-		if (ret) {
-			dev_err(dev, "unable to request gpio\n");
-			return ret;
-		}
+	hipcie->reset_gpio = devm_gpiod_get_optional(dev, "reset",
+						     GPIOD_OUT_HIGH);
+	if (IS_ERR(hipcie->reset_gpio)) {
+		ret = PTR_ERR(hipcie->reset_gpio);
+		return ret;
 	}
 
 	hipcie->aux_clk = devm_clk_get(dev, "aux");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
