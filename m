Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B3811AB24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 13:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0dPg1Js2/UYkLQhrdDf7vyRiHdU8Lc9bJ9DSxyYDzvQ=; b=X7bpa5JOGyZvn7
	pQjblGGpEywpeSU64dW55LI8dG4DcMW3n/2BO4VdEeW/wellFv7tq3gvF6P2LiNu++AcNVfwpW0Ab
	51/W+zMIzmf4ONCjuQVulmMJNSjtY6G4mwJ3yy8Cddy138PN/dzG285pW4TV2ISFMZKWtIM5sLPMd
	V2jpOb4G3t0wLYZz940lh62JtwuNbbi+6xTXD3K/iFcPFOqPywZqKEM/o1Q64S0GnqGRRdezZ27Zm
	nPe/tQzPuLw4X5l8rdNPFpWNC6KFwLsupbjYNlI2bFAfiuT7GPKbE5VaugqKSvX32WrZ6FwFNJdT8
	ixbATNZ3ATOKoEnoJpjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if1Mn-00076w-UO; Wed, 11 Dec 2019 12:45:21 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if1Mf-00074g-Ka
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 12:45:15 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBBCiwt2089410;
 Wed, 11 Dec 2019 06:44:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576068298;
 bh=OE99JeSd1ur9H7sMDQrhfvYhHqNRrzL04S/LysYScMs=;
 h=From:To:CC:Subject:Date;
 b=s07zZQl/I/+upfp1a7uutKA1zM3iv8WSqmOTUtUpQx0CK20B+5bGr46hmHV2ZSnE6
 XNLM1KaMG8zFIt31uDaFA65zxpRPZpjQNluH1519lWYkrlhvk8X2+yjO98+9mCwugA
 asgJA0BPjbwUb6XDcu3Gk7oBnBu0vSpzJ0wyz5BQ=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBBCivUQ108608
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 11 Dec 2019 06:44:57 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 11
 Dec 2019 06:44:57 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 11 Dec 2019 06:44:57 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBBCirfh125451;
 Wed, 11 Dec 2019 06:44:54 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Andrew Murray
 <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Gustavo
 Pimentel <gustavo.pimentel@synopsys.com>
Subject: [PATCH 0/4] Redesign MSI-X support in PCIe Endpoint Core
Date: Wed, 11 Dec 2019 18:16:04 +0530
Message-ID: <20191211124608.887-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_044513_789479_CB84ECEA 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>, Jingoo Han <jingoohan1@gmail.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Existing MSI-X support in Endpoint core has limitations:
 1) MSIX table (which is mapped to a BAR) is not allocated by
    anyone. Ideally this should be allocated by endpoint
    function driver.
 2) Endpoint controller can choose any random BARs for MSIX
    table (irrespective of whether the endpoint function driver
    has allocated memory for it or not)

In order to avoid these limitations, pci_epc_set_msix() is
modified to include BAR Indicator register (BIR) configuration
and MSIX table offset as arguments. This series also fixed MSIX
support in dwc driver and add MSI-X support in Cadence PCIe driver.

The previous version of Cadence EP MSI-X support is @ [1].
This series is created on top of [2]

[1] -> https://patchwork.ozlabs.org/patch/971160/
[2] -> http://lore.kernel.org/r/20191209092147.22901-1-kishon@ti.com

Alan Douglas (1):
  PCI: cadence: Add MSI-X support to Endpoint driver

Kishon Vijay Abraham I (3):
  PCI: endpoint: Fix ->set_msix() to take BIR and offset as arguments
  PCI: dwc: Fix dw_pcie_ep_raise_msix_irq() to get correct MSIX table
    address
  PCI: keystone: Add AM654 PCIe Endpoint to raise MSIX interrupt

 .../pci/controller/cadence/pcie-cadence-ep.c  | 112 +++++++++++++++++-
 drivers/pci/controller/cadence/pcie-cadence.h |  10 ++
 drivers/pci/controller/dwc/pci-keystone.c     |   5 +-
 .../pci/controller/dwc/pcie-designware-ep.c   |  61 +++++-----
 drivers/pci/controller/dwc/pcie-designware.h  |   1 +
 drivers/pci/endpoint/functions/pci-epf-test.c |  31 ++++-
 drivers/pci/endpoint/pci-epc-core.c           |   7 +-
 drivers/pci/endpoint/pci-epf-core.c           |   2 +
 include/linux/pci-epc.h                       |   6 +-
 include/linux/pci-epf.h                       |  15 +++
 10 files changed, 207 insertions(+), 43 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
