Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0E8D9B31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ePfbf4jjZ5SgqBqInR4LcqpgLptYQp9b5zKYHA43PMI=; b=Nt+GKzqCgw17Y7
	lLzD7A+FddAxR5WMUgtdjSQ5LbPXm8Gggi9d7MEb159BpusIFlLqOlSldqNbz8qbuUW7KtwIs7x8X
	E3wD4uIQBVK188GeoMHgtotL6tHZJPkhlgrKOlXngvVATPasaLI0TAcKj+Bs3WPjth/cn1p2OJXWu
	m6hazsavn+BavaE+DPjJF9M1ODY6NNWc8NBz2XF0bjgySiR77Uv1df0LZU5JOneW8DKs7ckYEdMy5
	5iKjGWlm8YFC6VoHNoT1P9lxWZBudg9vHDZXvL2dwiKSBJ9u88ATktz9mC/R2OToqipZ4mYbqXc24
	a3T4zMBalGJjuae7Ugpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpfT-0007Y8-0l; Wed, 16 Oct 2019 20:13:11 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZM-0001os-AP; Wed, 16 Oct 2019 20:06:56 +0000
Received: by mail-ot1-f65.google.com with SMTP id k32so21291502otc.4;
 Wed, 16 Oct 2019 13:06:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vEhUbOsT/IrSzaUGuxD9GomjoUN0UdgTtSdOqaXU8v4=;
 b=eHqIm0CJD68XXeTjzSTK/U3FirJjYLPrMmWoM0tGa5mkfUNTpAGlG7nXM4Ye3vaSX8
 2qqph49tHUyw5t6F8H2v63hBPIDUy+r74u2P4Fyt0yq9cGBXJcQR9LiLQ1kntFNrL9ZN
 CqzZuBhvLBjwzmqXoG3Qmosr/hzWNY7pWwauLlmTQa5Vu25yXppOyMTzCyMzNJBpnNFx
 7Yo792ivtusFIi+ta3ZLyKNcR9KH2aCYSeFkzkIHb+wvdeVAsFQRGWRHtvSXw3LSYlFK
 K6X1hXB9eiuK4M+kul5qW5mRTBkU6nNS6ykSyazP05vq4sGIw6+ivVWO7Dtr6VFnxhpB
 PcoA==
X-Gm-Message-State: APjAAAXYsOfwaWVzqOLD1MDxd/MT1zkR6yjELWXwcStFqUNLo4oZc0Y4
 bJ6hsFLYMccn0y3RUvPz+A==
X-Google-Smtp-Source: APXvYqwaSOuDxAClnQads2cYtaYnZGwB73Z07nxMgMTwvE0egIKnPl8fW5MZwWyKYkqhfvtFPntPJg==
X-Received: by 2002:a9d:334:: with SMTP id 49mr32081otv.15.1571256409727;
 Wed, 16 Oct 2019 13:06:49 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.06.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:06:48 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 00/25] PCI host resource consolidation
Date: Wed, 16 Oct 2019 15:06:22 -0500
Message-Id: <20191016200647.32050-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130652_471893_8CEBAAA4 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
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

Rob

[1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git pci-ranges-cleanup-v2

Rob Herring (25):
  resource: Add a resource_list_get_entry_of_type helper
  PCI: Export pci_parse_request_of_pci_ranges()
  PCI: aardvark: Use pci_parse_request_of_pci_ranges()
  PCI: altera: Use pci_parse_request_of_pci_ranges()
  PCI: dwc: Use pci_parse_request_of_pci_ranges()
  PCI: faraday: Use pci_parse_request_of_pci_ranges
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
 drivers/pci/controller/pci-ftpci100.c         | 78 +++++-----------
 drivers/pci/controller/pci-host-common.c      |  2 +-
 drivers/pci/controller/pci-v3-semi.c          | 74 +++++----------
 drivers/pci/controller/pci-versatile.c        | 70 +++------------
 drivers/pci/controller/pci-xgene.c            | 72 +++++----------
 drivers/pci/controller/pcie-altera.c          | 41 +--------
 drivers/pci/controller/pcie-cadence-host.c    |  2 +-
 drivers/pci/controller/pcie-iproc-platform.c  |  9 +-
 drivers/pci/controller/pcie-iproc.c           | 81 ++++-------------
 drivers/pci/controller/pcie-mediatek.c        | 43 +++------
 drivers/pci/controller/pcie-mobiveil.c        | 27 ++----
 drivers/pci/controller/pcie-rcar.c            | 48 ++++------
 drivers/pci/controller/pcie-rockchip-host.c   | 89 +++++++------------
 drivers/pci/controller/pcie-rockchip.h        |  5 --
 drivers/pci/controller/pcie-xilinx-nwl.c      | 21 ++---
 drivers/pci/controller/pcie-xilinx.c          | 18 +---
 drivers/pci/of.c                              | 51 +++++++++--
 drivers/pci/pci.h                             | 13 ---
 include/linux/pci.h                           |  2 +
 include/linux/resource_ext.h                  | 12 +++
 23 files changed, 253 insertions(+), 596 deletions(-)

--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
