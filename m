Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E71111FD379
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 19:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhuSnLbzYkRokWG1AJF7+l+9+X+B/nPk373+tJ5tXyE=; b=Wq66WIxIVSd4wU
	i+oNwOzAQqZpwDbf1vIdWWP2pm0oMEIgXJDWY/NtVlsT5z/yQ3pcQo3XBFRZG82TwQIR18JsaXmmi
	ldVK7VfNBNU4zSDKK0BvHi8W5IaKYjpCTIk6oUxiKHz1PgA96NAYnTJ9Qwt2JXki6FI0nDB771jmi
	reCxI4UrbuT1EjPzwyRHD4K2PXAuksLqd9ubX5I0x6Z4Yx7jw195TcKSK4bQfUjX5R52W+5QapkFx
	3yxtHwCIns2+Xl0aaPSwsiCRNE7t3/ksfxi/dXRxE/rHqeKlbWm7eNk+BbCoy6+pL5jPcp2XkYF0X
	OXy/zLqQ+xAgjRIc1ugA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbra-0007X1-VA; Wed, 17 Jun 2020 17:28:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbrQ-0007WD-6i
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 17:28:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id y20so2888088wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 10:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CZymfCvTZe2unxui/On+2nz51hFSacskdir9aJUt334=;
 b=LXB6zjEpECVPFq3pzrvE6u45GCA8crHlrWBnYhY+wOze5PIOETecFxeVdAg/Lo9Igt
 Cf+UfzAtGN0nmdN4LS49chP94ri8xnYFHFTjPXjSwDcikYB3ZmnxEUezY1w+FXB5wCNb
 gKNsOBAaNxOOrWmYq2PBiM+EJh9G7xayZNPPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CZymfCvTZe2unxui/On+2nz51hFSacskdir9aJUt334=;
 b=V0B8ji0jdytMewNvjLkrFV1qCSXAo8xWqL8aqouCvJymLRjWz6QGa6isIxBiujL1SR
 04VLFoHhCC1mUiQ7OiZs6Du+MbeKErfJZvIka4WBIJ8AA288BnDYYbC1WlUKzBocHH1U
 CLpyr9I24d+jZpX733YcXmzMbr26SIwX1pSzFQmowuBZybU3Q0L2XWwQiev4n1NFjAx1
 Bgw32laKx8ZkeF94oItlvhcD4P5xDuW6NdN1AwC4IZCCrlhaA1dbGOws2xUS+BlcYWVj
 6UYEQ4Vxx7FzkVaFSTJEW1bmNYNSaJDatxZEwiKlsx5qXRTlldpew8V7JgyqUrCUBcT5
 hasA==
X-Gm-Message-State: AOAM533qJB0wLiNuH6MCyFPPaeOcnLYXy+6RGGIqbzY2N+kGMCu1O9S2
 Z+aLZME5pGFspJe7ZGq+mlZVDB2MUWddOOVSJKOjfg==
X-Google-Smtp-Source: ABdhPJyI1oGlLhAEtWSCa4AUdXeJmUELYyv/wpCZoDYmqZQ1gL4ZlEwwKnYlPNTrZJ27JEJnJJge9+4OAB7OJK2n1oE=
X-Received: by 2002:a05:600c:2042:: with SMTP id
 p2mr10027851wmg.85.1592414906580; 
 Wed, 17 Jun 2020 10:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200616205533.3513-10-james.quinlan@broadcom.com>
 <20200616220533.GA1984551@bjorn-Precision-5520>
