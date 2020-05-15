Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B8F1D4A39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pSiIbx4DjTOv965I284RLnYbSdEi7A2se4xJdvHaz5A=; b=Dn4
	4LiZ240nzVoXgd8zkpNUMRZmhA3Y1RobAOcIXo0buIqSEbHZpkzPEOoxYP9PNND8jyovD3Yw0e+9C
	EMeh8BWh5h8irx1FjHAzscgYYvBNw5vSrk7d79yo8yJaHTo6SeUbRRXPGH0BcYdjrqhMK6jef5SFR
	7ySWKIj8YHnG7KkuyFSUgUsJFmytPQhHZ3Szcu7ayOnqOCLNedMY2sVEFF91yFWYHcDC5Bjci5ixn
	3NFBm3fO/COLzcV+35JT36icFLZjmI9JOvLJ2Oo2gaVyaoBbMCcVwwyG8LI3G+vtZ0AiT2ST96l8t
	sABZAG09Mq3AwZ5eY2W3egb9YquJ3CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZX89-0004CG-CT; Fri, 15 May 2020 09:59:49 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZX7e-0003zH-M4
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:59:20 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 15 May 2020 18:59:17 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 9C924180B60;
 Fri, 15 May 2020 18:59:17 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 15 May 2020 18:59:17 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id D1E971A12D0;
 Fri, 15 May 2020 18:59:16 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH v2 0/5] PCI: uniphier: Add features for UniPhier PCIe host
 controller
Date: Fri, 15 May 2020 18:58:58 +0900
Message-Id: <1589536743-6684-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_025918_843298_2677C0D9 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds some features for UniPhier PCIe host controller.

- Add support for PME and AER invoked by MSI interrupt
- Add iATU register view support for PCIe version >= 4.80
- Add an error message when failing to get phy driver

This adds a new function called by MSI handler in DesignWare PCIe framework,
that invokes PME and AER funcions to detect the factor from SoC-dependent
registers.

Changes since v1:
- Add check if struct resource is NULL
- Fix warning in the type of dev_err() argument

Kunihiko Hayashi (5):
  PCI: dwc: Add msi_host_isr() callback
  PCI: uniphier: Add misc interrupt handler to invoke PME and AER
  dt-bindings: PCI: uniphier: Add iATU register description
  PCI: uniphier: Add iATU register support
  PCI: uniphier: Add error message when failed to get phy

 .../devicetree/bindings/pci/uniphier-pcie.txt      |  1 +
 drivers/pci/controller/dwc/pcie-designware-host.c  |  8 +--
 drivers/pci/controller/dwc/pcie-designware.h       |  1 +
 drivers/pci/controller/dwc/pcie-uniphier.c         | 67 +++++++++++++++++-----
 4 files changed, 60 insertions(+), 17 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
