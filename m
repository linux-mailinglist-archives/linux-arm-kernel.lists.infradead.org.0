Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA88AE7647
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=coCpGlvr+7Wvi9J6FDv84PNhvHcqFvh9K0Sgg5qfhbc=; b=HbQgDyHk9agwEb
	gZr7vc178lmcwlGb8VyJQFEH1Pjge0NIDph8XIm+rKOSY+fPVkH9AvmzwON1GHuvGrEQks8IZ4SvM
	g4MkuO1SOUsJc8pe0efIAMTqlJdMzx+9WEiNWtqgwfA40YTXiPY+u9cAnAl+vmfDHlHpVee3c4CHH
	RzK/f8qTqpNb+a1syinH1rqbPPPmKKVs4HW2W2KYUAC3cChFFXZi3nGN8aggCI0ObvsR99uy1CTMW
	SmjYIBaPk0ECIVGcY9sg2kN8YMw0vH+DAijBCyDM+Y0F18E1bQv8LuUVNyLyNgvsFx2Jk7XjWW6gG
	aOMOBDGL1HYZbv/QK9uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7xD-0006fi-H8; Mon, 28 Oct 2019 16:33:15 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7wy-0006eo-Ks; Mon, 28 Oct 2019 16:33:02 +0000
Received: by mail-oi1-f196.google.com with SMTP id m193so1929540oig.0;
 Mon, 28 Oct 2019 09:33:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S4uLFulX8TejWtV4ZtyYdW8FASYgTH1zgpN3OAUfA44=;
 b=R1Ta4Yi9jOWYwwkvDbiEYXMNbqG3y3PEUeikLEcMZSRM76WDsBcTtOUQ9RGRJspv3+
 gTBXuQBjj5+wqYwd0+NOzao/LgLgHpOjoTUL7CLXzzE6D2ynP+0rPc9Mp0af2X4G7a0R
 f6iyqFsEPeXHuod2m4gC21m0lWhJ01BUcoytY00XkNxuqmqcQ2A7Lyujr5ImPjYY0/Pn
 Y4RjTnumHNoMGqtiv1SbO38Pfna5afka4GBt3t02hOmkrMCT9IbmEc5Py1X3bW3rxq0m
 p1Yy+FWGlc/Darf50c6qp3FKn3yobqWbyD+/W3PsBF1DuBWCLPC8ocQ2xQiOIOQIpeXh
 nJrg==
X-Gm-Message-State: APjAAAUd2dIZOV/np6WNZZCjlTQ9GIgd7mZTh4cyZHshqRsliE9UAPrH
 lYblOKk41hr2Im3nsGCrNA==
X-Google-Smtp-Source: APXvYqyCyIe7/lBj2r50NZZKCcouW4Wf/nGhcgVbzzr1X9sEHMnBAu+xzJCM7OskSMNAePIBybe/OA==
X-Received: by 2002:aca:5015:: with SMTP id e21mr137789oib.174.1572280379222; 
 Mon, 28 Oct 2019 09:32:59 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.32.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:32:58 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 00/25] PCI host resource consolidation
Date: Mon, 28 Oct 2019 11:32:31 -0500
Message-Id: <20191028163256.8004-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093300_686644_C13942D6 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This started with just dma-ranges parsing consolidation, but has expanded
to converting all host drivers to use pci_parse_request_of_pci_ranges()
rather than devm_of_pci_get_host_bridge_resources(). This series moves
the DT 'dma-ranges' parsing into common helpers utilizing a resource list.
There's no (intended) functional change in this series though I'm also
working on a separate series now in dt/next to improve the handling of
'dma-ranges' and dma masks.

The last patch may need to wait if there's any new users of
devm_of_pci_get_host_bridge_resources.

Only versatile has been tested (on QEMU). The rest is compiled only. A git
branch is here[1].

v3:
- Fix >80 char lines
- Rename resource_list_get_entry_of_type to resource_list_first_type

Rob

[1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git pci-ranges-cleanup-v3


Rob Herring (25):
  resource: Add a resource_list_first_type helper
  PCI: Export pci_parse_request_of_pci_ranges()
  PCI: aardvark: Use pci_parse_request_of_pci_ranges()
  PCI: altera: Use pci_parse_request_of_pci_ranges()
  PCI: dwc: Use pci_parse_request_of_pci_ranges()
  PCI: faraday: Use pci_parse_request_of_pci_ranges()
  PCI: iproc: Use pci_parse_request_of_pci_ranges()
  PCI: mediatek: Use pci_parse_request_of_pci_ranges()
  PCI: mobiveil: Use pci_parse_request_of_pci_ranges()
  PCI: rockchip: Use pci_parse_request_of_pci_ranges()
  PCI: rockchip: Drop storing driver private outbound resource data
  PCI: v3-semi: Use pci_parse_request_of_pci_ranges()
  PCI: xgene: Use pci_parse_request_of_pci_ranges()
  PCI: xilinx: Use pci_parse_request_of_pci_ranges()
  PCI: xilinx-nwl: Use pci_parse_request_of_pci_ranges()
  PCI: versatile: Use pci_parse_request_of_pci_ranges()
  PCI: versatile: Remove usage of PHYS_OFFSET
  PCI: versatile: Enable COMPILE_TEST
  PCI: of: Add inbound resource parsing to helpers
  PCI: ftpci100: Use inbound resources for setup
  PCI: v3-semi: Use inbound resources for setup
  PCI: xgene: Use inbound resources for setup
  PCI: iproc: Use inbound resources for setup
  PCI: rcar: Use inbound resources for setup
  PCI: Make devm_of_pci_get_host_bridge_resources() static

 drivers/pci/controller/Kconfig                |  2 +-
 .../pci/controller/dwc/pcie-designware-host.c | 29 ++----
 drivers/pci/controller/pci-aardvark.c         | 60 +------------
 drivers/pci/controller/pci-ftpci100.c         | 79 +++++-----------
 drivers/pci/controller/pci-host-common.c      |  2 +-
 drivers/pci/controller/pci-v3-semi.c          | 74 +++++----------
 drivers/pci/controller/pci-versatile.c        | 71 ++++-----------
 drivers/pci/controller/pci-xgene.c            | 73 +++++----------
 drivers/pci/controller/pcie-altera.c          | 41 +--------
 drivers/pci/controller/pcie-cadence-host.c    |  2 +-
 drivers/pci/controller/pcie-iproc-platform.c  |  9 +-
 drivers/pci/controller/pcie-iproc.c           | 82 ++++-------------
 drivers/pci/controller/pcie-mediatek.c        | 43 +++------
 drivers/pci/controller/pcie-mobiveil.c        | 27 ++----
 drivers/pci/controller/pcie-rcar.c            | 48 ++++------
 drivers/pci/controller/pcie-rockchip-host.c   | 89 +++++++------------
 drivers/pci/controller/pcie-rockchip.h        |  5 --
 drivers/pci/controller/pcie-xilinx-nwl.c      | 21 ++---
 drivers/pci/controller/pcie-xilinx.c          | 18 +---
 drivers/pci/of.c                              | 51 +++++++++--
 drivers/pci/pci.h                             | 13 ---
 include/linux/pci.h                           |  9 +-
 include/linux/resource_ext.h                  | 12 +++
 23 files changed, 261 insertions(+), 599 deletions(-)

--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
