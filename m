Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3251B6F56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 09:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1JkiyXZdahDy0Yxv9mtKQaQKXKVl2kb/+cLY6pumJI=; b=pTl4sdL3zwpSvh
	AAOo6U7kaOWEVhyRXy55w720bnv7RrM5MYPEKEmR9gsA55jOtL5VLcbeK9+ZgPs3s3BSA09cOJ3e7
	iVVxmwjNeWmMiOEJJgpXjTGp/2yj/v9fzdBM4Z6tRHniABKFMeDQlCEebnmxSNgkcrn0ds9HPAjg4
	w8og7Sitwdpl0K/xIPXDkZMKmeJjTher0zNH+T6EjkK6xAeuQrl5TSkIILZW9auRZ+CXBNjKA+pXx
	8ZO0dHSb40oCwKNcjiKS+MZei4STvJHagxYr1fF8/SUHH34gcKRYOEnqFQHkfhPzBZvgHfD+gYb/C
	H96NXiQcGA2pcFQ1AgXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRt3H-0008H7-5x; Fri, 24 Apr 2020 07:47:11 +0000
Received: from mail-oo1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRt2r-00082M-JB; Fri, 24 Apr 2020 07:46:47 +0000
Received: by mail-oo1-xc41.google.com with SMTP id t3so1920164oou.8;
 Fri, 24 Apr 2020 00:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M4R3wKeI5+ippJFfSS7sqBta6fL7lg0nfBiLFTPymAw=;
 b=lFy+nxlxrdv504P7CDgFedVgTOy9OkkfW4UWhbVzuZSNdwfesb/StBMyroEFPBmc7c
 Y8zuIsohvSBHjYRek3pdipkaQFpr5xEV1kXu5MeWXxN9gdQQUOSEsb3SiDRVQ9cn/vlP
 Eiz5JIQ4UHlMIB2LTVZeFFY0BIaOdtZOgtwq6eQopBenCIGqZnOBpaJHxD9sqMNHGT27
 9efWzDMbAvzf8SKiIGRYFOLwAWvYMSaF10ZOMiMrWmsS7cQPqWITV87Kw+8FabON2tK3
 cEk8JFkzTmJwrSgIYvQM/FtqCyB0mxny/Gnfc2egod1xm019CmQZs7jXSY1cf4XgK9tX
 BnIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M4R3wKeI5+ippJFfSS7sqBta6fL7lg0nfBiLFTPymAw=;
 b=Wy8o7Lm/4thch/rEdN7GgGm3yJhgmQiF1OZLbte/dxJKjjxmKI0G52K7eQUEgRbyCy
 ZiuPngdCUclrYgK2Il/ocDwPqnKf5B96XEXXikJVZqtkYYyaIYozGPqwsSaaZpzbXr+J
 BttzPVQ6N9ECIp6uRurcAjwmmBxmUXM8IayrUjpvY+bkM5hvT5iSHAKoDWtgh4wMtzSI
 AGw5RXqmyzlSNgUQnwky8Qw/ENrKG6bW2kOEcMn3SolDQ5MagGLTe+9aVitZDcCCi9Oc
 nghSXT9gGANk9p61kToNayMCMX78auDL7x6YRqLRDgAqfifPCchCJJNNf6ToIgDl5XEj
 V02A==
X-Gm-Message-State: AGi0PuYMxLUc/PjfFnBkV3OuE6xL8dZeqwsAXiD1Z1iW9zaFvxza2Hb2
 zu19hb2uaiFvFgzz09b5fd2ZVdUjLgkNEQdFb/k=
X-Google-Smtp-Source: APiQypJa7uzPxioHa3Cmz+0LhwfX3GIdvcU622j3vm4mfr3WiFHJA5GVLsFzvQlQaDKQ6qyK5NRQf7WoiahVMgD53f0=
X-Received: by 2002:a4a:355c:: with SMTP id w28mr6881229oog.18.1587714404059; 
 Fri, 24 Apr 2020 00:46:44 -0700 (PDT)
