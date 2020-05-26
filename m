Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AB01DC06E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 22:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pbd0zGHAydm938NzaAKHzNtMozCfSBSi6KDGDQ4bmcc=; b=Id/ulNzh2K1OpI
	5d5HbU/XfIv8xtF0xAosakjw1ocgt6EDiY7WA/cG8vi0b+b/N2soidTbzAVHryvpFtIVE3HD+oKoI
	TwoCG7FpAxPElCsm17zW4STZYEIaFOarpagap8sG4KA2v4NQ823HnHyGs64EpGhZdpdFtSbDhNxA4
	N16ss/lv9ddcrgC8z0GgMqy+KbC2PZ0i2Q6jgpp+Beso0PRGPwr3z8jiF2D/Qe/dUXd40iqfDgxnd
	yM31Tnms/LhdMAankmbJ7dHagWjmGnmsMbmWpWabErNdCdHJ+LQ9s20VGC2tReoM5s9oBTpGIFlHg
	klwtl+zzctxIDYUqnQWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVaf-0007cu-66; Wed, 20 May 2020 20:45:25 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVaM-0006XL-50
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 20:45:08 +0000
Received: by mail-il1-f195.google.com with SMTP id j2so4745552ilr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 13:45:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bqR4zuhiXMet2ugDC0jDsERe+teLAR6kFI4pDjh6+JA=;
 b=gqwxoQ6TdN7ErNk+n55M6vovqX0ZBK0skVvZYDEc3H+sedCAEMEbVg1v4WvdQIJDyB
 wrCTOPP5aqSEmM6+rj5m9ENzyjyF44C/soCFwUwwuYsg8edE8IC7iUP1XZDk67qN6LMG
 3PbaG9tcRDaX+r0AoYc5pf9czjKTcCFIuZT8OxF34X9pzVxLRUMTx3+NshZvyKj9aRBt
 a/93qlNZ7Ah52Y2fnrI0/pOxuFB3VC80czr0ObiqeEFgel/N2LwWz9DO86w5VeprHAQ9
 ePA7hGYATs+Yf9An96P5u7844OeeXdLd3AXT6wWIdgWvbFX1dPMdrbNOZvqbS/7cA53H
 gX1w==
X-Gm-Message-State: AOAM533YVQexCi1uJve4jjqkR/D7EjQcGC1T5zkReSeJNSd/Zo4P/4DF
 JnQyhq3eCXrHFDHinbY33Q==
X-Google-Smtp-Source: ABdhPJw/bXN2huysNBXjCLnFJuc9LcMh4AUCXLXm1BQK+PcneeMJ74nHS8IqMyt92tEDKrbCKtdeAQ==
X-Received: by 2002:a92:1d49:: with SMTP id d70mr5357521ild.188.1590007504822; 
 Wed, 20 May 2020 13:45:04 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id 15sm1513740iof.34.2020.05.20.13.45.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 13:45:04 -0700 (PDT)
Received: (nullmailer pid 533322 invoked by uid 1000);
 Wed, 20 May 2020 20:45:03 -0000
Date: Wed, 20 May 2020 14:45:03 -0600
From: Rob Herring <robh@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v6 04/11] PCI: designware-ep: Modify MSI and MSIX CAP way
 of finding
Message-ID: <20200520204503.GA505561@bogus>
References: <20200314033038.24844-1-xiaowei.bao@nxp.com>
 <20200314033038.24844-5-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314033038.24844-5-xiaowei.bao@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_134506_239495_886590B3 
