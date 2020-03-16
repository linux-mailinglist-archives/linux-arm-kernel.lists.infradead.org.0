Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9173186EC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 16:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKnOTGAX+6nvOxwxifT9Yxt4J/W0cyK3PdKKjE/ZvQ4=; b=nAp3G3ykJnRY49
	N/IlaTkQcDsN0gAmOdjh1uvZhjquMPfLzoPnKUBTs4fbBWsEuM96FopOtguGSG6EI04tuIvOkleTu
	ifGnQMk4PYErAwJFjOYL12eTEmv9tFDnz67urcnTYgVlB5oQvfWJeNXhtsElGlN765R2yKt1wGhIs
	N04Cyt+HnADkwzkT55V+kZc4kf2FGS9waR8K3d+2cLPlZpgGSi6Rj/xOHhr5cCMDbpQyL3eMFel+M
	MrXLcEfSiqC884pfefPfwHX50l7z4Is+MLWgss780VFPIHamKWn4+VNEYHhfbqmUS+DAEzJKLe/cH
	00bCao+dSrog8KKnkFYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDrr5-0007vs-7l; Mon, 16 Mar 2020 15:40:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDrqx-0007vQ-9P
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 15:40:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EA1E1FB;
 Mon, 16 Mar 2020 08:40:30 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6AC763F534;
 Mon, 16 Mar 2020 08:40:29 -0700 (PDT)
Date: Mon, 16 Mar 2020 15:40:23 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2 0/3] PCIe: Endpoint: Redesign MSI-X support
Message-ID: <20200316154023.GA8550@e121166-lin.cambridge.arm.com>
References: <20200225081703.8857-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225081703.8857-1-kishon@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_084031_367678_9025198E 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 01:47:00PM +0530, Kishon Vijay Abraham I wrote:
> Existing MSI-X support in Endpoint core has limitations:
>  1) MSIX table (which is mapped to a BAR) is not allocated by
>     anyone. Ideally this should be allocated by endpoint
>     function driver.
>  2) Endpoint controller can choose any random BARs for MSIX
>     table (irrespective of whether the endpoint function driver
>     has allocated memory for it or not)
> 
> In order to avoid these limitations, pci_epc_set_msix() is
> modified to include BAR Indicator register (BIR) configuration
> and MSIX table offset as arguments. This series also fixed MSIX
> support in dwc driver and add MSI-X support in Cadence PCIe driver.
> 
> Changes from v1:
> *) Removed Cadence MSI-X support from the series
> *) Fixed nits pointed out by Bjorn
> 
> Kishon Vijay Abraham I (3):
>   PCI: endpoint: Fix ->set_msix() to take BIR and offset as arguments
>   PCI: dwc: Fix dw_pcie_ep_raise_msix_irq() to get correct MSI-X table
>     address
>   PCI: keystone: Allow AM654 PCIe Endpoint to raise MSI-X interrupt
> 
>  drivers/pci/controller/dwc/pci-keystone.c     |  5 +-
>  .../pci/controller/dwc/pcie-designware-ep.c   | 61 +++++++++----------
>  drivers/pci/controller/dwc/pcie-designware.h  |  1 +
>  drivers/pci/endpoint/functions/pci-epf-test.c | 31 ++++++++--
>  drivers/pci/endpoint/pci-epc-core.c           |  7 ++-
>  drivers/pci/endpoint/pci-epf-core.c           |  2 +
>  include/linux/pci-epc.h                       |  6 +-
>  include/linux/pci-epf.h                       | 15 +++++
>  8 files changed, 86 insertions(+), 42 deletions(-)

I have applied it to pci/endpoint for v5.7, thanks.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
