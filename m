Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2A314739A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 23:10:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RfqEDorQQZiHIaf6SpEYpBAyHQSxHZIKMWhjxEVRg34=; b=lyItmSOIwWOZeM
	5/uaVbttdJIQz7gCwKtPSao+Rd1TK08SZkTrfqzGf8jC3fP6j5NnKjHBrTVJaS2H67KoCId31Ur1X
	s9gJBm26U+Q2n+v64pJwarIv1Q/h+JxLNg+XIepfnLIPXfoDYbvPlcnLWhQsLT+1VfM6iiR8wqgsu
	DjtrtZn5QaR5EaOhIbwTOxuIDVWYgJLviuHwniVhwYr9M01WcnHzK6Edkg5KKfHbrlXoRM8gE0Z3n
	nJoNKdgrj7omvxTmYZfzFTmsM5sPoZZSVP23Ytj58I8DI6hA6J/C93X7/5mCysACyHQSeY74HLbyt
	dCNF13AimtERLqfpc4sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iukgI-0003eE-Ms; Thu, 23 Jan 2020 22:10:30 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iukgA-0003df-9Z
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 22:10:24 +0000
Received: by mail-ot1-x341.google.com with SMTP id 66so4331737otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 14:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yDW4eNC3KeswQXJexI/cQft97nYabOSfO7WM788bKA8=;
 b=q7q8Q8LUbSkBX1SG1WGnzySEyKzVEXUDRXEx7uEifLNI6q79ck0A7a3LfrMaC7ihgv
 ktNcnDax1bUAiz3R6W64zjiP95N+ckzInJIx5kvcm6xswMljg4mCvBRnccNRFPdFixm+
 by8abOx/fhlUiuIbGv5jX/Z1oDVJDsBE7mJdOGCmqac1Z3ZaaGgBo8UsdHqQZ/5hKSA0
 qF1E1RlJDMpvYz7ngjPDQCaAGb3reZn8Z11sDofUo6j4WSnrg7UgjRsUA5eFODuWmJ7e
 7v+l8vmRGfabKaEc6xDzMBSFdl5oL1nX2lq2Vfm6gAdUHUqm6EQXOBbtIEKReE9CDHcq
 vkKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yDW4eNC3KeswQXJexI/cQft97nYabOSfO7WM788bKA8=;
 b=E19TrspGxtqRetHjb+Pqd1Tlv1rugKYs0WtFhZuhfZNpJ8v7afYc6L7ghCeSF2svbj
 9A+6FqjNSXyGmCLWJ1tt68Tcqg70wZtBOymez/51ECAIVoMENQc1mAI3Z8UtdpicNeNZ
 UfuM7AUh/nYpGMGV+sDx+nAxfUriF7DhTljT9BlSOWRX6tN8C92mgPEj6oOu5iEpiGDW
 K735KcpVxtdksja2o/HY7h4+TtdARazGrLNldXImmzUNq3l/4Xq33Fs8I34RmOiSdSnF
 e+V+DsXRQ/GFDnnIuDkVLQ3l3ID8dXw4O2kqf+0ggbyzUMF3ILShczeshRaAqaGTCnx6
 5rjw==
X-Gm-Message-State: APjAAAXHKAEjD2g4bpb+KnYI5QCPh8z6hH9qQTLr5EPdXTB4d570M29t
 8qPd8ZEB+9lbFBaqkaZLBlY2VD5wMDX3qmB6PM8=
X-Google-Smtp-Source: APXvYqxg42q49vwZ4t7IPhYmNvVO+1rqtdUl3/lztVPtz9PUfHBTIjFIruan+M0VjwZ6kFLGNuHl3VlQNofuPunXQdg=
X-Received: by 2002:a05:6830:1615:: with SMTP id
 g21mr438063otr.49.1579817420199; 
 Thu, 23 Jan 2020 14:10:20 -0800 (PST)
MIME-Version: 1.0
References: <20191211124608.887-1-kishon@ti.com>
 <20191211124608.887-5-kishon@ti.com>