X-CRM114-Status: GOOD (  24.10  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: roy.zang@nxp.com, lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org,
 jingoohan1@gmail.com, Zhiqiang.Hou@nxp.com, linuxppc-dev@lists.ozlabs.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Minghuan.Lian@nxp.com, linux-arm-kernel@lists.infradead.org,
 gustavo.pimentel@synopsys.com, bhelgaas@google.com, andrew.murray@arm.com,
 kishon@ti.com, shawnguo@kernel.org, mingkai.hu@nxp.com,
 amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 11:30:31AM +0800, Xiaowei Bao wrote:
> Each PF of EP device should have it's own MSI or MSIX capabitily

s/it's/its/

> struct, so create a dw_pcie_ep_func struct and remove the msi_cap
> and msix_cap to this struct from dw_pcie_ep, and manage the PFs
> with a list.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v3:
>  - This is a new patch, to fix the issue of MSI and MSIX CAP way of
>    finding.
> v4:
>  - Correct some word of commit message.
> v5:
>  - No change.
> v6:
>  - Fix up the compile error.
> 
>  drivers/pci/controller/dwc/pcie-designware-ep.c | 135 +++++++++++++++++++++---
>  drivers/pci/controller/dwc/pcie-designware.h    |  18 +++-
>  2 files changed, 134 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
> index 933bb89..fb915f2 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
> @@ -19,6 +19,19 @@ void dw_pcie_ep_linkup(struct dw_pcie_ep *ep)
>  	pci_epc_linkup(epc);
>  }
>  
> +struct dw_pcie_ep_func *
> +dw_pcie_ep_get_func_from_ep(struct dw_pcie_ep *ep, u8 func_no)
> +{
> +	struct dw_pcie_ep_func *ep_func;
> +
> +	list_for_each_entry(ep_func, &ep->func_list, list) {
> +		if (ep_func->func_no == func_no)
> +			return ep_func;
> +	}
> +
> +	return NULL;
> +}
> +
>  static unsigned int dw_pcie_ep_func_select(struct dw_pcie_ep *ep, u8 func_no)
>  {
>  	unsigned int func_offset = 0;
> @@ -59,6 +72,47 @@ void dw_pcie_ep_reset_bar(struct dw_pcie *pci, enum pci_barno bar)
>  		__dw_pcie_ep_reset_bar(pci, func_no, bar, 0);
>  }
>  
> +static u8 __dw_pcie_ep_find_next_cap(struct dw_pcie_ep *ep, u8 func_no,
> +		u8 cap_ptr, u8 cap)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	unsigned int func_offset = 0;
> +	u8 cap_id, next_cap_ptr;
> +	u16 reg;
> +
> +	if (!cap_ptr)
> +		return 0;
> +
> +	func_offset = dw_pcie_ep_func_select(ep, func_no);
> +
> +	reg = dw_pcie_readw_dbi(pci, func_offset + cap_ptr);
> +	cap_id = (reg & 0x00ff);
> +
> +	if (cap_id > PCI_CAP_ID_MAX)
> +		return 0;
> +
> +	if (cap_id == cap)
> +		return cap_ptr;
> +
> +	next_cap_ptr = (reg & 0xff00) >> 8;
> +	return __dw_pcie_ep_find_next_cap(ep, func_no, next_cap_ptr, cap);
> +}
> +
> +static u8 dw_pcie_ep_find_capability(struct dw_pcie_ep *ep, u8 func_no, u8 cap)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	unsigned int func_offset = 0;
> +	u8 next_cap_ptr;
> +	u16 reg;
> +
> +	func_offset = dw_pcie_ep_func_select(ep, func_no);
> +
> +	reg = dw_pcie_readw_dbi(pci, func_offset + PCI_CAPABILITY_LIST);
> +	next_cap_ptr = (reg & 0x00ff);
> +
> +	return __dw_pcie_ep_find_next_cap(ep, func_no, next_cap_ptr, cap);
> +}
> +
>  static int dw_pcie_ep_write_header(struct pci_epc *epc, u8 func_no,
>  				   struct pci_epf_header *hdr)
>  {
> @@ -246,13 +300,18 @@ static int dw_pcie_ep_get_msi(struct pci_epc *epc, u8 func_no)
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>  	u32 val, reg;
>  	unsigned int func_offset = 0;
> +	struct dw_pcie_ep_func *ep_func;
>  
> -	if (!ep->msi_cap)
> +	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
> +	if (!ep_func)
> +		return -EINVAL;
> +
> +	if (!ep_func->msi_cap)
>  		return -EINVAL;

if (!ep_func || !ep_func->msi_cap)
  return -EINVAL;

>  
>  	func_offset = dw_pcie_ep_func_select(ep, func_no);
>  
> -	reg = ep->msi_cap + func_offset + PCI_MSI_FLAGS;
> +	reg = ep_func->msi_cap + func_offset + PCI_MSI_FLAGS;
>  	val = dw_pcie_readw_dbi(pci, reg);
>  	if (!(val & PCI_MSI_FLAGS_ENABLE))
>  		return -EINVAL;
> @@ -268,13 +327,18 @@ static int dw_pcie_ep_set_msi(struct pci_epc *epc, u8 func_no, u8 interrupts)
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>  	u32 val, reg;
>  	unsigned int func_offset = 0;
> +	struct dw_pcie_ep_func *ep_func;
> +
> +	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
> +	if (!ep_func)
> +		return -EINVAL;
>  
> -	if (!ep->msi_cap)
> +	if (!ep_func->msi_cap)
>  		return -EINVAL;

Same here.

>  
>  	func_offset = dw_pcie_ep_func_select(ep, func_no);
>  
> -	reg = ep->msi_cap + func_offset + PCI_MSI_FLAGS;
> +	reg = ep_func->msi_cap + func_offset + PCI_MSI_FLAGS;
>  	val = dw_pcie_readw_dbi(pci, reg);
>  	val &= ~PCI_MSI_FLAGS_QMASK;
>  	val |= (interrupts << 1) & PCI_MSI_FLAGS_QMASK;
> @@ -291,13 +355,18 @@ static int dw_pcie_ep_get_msix(struct pci_epc *epc, u8 func_no)
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>  	u32 val, reg;
>  	unsigned int func_offset = 0;
> +	struct dw_pcie_ep_func *ep_func;
> +
> +	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
> +	if (!ep_func)
> +		return -EINVAL;
>  
> -	if (!ep->msix_cap)
> +	if (!ep_func->msix_cap)
>  		return -EINVAL;

Same here for msix.

>  
>  	func_offset = dw_pcie_ep_func_select(ep, func_no);
>  
> -	reg = ep->msix_cap + func_offset + PCI_MSIX_FLAGS;
> +	reg = ep_func->msix_cap + func_offset + PCI_MSIX_FLAGS;
>  	val = dw_pcie_readw_dbi(pci, reg);
>  	if (!(val & PCI_MSIX_FLAGS_ENABLE))
>  		return -EINVAL;
> @@ -313,13 +382,18 @@ static int dw_pcie_ep_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts)
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>  	u32 val, reg;
>  	unsigned int func_offset = 0;
> +	struct dw_pcie_ep_func *ep_func;
>  
> -	if (!ep->msix_cap)
> +	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
> +	if (!ep_func)
> +		return -EINVAL;
> +
> +	if (!ep_func->msix_cap)
>  		return -EINVAL;

