Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621E7173BC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:41:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oiXpfAgteaepDm0vJjk1u29J8xDTvK7javdwuE1Yad0=; b=t/+NE5/DSv+IQO
	FTqqpLdv9hAh3BSFQVPQNw5gp79VXU0p+Em00JDbJ31YMeAYypg0PVyv1quWjgsnMuJBPcfvvTmC2
	LEIJBSIRlbQ6VS90kaOoDBmo7kKz8DMM2qmuHltucQ/vlRL9GUhh5cvu9rnjRJsIP4CUOVuKXzVh9
	PXenF5ZvZuYCeXxSewadCZwUhFefg3/V9q0+tcHb0ASSnpEOTgmmBV7Wcb0kbsWc9YSIHwOznVXtQ
	+07KvpfLxUlfvS5LHUqrrOcljMk3J7BtIyhYN5qM2jsgSxI8TQcPsQiYGamzmlWxU3kJCMSi2WMhh
	jOecNsL/Td4KyF/hy0vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hli-0005Np-Vt; Fri, 28 Feb 2020 15:41:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hlZ-0005NK-SL; Fri, 28 Feb 2020 15:41:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id g83so1484034wme.1;
 Fri, 28 Feb 2020 07:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XNr9LS4NdBHHOaGNbY4Rvbef+Vzw8n41HfwyhtLS84U=;
 b=V+4T56gijWkocDCf9UuoVhIlpqQou5tVyjGVTxcqIhks9Ikt5iJs6SyM+ArNyb3AaJ
 yXm2/PfBheCmPfkkn1K6kgvJEoMAoaZ2SPw4G0BZmG8lpER5EEBuQ9KQET1ESWQO7nas
 /IErfsz4Cf7rsxnTfdkNspNCHZsac6f7X1wNWhuB9kmzFq4sKC6Bbuo5SWEJ6XdoNlsb
 o/0dh8BcJQlEQbIk3V3c+FmVxXyS91iHErWDX/ssZZAgW55B720dQtLlsl66IN3ixKEu
 PB2r3pZunzJMhrXyfDjwGlmv06I8TlRt/6U7jeExuuLhrJVMk+T288qgq3AQLUvsgWEp
 zukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XNr9LS4NdBHHOaGNbY4Rvbef+Vzw8n41HfwyhtLS84U=;
 b=HWsWlqalE9/SMrr2gWIxaAy8xghPMNYlvdt6qL21ZLc+eoFSZPvPe1h1FcpzAAhlGX
 4JOx1wjEGO/3yyTx+HDdJi30Ii78wuOpLBxmfYDMJGKdThNC+LUXd6mQHnZGHsSAUSju
 my+wy754etIAUVLLtvb5UMmdI0W+eiZn0GqT6K18xzJpD2A0Wif8UlvFJq8/Fv5oMs+M
 xZJu0Vi3tOPwmeWBElwku+OJAXi2t31p7uJQNMYl/2M4+chERfAh1DtA77K2+721xum7
 EiwFDs1K4Bd1WACwNe2RNEflTcUtfgp2WaBPxgj9nw+M26VqS0qx2PCp9wh0Zjk4kyEY
 MFqQ==
X-Gm-Message-State: APjAAAUPmwL8+92srGEJLtNwMCGFVzHTWgc4yy8V/xNEg+it5qLEmCqO
 p4rG5ZV1RwtN0Md9VluVXX4=
X-Google-Smtp-Source: APXvYqx07nbNnJcNa+gIPlfmOe/rE95wPUQ9FmQByVrfLSt460UDzFev6s0hSOVfySBvJ0w5DozNQA==
X-Received: by 2002:a1c:4908:: with SMTP id w8mr5178421wma.57.1582904488030;
 Fri, 28 Feb 2020 07:41:28 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2510:d000:3855:fd13:6b76:a11b])
 by smtp.gmail.com with ESMTPSA id k16sm13355349wrd.17.2020.02.28.07.41.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:41:27 -0800 (PST)
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
Subject: [PATCH v5 0/7] Add support for PCIe controller to work in endpoint
 mode on R-Car SoCs
Date: Fri, 28 Feb 2020 15:41:15 +0000
Message-Id: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_074129_940999_86128DA6 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

This patch series adds support for PCIe controller on rcar to work in
endpoint mode, this also extends the epf framework to handle base region
for mapping PCI address locally.

Note:
The cadence/rockchip/designware endpoint drivers are build tested only.

Changes for v5:
1] Rebased the patches on next branch of https://git.kernel.org/pub/scm/
   linux/kernel/git/helgaas/pci.git
2] Fixed review comments reported by Kishon while fetching the matching
   window in function pci_epc_get_matching_window()
3] Fixed review comments reported by Bjorn
   a] Split patch up first patch so that its easier to review and incremental
   b] Fixed typos
4] Included Reviewed tag from Rob for the dt-binding patch
5] Fixed issue reported by Nathan for assigning variable to itself

Changes for v4:
1] Fixed dtb_check error reported by Rob
2] Fixed review comments reported by Kishon
   a] Dropped pci_epc_find_best_fit_window()
   b] Fixed initializing mem ptr in __pci_epc_mem_init()
   c] Dropped map_size from pci_epc_mem_window structure

Changes for v3:
1] Fixed review comments from Bjorn and Kishon.
3] Converted to DT schema

Changes for v2:
1] Fixed review comments from Biju for dt-bindings to include an example
   for a tested platform.
2] Fixed review comments from Kishon to extend the features of outbound
   regions in epf framework.
3] Added support to parse outbound-ranges in OF.

Lad Prabhakar (7):
  PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
  PCI: rcar: Move shareable code to a common file
  PCI: rcar: Fix calculating mask for PCIEPAMR register
  PCI: endpoint: Add support to handle multiple base for mapping
    outbound memory
  dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
    controller
  PCI: rcar: Add support for rcar PCIe controller in endpoint mode
  misc: pci_endpoint_test: Add Device ID for RZ/G2E PCIe controller

 .../devicetree/bindings/pci/rcar-pci-ep.yaml       |   76 ++
 arch/arm64/configs/defconfig                       |    2 +-
 drivers/misc/pci_endpoint_test.c                   |    3 +
 drivers/pci/controller/Kconfig                     |   15 +-
 drivers/pci/controller/Makefile                    |    3 +-
 drivers/pci/controller/cadence/pcie-cadence-ep.c   |    7 +-
 drivers/pci/controller/dwc/pcie-designware-ep.c    |   29 +-
 drivers/pci/controller/pcie-rcar-ep.c              |  490 ++++++++
 drivers/pci/controller/pcie-rcar-host.c            | 1053 +++++++++++++++++
 drivers/pci/controller/pcie-rcar.c                 | 1229 +-------------------
 drivers/pci/controller/pcie-rcar.h                 |  129 ++
 drivers/pci/controller/pcie-rockchip-ep.c          |    7 +-
 drivers/pci/endpoint/pci-epc-mem.c                 |  167 ++-
 include/linux/pci-epc.h                            |   39 +-
 14 files changed, 1985 insertions(+), 1264 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
 create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
 create mode 100644 drivers/pci/controller/pcie-rcar-host.c
 create mode 100644 drivers/pci/controller/pcie-rcar.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