In-Reply-To: <20191211124608.887-5-kishon@ti.com>
From: Ramon Fried <rfried.dev@gmail.com>
Date: Fri, 24 Jan 2020 00:10:09 +0200
Message-ID: <CAGi-RUJCkEuqukEawjh_TqmWTYeYP7Qimaz3OTgpWnTZr9bZPA@mail.gmail.com>
Subject: Re: [PATCH 4/4] PCI: cadence: Add MSI-X support to Endpoint driver
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_141022_362108_A3809671 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rfried.dev[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 2:47 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
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
> ---
>  .../pci/controller/cadence/pcie-cadence-ep.c  | 112 +++++++++++++++++-
>  drivers/pci/controller/cadence/pcie-cadence.h |  10 ++
>  2 files changed, 121 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> index 088394b6be04..c3081e8e52a4 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
> +++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> @@ -52,6 +52,7 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
>                                 struct pci_epf_bar *epf_bar)
>  {
>         struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
> +       struct cdns_pcie_epf *epf = &ep->epf[fn];
>         struct cdns_pcie *pcie = &ep->pcie;
>         dma_addr_t bar_phys = epf_bar->phys_addr;
>         enum pci_barno bar = epf_bar->barno;
> @@ -112,6 +113,8 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
>                 CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl));
>         cdns_pcie_writel(pcie, reg, cfg);
>
> +       epf->epf_bar[bar] = epf_bar;
> +
>         return 0;
>  }
>
> @@ -119,6 +122,7 @@ static void cdns_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
>                                    struct pci_epf_bar *epf_bar)
>  {
>         struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
> +       struct cdns_pcie_epf *epf = &ep->epf[fn];
>         struct cdns_pcie *pcie = &ep->pcie;
>         enum pci_barno bar = epf_bar->barno;
>         u32 reg, cfg, b, ctrl;
> @@ -140,6 +144,8 @@ static void cdns_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
>
>         cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar), 0);
>         cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar), 0);
> +
> +       epf->epf_bar[bar] = NULL;
>  }
>
>  static int cdns_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, phys_addr_t addr,
> @@ -225,6 +231,50 @@ static int cdns_pcie_ep_get_msi(struct pci_epc *epc, u8 fn)
>         return mme;
>  }
>
> +static int cdns_pcie_ep_get_msix(struct pci_epc *epc, u8 func_no)
> +{
> +       struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
> +       struct cdns_pcie *pcie = &ep->pcie;
> +       u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
> +       u32 val, reg;
> +
> +       reg = cap + PCI_MSIX_FLAGS;
> +       val = cdns_pcie_ep_fn_readw(pcie, func_no, reg);
> +       if (!(val & PCI_MSIX_FLAGS_ENABLE))
> +               return -EINVAL;
> +
> +       val &= PCI_MSIX_FLAGS_QSIZE;
> +
> +       return val;
> +}
> +
> +static int cdns_pcie_ep_set_msix(struct pci_epc *epc, u8 fn, u16 interrupts,
> +                                enum pci_barno bir, u32 offset)
> +{
> +       struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
> +       struct cdns_pcie *pcie = &ep->pcie;
> +       u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
> +       u32 val, reg;
> +
> +       reg = cap + PCI_MSIX_FLAGS;
> +       val = cdns_pcie_ep_fn_readw(pcie, fn, reg);
> +       val &= ~PCI_MSIX_FLAGS_QSIZE;
> +       val |= interrupts;
> +       cdns_pcie_ep_fn_writew(pcie, fn, reg, val);
> +
> +       /* Set MSIX BAR and offset */
> +       reg = cap + PCI_MSIX_TABLE;
> +       val = offset | bir;
> +       cdns_pcie_ep_fn_writel(pcie, fn, reg, val);
> +
> +       /* Set PBA BAR and offset.  BAR must match MSIX BAR */
> +       reg = cap + PCI_MSIX_PBA;
> +       val = (offset + (interrupts * PCI_MSIX_ENTRY_SIZE)) | bir;
> +       cdns_pcie_ep_fn_writel(pcie, fn, reg, val);
> +
> +       return 0;
> +}
> +
>  static void cdns_pcie_ep_assert_intx(struct cdns_pcie_ep *ep, u8 fn,
>                                      u8 intx, bool is_asserted)
>  {
> @@ -331,6 +381,56 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
>         return 0;
>  }
>
> +static int cdns_pcie_ep_send_msix_irq(struct cdns_pcie_ep *ep, u8 fn,
> +                                     u16 interrupt_num)
> +{
> +       u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
> +       u32 tbl_offset, msg_data, reg, vec_ctrl;
> +       struct cdns_pcie *pcie = &ep->pcie;
> +       struct pci_epf_msix_tbl *msix_tbl;
> +       struct pci_epf_bar *epf_bar;
> +       struct cdns_pcie_epf *epf;
> +       u64 pci_addr_mask = 0xff;
> +       u64 msg_addr;
> +       u16 flags;
> +       u8 bir;
> +
> +       /* Check whether the MSI-X feature has been enabled by the PCI host. */
> +       flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSIX_FLAGS);
> +       if (!(flags & PCI_MSIX_FLAGS_ENABLE))
> +               return -EINVAL;
> +
> +       reg = cap + PCI_MSIX_TABLE;
> +       tbl_offset = cdns_pcie_ep_fn_readl(pcie, fn, reg);
> +       bir = tbl_offset & PCI_MSIX_TABLE_BIR;
> +       tbl_offset &= PCI_MSIX_TABLE_OFFSET;
> +
> +       epf = &ep->epf[fn];
> +       epf_bar = epf->epf_bar[bir];
> +       msix_tbl = epf_bar->addr;
> +       msix_tbl = (struct pci_epf_msix_tbl *)((char *)msix_tbl + tbl_offset);
> +
> +       msg_addr = msix_tbl[(interrupt_num - 1)].msg_addr;
> +       msg_data = msix_tbl[(interrupt_num - 1)].msg_data;
> +       vec_ctrl = msix_tbl[(interrupt_num - 1)].vector_ctrl;
> +
> +       /* Set the outbound region if needed. */
> +       if (unlikely(ep->irq_pci_addr != (msg_addr & ~pci_addr_mask) ||
I'm not sure about this _unlikely_, because unlike MSI, msg_addr will
be different for every vector.
It's interesting if safe to assume that host will allocate all message
address in linear fashion,
in that case maybe it's wiser to map all the the area at once and just
offset into it.

Thanks,
Ramon.

> +                    ep->irq_pci_fn != fn)) {
> +               /* First region was reserved for IRQ writes. */
> +               cdns_pcie_set_outbound_region(pcie, fn, 0,
> +                                             false,
> +                                             ep->irq_phys_addr,
> +                                             msg_addr & ~pci_addr_mask,
> +                                             pci_addr_mask + 1);
> +               ep->irq_pci_addr = (msg_addr & ~pci_addr_mask);
> +               ep->irq_pci_fn = fn;
> +       }
> +       writel(msg_data, ep->irq_cpu_addr + (msg_addr & pci_addr_mask));
> +
> +       return 0;
> +}
> +
>  static int cdns_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
>                                   enum pci_epc_irq_type type,
>                                   u16 interrupt_num)
> @@ -344,6 +444,9 @@ static int cdns_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
>         case PCI_EPC_IRQ_MSI:
>                 return cdns_pcie_ep_send_msi_irq(ep, fn, interrupt_num);
>
> +       case PCI_EPC_IRQ_MSIX:
> +               return cdns_pcie_ep_send_msix_irq(ep, fn, interrupt_num);
> +
>         default:
>                 break;
>         }
> @@ -381,7 +484,7 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
>  static const struct pci_epc_features cdns_pcie_epc_features = {
>         .linkup_notifier = false,
>         .msi_capable = true,
> -       .msix_capable = false,
> +       .msix_capable = true,
>  };
>
>  static const struct pci_epc_features*
> @@ -398,6 +501,8 @@ static const struct pci_epc_ops cdns_pcie_epc_ops = {
>         .unmap_addr     = cdns_pcie_ep_unmap_addr,
>         .set_msi        = cdns_pcie_ep_set_msi,
>         .get_msi        = cdns_pcie_ep_get_msi,
> +       .set_msix       = cdns_pcie_ep_set_msix,
> +       .get_msix       = cdns_pcie_ep_get_msix,
>         .raise_irq      = cdns_pcie_ep_raise_irq,
>         .start          = cdns_pcie_ep_start,
>         .get_features   = cdns_pcie_ep_get_features,
> @@ -457,6 +562,11 @@ int cdns_pcie_ep_setup(struct cdns_pcie_ep *ep)
>         if (of_property_read_u8(np, "max-functions", &epc->max_functions) < 0)
>                 epc->max_functions = 1;
>
> +       ep->epf = devm_kcalloc(dev, epc->max_functions, sizeof(*ep->epf),
> +                              GFP_KERNEL);
> +       if (!ep->epf)
> +               return -ENOMEM;
> +
>         ret = pci_epc_mem_init(epc, pcie->mem_res->start,
>                                resource_size(pcie->mem_res));
>         if (ret < 0) {
> diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
> index ffa8b9f78ff8..207d6ba03f70 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence.h
> +++ b/drivers/pci/controller/cadence/pcie-cadence.h
> @@ -99,6 +99,7 @@
>  #define CDNS_PCIE_EP_FUNC_BASE(fn)     (((fn) << 12) & GENMASK(19, 12))
>
>  #define CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET       0x90
> +#define CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET      0xb0
>
>  /*
>   * Root Port Registers (PCI configuration space for the root port function)
> @@ -281,6 +282,14 @@ struct cdns_pcie_rc {
>         u16                     device_id;
>  };
>
> +/**
> + * struct cdns_pcie_epf - Structure to hold info about endpoint function
> + * @epf_bar: reference to the pci_epf_bar for the six Base Address Registers
> + */
> +struct cdns_pcie_epf {
> +       struct pci_epf_bar *epf_bar[PCI_STD_NUM_BARS];
> +};
> +
>  /**
>   * struct cdns_pcie_ep - private data for this PCIe endpoint controller driver
>   * @pcie: Cadence PCIe controller
> @@ -308,6 +317,7 @@ struct cdns_pcie_ep {
>         u64                     irq_pci_addr;
>         u8                      irq_pci_fn;
>         u8                      irq_pending;
> +       struct cdns_pcie_epf    *epf;
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
