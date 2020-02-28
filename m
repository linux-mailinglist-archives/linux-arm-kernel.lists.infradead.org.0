Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F170A173BC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:42:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+hwq8WlvDLyMQdyIcloFQwUryT/H8aYN/0O6q4HHDA=; b=qv9iOliKoURsgt
	szf49nIL4tMPwOvsliAFAO98lDkaNr5R6W6EV8qpOSr13y0ROMDHk8533PtNGqomOqxv3iCXpMqoD
	xdqT0tShi4Dh6VIe+kLp/Lw1cB1+JbvKbF3/JZFAkKRZlTBvthj0PhKnIqzZRbjcUNNBtXjAjdKlC
	x5Jfzg6j4zQAmngmRWBADbWBOEgvxS0bI8IakfJGP8oCvdHTxjqQpi6shAogZeongX4qvAaqojU14
	i4/2t0R4f7ZB3HWNwrUzQNMha+kTkVwsiMEDMDEbygmjniWmh5EdJy4YvZr9sx4+Quk5eWPIHg8PE
	45NV3Tbn7LfknIaRR4NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hm4-0005e9-KI; Fri, 28 Feb 2020 15:42:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hlq-0005be-Mn; Fri, 28 Feb 2020 15:41:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so3621535wmj.5;
 Fri, 28 Feb 2020 07:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qV1Dck8tf+GcyTrLNUFv75tqg7dyBtWtpnslHitmGrc=;
 b=B/LKxeBkYdD8AlPBawzSn+XJuEJ/6FPxXgF3H+qlt4997pZuGrjwWleEgpqG0mxVPV
 lJUtH2yNsZ+TJ9R072OTTLlW2/c3MZqJT2DEBvJwgfKnxRKOFVLWHDKmUO00YjaKoYJq
 nY36FAdNcY8hUC52VjdK43b9ERek8BnTghCV6H0c6wvkW4UPzxoN1YdOqCMcEmEe/Ibz
 an8EM9eYCrFyXIuRul8vvJy7QvMXQKvdwJVL6iVlP6wh7nhJgypoDgmAMQcOMYgQ3OcS
 5oh8ENTlr0Xxk+BtD/GrLaMWtrkSvGcyOfvXS0XJZZMhjnA8za2hfj9dyQ4K2lgkVuc4
 bzvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qV1Dck8tf+GcyTrLNUFv75tqg7dyBtWtpnslHitmGrc=;
 b=aTmbBUKHuE6h62QAjnfQJ8nCIAEUTSMHLQALyZbKDzHTkpMxvbxQvkAbuHTyDhUIit
 XpmA6JA6srWejuQVyp/PP0WPPgWlmOih6BISjkQvn4EnqEZcgQSB7Kb+PXolnIwlymD5
 rO/gbr7+QCO6JxLQ/pyl0CYz52fJxIJekJVJtRYfn5xDW5gUsyDDLcSoUNpapBoXcCST
 eSJPVxMsbVa7qZq/UM76WFRiJcNbsNJ6A4r2BQJ9v59y0YgWXvv6CUeC66sutKNS1tL3
 zWkcQG5sLEVbb5LA+cimIrQnUb0AdIkuYDYHVtwNDBV6jAOf6Tw8BFeu8XMSZfBwjdEC
 iSUQ==
X-Gm-Message-State: APjAAAVs0DIfxYFNAH7D3jYD/OABSTXuhXyd/OH5Y5WDnMUfw0DzlOcE
 C/D6mcPAZn6PvM4ieTkaVkM=
X-Google-Smtp-Source: APXvYqz3F/pP/wL0WjwZGAnvHP2QFXDDU7ivUZcycl72fUq26geJ9QKLeqLousrNZp999DpUHB/UnQ==
X-Received: by 2002:a7b:ce8b:: with SMTP id q11mr5567459wmj.100.1582904505349; 
 Fri, 28 Feb 2020 07:41:45 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2510:d000:3855:fd13:6b76:a11b])
 by smtp.gmail.com with ESMTPSA id k16sm13355349wrd.17.2020.02.28.07.41.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:41:44 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v5 1/7] PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
Date: Fri, 28 Feb 2020 15:41:16 +0000
Message-Id: <20200228154122.14164-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_074146_750990_09C049DA 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit renames pcie-rcar.c to pcie-rcar-host.c in preparation for
adding support for endpoint mode. CONFIG_PCIE_RCAR is also renamed to
CONFIG_PCIE_RCAR_HOST to match the driver name accordingly.

In addition to this defconfig file has also been updated to match the new
config option.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/configs/defconfig                             | 2 +-
 drivers/pci/controller/Kconfig                           | 7 ++++---
 drivers/pci/controller/Makefile                          | 2 +-
 drivers/pci/controller/{pcie-rcar.c => pcie-rcar-host.c} | 0
 4 files changed, 6 insertions(+), 5 deletions(-)
 rename drivers/pci/controller/{pcie-rcar.c => pcie-rcar-host.c} (100%)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0f21288..7a34fce 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -185,7 +185,7 @@ CONFIG_HOTPLUG_PCI=y
 CONFIG_HOTPLUG_PCI_ACPI=y
 CONFIG_PCI_AARDVARK=y
 CONFIG_PCI_TEGRA=y
-CONFIG_PCIE_RCAR=y
+CONFIG_PCIE_RCAR_HOST=y
 CONFIG_PCI_HOST_GENERIC=y
 CONFIG_PCI_XGENE=y
 CONFIG_PCIE_ALTERA=y
diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index f84e5ff..37e0ea7 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -54,12 +54,13 @@ config PCI_RCAR_GEN2
 	  There are 3 internal PCI controllers available with a single
 	  built-in EHCI/OHCI host controller present on each one.
 
-config PCIE_RCAR
-	bool "Renesas R-Car PCIe controller"
+config PCIE_RCAR_HOST
+	bool "Renesas R-Car PCIe host controller"
 	depends on ARCH_RENESAS || COMPILE_TEST
 	depends on PCI_MSI_IRQ_DOMAIN
 	help
-	  Say Y here if you want PCIe controller support on R-Car SoCs.
+	  Say Y here if you want PCIe controller support on R-Car SoCs in host
+	  mode.
 
 config PCI_HOST_COMMON
 	bool
diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index 01b2502..4ca2da6 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -7,7 +7,7 @@ obj-$(CONFIG_PCI_MVEBU) += pci-mvebu.o
 obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
 obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
 obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
-obj-$(CONFIG_PCIE_RCAR) += pcie-rcar.o
+obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar-host.o
 obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
 obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
 obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o
diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar-host.c
similarity index 100%
rename from drivers/pci/controller/pcie-rcar.c
rename to drivers/pci/controller/pcie-rcar-host.c
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
