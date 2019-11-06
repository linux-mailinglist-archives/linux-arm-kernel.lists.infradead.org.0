Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E54F1EEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:36:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tkFjtCxKF0yPJkN+MVt8gyoZC23satRZyAHYw/OOF0g=; b=XRqtVspNmF+IJz
	mKsmXSOJeLTb0QawnATHxQf9XvzdRHji6Bfhf7Dzric2Xo/KbIBOBI+Nr40zgbvnrqQbrTk7LCd5/
	t91pvR11ieZkkJ+hcCK4wioMfZE4cN8mV6Tp+Syx/ZPaCtPq60opqirGX7GT5Zj7WZqRouBmEb8SE
	jG9FzumZyHUpi6wlaFK4cwOGSZSi9Fc7lW0bAsblUZYHDT7/3pNmzn+PYRElhSeCiK4p+ankVG152
	L2+VgWSJYB8HJ+1lsJZafq7cAE4zAlgWuOqbIdDN02tsepxhW7wAIxuodSLtYXLNQzKkZ0QEe4PA+
	N63tdIsipRIrDR3XGbyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSR6h-0002fX-UP; Wed, 06 Nov 2019 19:36:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSR6T-0002fA-AO
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:36:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id p4so27443755wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 11:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WZ6A0u9VmEvIT2gJ+ANYj5GDOWs+Sp/CGhdOzWgLIBw=;
 b=VQOR9XFkF8hzle1zZL3VAmZJDpl3K8c+jey857IVovrFUFF1ZhuV9CjTF2nBrIInwk
 3bVlfw+gMxMQZKPLDq+BDw/OrnpkKBmIG+KSYsb3K72SApeUA/QBwWU9kd9RsivWGXKE
 EpxQQjDrrsXXfqPT+BmeSCale7/ciRoWA4XnzLdz6ypBJQwhv9nNDMKedlU62lTLGae+
 ISK864iEH/Dq413wdgMMChtxCja6Stncx990/jFAag/E8wggtonMTKZLdB0QSPUiuyJp
 kOjwuVnHoziVTs/JT/6hiAf3stbEy02IKu3PgWysPzXGZ2qtvJhLxmrYx8Sr0sjtuPD6
 vthg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WZ6A0u9VmEvIT2gJ+ANYj5GDOWs+Sp/CGhdOzWgLIBw=;
 b=M698wtexRt1XytzMmyaL5jA/qYVdx6rXrP2BFXhu/1zTeJfn+zm4GXBw0uSjyzWZuS
 eAfWCTBEJyn+qgtrvTIT/9MSrgl98kzJYdtjZmuWdzpnEd0DAqqQyGyc4QvI6ZJzgeSW
 QeBLKx3Qnt2QInDGN2jYejTdOSdOXgT4NJl8D+3mLB/B6vYm5zngJNWNJYiRW4ChKj2d
 yo7S9CptH0HSLdmwntLbOcX6zN0RTvSIfowhBqu7ipxl1RFklKG6WuCZS1Q/hUrG6xXE
 NZ6vBVJkwyU8RCpFb7dCyDNTxNi4h6WU2o89htoilLO7AX95dknWiv6IKE0Q5iY7CKRk
 aWsw==
X-Gm-Message-State: APjAAAUZRsJPkqRK5bTD03TC6V01vzYCJQfnKdfZ1Dg+tQcK1T54/270
 4/9phmg5hw09PRg2N4k8udY=
X-Google-Smtp-Source: APXvYqzsMldJhDxY7pKpPo6NdU98nrC0Z1fU5JfjHX9/FiEN5oWT/O5fr3eymXG+3RoUf4S68C1ACA==
X-Received: by 2002:a5d:4885:: with SMTP id g5mr4588945wrq.287.1573068987422; 
 Wed, 06 Nov 2019 11:36:27 -0800 (PST)
Received: from prasmi.home ([2a00:23c6:d18:6d00:1d3d:daa8:4e74:8240])
 by smtp.gmail.com with ESMTPSA id 76sm4311737wma.0.2019.11.06.11.36.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 11:36:26 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH 0/5] Add support for PCIe controller to work in endpoint mode
 on R-Car SoCs.
Date: Wed,  6 Nov 2019 19:36:04 +0000
Message-Id: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_113629_382524_12284E51 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>

