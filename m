Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BABB118F17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 18:34:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VqsiYM5rqDXbIcwXa0jP0gvfhbzwIttRUGFPN3pOzU=; b=q0NYivn45mYtnP
	qbYQEF1BhKMD88o4/fPHCFz3xelzOFnmgYLjG5uOAiaCttXHyZAu1fun1/VD4mG0ceSF0BrP46j2d
	jFVGMCBvhSfdMDy6sMxB2vE3XNYA1NEqvf6jLtp+hje8xldluyAxrGlMFjfuX/lQgLHFAtGm6gZ3+
	+cUZlGjxO4wrsgcp6urBoSeKVwyenQbPDkaOUGFg5hynhVcL5ELsVaC2FLAbZHcouCf+FbNcsx06g
	1PEeL/iihr9WfpfS0mNf109ORZZvDOtyBb2XnuG+EFeKCpdZXK7v4YNUesBEfh+71TlUlivDLHY3T
	SEJfEuEYwCe8nsuIVQEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iejOh-00013X-Nb; Tue, 10 Dec 2019 17:34:07 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejOQ-0000wc-JY; Tue, 10 Dec 2019 17:33:53 +0000
Received: by mail-qt1-x844.google.com with SMTP id i12so2344528qtp.6;
 Tue, 10 Dec 2019 09:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bynIErLNBlB92x5ntLmPPlvU7muN8l4GAC/bEBaefYo=;
 b=O9qgebLMf8mkxzuEi3jcRh8lUhC+or6jckvWtxxYK2f5ovrd3xuQ9vVwXezxLvwNH9
 RVBpaCKIOOxBsH+m1f1FuOMxyPUC7ZsaP71k9sU1iNxpB3IYwkoPuHGWv3XIbfAIxWTr
 PBlnI7vDMXZYgZ45x0SSjQmGzRx/7jMSy8MorehCjY7cPXAkqIlAhTnmD/Qm/pIOZtnr
 qS8OrFzUqTnkSbxW65sm4GLZTFosVbQe2VV0wR4gC3z/IFdcuWN3eDZdlk5wCUp9CmQs
 linjEtobGzCedSTTF9k9ZBkftyg09rJcN8NfwCBbFCIFIgWTqERmFLPGAw+mJXYKUJCf
 esSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bynIErLNBlB92x5ntLmPPlvU7muN8l4GAC/bEBaefYo=;
 b=RqbT0PNP5d41SPRKfEz8HSrrW/4zCVE03CtT6J8A5YJ6fvAdOiaB9AICjq0qf9FgkR
 XgC9jGVb9jdyLYUQ3VWWHc0rv/y/pMyK8ZSWUtaDaCsqG9/EO0ks6MaV4z1eltiXiif7
 uL8OpuNexh7Qy0/pw+Na6v0Fl/MbDNHJRBHWfzSpJvwW6jBYbICyzsI0nwev7eqDPmvp
 LRH9a9FYTOx6qhFIEYtHeqK0rVa2Zv2/wUo+jLW3pKjSjHY5O2VwRnNxBObrafavHoDv
 q7qfd6bACmBvioNgQtUdcbv+Idr08ba0BIgES69wo5Z/LI49dlq9CQ+j/ey//K78R0NG
 Gwcw==
X-Gm-Message-State: APjAAAWd4zyUDEx9IJU2QtR208W1/43LF14PHWIVuCbvg3S//ww+AGfl
 fM8cyJunJDSjQ1IlETPXXsXzniEQg/e4eoouwXk=
X-Google-Smtp-Source: APXvYqyvf2ncQmsBuOdQcfUdcDXLi4gyc8GHOcsttBii5RgFwT7Lu6CMRWNBWntvdYfl3VkyWSrtOunBnuovVP0XaKY=
X-Received: by 2002:aed:3fb7:: with SMTP id s52mr5722106qth.311.1575999227782; 
 Tue, 10 Dec 2019 09:33:47 -0800 (PST)
