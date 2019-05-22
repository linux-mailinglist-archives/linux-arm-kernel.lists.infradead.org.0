Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E4D27196
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 23:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qper+IXtaqYCJoIJ+w6i7OYTfziUTXdPFxSHjPCqU7U=; b=DGaU5NVEzAzbmC
	xXo1lnQgSfFUO7VwHNvwqQSkzWO+AC9JjjoChn6aLCvlNRIDj2LLcNrA3VSxR9o2V0W0qkJWK1i5C
	5x4I4xGMqL0bXK+bS9OzX76zSxLjc+xxi4s12ix2txrPTWC6eUH3awep7UIWdL+KcKYGFCmJ3RVZk
	QW1h92RE7UThqgl9WlxI0n5PrDz96o48fHovnV2mtPWP8ZUBFbaRRXILhCoCSzuFyIbDspXzTYMb+
	kLP6FpCq7Nwf8g1ZZEkXwA2eBs9bpT4SC47OpiQToceO6Y8zJnI9XJE/tEuuYIitNA42ObUvRG+S2
	8n6UWu6gQ98Z6jPpcFlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTYl6-0007rO-0g; Wed, 22 May 2019 21:26:48 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTYky-0007pF-0Z
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 21:26:41 +0000
X-Originating-IP: 88.190.179.123
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5D16DFF805;
 Wed, 22 May 2019 21:26:25 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <helgaas@kernel.org>
Subject: [PATCH v2] PCI: aardvark: Wait for endpoint to be ready before
 training link
Date: Wed, 22 May 2019 23:33:50 +0200
Message-Id: <20190522213351.21366-2-repk@triplefau.lt>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_142640_202063_E049C528 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pci@vger.kernel.org, Ellie Reeves <ellierevves@gmail.com>,
 Remi Pommarel <repk@triplefau.lt>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When configuring pcie reset pin from gpio (e.g. initially set by
u-boot) to pcie function this pin goes low for a brief moment
asserting the PERST# signal. Thus connected device enters fundamental
reset process and link configuration can only begin after a minimal
100ms delay (see [1]).

Because the pin configuration comes from the "default" pinctrl it is
implicitly configured before the probe callback is called:

driver_probe_device()
  really_probe()
    ...
    pinctrl_bind_pins() /* Here pin goes from gpio to PCIE reset
                           function and PERST# is asserted */
    ...
    drv->probe()

[1] "PCI Express Base Specification", REV. 4.0
    PCI Express, February 19 2014, 6.6.1 Conventional Reset

Signed-off-by: Remi Pommarel <repk@triplefau.lt>
---
Changes since v1:
  - Add a comment about pinctrl implicit pin configuration
  - Use more legible msleep
  - Use PCI_PM_D3COLD_WAIT macro

Please note that I will unlikely be able to answer any comments from May
24th to June 10th.
---
 drivers/pci/controller/pci-aardvark.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index 134e0306ff00..d998c2b9cd04 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -324,6 +324,14 @@ static void advk_pcie_setup_hw(struct advk_pcie *pcie)
 	reg |= PIO_CTRL_ADDR_WIN_DISABLE;
 	advk_writel(pcie, reg, PIO_CTRL);
 
+	/*
+	 * PERST# signal could have been asserted by pinctrl subsystem before
+	 * probe() callback has been called, making the endpoint going into
+	 * fundamental reset. As required by PCI Express spec a delay for at
+	 * least 100ms after such a reset before link training is needed.
+	 */
+	msleep(PCI_PM_D3COLD_WAIT);
+
 	/* Start link training */
 	reg = advk_readl(pcie, PCIE_CORE_LINK_CTRL_STAT_REG);
 	reg |= PCIE_CORE_LINK_TRAINING;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
