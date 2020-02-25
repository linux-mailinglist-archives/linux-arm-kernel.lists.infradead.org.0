Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0728816BB9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:13:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QNhZ2iUt1/xeSGxBvdmx1Z2gnn7paHYUxkLpH0/fgZw=; b=GByD3ryCI0EAtH
	aQ1WJz5J8a3zkTQwkaa+01vByaxnzB9Q4M+a+u/BU/VtRDWT4nh53mMI/h1WKChsviTxVuN4Ld5Tq
	wmEWfQjG+oHuaZmu/6zToXsOGakFiJH5ukiO6cOeFl0iWcVJ3bkF4MtOR4c99IFPBKk+vuZ94wMYf
	7FIyvj0VG4B7Sucx2PqExMZbVQ/18L5cKeXKbcljuRDFEVvreszXUA/rsopWFBmX5UCFybMKuEwwT
	sFbspDOFVK7n0OoE6Yqg7p1MBpaVSAy/hGZGn6Un4lCVR7MQW4thIgL7I2d7mT21pcb4PiUxahB5a
	EIOab0hwh8iryAnFSOVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VLO-0001Qg-KU; Tue, 25 Feb 2020 08:13:30 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VKl-0000xe-IN
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:12:54 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01P8CdVP022785;
 Tue, 25 Feb 2020 02:12:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582618359;
 bh=xkzJNhAlvIUswcXOd5q7Ot5BwbFTcYnpu6axmC8+x1c=;
 h=From:To:CC:Subject:Date;
 b=FoXCHVRFSklOB8eUHOzbY459HgtxT2Y16H80LUfNCBLxeow0X2sd7EbOBLXPz6PfA
 MK0EqVWoxMmRfOXKIIej6I0xze+qD/MtUVygkflRp+WYQF18/91VtSBrVQJt9wI0ZF
 NY6U/8nkxr81SIWr7jmn8VCLMfduChkSBtI+VZFg=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01P8CdES092156
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Feb 2020 02:12:39 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 25
 Feb 2020 02:12:38 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 25 Feb 2020 02:12:38 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01P8CYu8026220;
 Tue, 25 Feb 2020 02:12:35 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Murali Karicheri <m-karicheri2@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Bjorn Helgaas <bhelgaas@google.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v2 0/3] PCIe: Endpoint: Redesign MSI-X support
Date: Tue, 25 Feb 2020 13:47:00 +0530
Message-ID: <20200225081703.8857-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_001251_685688_35963515 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pci@vger.kernel.org, Xiaowei Bao <xiaowei.bao@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

Changes from v1:
*) Removed Cadence MSI-X support from the series
*) Fixed nits pointed out by Bjorn

Kishon Vijay Abraham I (3):
  PCI: endpoint: Fix ->set_msix() to take BIR and offset as arguments
  PCI: dwc: Fix dw_pcie_ep_raise_msix_irq() to get correct MSI-X table
    address
  PCI: keystone: Allow AM654 PCIe Endpoint to raise MSI-X interrupt

 drivers/pci/controller/dwc/pci-keystone.c     |  5 +-
 .../pci/controller/dwc/pcie-designware-ep.c   | 61 +++++++++----------
 drivers/pci/controller/dwc/pcie-designware.h  |  1 +
 drivers/pci/endpoint/functions/pci-epf-test.c | 31 ++++++++--
 drivers/pci/endpoint/pci-epc-core.c           |  7 ++-
 drivers/pci/endpoint/pci-epf-core.c           |  2 +
 include/linux/pci-epc.h                       |  6 +-
 include/linux/pci-epf.h                       | 15 +++++
 8 files changed, 86 insertions(+), 42 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