In-Reply-To: <20200616220533.GA1984551@bjorn-Precision-5520>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 17 Jun 2020 13:28:12 -0400
Message-ID: <CA+-6iNx1j5uK=nL-H32qthxEwZe+KOxtqCG4TPJxD+WdzMQFrA@mail.gmail.com>
Subject: Re: [PATCH v5 09/12] PCI: brcmstb: Set internal memory viewport sizes
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_102828_255142_36AA48BF 
X-CRM114-Status: GOOD (  28.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Bjorn,

On Tue, Jun 16, 2020 at 6:05 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Tue, Jun 16, 2020 at 04:55:16PM -0400, Jim Quinlan wrote:
> > BrcmSTB PCIe controllers are intimately connected to the memory
> > controller(s) on the SOC.  There is a "viewport" for each memory controller
> > that allows inbound accesses to CPU memory.  Each viewport's size must be
> > set to a power of two, and that size must be equal to or larger than the
> > amount of memory each controller supports.
>
> This describes some requirements, but doesn't actually say what this
> patch *does*.
>
> I *think* it reads the viewport sizes from the "brcm,scb-sizes" DT
> property instead of computing something from "dma-ranges".  Looks like
> it also adds support for SCB1 and SCB2.
>
> Those seem interesting, but don't really come through in the subject
> or even the commit log.
>
> If I understand correctly, this is all for DMA ("inbound accesses to
> CPU memory").  I think it would be worth mentioning "DMA", since
> that's the common term for this.


I have changed the commit message to the text below.  Please let me
know if it requires more work
Thanks, Jim

PCI: brcmstb: Set internal memory DMA viewport sizes

BrcmSTB PCIe controllers are intimately connected to the memory
controller(s) on the SOC.  There is a "viewport" for each memory controller
that allows inbound DMA acceses to CPU memory.  Each viewport's size must
be set to a power of two, and that size must be equal to or larger than the
amount of memory each controller supports.  Unfortunately the viewport
sizes cannot be ascertained from the "dma-ranges" property so they have
their own property, "brcm,scb-sizes".

There may be one to three memory controllers; they are indicated by the
term SCBi.  Each controller has a base region and an optional extension
region.  In physical memory, the base and extension regions are not
adjacent, but in PCIe-space they are.  Further, the 1-3 viewports are also
adjacent in PCIe-space.

The SCB settings work in conjunction with the "dma-ranges' offsets to
enable non-identity mappings between system memory and PCIe space.


>
>
> > Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> > Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> > ---
> >  drivers/pci/controller/pcie-brcmstb.c | 68 ++++++++++++++++++++-------
> >  1 file changed, 50 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> > index 9189406fd35c..39f77709c6a2 100644
> > --- a/drivers/pci/controller/pcie-brcmstb.c
> > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > @@ -57,6 +57,8 @@
> >  #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK     0x300000
> >  #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128              0x0
> >  #define  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK          0xf8000000
> > +#define  PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK          0x07c00000
> > +#define  PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK          0x0000001f
> >
> >  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO             0x400c
> >  #define PCIE_MEM_WIN0_LO(win)        \
> > @@ -154,6 +156,7 @@
> >  #define SSC_STATUS_OFFSET            0x1
> >  #define SSC_STATUS_SSC_MASK          0x400
> >  #define SSC_STATUS_PLL_LOCK_MASK     0x800
> > +#define PCIE_BRCM_MAX_MEMC           3
> >
> >  #define IDX_ADDR(pcie)                       (pcie->reg_offsets[EXT_CFG_INDEX])
> >  #define DATA_ADDR(pcie)                      (pcie->reg_offsets[EXT_CFG_DATA])
> > @@ -260,6 +263,8 @@ struct brcm_pcie {
> >       const int               *reg_field_info;
> >       enum pcie_type          type;
> >       struct reset_control    *rescal;
> > +     int                     num_memc;
> > +     u64                     memc_size[PCIE_BRCM_MAX_MEMC];
> >  };
> >
> >  /*
> > @@ -715,22 +720,44 @@ static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
> >                                                       u64 *rc_bar2_offset)
> >  {
> >       struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
> > -     struct device *dev = pcie->dev;
> >       struct resource_entry *entry;
> > +     struct device *dev = pcie->dev;
> > +     u64 lowest_pcie_addr = ~(u64)0;
> > +     int ret, i = 0;
> > +     u64 size = 0;
> >
> > -     entry = resource_list_first_type(&bridge->dma_ranges, IORESOURCE_MEM);
> > -     if (!entry)
> > -             return -ENODEV;
> > +     resource_list_for_each_entry(entry, &bridge->dma_ranges) {
> > +             u64 pcie_beg = entry->res->start - entry->offset;
> >
> > +             size += entry->res->end - entry->res->start + 1;
> > +             if (pcie_beg < lowest_pcie_addr)
> > +                     lowest_pcie_addr = pcie_beg;
> > +     }
> >
> > -     /*
> > -      * The controller expects the inbound window offset to be calculated as
> > -      * the difference between PCIe's address space and CPU's. The offset
> > -      * provided by the firmware is calculated the opposite way, so we
> > -      * negate it.
> > -      */
> > -     *rc_bar2_offset = -entry->offset;
> > -     *rc_bar2_size = 1ULL << fls64(entry->res->end - entry->res->start);
> > +     if (lowest_pcie_addr == ~(u64)0) {
> > +             dev_err(dev, "DT node has no dma-ranges\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     ret = of_property_read_variable_u64_array(pcie->np, "brcm,scb-sizes", pcie->memc_size, 1,
> > +                                               PCIE_BRCM_MAX_MEMC);
> > +
> > +     if (ret <= 0) {
> > +             /* Make an educated guess */
> > +             pcie->num_memc = 1;
> > +             pcie->memc_size[0] = 1 << fls64(size - 1);
> > +     } else {
> > +             pcie->num_memc = ret;
> > +     }
> > +
> > +     /* Each memc is viewed through a "port" that is a power of 2 */
> > +     for (i = 0, size = 0; i < pcie->num_memc; i++)
> > +             size += pcie->memc_size[i];
> > +
> > +     /* System memory starts at this address in PCIe-space */
> > +     *rc_bar2_offset = lowest_pcie_addr;
> > +     /* The sum of all memc views must also be a power of 2 */
> > +     *rc_bar2_size = 1ULL << fls64(size - 1);
> >
> >       /*
> >        * We validate the inbound memory view even though we should trust
> > @@ -782,12 +809,11 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
> >       void __iomem *base = pcie->base;
> >       struct device *dev = pcie->dev;
> >       struct resource_entry *entry;
> > -     unsigned int scb_size_val;
> >       bool ssc_good = false;
> >       struct resource *res;
> >       int num_out_wins = 0;
> >       u16 nlw, cls, lnksta;
> > -     int i, ret;
> > +     int i, ret, memc;
> >       u32 tmp, aspm_support;
> >
> >       /* Reset the bridge */
> > @@ -824,11 +850,17 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
> >       writel(upper_32_bits(rc_bar2_offset),
> >              base + PCIE_MISC_RC_BAR2_CONFIG_HI);
> >
> > -     scb_size_val = rc_bar2_size ?
> > -                    ilog2(rc_bar2_size) - 15 : 0xf; /* 0xf is 1GB */
> >       tmp = readl(base + PCIE_MISC_MISC_CTRL);
> > -     u32p_replace_bits(&tmp, scb_size_val,
> > -                       PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK);
> > +     for (memc = 0; memc < pcie->num_memc; memc++) {
> > +             u32 scb_size_val = ilog2(pcie->memc_size[memc]) - 15;
> > +
> > +             if (memc == 0)
> > +                     u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK);
> > +             else if (memc == 1)
> > +                     u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK);
> > +             else if (memc == 2)
> > +                     u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK);
> > +     }
> >       writel(tmp, base + PCIE_MISC_MISC_CTRL);
> >
> >       /*
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
