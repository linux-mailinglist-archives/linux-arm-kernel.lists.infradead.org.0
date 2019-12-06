Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89526114E4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 10:44:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8deDmiUl0sDCukCQdQ5jvlq9lQRgTNLJeET/m4RELUc=; b=kqSkPopVCYIBUY
	D+lENo39hd0Qa8k2uUCuduSV0E2JOkRucHntHmT8L4+ExEEQM4XquogJnN15OZIHNKnr4aSCTBsQB
	o6ck3jwdWOVVQXSb4sm1lgeXIvo9tPjbRdbzVCGV+XvEiJPnB+aUF7wp4uSwG2W3T0cJjyPOAkh8p
	/4sHWkJWemtfzr5YC8/lWCKiDhQ5/z7P9IV3IP/JlJhZQcnpwCrOY2mWCcm/9Sf3iIdbykvKaxSH1
	t7uWnQxQ9XEAK9NARr08JlmClOa5xHH5oxjDLw7KJfL6zjEF7ltD/mv1soKaus4x2GhwJ+j6FCA9b
	U8dp5Maxa1HG350G3k5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idAA8-0003Md-FO; Fri, 06 Dec 2019 09:44:36 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idA9y-0003Li-3C
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 09:44:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id p9so7125704wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 01:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tD5cN6JrZpuSFRCt7liglnMruHf8uGIUBSOId/ul41Y=;
 b=Oc8XoFX5YOak0ZJQTZ4mpoDZHSTysWBR5rH14aTYu31Ew4GiKUwD2MgJE6LyhjEhVL
 AAs41F2SglycrHK/NPesRG88wRsTopB5XI1ITwYJY9+PtSg8Ba3VnV5CsjloGCzSRN8P
 zt1GHgab+fdLiBLOr7CelRJypEMolmKwhMg/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tD5cN6JrZpuSFRCt7liglnMruHf8uGIUBSOId/ul41Y=;
 b=qvgBHmwNP2sPnyFJcyK7Kwv3V6KjMoDHiJS60GUYKSKM2t6lPXXlLFaXyBTd/53jg3
 tFJedo1UFXnQOl0HwWkPSEEkQ3jCdxEka9jdElgpEjlHM7KIInpnvxsP1bD5b4LIygFG
 z1y8H1Ir56x8dncFpV5EwKBZmnHJbUWWRfMoef+cVwuBev4jMEzGSocxlmWph1UfsxHo
 VgRq3qdfYxWNDbtYNuvACASA4QydumU+5ydTR7Zni/mnJ4OY0sHZ4VTI56+5dxnSw9VI
 jCfncNFNs/h0bBzKXl/kDDW/QLz0PiX61JTXpYIs9LmxtjHXACzwE9KMLTluCFNKkx1x
 x0nQ==
X-Gm-Message-State: APjAAAWXNa4w5IJm9UsXw6cJ+S38ZD+dryxFmAymI2B7bYUr2wC1e2F0
 4spg/euCh7vNv+bgwFV3QlvRXOhI1RuE5l/REQOaVA==
X-Google-Smtp-Source: APXvYqyqAr8t+VqBdWWoSFNj3FbSNTxUyRiKH8kmrnrqoFnvXce9BSxmOl9qwYeYzyc8yxiVo0+B6bl/R5EK0Ia5/1Q=
X-Received: by 2002:a1c:a141:: with SMTP id k62mr9029403wme.98.1575625463761; 
 Fri, 06 Dec 2019 01:44:23 -0800 (PST)
MIME-Version: 1.0
References: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
 <1575349026-8743-3-git-send-email-srinath.mannam@broadcom.com>
 <20191203155514.GE18399@e119886-lin.cambridge.arm.com>