This patch series adds support for PCIe controller on rcar to work in endpoint mode,
this also extends the epf framework to handle multiple outbound regions.

Note: 
The cadence/rockchip/designware endpoint drivers are build tested only.

Endpoint configuration:
$ cd /sys/kernel/config/pci_ep
$ mkdir functions/pci_epf_test/func1
$ echo 0x1912 > functions/pci_epf_test/func1/vendorid
$ echo 0x002d > functions/pci_epf_test/func1/deviceid
$ echo 32 > functions/pci_epf_test/func1/msi_interrupts
$ ln -s functions/pci_epf_test/func1/ controllers/fe000000.pcie_ep/
$ echo 1 > controllers/fe000000.pcie_ep/start

Host side results:
lspci output:
01:00.0 Unassigned class [ff00]: Renesas Technology Corp. Device 002d
        Flags: bus master, fast devsel, latency 0, IRQ 103
        Memory at fe200200 (64-bit, non-prefetchable) [size=128]
        Memory at fe200000 (64-bit, non-prefetchable) [size=256]
        Memory at fe200100 (64-bit, non-prefetchable) [size=256]
        Capabilities: [40] Power Management version 3
        Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
        Capabilities: [70] Express Endpoint, MSI 00
        Capabilities: [100] Virtual Channel
        Kernel driver in use: pci-endpoint-test

pcitest results:

BAR tests

BAR0:           OKAY
BAR1:           NOT OKAY
BAR2:           OKAY
BAR3:           NOT OKAY
BAR4:           OKAY
BAR5:           NOT OKAY

Interrupt tests

SET IRQ TYPE TO LEGACY:         OKAY
LEGACY IRQ:     OKAY
Read Tests

SET IRQ TYPE TO LEGACY:         OKAY
READ (      1 bytes):           OKAY
READ (   1024 bytes):           OKAY
READ (   1025 bytes):           OKAY
READ (1024000 bytes):           OKAY
READ (1024001 bytes):           OKAY

Write Tests

WRITE (      1 bytes):          OKAY
WRITE (   1024 bytes):          OKAY
WRITE (   1025 bytes):          OKAY
WRITE (1024000 bytes):          OKAY
WRITE (1024001 bytes):          OKAY

Copy Tests

COPY (      1 bytes):           OKAY
COPY (   1024 bytes):           OKAY
COPY (   1025 bytes):           OKAY
COPY (1024000 bytes):           OKAY
COPY (1024001 bytes):           OKAY

BAR tests for 1/3/5 fail because its configured to use 64bit bars

Lad, Prabhakar (5):
  pci: pcie-rcar: preparation for adding endpoint support
  pci: endpoint: add support to handle multiple base for mapping
    outbound memory
  PCI: rcar: Add R-Car PCIe endpoint device tree bindings
  pci: rcar: add support for rcar pcie controller in endpoint mode
  misc: pci_endpoint_test: add device-id for RZ/G2 pcie controller

 .../devicetree/bindings/pci/rcar-pci-ep.txt   |   43 +
 arch/arm64/configs/defconfig                  |    2 +-
 arch/arm64/configs/renesas_defconfig          |    2 +-
 drivers/misc/pci_endpoint_test.c              |    3 +
 drivers/pci/controller/Kconfig                |   11 +-
 drivers/pci/controller/Makefile               |    3 +-
 .../pci/controller/dwc/pcie-designware-ep.c   |   30 +-
 drivers/pci/controller/pcie-cadence-ep.c      |   11 +-
 drivers/pci/controller/pcie-rcar-ep.c         |  483 +++++++
 drivers/pci/controller/pcie-rcar-host.c       | 1058 ++++++++++++++
 drivers/pci/controller/pcie-rcar.c            | 1231 +----------------
 drivers/pci/controller/pcie-rcar.h            |  129 ++
 drivers/pci/controller/pcie-rockchip-ep.c     |   13 +-
 drivers/pci/endpoint/functions/pci-epf-test.c |   29 +-
 drivers/pci/endpoint/pci-epc-core.c           |    7 +-
 drivers/pci/endpoint/pci-epc-mem.c            |  189 ++-
 include/linux/pci-epc.h                       |   43 +-
 17 files changed, 2016 insertions(+), 1271 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
 create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
 create mode 100644 drivers/pci/controller/pcie-rcar-host.c
 create mode 100644 drivers/pci/controller/pcie-rcar.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
