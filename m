Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798751BEDF3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 03:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4O1pd4ULjMknxHKEHnDTMlondnvvzM4LjbglqnAOxvw=; b=Hp3FQmWDLRr24z
	V/QRvoVS+EVCmek4c5xdlktAbSgLcNf5TIrACVr43wDHwjZDR8phdJq6RqUaP0FB8y5+LhwIz4GzT
	F8OsKfTWmaoRY6XdlW//Mk1EhYvus7qOSvl7AwEWhu6GsyTY/uVI1LvEGSiqIqFrCKKL9/seVCb11
	dN3PbV1tRkL3AhKPF7/kwwru1ro071q+Vker6sO0gzx2FWmI7ltdOVXcjv6GmiNjKERy+/7yYGUs8
	nyCe2fIV57unZzqWYte8rZLHUICGjoqUBDFYZxaLjto6xmXGu31nH3CoKr6IlfFFkGG/PliajGDMy
	rttyezts98llqgueAKUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTyQO-0008P7-Qg; Thu, 30 Apr 2020 01:55:40 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTyQD-0008N9-Uo
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 01:55:31 +0000
Received: by mail-oi1-f193.google.com with SMTP id 19so3806795oiy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 18:55:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sjnwmD6Er1w9UaLTPZBeX3w+beGqKx5FOHmNIW5JCNY=;
 b=OpwUojPS21gIBA/UD+IoggArepUTpAZa3XtETtnrsW64BxhUrHD944oP+nIvoInLfR
 QupU4fdnW806ROCYqG1tggFnQVolYGR2cuLD8JyzwjhgXU6vI4Fo3Cy9hjSuPMMiKs9Q
 rxd1Pi+HsrP/CELrNhdPFI0dJ/B4RDa2n2FzvSij74u0w4C8UdLGCwn9shCQUBjCR24G
 mS1QZwjgXHziYMcpjXeLST8TwKqr2052500oMba047FbpVvqKu3rLYlIcmNj3r/QbUOD
 1UZvuz/Vu0n/SVevAdgzAnRyBJ0mT3zFPhZcRKdM3VlvNWvxQXW1tk3vHU81l9NjUEVb
 V6bg==
X-Gm-Message-State: AGi0PuYcb1QoTDD5q+1C+XlVhHRInX2gxwfaCExBLYIoYHv9CiTX3lC/
 tZsuolwt+CrlZllBJJCZCg==
X-Google-Smtp-Source: APiQypKune6N4cxhO+iZaBBsXc8dI1yHFvBx8IDIKY+EyHaf2T50X7SWzW8VtFrmc7KhisI1Hfifog==
X-Received: by 2002:aca:3ad7:: with SMTP id h206mr129871oia.169.1588211728100; 
 Wed, 29 Apr 2020 18:55:28 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k8sm983315oor.11.2020.04.29.18.55.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 18:55:27 -0700 (PDT)
Received: (nullmailer pid 21922 invoked by uid 1000);
 Thu, 30 Apr 2020 01:55:21 -0000
Date: Wed, 29 Apr 2020 20:55:21 -0500
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 09/14] PCI: cadence: Add MSI-X support to Endpoint
 driver
Message-ID: <20200430015521.GA6344@bogus>
References: <20200417125753.13021-1-kishon@ti.com>
 <20200417125753.13021-10-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417125753.13021-10-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_185529_994406_80CD1D21 
