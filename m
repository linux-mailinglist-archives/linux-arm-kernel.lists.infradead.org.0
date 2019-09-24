Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8CABD488
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 23:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y2PeQ8r1hwDZI6WHUMbLPSVXAqbzuuk6gH8Ha0r+nO0=; b=uIq/HaVTcVBBXa
	tTgFsrOZvZzE0rDxV/40JEn3JMhZGcVYD01wSTw0MfwLL2FFgPrWHmJVP+9ZaFYldgY5fTcKKbzWT
	7wwUBZxlHGqXeH1xzbFw9GGZrAb3iiqt9F5BTO9yI47WKB7nJeC8aORPP3HyYwYHmU9CpxeucAlOT
	JwSlZBZgJZl6++K9jC3lgImUgbh4KJlxyXsGRHI6/s6Y6SIhG+iWCFMEDAxi1l1shVKd2i8lJIYWe
	HNoW15JKUAQWoJYJ2NUM/Me2xq2GsoyZqReNWBIdInaKuZuyHYkPp2Sm1JCmUI97ofaWqCLBEiqvq
	Mkhlhr2fFwTVbeMDmRMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCseA-0005QX-FO; Tue, 24 Sep 2019 21:46:58 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsdl-0005PC-R5; Tue, 24 Sep 2019 21:46:35 +0000
Received: by mail-ot1-f67.google.com with SMTP id y39so2899847ota.7;
 Tue, 24 Sep 2019 14:46:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1EA8rb2xQcb5dg7rm6kSLl37zgnf6FJeYhc+aCc8i8Q=;
 b=NBGeVv4WpxmfgBaZR4tlQU898UNg3nu6qU7gpKR/78cBRTKw6HZuCpPNU1jc1dQbeJ
 WsgRarQ4XK/M7VZyFN5z7tn5fGUo80oR8snKXMQd2gSgqxDPRZAqUl2tvNY2yCUfCI28
 yWWi30xOfSOFOAftsWIa+sTa7sWKNdsrnaAjkNGBw8S1rk9GbQuXUrRW8Q/1X5+y9+zw
 FicEMamN8BsI6IZklAk1MQrYBwiYDFLcSBU/ocJpaP0RHIFO9f9Z9H0St6A8iAt/nRP8
 CcKT6ANSkD30GUoDpzlZIsvhPRXxgWMBlo/SdS+X+hES4fd9zmMiVKFpEPFNdjblmg7S
 aZOQ==
X-Gm-Message-State: APjAAAXmmcSsk3LtU0lvBi3rUf8kpH4ldCVJ79eTpHLJQUsi8o6NO2vd
 F/d0nkvxoGIBc13S115T3w==
X-Google-Smtp-Source: APXvYqyfVq4l/5/hBZkfgpAi1Pc1khFxc5Y5xwdvEOTzeXf8zarYTh54eCs4NscjomBDZ62d4/y0HA==
X-Received: by 2002:a05:6830:16da:: with SMTP id
 l26mr3762822otr.339.1569361592670; 
 Tue, 24 Sep 2019 14:46:32 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id s66sm976787otb.65.2019.09.24.14.46.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 14:46:31 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 00/11] PCI dma-ranges parsing consolidation
Date: Tue, 24 Sep 2019 16:46:19 -0500
Message-Id: <20190924214630.12817-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_144633_901500_2301D59C 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Jingoo Han <jingoohan1@gmail.com>, Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series moves the DT 'dma-ranges' parsing into common helpers
utilizing a resource list. In the process of doing this, I noticed
several cases where pci_parse_request_of_pci_ranges() could be used so
I converted those drivers first. The last 5 patches make the actual
change to use the common 'dma_ranges' resource list. There's no
(intended) functional change in this series though I'm also working on
a separate series to improve the handling of 'dma-ranges' and dma
masks.

pci-rcar-gen2 is the only remaining driver doing its own dma-ranges
handling as it is still using the old ARM PCI functions. Looks like it
is the last one (in drivers/pci/).

Compile tested only.

Rob

Rob Herring (11):
  PCI: aardvark: Use pci_parse_request_of_pci_ranges()
  PCI: altera: Use pci_parse_request_of_pci_ranges()
  PCI: mediatek: Use pci_parse_request_of_pci_ranges()
  PCI: versatile: Enable COMPILE_TEST
  PCI: versatile: Use pci_parse_request_of_pci_ranges()
  PCI: of: Add inbound resource parsing to helpers
  PCI: ftpci100: Use inbound resources for setup
  PCI: v3-semi: Use inbound resources for setup
  PCI: xgene: Use inbound resources for setup
  PCI: iproc: Use inbound resources for setup
  PCI: rcar: Use inbound resources for setup

 drivers/pci/controller/Kconfig                |  2 +-
 .../pci/controller/dwc/pcie-designware-host.c |  3 +-
 drivers/pci/controller/pci-aardvark.c         | 58 ++---------------
 drivers/pci/controller/pci-ftpci100.c         | 29 ++++-----
 drivers/pci/controller/pci-host-common.c      |  2 +-
 drivers/pci/controller/pci-v3-semi.c          | 40 +++++-------
 drivers/pci/controller/pci-versatile.c        | 62 ++++--------------
 drivers/pci/controller/pci-xgene.c            | 33 ++++------
 drivers/pci/controller/pcie-altera.c          | 38 +----------
 drivers/pci/controller/pcie-cadence-host.c    |  2 +-
 drivers/pci/controller/pcie-iproc-platform.c  |  1 +
 drivers/pci/controller/pcie-iproc.c           | 63 +++----------------
 drivers/pci/controller/pcie-mediatek.c        | 47 +++++---------
 drivers/pci/controller/pcie-mobiveil.c        |  4 +-
 drivers/pci/controller/pcie-rcar.c            | 48 ++++++--------
 drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
 drivers/pci/controller/pcie-xilinx-nwl.c      |  2 +-
 drivers/pci/controller/pcie-xilinx.c          |  2 +-
 drivers/pci/of.c                              | 44 ++++++++++++-
 drivers/pci/pci.h                             |  8 ++-
 include/linux/pci.h                           |  2 +
 21 files changed, 162 insertions(+), 331 deletions(-)

--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
