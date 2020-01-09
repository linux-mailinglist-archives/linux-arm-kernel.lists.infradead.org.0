Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686431351F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 04:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rZonDqh1PwgSnyodlqcMcJG4vli8WGwbY33wH0nkLZg=; b=cyFPAT7v2Szf43p5gfuDnzte1+
	psfUo0iYP15npqwvr7BQc3EE5bAJ+MXJFCogREjvopKeOR8NJE2FOYuf2EhHVJhnXKi4dNydQlifp
	kNzmXKBZFvEbqHOBOr0HcoqmXnHiDVfzKvUzTmSLj5Wn5GLbAg0TzJA7MadsIAn+xqb/XyKOkdIC5
	ejEp3C/xjqOeJTWu80uKhTDr7DB3qz7nb1nk+c6thaiDSiUBQO8+ochZdxrzhlIMwDncEghRVXXsb
	Fzv0apZpuNh8M2VpBnLl7mHGd95PLSu0AQc7AgvSeZyYFkyPoSUzpYyvv5Z4LjWJSG8JEq5jwtFV9
	DCUCgwcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipOVo-0001DA-IN; Thu, 09 Jan 2020 03:29:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipOVL-0000sX-HC
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 03:29:05 +0000
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CDF77206F0;
 Thu,  9 Jan 2020 03:29:02 +0000 (UTC)
From: Shawn Guo <shawn.guo@linaro.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v2 2/2] PCI: histb: Correct PCIe reset operation
Date: Thu,  9 Jan 2020 11:28:51 +0800
Message-Id: <20200109032851.13377-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200109032851.13377-1-shawn.guo@linaro.org>
References: <20200109032851.13377-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_192903_681118_D6BA9CC4 
X-CRM114-Status: GOOD (  11.81  )
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

The PCIe reset via GPIO in the driver never worked as expected.  Per
"Power Sequencing and Reset Signal Timings" table in
PCI EXPRESS CARD ELECTROMECHANICAL SPECIFICATION, the PERST# should be
deasserted after minimum of 100us once REFCLK is stable.

The assertion has been done when the GPIO is being requested, and
deassertion should be done in host enabling rather than disabling. Also
a bit wait is added to ensure device get ready after reset.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 drivers/pci/controller/dwc/pcie-histb.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-histb.c b/drivers/pci/controller/dwc/pcie-histb.c
index 112254619ed0..67c27a8036c7 100644
--- a/drivers/pci/controller/dwc/pcie-histb.c
+++ b/drivers/pci/controller/dwc/pcie-histb.c
@@ -219,9 +219,6 @@ static void histb_pcie_host_disable(struct histb_pcie *hipcie)
 	clk_disable_unprepare(hipcie->sys_clk);
 	clk_disable_unprepare(hipcie->bus_clk);
 
-	if (hipcie->reset_gpio)
-		gpiod_set_value_cansleep(hipcie->reset_gpio, 0);
-
 	if (hipcie->vpcie)
 		regulator_disable(hipcie->vpcie);
 }
@@ -242,9 +239,6 @@ static int histb_pcie_host_enable(struct pcie_port *pp)
 		}
 	}
 
-	if (hipcie->reset_gpio)
-		gpiod_set_value_cansleep(hipcie->reset_gpio, 1);
-
 	ret = clk_prepare_enable(hipcie->bus_clk);
 	if (ret) {
 		dev_err(dev, "cannot prepare/enable bus clk\n");
@@ -278,6 +272,20 @@ static int histb_pcie_host_enable(struct pcie_port *pp)
 	reset_control_assert(hipcie->bus_reset);
 	reset_control_deassert(hipcie->bus_reset);
 
+	if (hipcie->reset_gpio) {
+		/*
+		 * "Power Sequencing and Reset Signal Timings" table in
+		 * PCI EXPRESS CARD ELECTROMECHANICAL SPECIFICATION, indicates
+		 * PERST# should be deasserted after minimum of 100us
+		 * once REFCLK is stable.
+		 */
+		usleep_range(100, 200);
+		gpiod_set_value_cansleep(hipcie->reset_gpio, 0);
+
+		/* wait 1ms for device to be ready */
+		usleep_range(1000, 2000);
+	}
+
 	return 0;
 
 err_aux_clk:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