X-CRM114-Status: GOOD (  24.69  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 06:27:48PM +0530, Kishon Vijay Abraham I wrote:
> From: Alan Douglas <adouglas@cadence.com>
> 
> Implement ->set_msix() and ->get_msix() callback functions in order
> to configure MSIX capability in the PCIe endpoint controller.
> 
> Add cdns_pcie_ep_send_msix_irq() to send MSIX interrupts to Host.
> cdns_pcie_ep_send_msix_irq() gets the MSIX table address (virtual
> address) from "struct cdns_pcie_epf" that gets initialized in
> ->set_bar() call back function.
> 
> [kishon@ti.com: Re-implement MSIX support in accordance with the
>  re-designed core MSI-X interfaces]
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> Signed-off-by: Alan Douglas <adouglas@cadence.com>

Your Sob should be last.

> ---
>  .../pci/controller/cadence/pcie-cadence-ep.c  | 112 +++++++++++++++++-
>  drivers/pci/controller/cadence/pcie-cadence.h |  10 ++
>  2 files changed, 121 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> index 14021d760482..c43340ca0630 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
> +++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> @@ -51,6 +51,7 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
>  				struct pci_epf_bar *epf_bar)
>  {
>  	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
> +	struct cdns_pcie_epf *epf = &ep->epf[fn];
>  	struct cdns_pcie *pcie = &ep->pcie;
>  	dma_addr_t bar_phys = epf_bar->phys_addr;
>  	enum pci_barno bar = epf_bar->barno;
> @@ -111,6 +112,8 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
>  		CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl));
>  	cdns_pcie_writel(pcie, reg, cfg);
>  
> +	epf->epf_bar[bar] = epf_bar;
> +
>  	return 0;
>  }
>  
> @@ -118,6 +121,7 @@ static void cdns_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
>  				   struct pci_epf_bar *epf_bar)
>  {
>  	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
> +	struct cdns_pcie_epf *epf = &ep->epf[fn];
>  	struct cdns_pcie *pcie = &ep->pcie;
>  	enum pci_barno bar = epf_bar->barno;
>  	u32 reg, cfg, b, ctrl;
> @@ -139,6 +143,8 @@ static void cdns_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
>  
>  	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar), 0);
>  	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar), 0);
> +
> +	epf->epf_bar[bar] = NULL;
>  }
>  
>  static int cdns_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, phys_addr_t addr,
> @@ -224,6 +230,50 @@ static int cdns_pcie_ep_get_msi(struct pci_epc *epc, u8 fn)
>  	return mme;
>  }
>  
> +static int cdns_pcie_ep_get_msix(struct pci_epc *epc, u8 func_no)
> +{
> +	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
> +	struct cdns_pcie *pcie = &ep->pcie;
> +	u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
> +	u32 val, reg;
> +
> +	reg = cap + PCI_MSIX_FLAGS;
> +	val = cdns_pcie_ep_fn_readw(pcie, func_no, reg);
> +	if (!(val & PCI_MSIX_FLAGS_ENABLE))
> +		return -EINVAL;
> +
> +	val &= PCI_MSIX_FLAGS_QSIZE;
> +
> +	return val;
> +}
> +
> +static int cdns_pcie_ep_set_msix(struct pci_epc *epc, u8 fn, u16 interrupts,
> +				 enum pci_barno bir, u32 offset)
> +{
> +	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
> +	struct cdns_pcie *pcie = &ep->pcie;
> +	u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
> +	u32 val, reg;
> +
> +	reg = cap + PCI_MSIX_FLAGS;
> +	val = cdns_pcie_ep_fn_readw(pcie, fn, reg);
> +	val &= ~PCI_MSIX_FLAGS_QSIZE;
> +	val |= interrupts;
> +	cdns_pcie_ep_fn_writew(pcie, fn, reg, val);
> +
> +	/* Set MSIX BAR and offset */
> +	reg = cap + PCI_MSIX_TABLE;
> +	val = offset | bir;
> +	cdns_pcie_ep_fn_writel(pcie, fn, reg, val);
> +
> +	/* Set PBA BAR and offset.  BAR must match MSIX BAR */
> +	reg = cap + PCI_MSIX_PBA;
> +	val = (offset + (interrupts * PCI_MSIX_ENTRY_SIZE)) | bir;
> +	cdns_pcie_ep_fn_writel(pcie, fn, reg, val);
> +
> +	return 0;
> +}
> +
>  static void cdns_pcie_ep_assert_intx(struct cdns_pcie_ep *ep, u8 fn,
>  				     u8 intx, bool is_asserted)
>  {
> @@ -330,6 +380,56 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
>  	return 0;
>  }
>  
> +static int cdns_pcie_ep_send_msix_irq(struct cdns_pcie_ep *ep, u8 fn,
> +				      u16 interrupt_num)
> +{
> +	u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
> +	u32 tbl_offset, msg_data, reg, vec_ctrl;
> +	struct cdns_pcie *pcie = &ep->pcie;
> +	struct pci_epf_msix_tbl *msix_tbl;
> +	struct pci_epf_bar *epf_bar;
> +	struct cdns_pcie_epf *epf;
> +	u64 pci_addr_mask = 0xff;
> +	u64 msg_addr;
> +	u16 flags;
> +	u8 bir;
> +
> +	/* Check whether the MSI-X feature has been enabled by the PCI host. */
> +	flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSIX_FLAGS);
> +	if (!(flags & PCI_MSIX_FLAGS_ENABLE))
> +		return -EINVAL;
> +
> +	reg = cap + PCI_MSIX_TABLE;
> +	tbl_offset = cdns_pcie_ep_fn_readl(pcie, fn, reg);
> +	bir = tbl_offset & PCI_MSIX_TABLE_BIR;
> +	tbl_offset &= PCI_MSIX_TABLE_OFFSET;
> +
> +	epf = &ep->epf[fn];
> +	epf_bar = epf->epf_bar[bir];
> +	msix_tbl = epf_bar->addr;
> +	msix_tbl = (struct pci_epf_msix_tbl *)((char *)msix_tbl + tbl_offset);
> +
> +	msg_addr = msix_tbl[(interrupt_num - 1)].msg_addr;
> +	msg_data = msix_tbl[(interrupt_num - 1)].msg_data;
> +	vec_ctrl = msix_tbl[(interrupt_num - 1)].vector_ctrl;
> +
> +	/* Set the outbound region if needed. */
> +	if (ep->irq_pci_addr != (msg_addr & ~pci_addr_mask) ||
> +	    ep->irq_pci_fn != fn) {
> +		/* First region was reserved for IRQ writes. */
> +		cdns_pcie_set_outbound_region(pcie, fn, 0,
> +					      false,
> +					      ep->irq_phys_addr,
> +					      msg_addr & ~pci_addr_mask,
> +					      pci_addr_mask + 1);
> +		ep->irq_pci_addr = (msg_addr & ~pci_addr_mask);
> +		ep->irq_pci_fn = fn;
> +	}
> +	writel(msg_data, ep->irq_cpu_addr + (msg_addr & pci_addr_mask));
> +
> +	return 0;
> +}
> +
>  static int cdns_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
>  				  enum pci_epc_irq_type type,
>  				  u16 interrupt_num)
> @@ -343,6 +443,9 @@ static int cdns_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
>  	case PCI_EPC_IRQ_MSI:
>  		return cdns_pcie_ep_send_msi_irq(ep, fn, interrupt_num);
>  
> +	case PCI_EPC_IRQ_MSIX:
> +		return cdns_pcie_ep_send_msix_irq(ep, fn, interrupt_num);
> +
>  	default:
>  		break;
>  	}
> @@ -380,7 +483,7 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
>  static const struct pci_epc_features cdns_pcie_epc_features = {
>  	.linkup_notifier = false,
>  	.msi_capable = true,
> -	.msix_capable = false,
> +	.msix_capable = true,
>  };
>  
>  static const struct pci_epc_features*
> @@ -397,6 +500,8 @@ static const struct pci_epc_ops cdns_pcie_epc_ops = {
>  	.unmap_addr	= cdns_pcie_ep_unmap_addr,
>  	.set_msi	= cdns_pcie_ep_set_msi,
>  	.get_msi	= cdns_pcie_ep_get_msi,
> +	.set_msix	= cdns_pcie_ep_set_msix,
> +	.get_msix	= cdns_pcie_ep_get_msix,
>  	.raise_irq	= cdns_pcie_ep_raise_irq,
>  	.start		= cdns_pcie_ep_start,
>  	.get_features	= cdns_pcie_ep_get_features,
> @@ -455,6 +560,11 @@ int cdns_pcie_ep_setup(struct cdns_pcie_ep *ep)
>  	if (of_property_read_u8(np, "max-functions", &epc->max_functions) < 0)
>  		epc->max_functions = 1;
>  
> +	ep->epf = devm_kcalloc(dev, epc->max_functions, sizeof(*ep->epf),
> +			       GFP_KERNEL);
> +	if (!ep->epf)
> +		return -ENOMEM;
> +
>  	ret = pci_epc_mem_init(epc, pcie->mem_res->start,
>  			       resource_size(pcie->mem_res));
>  	if (ret < 0) {
> diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
> index 16a6b0ee547c..ea850290a602 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence.h
> +++ b/drivers/pci/controller/cadence/pcie-cadence.h
> @@ -99,6 +99,7 @@
>  #define CDNS_PCIE_EP_FUNC_BASE(fn)	(((fn) << 12) & GENMASK(19, 12))
>  
>  #define CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET	0x90
> +#define CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET	0xb0
>  
>  /*
>   * Root Port Registers (PCI configuration space for the root port function)
> @@ -280,6 +281,14 @@ struct cdns_pcie_rc {
>  	u32			device_id;
>  };
>  
> +/**
> + * struct cdns_pcie_epf - Structure to hold info about endpoint function
> + * @epf_bar: reference to the pci_epf_bar for the six Base Address Registers
> + */
> +struct cdns_pcie_epf {
> +	struct pci_epf_bar *epf_bar[PCI_STD_NUM_BARS];
> +};
> +
>  /**
>   * struct cdns_pcie_ep - private data for this PCIe endpoint controller driver
>   * @pcie: Cadence PCIe controller
> @@ -307,6 +316,7 @@ struct cdns_pcie_ep {
>  	u64			irq_pci_addr;
>  	u8			irq_pci_fn;
>  	u8			irq_pending;
> +	struct cdns_pcie_epf	*epf;
>  };
>  
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