MIME-Version: 1.0
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587666159-6035-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <99ff8fb8-101c-a548-7d6e-07c3a31ced2c@ti.com>
In-Reply-To: <99ff8fb8-101c-a548-7d6e-07c3a31ced2c@ti.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 24 Apr 2020 08:46:17 +0100
Message-ID: <CA+V-a8sCLm_3hxBT+p_mjSt92rTF3+4nPBuuOdoq==ZKbTK2zg@mail.gmail.com>
Subject: Re: [PATCH v9 5/8] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_004645_637007_A2C8C0CA 
X-CRM114-Status: GOOD (  28.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

Thank you for the review.

On Fri, Apr 24, 2020 at 7:13 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Prabhakar,
>
> On 4/23/2020 11:52 PM, Lad Prabhakar wrote:
> > R-Car PCIe controller has support to map multiple memory regions for
> > mapping the outbound memory in local system also the controller limits
> > single allocation for each region (that is, once a chunk is used from the
> > region it cannot be used to allocate a new one). This features inspires to
> > add support for handling multiple memory bases in endpoint framework.
> >
> > With this patch pci_epc_mem_init() initializes address space for endpoint
> > controller which support single window and pci_epc_multi_mem_init()
> > initializes multiple windows supported by endpoint controller.
>
> Have a couple of clean-up comments. See below.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  .../pci/controller/dwc/pcie-designware-ep.c   |  16 +-
> >  drivers/pci/endpoint/pci-epc-mem.c            | 199 ++++++++++++------
> >  include/linux/pci-epc.h                       |  33 ++-
> >  3 files changed, 170 insertions(+), 78 deletions(-)
> >
> .
> .
> <snip>
> .
> .
> > diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
> > index cdd1d3821249..a3466da2a16f 100644
> > --- a/drivers/pci/endpoint/pci-epc-mem.c
> > +++ b/drivers/pci/endpoint/pci-epc-mem.c
> > @@ -23,7 +23,7 @@
> >  static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
> >  {
> >       int order;
> > -     unsigned int page_shift = ilog2(mem->page_size);
> > +     unsigned int page_shift = ilog2(mem->window.page_size);
> >
> >       size--;
> >       size >>= page_shift;
> > @@ -36,67 +36,95 @@ static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
> >  }
> >
> >  /**
> > - * __pci_epc_mem_init() - initialize the pci_epc_mem structure
> > + * pci_epc_multi_mem_init() - initialize the pci_epc_mem structure
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
> > +int pci_epc_multi_mem_init(struct pci_epc *epc,
> > +                        struct pci_epc_mem_window *windows,
> > +                        unsigned int num_windows)
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
> > +     epc->num_windows = 0;
> >
> > -     page_shift = ilog2(page_size);
> > -     pages = size >> page_shift;
> > -     bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> > +     if (!windows || !num_windows)
> > +             return -EINVAL;
> >
> > -     mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> > -     if (!mem) {
> > -             ret = -ENOMEM;
> > -             goto err;
> > -     }
> > +     epc->windows = kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
> > +     if (!epc->windows)
> > +             return -ENOMEM;
> >
> > -     bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> > -     if (!bitmap) {
> > -             ret = -ENOMEM;
> > -             goto err_mem;
> > -     }
> > +     for (i = 0; i < num_windows; i++) {
> > +             page_size = windows[i].page_size;
> > +             if (page_size < PAGE_SIZE)
> > +                     page_size = PAGE_SIZE;
> > +             page_shift = ilog2(page_size);
> > +             pages = windows[i].size >> page_shift;
> > +             bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> >
> > -     mem->bitmap = bitmap;
> > -     mem->phys_base = phys_base;
> > -     mem->page_size = page_size;
> > -     mem->pages = pages;
> > -     mem->size = size;
> > -     mutex_init(&mem->lock);
> > +             mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> > +             if (!mem) {
> > +                     ret = -ENOMEM;
> > +                     i--;
> > +                     goto err_mem;
> > +             }
> >
> > -     epc->mem = mem;
> > +             bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> > +             if (!bitmap) {
> > +                     ret = -ENOMEM;
> > +                     kfree(mem);
> > +                     i--;
> > +                     goto err_mem;
> > +             }
> > +
> > +             mem->window.phys_base = windows[i].phys_base;
> > +             mem->window.size = windows[i].size;
> > +             mem->window.page_size = page_size;
> > +             mem->bitmap = bitmap;
> > +             mem->pages = pages;
> > +             mutex_init(&mem->lock);
> > +             epc->windows[i] = mem;
> > +     }
> > +
> > +     epc->mem = epc->windows[0];
>
> "mem" member of EPC looks unnecessary since that value is available at
> epc->windows[0].
This was suggested by Shimoda-san, as most of the current  controller
drivers support single region this pointer would be easier to access
the region instead of adding #define EPC_DEFAULT_WINDOW  0 and
accessing  as epc->windows[EPC_DEFAULT_WINDOW];

> > +     epc->num_windows = num_windows;
> >
> >       return 0;
> >
> >  err_mem:
> > -     kfree(mem);
> > +     for (; i >= 0; i--) {
> > +             mem = epc->windows[i];
> > +             kfree(mem->bitmap);
> > +             kfree(mem);
> > +     }
> > +     kfree(epc->windows);
> >
> > -err:
> > -return ret;
> > +     return ret;
> >  }
> > -EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
> > +EXPORT_SYMBOL_GPL(pci_epc_multi_mem_init);
> >
> >  int pci_epc_mem_init(struct pci_epc *epc, phys_addr_t base,
> >                    size_t size, size_t page_size)
> >  {
> > -     return __pci_epc_mem_init(epc, base, size, page_size);
> > +     struct pci_epc_mem_window mem_window;
> > +
> > +     mem_window.phys_base = base;
> > +     mem_window.size = size;
> > +     mem_window.page_size = page_size;
> > +
> > +     return pci_epc_multi_mem_init(epc, &mem_window, 1);
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_init);
> >
> > @@ -109,11 +137,22 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_init);
> >   */
> >  void pci_epc_mem_exit(struct pci_epc *epc)
> >  {
> > -     struct pci_epc_mem *mem = epc->mem;
> > +     struct pci_epc_mem *mem;
> > +     int i;
> >
> > +     if (!epc->num_windows)
> > +             return;
> > +
> > +     for (i = 0; i < epc->num_windows; i++) {
> > +             mem = epc->windows[i];
> > +             kfree(mem->bitmap);
> > +             kfree(mem);
> > +     }
> > +     kfree(epc->windows);
> > +
> > +     epc->windows = NULL;
> >       epc->mem = NULL;
> > -     kfree(mem->bitmap);
> > -     kfree(mem);
> > +     epc->num_windows = 0;
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
> >
> > @@ -129,31 +168,60 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
> >  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> >                                    phys_addr_t *phys_addr, size_t size)
> >  {
> > -     int pageno;
> >       void __iomem *virt_addr = NULL;
> > -     struct pci_epc_mem *mem = epc->mem;
> > -     unsigned int page_shift = ilog2(mem->page_size);
> > +     struct pci_epc_mem *mem;
> > +     unsigned int page_shift;
> > +     size_t align_size;
> > +     int pageno;
> >       int order;
> > +     int i;
> >
> > -     size = ALIGN(size, mem->page_size);
> > -     order = pci_epc_mem_get_order(mem, size);
> > -
> > -     mutex_lock(&mem->lock);
> > -     pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
> > -     if (pageno < 0)
> > -             goto ret;
> > +     for (i = 0; i < epc->num_windows; i++) {
> > +             mem = epc->windows[i];
> > +             mutex_lock(&mem->lock);
> > +             align_size = ALIGN(size, mem->window.page_size);
> > +             order = pci_epc_mem_get_order(mem, align_size);
> >
> > -     *phys_addr = mem->phys_base + ((phys_addr_t)pageno << page_shift);
> > -     virt_addr = ioremap(*phys_addr, size);
> > -     if (!virt_addr)
> > -             bitmap_release_region(mem->bitmap, pageno, order);
> > +             pageno = bitmap_find_free_region(mem->bitmap, mem->pages,
> > +                                              order);
> > +             if (pageno >= 0) {
> > +                     page_shift = ilog2(mem->window.page_size);
> > +                     *phys_addr = mem->window.phys_base +
> > +                             ((phys_addr_t)pageno << page_shift);
> > +                     virt_addr = ioremap(*phys_addr, align_size);
> > +                     if (!virt_addr) {
> > +                             bitmap_release_region(mem->bitmap,
> > +                                                   pageno, order);
> > +                             mutex_unlock(&mem->lock);
> > +                             continue;
> > +                     }
> > +                     mutex_unlock(&mem->lock);
> > +                     return virt_addr;
> > +             }
> > +             mutex_unlock(&mem->lock);
> > +     }
> >
> > -ret:
> > -     mutex_unlock(&mem->lock);
> >       return virt_addr;
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> >
> > +struct pci_epc_mem *pci_epc_get_matching_window(struct pci_epc *epc,
> > +                                             phys_addr_t phys_addr)
> > +{
> > +     struct pci_epc_mem *mem;
> > +     int i;
> > +
> > +     for (i = 0; i < epc->num_windows; i++) {
> > +             mem = epc->windows[i];
> > +
> > +             if (phys_addr >= mem->window.phys_base &&
> > +                 phys_addr < (mem->window.phys_base + mem->window.size))
> > +                     return mem;
> > +     }
> > +
> > +     return NULL;
> > +}
> > +
> >  /**
> >   * pci_epc_mem_free_addr() - free the allocated memory address
> >   * @epc: the EPC device on which memory was allocated
> > @@ -166,14 +234,23 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> >  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
> >                          void __iomem *virt_addr, size_t size)
> >  {
> > +     struct pci_epc_mem *mem;
> > +     unsigned int page_shift;
> > +     size_t page_size;
> >       int pageno;
> > -     struct pci_epc_mem *mem = epc->mem;
> > -     unsigned int page_shift = ilog2(mem->page_size);
> >       int order;
> >
> > +     mem = pci_epc_get_matching_window(epc, phys_addr);
> > +     if (!mem) {
> > +             pr_err("failed to get matching window\n");
> > +             return;
> > +     }
> > +
> > +     page_size = mem->window.page_size;
> > +     page_shift = ilog2(page_size);
> >       iounmap(virt_addr);
> > -     pageno = (phys_addr - mem->phys_base) >> page_shift;
> > -     size = ALIGN(size, mem->page_size);
> > +     pageno = (phys_addr - mem->window.phys_base) >> page_shift;
> > +     size = ALIGN(size, page_size);
> >       order = pci_epc_mem_get_order(mem, size);
> >       mutex_lock(&mem->lock);
> >       bitmap_release_region(mem->bitmap, pageno, order);
> > diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> > index 5bc1de65849e..cc66bec8be90 100644
> > --- a/include/linux/pci-epc.h
> > +++ b/include/linux/pci-epc.h
> > @@ -65,20 +65,28 @@ struct pci_epc_ops {
> >       struct module *owner;
> >  };
> >
> > +/**
> > + * struct pci_epc_mem_window - address window of the endpoint controller
> > + * @phys_base: physical base address of the PCI address window
> > + * @size: the size of the PCI address window
> > + * @page_size: size of each page
> > + */
> > +struct pci_epc_mem_window {
> > +     phys_addr_t     phys_base;
> > +     size_t          size;
> > +     size_t          page_size;
> > +};
> > +
> >  /**
> >   * struct pci_epc_mem - address space of the endpoint controller
> > - * @phys_base: physical base address of the PCI address space
> > - * @size: the size of the PCI address space
> > + * @window: address window of the endpoint controller
> >   * @bitmap: bitmap to manage the PCI address space
> >   * @pages: number of bits representing the address region
> > - * @page_size: size of each page
> >   * @lock: mutex to protect bitmap
> >   */
> >  struct pci_epc_mem {
> > -     phys_addr_t     phys_base;
> > -     size_t          size;
> > +     struct pci_epc_mem_window window;
>
> Don't see any additional value in moving phys_base, size, page_size to a new
> structure and again including it here.
>
Controllers supporting multiple windows create a list of supported
regions (struct pci_epc_mem_window ) and pass a pointer to
pci_epc_multi_mem_init(), hence this split.

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