In-Reply-To: <20191203155514.GE18399@e119886-lin.cambridge.arm.com>
From: Srinath Mannam <srinath.mannam@broadcom.com>
Date: Fri, 6 Dec 2019 15:14:11 +0530
Message-ID: <CABe79T6vAQdk1BQ=yGScJ3F5Xd8qFEbaCiTw29kFoyhrZDLZkQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] PCI: iproc: Add INTx support with better modeling
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_014426_142333_372D6AFE 
X-CRM114-Status: GOOD (  29.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ray Jui <rjui@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Ray Jui <ray.jui@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 9:25 PM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Tue, Dec 03, 2019 at 10:27:02AM +0530, Srinath Mannam wrote:
> > From: Ray Jui <ray.jui@broadcom.com>
> >
> > Add PCIe legacy interrupt INTx support to the iProc PCIe driver by
> > modeling it with its own IRQ domain. All 4 interrupts INTA, INTB, INTC,
> > INTD share the same interrupt line connected to the GIC in the system,
> > while the status of each INTx can be obtained through the INTX CSR
> > register
> >
> > Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> > Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> > ---
> >  drivers/pci/controller/pcie-iproc.c | 100 +++++++++++++++++++++++++++++++++++-
> >  drivers/pci/controller/pcie-iproc.h |   6 +++
> >  2 files changed, 104 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> > index 2d457bf..e90c22e 100644
> > --- a/drivers/pci/controller/pcie-iproc.c
> > +++ b/drivers/pci/controller/pcie-iproc.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/delay.h>
> >  #include <linux/interrupt.h>
> >  #include <linux/irqchip/arm-gic-v3.h>
> > +#include <linux/irqchip/chained_irq.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/of_address.h>
> >  #include <linux/of_pci.h>
> > @@ -270,6 +271,7 @@ enum iproc_pcie_reg {
> >
> >       /* enable INTx */
> >       IPROC_PCIE_INTX_EN,
> > +     IPROC_PCIE_INTX_CSR,
> >
> >       /* outbound address mapping */
> >       IPROC_PCIE_OARR0,
> > @@ -314,6 +316,7 @@ static const u16 iproc_pcie_reg_paxb_bcma[] = {
> >       [IPROC_PCIE_CFG_ADDR]           = 0x1f8,
> >       [IPROC_PCIE_CFG_DATA]           = 0x1fc,
> >       [IPROC_PCIE_INTX_EN]            = 0x330,
> > +     [IPROC_PCIE_INTX_CSR]           = 0x334,
> >       [IPROC_PCIE_LINK_STATUS]        = 0xf0c,
> >  };
> >
> > @@ -325,6 +328,7 @@ static const u16 iproc_pcie_reg_paxb[] = {
> >       [IPROC_PCIE_CFG_ADDR]           = 0x1f8,
> >       [IPROC_PCIE_CFG_DATA]           = 0x1fc,
> >       [IPROC_PCIE_INTX_EN]            = 0x330,
> > +     [IPROC_PCIE_INTX_CSR]           = 0x334,
> >       [IPROC_PCIE_OARR0]              = 0xd20,
> >       [IPROC_PCIE_OMAP0]              = 0xd40,
> >       [IPROC_PCIE_OARR1]              = 0xd28,
> > @@ -341,6 +345,7 @@ static const u16 iproc_pcie_reg_paxb_v2[] = {
> >       [IPROC_PCIE_CFG_ADDR]           = 0x1f8,
> >       [IPROC_PCIE_CFG_DATA]           = 0x1fc,
> >       [IPROC_PCIE_INTX_EN]            = 0x330,
> > +     [IPROC_PCIE_INTX_CSR]           = 0x334,
> >       [IPROC_PCIE_OARR0]              = 0xd20,
> >       [IPROC_PCIE_OMAP0]              = 0xd40,
> >       [IPROC_PCIE_OARR1]              = 0xd28,
> > @@ -846,9 +851,95 @@ static int iproc_pcie_check_link(struct iproc_pcie *pcie)
> >       return link_is_active ? 0 : -ENODEV;
> >  }
> >
> > -static void iproc_pcie_enable(struct iproc_pcie *pcie)
> > +static int iproc_pcie_intx_map(struct irq_domain *domain, unsigned int irq,
> > +                            irq_hw_number_t hwirq)
> >  {
> > +     irq_set_chip_and_handler(irq, &dummy_irq_chip, handle_simple_irq);
> > +     irq_set_chip_data(irq, domain->host_data);
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct irq_domain_ops intx_domain_ops = {
> > +     .map = iproc_pcie_intx_map,
> > +};
> > +
> > +static void iproc_pcie_isr(struct irq_desc *desc)
> > +{
> > +     struct irq_chip *chip = irq_desc_get_chip(desc);
> > +     struct iproc_pcie *pcie;
> > +     struct device *dev;
> > +     unsigned long status;
> > +     u32 bit, virq;
> > +
> > +     chained_irq_enter(chip, desc);
> > +     pcie = irq_desc_get_handler_data(desc);
> > +     dev = pcie->dev;
> > +
> > +     /* go through INTx A, B, C, D until all interrupts are handled */
> > +     do {
> > +             status = iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_CSR);
>
> By performing this read once and outside of the do/while loop you may improve
> performance. I wonder how probable it is to get another INTx whilst handling
> one?
>
>
> > +             for_each_set_bit(bit, &status, PCI_NUM_INTX) {
> > +                     virq = irq_find_mapping(pcie->irq_domain, bit);
> > +                     if (virq)
> > +                             generic_handle_irq(virq);
> > +                     else
> > +                             dev_err(dev, "unexpected INTx%u\n", bit);
> > +             }
> > +     } while ((status & SYS_RC_INTX_MASK) != 0);
> > +
> > +     chained_irq_exit(chip, desc);
> > +}
> > +
> > +static int iproc_pcie_intx_enable(struct iproc_pcie *pcie)
> > +{
> > +     struct device *dev = pcie->dev;
> > +     struct device_node *node;
> > +     int ret;
> > +
> >       iproc_pcie_write_reg(pcie, IPROC_PCIE_INTX_EN, SYS_RC_INTX_MASK);
> > +     /*
> > +      * BCMA devices do not map INTx the same way as platform devices. All
> > +      * BCMA needs is the above code to enable INTx
> > +      */
>
> NIT: Move this comment above the line of code?
I will change in the next patch set.
>
>
> > +
> > +     node = of_get_compatible_child(dev->of_node, "brcm,iproc-intc");
>
> As the interrupt controller is built into the PCI controller, what is the
> rationale for representing this as a separate device tree device?
In patchset v1, PCIe controller was taken as interrupt controller
which is not correct.
So that, separate DT node was taken, based on comments below link.
https://lore.kernel.org/linux-pci/CAL_Jsq+ac6dmHKS6m0h5N3bv=VseKVL8XLU5K7j1Rn=mgFNLsA@mail.gmail.com/
>
> Thanks,
>
> Andrew Murray
>
> > +     if (node)
> > +             pcie->irq = of_irq_get(node, 0);
> > +
> > +     if (!node || pcie->irq <= 0)
> > +             return 0;
> > +
> > +     /* set IRQ handler */
> > +     irq_set_chained_handler_and_data(pcie->irq, iproc_pcie_isr, pcie);
> > +
> > +     /* add IRQ domain for INTx */
> > +     pcie->irq_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
> > +                                              &intx_domain_ops, pcie);
> > +     if (!pcie->irq_domain) {
> > +             dev_err(dev, "failed to add INTx IRQ domain\n");
> > +             ret = -ENOMEM;
> > +             goto err_rm_handler_data;
> > +     }
> > +
> > +     return 0;
> > +
> > +err_rm_handler_data:
> > +     of_node_put(node);
> > +     irq_set_chained_handler_and_data(pcie->irq, NULL, NULL);
> > +
> > +     return ret;
> > +}
> > +
> > +static void iproc_pcie_intx_disable(struct iproc_pcie *pcie)
> > +{
> > +     iproc_pcie_write_reg(pcie, IPROC_PCIE_INTX_EN, 0x0);
> > +
> > +     if (pcie->irq <= 0)
> > +             return;
> > +
> > +     irq_domain_remove(pcie->irq_domain);
> > +     irq_set_chained_handler_and_data(pcie->irq, NULL, NULL);
> >  }
> >
> >  static inline bool iproc_pcie_ob_is_valid(struct iproc_pcie *pcie,
> > @@ -1537,7 +1628,11 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
> >               goto err_power_off_phy;
> >       }
> >
> > -     iproc_pcie_enable(pcie);
> > +     ret = iproc_pcie_intx_enable(pcie);
> > +     if (ret) {
> > +             dev_err(dev, "failed to enable INTx\n");
> > +             goto err_power_off_phy;
> > +     }
> >
> >       if (IS_ENABLED(CONFIG_PCI_MSI))
> >               if (iproc_pcie_msi_enable(pcie))
> > @@ -1582,6 +1677,7 @@ int iproc_pcie_remove(struct iproc_pcie *pcie)
> >       pci_remove_root_bus(pcie->root_bus);
> >
> >       iproc_pcie_msi_disable(pcie);
> > +     iproc_pcie_intx_disable(pcie);
> >
> >       phy_power_off(pcie->phy);
> >       phy_exit(pcie->phy);
> > diff --git a/drivers/pci/controller/pcie-iproc.h b/drivers/pci/controller/pcie-iproc.h
> > index 4f03ea5..103e568 100644
> > --- a/drivers/pci/controller/pcie-iproc.h
> > +++ b/drivers/pci/controller/pcie-iproc.h
> > @@ -74,6 +74,9 @@ struct iproc_msi;
> >   * @ib: inbound mapping related parameters
> >   * @ib_map: outbound mapping region related parameters
> >   *
> > + * @irq: interrupt line wired to the generic GIC for INTx
> > + * @irq_domain: IRQ domain for INTx
> > + *
> >   * @need_msi_steer: indicates additional configuration of the iProc PCIe
> >   * controller is required to steer MSI writes to external interrupt controller
> >   * @msi: MSI data
> > @@ -102,6 +105,9 @@ struct iproc_pcie {
> >       struct iproc_pcie_ib ib;
> >       const struct iproc_pcie_ib_map *ib_map;
> >
> > +     int irq;
> > +     struct irq_domain *irq_domain;
> > +
> >       bool need_msi_steer;
> >       struct iproc_msi *msi;
> >  };
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
