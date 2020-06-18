Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DE21FF5E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:56:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bByb5Iiy+ugJTVkufcj0XiiAHuUfVMO2+VkNbaqEXR8=; b=mOhIa87TNvxHSc
	AYugEx3a84edZojwUrlvZ+r4qRQNgPzwfo7MgCmsO8ttMk/kIzBHMQPfAPys5xtAulDRa0pI6es1b
	1jZH292Aa1vu05TCMmjC/2md2H9b0YA3kxVNg9JTyIqEGSGT0uj8dvBTrRBj7KgaPC12gwhyXsm9r
	lMaUmalFvwdbbevTkieEBgvjV+OuatGVH4AKOF1DESWvCGgp7YBIMELHyzZ78pJD+a4czZuRdqYRg
	esBGNfSFwWCCdpYrWdkuPSzwzzSyQ/Ik3Qmc584gGUkQ5NGVKsYw/S8gd0nyUAZ3On+9Vp9eTV1Kv
	hkCoNVyjIquUX7P++LZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvyA-0007hk-4x; Thu, 18 Jun 2020 14:56:46 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvxf-0007V9-Te
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:56:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id r15so5980199wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 07:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q1v0OvOODHQ+2W+58e7DqLNr+6iUJJHBSQQjSVo2uXo=;
 b=UM+nWdkHnArIc6lJlNvDS5x+8YXx97ONil9wpZJp9ce+4/+hB4XJCNI9ONx1LWAOrX
 yS/CUtrxlUAWO6XqYoBly+Ask4lOzCn8YuSSj5BcSfbJxdVQwa8pY4ECdrI9kQjLAhfR
 Uh4feNgT3gHzhmMsHFAUYUXLR+ELaurqthoHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q1v0OvOODHQ+2W+58e7DqLNr+6iUJJHBSQQjSVo2uXo=;
 b=IsxMOZTENtAcx3RVgBnildxKwixel4C2Bn+9fd1C8S5K9GzALrdsWe1ODODVuCxInI
 FBCnSBb5OiXN8opwt2saqzoA120jJTmsMZtyCk8qhDqosL1iXK+aXNfPhKC6sGD2pSz6
 6glhrCa8vxmwxn69eISgp3udUStBiWkQR3eBQ6IkoO/L3Bswgv1pOVkvPO7JKvzlt2J/
 +QlTkWHPVZ1lbvvnLLDEkbFi5l54ex7OsVAgLRL/JlQybvbQPROVmydkEFKsNyy5C8pv
 r8z9uVoojlIpEElzc+HNi1rl0qFCxs5iv2sBuDguabm0JNAGfdorsHmiHtCDiBH48JnF
 ji2g==
X-Gm-Message-State: AOAM532cIpVqOtB/uRbBAVBgFI1QCxGGciRPrcniEQm/BOGlb+gUDPu2
 w3CcQvv/RHTfZXt+4l4R9REUTyPTkYv7nNl4fL4R3A==
X-Google-Smtp-Source: ABdhPJwvMbOBw0R5nOdgnx62TZWyCWkDfw04zJGuKBWqcXtj6cnHCy/2DcwyK26XaJy7VRdLQDpRqw2fU86r/62ORBI=
X-Received: by 2002:a05:600c:2042:: with SMTP id
 p2mr4590313wmg.85.1592492172888; 
 Thu, 18 Jun 2020 07:56:12 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-6iNx1j5uK=nL-H32qthxEwZe+KOxtqCG4TPJxD+WdzMQFrA@mail.gmail.com>
 <20200618030141.GA2041805@bjorn-Precision-5520>
