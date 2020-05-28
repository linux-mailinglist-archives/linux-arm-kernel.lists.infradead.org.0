Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799FF1E67B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 18:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YK/Pw/Opu0BFS5tCqFZCd9YMo1XKlWyGHwSyc3qLB2I=; b=E9rVpm4fn0b1RC
	a9cisVTii2bfdqChZhptxFQ6+0h1vozdWqpVcxPyhNFwVIVimHVRPgnhJLjcoTTBp6thQhkTMC83B
	0JUPbikvlefdW2H8+E2TOBYA9ICIddbcGcRBK5vk6W/BWvLgtDCFhRjETjzbSuzTfIHGIv+L54krz
	hIKsKTrunJFoEIVosfHZkJubUKzdcpJxrgjotK4BKNHCLykHoFWulan4E85Oyup4SQpfkLFweeacK
	lVBImR9lq29TsbCuVSiSsf1Gp96uNT61nYcQoUX77MQ2kbZfC6FpqzbumDLrACkgWOd3zVrbLrtq/
	jrXQEfPmM9RSKE19dbNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeLgY-0003hD-KF; Thu, 28 May 2020 16:47:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeLgR-0003W4-0s
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 16:47:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 890F830E;
 Thu, 28 May 2020 09:47:04 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12BB13F6C4;
 Thu, 28 May 2020 09:47:02 -0700 (PDT)
Date: Thu, 28 May 2020 17:46:57 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v4 0/2]  PCI: Add new UniPhier PCIe endpoint driver
Message-ID: <20200528164657.GA30482@e121166-lin.cambridge.arm.com>
References: <1589457801-12796-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589457801-12796-1-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_094707_120076_B2A44A9D 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 09:03:19PM +0900, Kunihiko Hayashi wrote:
> This series adds PCIe endpoint controller driver for Socionext UniPhier
> SoCs. This controller is based on the DesignWare PCIe core.
> 
> This driver supports Pro5 SoC only, so Pro5 needs multiple clocks and
> resets in devicetree node.
> 
> Changes since v3:
> - dt-bindings: Convert with dt-schema
> - Replace with devm_platform_ioremap_resource()
> - Add a commnet that mutex covers raising legacy IRQ
> 
> Changes since v2:
> - dt-bindings: Add clock-names, reset-names, and fix example for Pro5
> - Remove 'is_legacy' indicating that the compatible is for legacy SoC
> - Use pci_epc_features instead of defining uniphier_soc_data
> - Remove redundant register read access
> - Clean up return code on uniphier_add_pcie_ep()
> - typo: intx -> INTx
> 
> Changes since v1:
> - dt-bindings: Add Reviewed-by line
> - Fix register value to set EP mode
> - Add error message when failed to get phy
> - Replace INTx assertion time with macro
> 
> Kunihiko Hayashi (2):
>   dt-bindings: PCI: Add UniPhier PCIe endpoint controller description
>   PCI: uniphier: Add Socionext UniPhier Pro5 PCIe endpoint controller
>     driver
> 
>  .../bindings/pci/socionext,uniphier-pcie-ep.yaml   |  92 +++++
>  MAINTAINERS                                        |   4 +-
>  drivers/pci/controller/dwc/Kconfig                 |  13 +-
>  drivers/pci/controller/dwc/Makefile                |   1 +
>  drivers/pci/controller/dwc/pcie-uniphier-ep.c      | 383 +++++++++++++++++++++
>  5 files changed, 489 insertions(+), 4 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml
>  create mode 100644 drivers/pci/controller/dwc/pcie-uniphier-ep.c

Applied to pci/dwc, thanks !

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
