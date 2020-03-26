Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E504D1938E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 07:49:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r5QhBas/yvlDS8+I1RAPvBajNHGqwz3ar/UyvBIOSHM=; b=lfI
	jM9NXmiCfTiXcJMXlXGmnRfGbN0wzS/wN8unkXFQi43w53extdlUjxj7ihfzqsj5Z4khl9jw8BNIb
	Prex6nTRsgA9V3sf9qV8PqtlgOdFITQJzl94KQa7yrLkufJjWcZiFof8AAs1UZskGx+7R4XQ4PYsP
	WbZHhpQdd5XtTXUzR0pyIlYpj+A8Ga6WxtU5LKAhog1rdnd5bAzLA76V+k0hDBzlmW78qsm4qDoCE
	Ai/fUvgYAN+pY0dZW7zPLkA36nZGjBxnCiduNvLuAnbzLc8Y8gil1IDA95Dd7ai6riOouPLhfUp4r
	d04Wz/F4B9V7oAmteMoaumx9YUq6Pew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMKV-0007A9-2H; Thu, 26 Mar 2020 06:49:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMKK-00079K-L0
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 06:49:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id c187so5289042wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 23:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=m/woP8JE+Q/g0ZO0DRvUNOSB5SWwhTVz0tFdoKMPxxo=;
 b=H2n3m3sRF0tHj/MR1yFPyawxFUsyiDdjYI76xB/dYLngYzS5i9nRuIe6/TKuYr9K3b
 9XSVkH0w1gt5DG4rjqA7+RLeLVQO7jNxj6vCMLCFjjKy8E7CFj6W8kZKHkYqc7e8gM2i
 +SVTaotuowDSxAaMHR26QnJ+MFR8PwkRSQuxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=m/woP8JE+Q/g0ZO0DRvUNOSB5SWwhTVz0tFdoKMPxxo=;
 b=mePx5ckx7es/E8btCHeHVDJtCcEI2cKkqhU6WKFpNFpzGWS59BLzDcH+hRoJekvtmn
 6G7dH2fVH0JTzfG5Nig8qTpy89qnTOLnWa1om+hL1ec3e3xmDCs+Jhl/aRlhwj8HksV2
 TpxdHBSEhMme6TtFQBpRwWUzT/mDMG918jdA6JEJpiT0QhQgyb6Z+DDIdkYZuNId0oZR
 PPvE69t7r1RvVPJrMyWfJtquzkSluE+UtOhvLM3BhsB0Ifhota8MliW2niw/NdDRQHC+
 eRyd9zGFLBKt0wztRy8Oy+f5eBhu6aC1GXzpfFp68UD/vNUPk0fyI7YUgIa+MJ2F4Kd2
 3uCQ==
X-Gm-Message-State: ANhLgQ3O6T/GuJP4i39lrHipW2rhAuk8UD2KNG+kKGJoK4rLtopHCFGh
 Ty5y6Pd+3FRko5O0TBBCzkvnYQ==
X-Google-Smtp-Source: ADFU+vvHarE2WZIQBKwJVOAl77q3js1Qw/P3PaTTHhN6tLddp/9YVShnhfUTAlEsbjewgdKGGOeB2Q==
X-Received: by 2002:a1c:63c4:: with SMTP id x187mr1490010wmb.124.1585205354813; 
 Wed, 25 Mar 2020 23:49:14 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id v21sm2069137wmj.8.2020.03.25.23.49.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 25 Mar 2020 23:49:13 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Andrew Murray <andrew.murray@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v5 0/6] PAXB INTx support with proper model
Date: Thu, 26 Mar 2020 12:18:40 +0530
Message-Id: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_234916_688727_46A7F1D4 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Srinath Mannam <srinath.mannam@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds PCIe legacy interrupt (INTx) support to the iProc
PCIe driver by modeling it with its own IRQ domain. All 4 interrupts INTA,
INTB, INTC, INTD share the same interrupt line connected to the GIC
in the system. This is now modeled by using its own IRQ domain.

Also update all relevant devicetree files to adapt to the new model.

This patch set is based on Linux-5.5-rc1.

Changes from v4:
  - Addressed Lorenzo's comments
    - Add iProc irq chip descriptor in the place of dummy irq chip to
      provide mask/un-mask and enable/disable handlers to configure
      individual INTx.

Changes from v3:
  - Addressed Andrew Murray's comments
  - Add change to dispose VIRQ when disabling INTx

Changes from v2:
  - Addressed Lorenzo's comments
    - Corrected INTx to PIN mapping.

Changes from v1:
  - Addressed Rob, Lorenzo, Arnd's comments
    - Used child node for interrupt controller.
  - Addressed Andy Shevchenko's comments
    - Replaced while loop with do-while.

Ray Jui (6):
  dt-bindings: pci: Update iProc PCI binding for INTx support
  PCI: iproc: Add INTx support with better modeling
  arm: dts: Change PCIe INTx mapping for Cygnus
  arm: dts: Change PCIe INTx mapping for NSP
  arm: dts: Change PCIe INTx mapping for HR2
  arm64: dts: Change PCIe INTx mapping for NS2

 .../devicetree/bindings/pci/brcm,iproc-pcie.txt    |  48 ++++++-
 arch/arm/boot/dts/bcm-cygnus.dtsi                  |  30 ++++-
 arch/arm/boot/dts/bcm-hr2.dtsi                     |  30 ++++-
 arch/arm/boot/dts/bcm-nsp.dtsi                     |  45 ++++++-
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi   |  28 +++-
 drivers/pci/controller/pcie-iproc.c                | 147 ++++++++++++++++++++-
 drivers/pci/controller/pcie-iproc.h                |   8 ++
 7 files changed, 309 insertions(+), 27 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
