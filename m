Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9665D1375D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 19:09:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjmQuLfqmxirgbrS05gNUBLKDOYh8UzLwQu453p0rYA=; b=dpdMqpGCZwESkf
	h9XJ4YVYBYHTwzZiWWq3Qf5rpcrmG/SdQ/wqsMzNxpypfIAIBz2dvvFdJL8Jy8SjZEj3iK3F/toRp
	zaDbgCNe2fWh94P6aMuxXnngCWzc8+bqRTNFIg3qyMm6cz7yv0QbG3ZHs47Uf0aBVdyF5tIb2pUeX
	X3kJI4Q1TkpAG3MdA6EKtJ3xGK53JbuFFEI2RSOjAhjuumYIUToYiGsZo1OCtB/fYdfgl9i0Am/C2
	FX8qMZG9K6pmsfsLOg3b6L7EDJPZkHJRgfPyn2GAeWk/FuBhYhU7N6F5OX1no2jHK6BxkMl7206Zu
	IPoNCTsKTci+VOaUez3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipyiQ-0008KS-Jb; Fri, 10 Jan 2020 18:08:58 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipyiH-0008Jb-It; Fri, 10 Jan 2020 18:08:51 +0000
Received: by mail-ot1-x341.google.com with SMTP id w21so2797085otj.7;
 Fri, 10 Jan 2020 10:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N0RmXH+9qj+QX8bAPpoUzZU5ql7ZmqOdGZKEvug39CU=;
 b=ZpCuY6wQE6lP+dHrYBkWaOk37LWQ92e9RTLQZxCkLE1bfWOyODU4NnVSqcCYGdgE05
 NocwzU33V4qvXRXJFWg3PpP04z4Wm1Abphiqn7eI2b2zOL67LJbr77/qLPip1orP3LT6
 zWcr/WzRZQs6CFi52+gt27CEA26DYHeLcozAJeFfD5Ey/Zoibwukit/MA1H2D94CfA/h
 7tobQjySRq1tqis39rKpiFQcSxudEuSIb96jNJhqnJwi/SbT9i/sgDyJlq4nwwuHZHwB
 Qt4WSSJHrjN3KivUpy7s4BbF0XOrLvRdvWzB6WBGI5lncQMHA1j9akDhkdKbYPqnYWJa
 Ypmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N0RmXH+9qj+QX8bAPpoUzZU5ql7ZmqOdGZKEvug39CU=;
 b=oYzNCK/1s6hgyF0w+YU799bNf1D2WXp1Qh+j66oittp0OwZxfy0a37JcGsdDRMfZI2
 MCZCdPh5zUgGyQ6HFMh3A82v6f0vaLlLXFB6axehlvkBT8cOEIjbTO4fJlGt5zOqPlJt
 bS14ctP8/oXpS2/0FWVlY7xuXxOMSLyOtGw8G8Bljtlp7qPwMcpZrk3va3Bb6Oy9GM23
 MPa46dCbJsp0E3HQZy8V0cjLAe/diUvY5WPrjidV9aAU1CHB2aQIIawlhthfDYE/pYk9
 /K/Ik1hHiQ6Ae5G6vCkNqFDKesHoPwy2HFsWzogiLQq3EX8R1Qi47sPZTLVr+xS/53K2
 awSQ==
X-Gm-Message-State: APjAAAUUceOuxDviWJwUICmJjdiyv2gPCPyoA8aCcifBgI/AJHqJwJOM
 fh+YZc4jgkXY9UigqAbp5NLNOuEduUkgw9/+2wE=
X-Google-Smtp-Source: APXvYqx+6ZH/MWfoY/KTTSTSa7OKZSs98UA8BjDQzaK3ui04JhpUHnfYeMvGxsVFN11dFt8w+c0JffQRXh5xJLGatmM=
X-Received: by 2002:a05:6830:1f95:: with SMTP id
 v21mr3714800otr.325.1578679728104; 
 Fri, 10 Jan 2020 10:08:48 -0800 (PST)