And here.

>  
>  	func_offset = dw_pcie_ep_func_select(ep, func_no);
>  
> -	reg = ep->msix_cap + func_offset + PCI_MSIX_FLAGS;
> +	reg = ep_func->msix_cap + func_offset + PCI_MSIX_FLAGS;
>  	val = dw_pcie_readw_dbi(pci, reg);
>  	val &= ~PCI_MSIX_FLAGS_QSIZE;
>  	val |= interrupts;
> @@ -404,6 +478,7 @@ int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
>  			     u8 interrupt_num)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	struct dw_pcie_ep_func *ep_func;
>  	struct pci_epc *epc = ep->epc;
>  	unsigned int aligned_offset;
>  	unsigned int func_offset = 0;
> @@ -413,25 +488,29 @@ int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
>  	bool has_upper;
>  	int ret;
>  
> -	if (!ep->msi_cap)
> +	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
> +	if (!ep_func)
> +		return -EINVAL;
> +
> +	if (!ep_func->msi_cap)
>  		return -EINVAL;

And here.

>  
>  	func_offset = dw_pcie_ep_func_select(ep, func_no);
>  
>  	/* Raise MSI per the PCI Local Bus Specification Revision 3.0, 6.8.1. */
> -	reg = ep->msi_cap + func_offset + PCI_MSI_FLAGS;
> +	reg = ep_func->msi_cap + func_offset + PCI_MSI_FLAGS;
>  	msg_ctrl = dw_pcie_readw_dbi(pci, reg);
>  	has_upper = !!(msg_ctrl & PCI_MSI_FLAGS_64BIT);
> -	reg = ep->msi_cap + func_offset + PCI_MSI_ADDRESS_LO;
> +	reg = ep_func->msi_cap + func_offset + PCI_MSI_ADDRESS_LO;
>  	msg_addr_lower = dw_pcie_readl_dbi(pci, reg);
>  	if (has_upper) {
> -		reg = ep->msi_cap + func_offset + PCI_MSI_ADDRESS_HI;
> +		reg = ep_func->msi_cap + func_offset + PCI_MSI_ADDRESS_HI;
>  		msg_addr_upper = dw_pcie_readl_dbi(pci, reg);
> -		reg = ep->msi_cap + func_offset + PCI_MSI_DATA_64;
> +		reg = ep_func->msi_cap + func_offset + PCI_MSI_DATA_64;
>  		msg_data = dw_pcie_readw_dbi(pci, reg);
>  	} else {
>  		msg_addr_upper = 0;
> -		reg = ep->msi_cap + func_offset + PCI_MSI_DATA_32;
> +		reg = ep_func->msi_cap + func_offset + PCI_MSI_DATA_32;
>  		msg_data = dw_pcie_readw_dbi(pci, reg);
>  	}
>  	aligned_offset = msg_addr_lower & (epc->mem->page_size - 1);
> @@ -467,6 +546,7 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
>  			      u16 interrupt_num)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	struct dw_pcie_ep_func *ep_func;
>  	struct pci_epc *epc = ep->epc;
>  	u16 tbl_offset, bir;
>  	unsigned int func_offset = 0;
> @@ -477,9 +557,16 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
>  	void __iomem *msix_tbl;
>  	int ret;
>  
> +	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
> +	if (!ep_func)
> +		return -EINVAL;
> +
> +	if (!ep_func->msix_cap)
> +		return -EINVAL;