MIME-Version: 1.0
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-12-robh@kernel.org>
 <20191206153633.GA18142@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191206153633.GA18142@e121166-lin.cambridge.arm.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 10 Dec 2019 18:33:36 +0100
Message-ID: <CAFqH_53nX74vD6-T2ao0x540wq_NbN671H5i2fwbo6NaCgc4KQ@mail.gmail.com>
Subject: Re: [PATCH v3 11/25] PCI: rockchip: Drop storing driver private
 outbound resource data
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_093350_692483_E5CCA669 
X-CRM114-Status: GOOD (  24.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eballetbo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>,
 Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Simon Horman <horms@verge.net.au>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>, Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lorenzo,

Many thanks to look at this.

Missatge de Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> del dia dv.,
6 de des. 2019 a les 16:36:
>
> [+Eric]
>
> On Mon, Oct 28, 2019 at 11:32:42AM -0500, Rob Herring wrote:
> > The Rockchip host bridge driver doesn't need to store outboard resources
> > in its private struct as they are already stored in struct
> > pci_host_bridge.
> >
> > Cc: Shawn Lin <shawn.lin@rock-chips.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Andrew Murray <andrew.murray@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: Heiko Stuebner <heiko@sntech.de>
> > Cc: linux-rockchip@lists.infradead.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  drivers/pci/controller/pcie-rockchip-host.c | 54 +++++++++------------
> >  drivers/pci/controller/pcie-rockchip.h      |  5 --
> >  2 files changed, 23 insertions(+), 36 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> > index 8d2e6f2e141e..f375e55ea02e 100644
> > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > @@ -806,19 +806,28 @@ static int rockchip_pcie_prog_ib_atu(struct rockchip_pcie *rockchip,
> >  static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
> >  {
> >       struct device *dev = rockchip->dev;
> > +     struct pci_host_bridge *bridge = pci_host_bridge_from_priv(rockchip);
> > +     struct resource_entry *entry;
> > +     u64 pci_addr, size;
> >       int offset;
> >       int err;
> >       int reg_no;
> >
> >       rockchip_pcie_cfg_configuration_accesses(rockchip,
> >                                                AXI_WRAPPER_TYPE0_CFG);
> > +     entry = resource_list_first_type(&bridge->windows, IORESOURCE_MEM);
> > +     if (!entry)
> > +             return -ENODEV;
> > +
> > +     size = resource_size(entry->res);
> > +     pci_addr = entry->res->start - entry->offset;
> > +     rockchip->msg_bus_addr = pci_addr;
> >
> > -     for (reg_no = 0; reg_no < (rockchip->mem_size >> 20); reg_no++) {
> > +     for (reg_no = 0; reg_no < (size >> 20); reg_no++) {
> >               err = rockchip_pcie_prog_ob_atu(rockchip, reg_no + 1,
> >                                               AXI_WRAPPER_MEM_WRITE,
> >                                               20 - 1,
> > -                                             rockchip->mem_bus_addr +
> > -                                             (reg_no << 20),
> > +                                             pci_addr + (reg_no << 20),
> >                                               0);
> >               if (err) {
> >                       dev_err(dev, "program RC mem outbound ATU failed\n");
> > @@ -832,14 +841,20 @@ static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
> >               return err;
> >       }
> >
> > -     offset = rockchip->mem_size >> 20;
> > -     for (reg_no = 0; reg_no < (rockchip->io_size >> 20); reg_no++) {
> > +     entry = resource_list_first_type(&bridge->windows, IORESOURCE_IO);
> > +     if (!entry)
> > +             return -ENODEV;
> > +
> > +     size = resource_size(entry->res);
> > +     pci_addr = entry->res->start - entry->offset;
> > +
> > +     offset = size >> 20;
>
> Just trying to find what triggers:
>
> https://lore.kernel.org/linux-pci/CAFqH_52BiQJzNEzd_0pB3K+JmzVOVikYQo0xfiC0J-DwiXdtqw@mail.gmail.com/T/#u
>
> I think this offset calculation changed the behaviour:
>
> Before:
>
> > -     offset = rockchip->mem_size >> 20;
>
> Now:
>
> > +     offset = size >> 20;
>
> size must be the IORESOURCE_MEM resource size instead we are using the
> IORESOURCE_IO size so IIUC the ATU window setup may be compromised.
>

Are you suggesting that something like this [1] fixes the issue?

Indeed,I don't see the warning with this applied and wifi which is
connected via pcie is working. But I don't get why the offset should
be from the MEM resource instead of the IO resource.

[1] https://pastebin.com/FBj95gNR

Thanks,
 Enric

> Lorenzo
>
> > +     for (reg_no = 0; reg_no < (size >> 20); reg_no++) {
> >               err = rockchip_pcie_prog_ob_atu(rockchip,
> >                                               reg_no + 1 + offset,
> >                                               AXI_WRAPPER_IO_WRITE,
> >                                               20 - 1,
> > -                                             rockchip->io_bus_addr +
> > -                                             (reg_no << 20),
> > +                                             pci_addr + (reg_no << 20),
> >                                               0);
> >               if (err) {
> >                       dev_err(dev, "program RC io outbound ATU failed\n");
> > @@ -852,8 +867,7 @@ static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
> >                                 AXI_WRAPPER_NOR_MSG,
> >                                 20 - 1, 0, 0);
> >
> > -     rockchip->msg_bus_addr = rockchip->mem_bus_addr +
> > -                                     ((reg_no + offset) << 20);
> > +     rockchip->msg_bus_addr += ((reg_no + offset) << 20);
> >       return err;
> >  }
> >
> > @@ -951,7 +965,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> >       struct pci_bus *bus, *child;
> >       struct pci_host_bridge *bridge;
> >       struct resource *bus_res;
> > -     struct resource_entry *win;
> >       int err;
> >
> >       if (!dev->of_node)
> > @@ -997,27 +1010,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> >
> >       rockchip->root_bus_nr = bus_res->start;
> >
> > -     /* Get the I/O and memory ranges from DT */
> > -     resource_list_for_each_entry(win, &bridge->windows) {
> > -             switch (resource_type(win->res)) {
> > -             case IORESOURCE_IO:
> > -                     io = win->res;
> > -                     io->name = "I/O";
> > -                     rockchip->io_size = resource_size(io);
> > -                     rockchip->io_bus_addr = io->start - win->offset;
> > -                     rockchip->io = io;
> > -                     break;
> > -             case IORESOURCE_MEM:
> > -                     mem = win->res;
> > -                     mem->name = "MEM";
> > -                     rockchip->mem_size = resource_size(mem);
> > -                     rockchip->mem_bus_addr = mem->start - win->offset;
> > -                     break;
> > -             default:
> > -                     continue;
> > -             }
> > -     }
> > -
> >       err = rockchip_pcie_cfg_atu(rockchip);
> >       if (err)
> >               goto err_remove_irq_domain;
> > diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> > index 8e87a059ce73..bef42a803b56 100644
> > --- a/drivers/pci/controller/pcie-rockchip.h
> > +++ b/drivers/pci/controller/pcie-rockchip.h
> > @@ -304,13 +304,8 @@ struct rockchip_pcie {
> >       struct  irq_domain *irq_domain;
> >       int     offset;
> >       struct pci_bus *root_bus;
> > -     struct resource *io;
> > -     phys_addr_t io_bus_addr;
> > -     u32     io_size;
> >       void    __iomem *msg_region;
> > -     u32     mem_size;
> >       phys_addr_t msg_bus_addr;
> > -     phys_addr_t mem_bus_addr;
> >       bool is_rc;
> >       struct resource *mem_res;
> >  };
> > --
> > 2.20.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