In-Reply-To: <20200618030141.GA2041805@bjorn-Precision-5520>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 18 Jun 2020 10:56:00 -0400
Message-ID: <CA+-6iNx6cSfQq9HKiAXEjFj3NcSkti9Us+ZfdJXPuObonLvZgw@mail.gmail.com>
Subject: Re: [PATCH v5 09/12] PCI: brcmstb: Set internal memory viewport sizes
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_075616_061030_ED42C36D 
X-CRM114-Status: GOOD (  48.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Jun 17, 2020 at 11:01 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Jun 17, 2020 at 01:28:12PM -0400, Jim Quinlan wrote:
> > Hello Bjorn,
> >
> > On Tue, Jun 16, 2020 at 6:05 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > >
> > > On Tue, Jun 16, 2020 at 04:55:16PM -0400, Jim Quinlan wrote:
> > > > BrcmSTB PCIe controllers are intimately connected to the memory
> > > > controller(s) on the SOC.  There is a "viewport" for each memory controller
> > > > that allows inbound accesses to CPU memory.  Each viewport's size must be
> > > > set to a power of two, and that size must be equal to or larger than the
> > > > amount of memory each controller supports.
> > >
> > > This describes some requirements, but doesn't actually say what this
> > > patch *does*.
> > >
> > > I *think* it reads the viewport sizes from the "brcm,scb-sizes" DT
> > > property instead of computing something from "dma-ranges".  Looks like
> > > it also adds support for SCB1 and SCB2.
> > >
> > > Those seem interesting, but don't really come through in the subject
> > > or even the commit log.
> > >
> > > If I understand correctly, this is all for DMA ("inbound accesses to
> > > CPU memory").  I think it would be worth mentioning "DMA", since
> > > that's the common term for this.
> >
> >
> > I have changed the commit message to the text below.  Please let me
> > know if it requires more work
> > Thanks, Jim
> >
> > PCI: brcmstb: Set internal memory DMA viewport sizes
>
> Did you not set the viewport sizes before?
Only for SCB0, and that was set from the size of the first and only
dma-range region.  This was enough for the Raspberry Pi to work but it
cannot handle BrcmSTB SOCs requiring more than one dma-range region.

>
> > BrcmSTB PCIe controllers are intimately connected to the memory
> > controller(s) on the SOC.  There is a "viewport" for each memory controller
> > that allows inbound DMA acceses to CPU memory.  Each viewport's size must
> > be set to a power of two, and that size must be equal to or larger than the
> > amount of memory each controller supports.  Unfortunately the viewport
> > sizes cannot be ascertained from the "dma-ranges" property so they have
> > their own property, "brcm,scb-sizes".
>
> s/inbound DMA acceses to CPU memory/DMA/
>
> "Accesses" is redundant since the "A" in "DMA" stands for "access".
> I'm not sure "inbound" adds anything and might confuse since DMA may
> be either a read or write of CPU memory.
>
> I assume *all* drivers need to know the address and size of regions in
> "dma-ranges".  Is there something special about this device that means
> it needs something different?
All previous Linux devices required at most one dma-range (to be
precise, there could be multiple dma-ranges but they had to have the
same offset).  This device may have up to six dma-ranges, most of them
having unique offsets.  This is explained in a reference given in my
cover letter under v1:
https://lore.kernel.org/linux-arm-kernel/1516058925-46522-5-git-send-email-jim2101024@gmail.com/

>
> I guess it's the base/extension split?  That couldn't be described as
> two separate DMA ranges?
Using just dma-ranges one cannot tell  the difference between

dma-range[0] -- from memc0 base, 2GB
dma-range[1] -- from memc0 extension, 1GB
/* Action:  SCB0 is set to 4GB */

and

dma-range[0] -- from memc0 base 2GB
dma-range[1] -- from memc1 base 1GB
/* Action: SCB0 is set to 2GB, SCB1 is set to 1GB */

>
> Could/should the new property have a name somehow related to
> "dma-ranges"?
Even though they are related, I can't think of a different name which
would be helpful.  The property name "brcm,scb-sizes" describes
exactly what it is.  The mapping that is necessary for BrcmSTB PCIe
drivers  is best described by a picture and I  don't think a better
name is going to help anyone figure out its necessity.  I will greatly
enhance my commit message for this patch to describe the details you
have asked about.

>
> Should "dma-ranges" be documented in
> Documentation/devicetree/bindings/pci/pci.txt instead of the
> individual device bindings?
That file references
http://www.devicetree.org/open-firmware/bindings/pci/pci2_1.pdf, which
defines "ranges".  So the "dma-ranges" should be described in the PDF
file but is not.

 "dma-ranges" is certainly defined and enforced in the PCI YAML
description (aren't we moving towards YAML anyway?).

>
> > There may be one to three memory controllers; they are indicated by the
> > term SCBi.  Each controller has a base region and an optional extension
> > region.  In physical memory, the base and extension regions are not
> > adjacent, but in PCIe-space they are.  Further, the 1-3 viewports are also
> > adjacent in PCIe-space.
> >
> > The SCB settings work in conjunction with the "dma-ranges' offsets to
> > enable non-identity mappings between system memory and PCIe space.
>
> s/ranges'/ranges"/ (mismatched quotes)
>
> This describes the hardware, but still doesn't actually say what this
> patch *does*.
>
> If I'm a user, why do I want this patch?  Does it fix something that
> didn't work before?  Does it increase the amount of DMA-able memory?
BrcmSTB SOCs, with  the exception of the simple memory configuration
of the Raspberry Pi, will not work without this patch.  The RPI sets
the SCB0 size which is enough for it to function, but this patch is
needed for other Broadcom STB SOCs.

>
> What does this mean in terms of backwards compatibility with old DTs?
Should be backwards compatible -- there is only the RPI to worry about
and I hope at some point Nicolas can send a "Tested-by" to confirm.

> Does this work with old DTs that don't have "brcm,scb-sizes"?
It should work for RPI.

> Maybe
> this is all related to specific devices that weren't supported before,
> so there *are* no old DTs for them?
There is only the RPI DT and they do not use "brcm,scb-sizes"..  I've
been trying to upstream this driver for ~3 years and it always got
NACKed because of this DMA mapping issue.  Now that the OF system
parses the dma-ranges all the way up from an EP -- with possibly no DT
node -- up to the PCIe host controller, the solution in this patchset
might have a chance.

> I can't tell from the binding
> update or the patch that this is related to specific devices.
Fair enough, I will describe this in the next rev.

Thanks,
Jim Quinlan
Broadcom STB
>
> > > > Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> > > > Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> > > > ---
> > > >  drivers/pci/controller/pcie-brcmstb.c | 68 ++++++++++++++++++++-------
> > > >  1 file changed, 50 insertions(+), 18 deletions(-)
> > > >
> > > > diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> > > > index 9189406fd35c..39f77709c6a2 100644
> > > > --- a/drivers/pci/controller/pcie-brcmstb.c
> > > > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > > > @@ -57,6 +57,8 @@
> > > >  #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK     0x300000
> > > >  #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128              0x0
> > > >  #define  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK          0xf8000000
> > > > +#define  PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK          0x07c00000
> > > > +#define  PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK          0x0000001f
> > > >
> > > >  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO             0x400c
> > > >  #define PCIE_MEM_WIN0_LO(win)        \
> > > > @@ -154,6 +156,7 @@
> > > >  #define SSC_STATUS_OFFSET            0x1
> > > >  #define SSC_STATUS_SSC_MASK          0x400
> > > >  #define SSC_STATUS_PLL_LOCK_MASK     0x800
> > > > +#define PCIE_BRCM_MAX_MEMC           3
> > > >
> > > >  #define IDX_ADDR(pcie)                       (pcie->reg_offsets[EXT_CFG_INDEX])
> > > >  #define DATA_ADDR(pcie)                      (pcie->reg_offsets[EXT_CFG_DATA])
> > > > @@ -260,6 +263,8 @@ struct brcm_pcie {
> > > >       const int               *reg_field_info;
> > > >       enum pcie_type          type;
> > > >       struct reset_control    *rescal;
> > > > +     int                     num_memc;
> > > > +     u64                     memc_size[PCIE_BRCM_MAX_MEMC];
> > > >  };
> > > >
> > > >  /*
> > > > @@ -715,22 +720,44 @@ static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
> > > >                                                       u64 *rc_bar2_offset)
> > > >  {
> > > >       struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
> > > > -     struct device *dev = pcie->dev;
> > > >       struct resource_entry *entry;
> > > > +     struct device *dev = pcie->dev;
> > > > +     u64 lowest_pcie_addr = ~(u64)0;
> > > > +     int ret, i = 0;
> > > > +     u64 size = 0;
> > > >
> > > > -     entry = resource_list_first_type(&bridge->dma_ranges, IORESOURCE_MEM);
> > > > -     if (!entry)
> > > > -             return -ENODEV;
> > > > +     resource_list_for_each_entry(entry, &bridge->dma_ranges) {
> > > > +             u64 pcie_beg = entry->res->start - entry->offset;
> > > >
> > > > +             size += entry->res->end - entry->res->start + 1;
> > > > +             if (pcie_beg < lowest_pcie_addr)
> > > > +                     lowest_pcie_addr = pcie_beg;
> > > > +     }
> > > >
> > > > -     /*
> > > > -      * The controller expects the inbound window offset to be calculated as
> > > > -      * the difference between PCIe's address space and CPU's. The offset
> > > > -      * provided by the firmware is calculated the opposite way, so we
> > > > -      * negate it.
> > > > -      */
> > > > -     *rc_bar2_offset = -entry->offset;
> > > > -     *rc_bar2_size = 1ULL << fls64(entry->res->end - entry->res->start);
> > > > +     if (lowest_pcie_addr == ~(u64)0) {
> > > > +             dev_err(dev, "DT node has no dma-ranges\n");
> > > > +             return -EINVAL;
> > > > +     }
> > > > +
> > > > +     ret = of_property_read_variable_u64_array(pcie->np, "brcm,scb-sizes", pcie->memc_size, 1,
> > > > +                                               PCIE_BRCM_MAX_MEMC);
> > > > +
> > > > +     if (ret <= 0) {
> > > > +             /* Make an educated guess */
> > > > +             pcie->num_memc = 1;
> > > > +             pcie->memc_size[0] = 1 << fls64(size - 1);
> > > > +     } else {
> > > > +             pcie->num_memc = ret;
> > > > +     }
> > > > +
> > > > +     /* Each memc is viewed through a "port" that is a power of 2 */
> > > > +     for (i = 0, size = 0; i < pcie->num_memc; i++)
> > > > +             size += pcie->memc_size[i];
> > > > +
> > > > +     /* System memory starts at this address in PCIe-space */
> > > > +     *rc_bar2_offset = lowest_pcie_addr;
> > > > +     /* The sum of all memc views must also be a power of 2 */
> > > > +     *rc_bar2_size = 1ULL << fls64(size - 1);
> > > >
> > > >       /*
> > > >        * We validate the inbound memory view even though we should trust
> > > > @@ -782,12 +809,11 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
> > > >       void __iomem *base = pcie->base;
> > > >       struct device *dev = pcie->dev;
> > > >       struct resource_entry *entry;
> > > > -     unsigned int scb_size_val;
> > > >       bool ssc_good = false;
> > > >       struct resource *res;
> > > >       int num_out_wins = 0;
> > > >       u16 nlw, cls, lnksta;
> > > > -     int i, ret;
> > > > +     int i, ret, memc;
> > > >       u32 tmp, aspm_support;
> > > >
> > > >       /* Reset the bridge */
> > > > @@ -824,11 +850,17 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
> > > >       writel(upper_32_bits(rc_bar2_offset),
> > > >              base + PCIE_MISC_RC_BAR2_CONFIG_HI);
> > > >
> > > > -     scb_size_val = rc_bar2_size ?
> > > > -                    ilog2(rc_bar2_size) - 15 : 0xf; /* 0xf is 1GB */
> > > >       tmp = readl(base + PCIE_MISC_MISC_CTRL);
> > > > -     u32p_replace_bits(&tmp, scb_size_val,
> > > > -                       PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK);
> > > > +     for (memc = 0; memc < pcie->num_memc; memc++) {
> > > > +             u32 scb_size_val = ilog2(pcie->memc_size[memc]) - 15;
> > > > +
> > > > +             if (memc == 0)
> > > > +                     u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK);
> > > > +             else if (memc == 1)
> > > > +                     u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK);
> > > > +             else if (memc == 2)
> > > > +                     u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK);
> > > > +     }
> > > >       writel(tmp, base + PCIE_MISC_MISC_CTRL);
> > > >
> > > >       /*
> > > > --
> > > > 2.17.1
> > > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