And here.

> +
>  	func_offset = dw_pcie_ep_func_select(ep, func_no);
>  
> -	reg = ep->msix_cap + func_offset + PCI_MSIX_TABLE;
> +	reg = ep_func->msix_cap + func_offset + PCI_MSIX_TABLE;
>  	tbl_offset = dw_pcie_readl_dbi(pci, reg);
>  	bir = (tbl_offset & PCI_MSIX_TABLE_BIR);
>  	tbl_offset &= PCI_MSIX_TABLE_OFFSET;
> @@ -558,6 +645,7 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  	int i;
>  	int ret;
>  	u32 reg;
> +	u8 func_no;
>  	void *addr;
>  	u8 hdr_type;
>  	unsigned int nbars;
> @@ -566,6 +654,9 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>  	struct device *dev = pci->dev;
>  	struct device_node *np = dev->of_node;
> +	struct dw_pcie_ep_func *ep_func;
> +
> +	INIT_LIST_HEAD(&ep->func_list);
>  
>  	if (!pci->dbi_base || !pci->dbi_base2) {
>  		dev_err(dev, "dbi_base/dbi_base2 is not populated\n");
> @@ -632,9 +723,19 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  	if (ret < 0)
>  		epc->max_functions = 1;
>  
> -	ep->msi_cap = dw_pcie_find_capability(pci, PCI_CAP_ID_MSI);
> +	for (func_no = 0; func_no < epc->max_functions; func_no++) {
> +		ep_func = devm_kzalloc(dev, sizeof(*ep_func), GFP_KERNEL);

Why do you need a list if you allocate all the functions at once? You 
could just do an array. Or do the allocations as needed and keep the 
list. I assume all functions aren't always used.

> +		if (!ep_func)
> +			return -ENOMEM;
>  
> -	ep->msix_cap = dw_pcie_find_capability(pci, PCI_CAP_ID_MSIX);
> +		ep_func->func_no = func_no;
> +		ep_func->msi_cap = dw_pcie_ep_find_capability(ep, func_no,
> +							      PCI_CAP_ID_MSI);
> +		ep_func->msix_cap = dw_pcie_ep_find_capability(ep, func_no,
> +							       PCI_CAP_ID_MSIX);
> +
> +		list_add_tail(&ep_func->list, &ep->func_list);
> +	}
>  
>  	if (ep->ops->ep_init)
>  		ep->ops->ep_init(ep);
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index cb32afa..dd9b7b4 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -230,8 +230,16 @@ struct dw_pcie_ep_ops {
>  	unsigned int (*func_conf_select)(struct dw_pcie_ep *ep, u8 func_no);
>  };
>  
> +struct dw_pcie_ep_func {
> +	struct list_head	list;
> +	u8			func_no;
> +	u8			msi_cap;	/* MSI capability offset */
> +	u8			msix_cap;	/* MSI-X capability offset */
> +};
> +
>  struct dw_pcie_ep {
>  	struct pci_epc		*epc;
> +	struct list_head	func_list;
>  	const struct dw_pcie_ep_ops *ops;
>  	phys_addr_t		phys_base;
>  	size_t			addr_size;
> @@ -244,8 +252,6 @@ struct dw_pcie_ep {
>  	u32			num_ob_windows;
>  	void __iomem		*msi_mem;
>  	phys_addr_t		msi_mem_phys;
> -	u8			msi_cap;	/* MSI capability offset */
> -	u8			msix_cap;	/* MSI-X capability offset */
>  };
>  
>  struct dw_pcie_ops {
> @@ -437,6 +443,8 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
>  int dw_pcie_ep_raise_msix_irq_doorbell(struct dw_pcie_ep *ep, u8 func_no,
>  				       u16 interrupt_num);
>  void dw_pcie_ep_reset_bar(struct dw_pcie *pci, enum pci_barno bar);
> +struct dw_pcie_ep_func *
> +dw_pcie_ep_get_func_from_ep(struct dw_pcie_ep *ep, u8 func_no);
>  #else
>  static inline void dw_pcie_ep_linkup(struct dw_pcie_ep *ep)
>  {
> @@ -478,5 +486,11 @@ static inline int dw_pcie_ep_raise_msix_irq_doorbell(struct dw_pcie_ep *ep,
>  static inline void dw_pcie_ep_reset_bar(struct dw_pcie *pci, enum pci_barno bar)
>  {
>  }
> +
> +static inline struct dw_pcie_ep_func *
> +dw_pcie_ep_get_func_from_ep(struct dw_pcie_ep *ep, u8 func_no)
> +{
> +	return NULL;
> +}
>  #endif
>  #endif /* _PCIE_DESIGNWARE_H */
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