MIME-Version: 1.0
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200108162211.22358-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <53d74632-34ee-f7f7-656f-a93a6c10e7ba@ti.com>
In-Reply-To: <53d74632-34ee-f7f7-656f-a93a6c10e7ba@ti.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 10 Jan 2020 18:08:21 +0000
Message-ID: <CA+V-a8tHkqkxE_5DMtt6PbJyGz1vfKZUezE5nOFmJXarJAugkw@mail.gmail.com>
Subject: Re: [v3 3/6] PCI: endpoint: Add support to handle multiple base for
 mapping outbound memory
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_100849_649542_7040EB0F 
X-CRM114-Status: GOOD (  33.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

Thank you for the review.

On Thu, Jan 9, 2020 at 6:25 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Prabhakar,
>
> On 08/01/20 9:52 PM, Lad Prabhakar wrote:
> > R-Car PCIe controller has support to map multiple memory regions for
> > mapping the outbound memory in local system also the controller limits
> > single allocation for each region (that is, once a chunk is used from the
> > region it cannot be used to allocate a new one). This features inspires to
> > add support for handling multiple memory bases in endpoint framework.
> >
> > With this patch pci_epc_mem_init() now accepts multiple regions, also
> > page_size for each memory region is passed during initialization so as
> > to handle single allocation for each region by setting the page_size to
> > window_size.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  .../pci/controller/cadence/pcie-cadence-ep.c  |  12 +-
> >  .../pci/controller/dwc/pcie-designware-ep.c   |  31 ++-
> >  drivers/pci/controller/pcie-rockchip-ep.c     |  14 +-
> >  drivers/pci/endpoint/functions/pci-epf-test.c |  29 +--
> >  drivers/pci/endpoint/pci-epc-core.c           |   7 +-
> >  drivers/pci/endpoint/pci-epc-mem.c            | 199 ++++++++++++++----
> >  include/linux/pci-epc.h                       |  46 ++--
> >  7 files changed, 245 insertions(+), 93 deletions(-)
> >
> .
> .
> <snip>
> .
> .
> > diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> > index 2091508c1620..289c266c2d90 100644
> > --- a/drivers/pci/endpoint/pci-epc-core.c
> > +++ b/drivers/pci/endpoint/pci-epc-core.c
> > @@ -358,13 +358,15 @@ EXPORT_SYMBOL_GPL(pci_epc_unmap_addr);
> >   * @epc: the EPC device on which address is allocated
> >   * @func_no: the endpoint function number in the EPC device
> >   * @phys_addr: physical address of the local system
> > + * @window: index to the window region where PCI address will be mapped
> >   * @pci_addr: PCI address to which the physical address should be mapped
> >   * @size: the size of the allocation
> >   *
> >   * Invoke to map CPU address with PCI address.
> >   */
> >  int pci_epc_map_addr(struct pci_epc *epc, u8 func_no,
> > -                  phys_addr_t phys_addr, u64 pci_addr, size_t size)
> > +                  phys_addr_t phys_addr, int window,
> > +                  u64 pci_addr, size_t size)
> >  {
> >       int ret;
> >       unsigned long flags;
> > @@ -376,7 +378,8 @@ int pci_epc_map_addr(struct pci_epc *epc, u8 func_no,
> >               return 0;
> >
> >       spin_lock_irqsave(&epc->lock, flags);
> > -     ret = epc->ops->map_addr(epc, func_no, phys_addr, pci_addr, size);
> > +     ret = epc->ops->map_addr(epc, func_no, phys_addr,
> > +                              window, pci_addr, size);
> >       spin_unlock_irqrestore(&epc->lock, flags);
> >
> >       return ret;
> > diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
> > index d2b174ce15de..f205f7819292 100644
> > --- a/drivers/pci/endpoint/pci-epc-mem.c
> > +++ b/drivers/pci/endpoint/pci-epc-mem.c
> > @@ -38,57 +38,77 @@ static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
> >  /**
> >   * __pci_epc_mem_init() - initialize the pci_epc_mem structure
> >   * @epc: the EPC device that invoked pci_epc_mem_init
> > - * @phys_base: the physical address of the base
> > - * @size: the size of the address space
> > - * @page_size: size of each page
> > + * @windows: pointer to windows supported by the device
> > + * @num_windows: number of windows device supports
> >   *
> >   * Invoke to initialize the pci_epc_mem structure used by the
> >   * endpoint functions to allocate mapped PCI address.
> >   */
> > -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base, size_t size,
> > -                    size_t page_size)
> > +int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window *windows,
> > +                    int num_windows)
> >  {
> > -     int ret;
> > -     struct pci_epc_mem *mem;
> > -     unsigned long *bitmap;
> > +     struct pci_epc_mem *mem = NULL;
> > +     unsigned long *bitmap = NULL;
> >       unsigned int page_shift;
> > -     int pages;
> > +     size_t page_size;
> >       int bitmap_size;
> > +     int pages;
> > +     int ret;
> > +     int i;
> >
> > -     if (page_size < PAGE_SIZE)
> > -             page_size = PAGE_SIZE;
> > +     epc->mem_windows = 0;
> >
> > -     page_shift = ilog2(page_size);
> > -     pages = size >> page_shift;
> > -     bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> > +     if (!windows)
> > +             return -EINVAL;
> >
> > -     mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> > -     if (!mem) {
> > -             ret = -ENOMEM;
> > -             goto err;
> > -     }
> > +     if (num_windows <= 0)
> > +             return -EINVAL;
> >
> > -     bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> > -     if (!bitmap) {
> > -             ret = -ENOMEM;
> > -             goto err_mem;
> > -     }
> > +     epc->mem = kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
> > +     if (!epc->mem)
> > +             return -EINVAL;
> > +
> > +     for (i = 0; i < num_windows; i++) {
> > +             page_size = windows[i].page_size;
> > +             if (page_size < PAGE_SIZE)
> > +                     page_size = PAGE_SIZE;
> > +             page_shift = ilog2(page_size);
> > +             pages = windows[i].size >> page_shift;
> > +             bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> > +
> > +             mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> > +             if (!mem) {
> > +                     ret = -ENOMEM;
> > +                     goto err_mem;
> > +             }
> >
> > -     mem->bitmap = bitmap;
> > -     mem->phys_base = phys_base;
> > -     mem->page_size = page_size;
> > -     mem->pages = pages;
> > -     mem->size = size;
> > +             bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> > +             if (!bitmap) {
> > +                     ret = -ENOMEM;
> > +                     goto err_mem;
> > +             }
> >
> > -     epc->mem = mem;
> > +             mem->bitmap = bitmap;
> > +             mem->window.phys_base = windows[i].phys_base;
> > +             mem->page_size = page_size;
> > +             mem->pages = pages;
> > +             mem->window.size = windows[i].size;
> > +             mem->window.map_size = 0;
> > +
> > +             epc->mem[i] = mem;
> > +     }
> > +     epc->mem_windows = num_windows;
> >
> >       return 0;
> >
> >  err_mem:
> > -     kfree(mem);
> > +     for (; i >= 0; i--) {
>
> mem has to be reinitialized for every iteration of the loop.
not sure what exactly you mean here, could you please elaborate.

> > +             kfree(mem->bitmap);
> > +             kfree(epc->mem[i]);
> > +     }
> > +     kfree(epc->mem);
> >
> > -err:
> > -return ret;
> > +     return ret;
> >  }
> >  EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
> >
> > @@ -101,48 +121,127 @@ EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
> >   */
> >  void pci_epc_mem_exit(struct pci_epc *epc)
> >  {
> > -     struct pci_epc_mem *mem = epc->mem;
> > +     struct pci_epc_mem *mem;
> > +     int i;
> > +
> > +     if (!epc->mem_windows)
> > +             return;
> > +
> > +     for (i = 0; i <= epc->mem_windows; i++) {
> > +             mem = epc->mem[i];
> > +             kfree(mem->bitmap);
> > +             kfree(epc->mem[i]);
> > +     }
> > +     kfree(epc->mem);
> >
> >       epc->mem = NULL;
> > -     kfree(mem->bitmap);
> > -     kfree(mem);
> > +     epc->mem_windows = 0;
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
> >
> > +static int pci_epc_find_best_fit_window(struct pci_epc *epc, size_t size)
> > +{
> > +     size_t window_least_size = 0;
> > +     int best_fit_window = -1;
> > +     struct pci_epc_mem *mem;
> > +     size_t actual_size;
> > +     size_t avail_size;
> > +     int i;
> > +
> > +     for (i = 0; i < epc->mem_windows; i++) {
> > +             mem = epc->mem[i];
> > +
> > +             actual_size = ALIGN(size, mem->page_size);
> > +             avail_size = mem->window.size - mem->window.map_size;
> > +
> > +             if (best_fit_window == -1) {
> > +                     if (actual_size <= avail_size) {
> > +                             best_fit_window = i;
> > +                             window_least_size = mem->window.size;
> > +                     }
> > +             } else {
> > +                     if (actual_size <= avail_size &&
> > +                         mem->window.size < window_least_size) {
> > +                             best_fit_window = i;
> > +                             window_least_size = mem->window.size;
> > +                     }
> > +             }
> > +     }
> > +
> > +     return best_fit_window;
> > +}
>
> This function shouldn't be required at all. Just loop over all the
> windows invoking bitmap_find_free_region(), breaking the loop if it
> succeeds and continuing if there is no free region.
sure will do.
> > +
> >  /**
> >   * pci_epc_mem_alloc_addr() - allocate memory address from EPC addr space
> >   * @epc: the EPC device on which memory has to be allocated
> >   * @phys_addr: populate the allocated physical address here
> > + * @window: populate the window here which will be used to map PCI address
> >   * @size: the size of the address space that has to be allocated
> >   *
> >   * Invoke to allocate memory address from the EPC address space. This
> >   * is usually done to map the remote RC address into the local system.
> >   */
> >  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> > -                                  phys_addr_t *phys_addr, size_t size)
> > +                                  phys_addr_t *phys_addr,
> > +                                  int *window, size_t size)
> >  {
> > +     int best_fit = PCI_EPC_DEFAULT_WINDOW;
> > +     void __iomem *virt_addr = NULL;
> > +     struct pci_epc_mem *mem;
> > +     unsigned int page_shift;
> >       int pageno;
> > -     void __iomem *virt_addr;
> > -     struct pci_epc_mem *mem = epc->mem;
> > -     unsigned int page_shift = ilog2(mem->page_size);
> >       int order;
> >
> > +     if (epc->mem_windows <= 0)
> > +             return NULL;
> > +
> > +     if (epc->mem_windows > 1) {
> > +             best_fit = pci_epc_find_best_fit_window(epc, size);
> > +             if (best_fit < 0)
> > +                     return NULL;
> > +     }
> > +
> > +     mem = epc->mem[best_fit];
> >       size = ALIGN(size, mem->page_size);
> > +     if (size > (mem->window.size - mem->window.map_size))
> > +             return NULL;
> > +     page_shift = ilog2(mem->page_size);
> >       order = pci_epc_mem_get_order(mem, size);
> >
> >       pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
> >       if (pageno < 0)
> >               return NULL;
>
> This has to be invoked now in a loop for the number of windows. If
> pageno < 0, continue the loop or else break.
> >
will fix that.

> > -     *phys_addr = mem->phys_base + ((phys_addr_t)pageno << page_shift);
> > +     *phys_addr = mem->window.phys_base +
> > +                  ((phys_addr_t)pageno << page_shift);
> >       virt_addr = ioremap(*phys_addr, size);
> > -     if (!virt_addr)
> > +     if (!virt_addr) {
> >               bitmap_release_region(mem->bitmap, pageno, order);
> > +     } else {
> > +             mem->window.map_size += size;
>
> The map_size shouldn't be required.
> > +             *window = best_fit;
>
> Can't the platform driver get the window based on the address? Let's try
> to avoid modifying API's for platform specific requirements.
should be possible, will do that.

> > +     }
> >
> >       return virt_addr;
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> >
> > +static int pci_epc_get_matching_window(struct pci_epc *epc,
> > +                                    phys_addr_t phys_addr)
> > +{
> > +     struct pci_epc_mem *mem;
> > +     int i;
> > +
> > +     for (i = 0; i < epc->mem_windows; i++) {
> > +             mem = epc->mem[i];
> > +
> > +             if (mem->window.phys_base == phys_addr)
> > +                     return i;
> > +     }
> > +
> > +     return -EINVAL;
> > +}
> > +
> >  /**
> >   * pci_epc_mem_free_addr() - free the allocated memory address
> >   * @epc: the EPC device on which memory was allocated
> > @@ -155,16 +254,26 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> >  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
> >                          void __iomem *virt_addr, size_t size)
> >  {
> > +     struct pci_epc_mem *mem;
> > +     unsigned int page_shift;
> > +     int window = 0;
> >       int pageno;
> > -     struct pci_epc_mem *mem = epc->mem;
> > -     unsigned int page_shift = ilog2(mem->page_size);
> >       int order;
> >
> > +     if (epc->mem_windows > 1) {
> > +             window = pci_epc_get_matching_window(epc, phys_addr);
> > +             if (window < 0)
> > +                     return;
> > +     }
> > +
> > +     mem = epc->mem[window];
> > +     page_shift = ilog2(mem->page_size);
> >       iounmap(virt_addr);
> > -     pageno = (phys_addr - mem->phys_base) >> page_shift;
> > +     pageno = (phys_addr - mem->window.phys_base) >> page_shift;
> >       size = ALIGN(size, mem->page_size);
> >       order = pci_epc_mem_get_order(mem, size);
> >       bitmap_release_region(mem->bitmap, pageno, order);
> > +     mem->window.map_size -= size;
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_free_addr);
> >
> > diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> > index 56f1846b9d39..89daafa0d19f 100644
> > --- a/include/linux/pci-epc.h
> > +++ b/include/linux/pci-epc.h
> > @@ -48,7 +48,8 @@ struct pci_epc_ops {
> >       void    (*clear_bar)(struct pci_epc *epc, u8 func_no,
> >                            struct pci_epf_bar *epf_bar);
> >       int     (*map_addr)(struct pci_epc *epc, u8 func_no,
> > -                         phys_addr_t addr, u64 pci_addr, size_t size);
> > +                         phys_addr_t addr, int window,
> > +                         u64 pci_addr, size_t size);
> >       void    (*unmap_addr)(struct pci_epc *epc, u8 func_no,
> >                             phys_addr_t addr);
> >       int     (*set_msi)(struct pci_epc *epc, u8 func_no, u8 interrupts);
> > @@ -64,17 +65,31 @@ struct pci_epc_ops {
> >       struct module *owner;
> >  };
> >
> > +#define PCI_EPC_DEFAULT_WINDOW         0
> > +
> > +/**
> > + * struct pci_epc_mem_window - address window of the endpoint controller
> > + * @phys_base: physical base address of the PCI address window
> > + * @size: the size of the PCI address window
> > + * @map_size: size of allocated chunk in window
> > + * @page_size: size of each page
> > + */
> > +struct pci_epc_mem_window {
> > +     phys_addr_t     phys_base;
> > +     size_t          size;
> > +     size_t          map_size;
>
> mem->bitmap already holds the map_size information. This structure can
> be used only for passing info about the mem windows from platform to the
> core. So map_size shouldn't be required.
>
agreed will drop it.

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
