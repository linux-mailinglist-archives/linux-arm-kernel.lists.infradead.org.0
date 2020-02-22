Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61956168F26
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 14:33:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZC2TT71ILAUA0kxmfCBDPHQTUuaPLo6eJWHGVIkZO6c=; b=O9+cF8yzigwGhN
	xR6U3P58Sqmm87kDk+omEfRrsJwV3lRCZLiB+IO1DnQU50T26W9HfP+vuvBOu2xcTzkY4MPoXMwhN
	OPWBHfq7sJEAbBh5E5vDeQFTbKlUwqoEpO7ZMx8b1VAxGm2jd5de3zhOLHiozrArohQsCNOY2sWkB
	99zfKTCx98do5d8tlBnFY/MaOScgMN7tM1NO1YPy5DH/jNSHOiIiXnTbTpfc8kImSzR2QSXKNs/rw
	dWpvDDGvwxFinfMgVqQ9sQf+ni+PZmifXOBYxCa5mTMmyxKrJMHfsWXquQ/fGJWQuGOsot9zTlNzf
	I9yB7sZ+3OU4TGYeoMjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Uu2-0006Cb-Qd; Sat, 22 Feb 2020 13:33:06 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Utp-0006CB-Nu; Sat, 22 Feb 2020 13:32:55 +0000
Received: by mail-ot1-x341.google.com with SMTP id b3so4687562otp.4;
 Sat, 22 Feb 2020 05:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gpWIKWrE1rhe4Lmz27h6MYo1+CytzQ97HcPkl1bbBQg=;
 b=b9oTOFIxxDINmliDvlwBF6mMJOD/6ljgktIYmN/KPkU7WtR4lOb9AFe6EH5HyziLre
 qKMguwRhhKSxg9xCX62l5SYyN/edvqB0MmhNoBvLFZFKPZYvpP9KzCmtk1pc5kmAW3ss
 LACpBh69lUIpEbrevh7RvETKuCunjrjciw/twSHcUMb+XVwSh3vzEToIu2f/vcdgVEeG
 8sc+ue1p08tUUCxhTVOWxF0lGXuX5ed9Zz0loKtpjP413pUVlCh8cf1XMQPJMElrcPRZ
 S6ifvsp3+nyApFoLx1ZYPHkb894aWGh1yrU1JdiK+CUqIDcQ1OQqUr23/ixILIHAB4bp
 GUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gpWIKWrE1rhe4Lmz27h6MYo1+CytzQ97HcPkl1bbBQg=;
 b=ZSE6zqoeVWY49AGwyRFn88fUdmtF+B2Ap7IJBpxkyum8pqFD43rWvIQinTLDgLZ83K
 gQnJ9grMxw3120fDKIvgICrSI72DQI4hSh00zScfMA/49+yx0kkQQzCTUCLmh+FQyoJR
 VqOWT/Vu5hzfQ/RYPmMUEusQf5Lb39ydLEpC4vI1JMTebtB45kOMiat4YNjNrrXl5Gio
 o9N19FXsqNypF3N8W2MKqcnJPrpRvh78kg7OjvdN8a8MziNq/1WdUgvcrCQ/9+PckNUB
 RH+a0tIDF2Mh0oK7F+/28DKA2nGrPzxU6kqxWrMRSFm9x5fp/vWMOCb5Yb8qkw3F5Wl2
 Z+gg==
X-Gm-Message-State: APjAAAXugu3KmWF/67gB29xUmQWhVrnae+1yiNYrw7SxtwoyWkSsISJq
 TE5gMGYyVys13mlkDyB6vxWk6KkVLzMFXJ1pWK4=
X-Google-Smtp-Source: APXvYqw4qJFXttjqY+CoS4blxgYb5kARD1LmNjzuInRM7DG6a1EU1Yjhik9ACboL1sc10ti/7w5rzQCjjX2r5eXSlsw=
X-Received: by 2002:a05:6830:154a:: with SMTP id
 l10mr33157061otp.44.1582378372460; 
 Sat, 22 Feb 2020 05:32:52 -0800 (PST)
MIME-Version: 1.0
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200208183641.6674-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <ea5fa2ec-3c0c-0343-0b14-9bbfa93feaa3@ti.com>
In-Reply-To: <ea5fa2ec-3c0c-0343-0b14-9bbfa93feaa3@ti.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Sat, 22 Feb 2020 13:32:25 +0000
Message-ID: <CA+V-a8u6qOc6LvzenN9XuJi=B_LmYsEJcnrUcwJ1WdJkh1sh7g@mail.gmail.com>
Subject: Re: [PATCH v4 3/6] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_053253_808219_4E5F4B42 
X-CRM114-Status: GOOD (  27.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

Thank you for the review.

On Fri, Feb 21, 2020 at 11:36 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Prabhakar,
>
> On 09/02/20 12:06 am, Lad Prabhakar wrote:
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
>
> This patch looks much better now except for one comment below..
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  drivers/pci/controller/cadence/pcie-cadence-ep.c |   7 +-
> >  drivers/pci/controller/dwc/pcie-designware-ep.c  |  29 ++--
> >  drivers/pci/controller/pcie-rockchip-ep.c        |   7 +-
> >  drivers/pci/endpoint/pci-epc-mem.c               | 166 ++++++++++++++++-------
> >  include/linux/pci-epc.h                          |  39 ++++--
> >  5 files changed, 168 insertions(+), 80 deletions(-)
> >
> .
> .
> <snip>
> .
> .
> > diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
> > index d2b174c..b3eedee 100644
> > --- a/drivers/pci/endpoint/pci-epc-mem.c
> > +++ b/drivers/pci/endpoint/pci-epc-mem.c
> > @@ -38,57 +38,76 @@ static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
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
> > -
> > -     if (page_size < PAGE_SIZE)
> > -             page_size = PAGE_SIZE;
> > -
> > -     page_shift = ilog2(page_size);
> > -     pages = size >> page_shift;
> > -     bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> > -
> > -     mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> > -     if (!mem) {
> > -             ret = -ENOMEM;
> > -             goto err;
> > -     }
> > -
> > -     bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> > -     if (!bitmap) {
> > -             ret = -ENOMEM;
> > -             goto err_mem;
> > +     int pages;
> > +     int ret;
> > +     int i;
> > +
> > +     epc->mem_windows = 0;
> > +
> > +     if (!windows)
> > +             return -EINVAL;
> > +
> > +     if (num_windows <= 0)
> > +             return -EINVAL;
> > +
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
> > +
> > +             bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> > +             if (!bitmap) {
> > +                     ret = -ENOMEM;
> > +                     goto err_mem;
> > +             }
> > +
> > +             mem->bitmap = bitmap;
> > +             mem->window.phys_base = windows[i].phys_base;
> > +             mem->page_size = page_size;
> > +             mem->pages = pages;
> > +             mem->window.size = windows[i].size;
> > +             epc->mem[i] = mem;
> >       }
> > -
> > -     mem->bitmap = bitmap;
> > -     mem->phys_base = phys_base;
> > -     mem->page_size = page_size;
> > -     mem->pages = pages;
> > -     mem->size = size;
> > -
> > -     epc->mem = mem;
> > +     epc->mem_windows = num_windows;
> >
> >       return 0;
> >
> >  err_mem:
> > -     kfree(mem);
> > +     for (; i >= 0; i--) {
> > +             mem = epc->mem[i];
> > +             kfree(mem->bitmap);
> > +             kfree(mem);
> > +     }
> > +     kfree(epc->mem);
> >
> > -err:
> > -return ret;
> > +     return ret;
> >  }
> >  EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
> >
> > @@ -101,11 +120,21 @@ EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
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
> > +             kfree(mem);
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
> > @@ -121,20 +150,30 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
> >  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> >                                    phys_addr_t *phys_addr, size_t size)
> >  {
> > -     int pageno;
> > -     void __iomem *virt_addr;
> > -     struct pci_epc_mem *mem = epc->mem;
> > -     unsigned int page_shift = ilog2(mem->page_size);
> > +     void __iomem *virt_addr = NULL;
> > +     struct pci_epc_mem *mem;
> > +     unsigned int page_shift;
> > +     int pageno = -EINVAL;
> >       int order;
> > +     int i;
> >
> > -     size = ALIGN(size, mem->page_size);
> > -     order = pci_epc_mem_get_order(mem, size);
> > +     for (i = 0; i < epc->mem_windows; i++) {
> > +             mem = epc->mem[i];
> > +             size = ALIGN(size, mem->page_size);
> > +             order = pci_epc_mem_get_order(mem, size);
> > +
> > +             pageno = bitmap_find_free_region(mem->bitmap, mem->pages,
> > +                                              order);
> > +             if (pageno >= 0)
> > +                     break;
> > +     }
> >
> > -     pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
> >       if (pageno < 0)
> >               return NULL;
> >
> > -     *phys_addr = mem->phys_base + ((phys_addr_t)pageno << page_shift);
> > +     page_shift = ilog2(mem->page_size);
> > +     *phys_addr = mem->window.phys_base +
> > +                  ((phys_addr_t)pageno << page_shift);
> >       virt_addr = ioremap(*phys_addr, size);
> >       if (!virt_addr)
> >               bitmap_release_region(mem->bitmap, pageno, order);
> > @@ -143,6 +182,22 @@ void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> >
> > +struct pci_epc_mem *pci_epc_get_matching_window(struct pci_epc *epc,
> > +                                             phys_addr_t phys_addr)
> > +{
> > +     struct pci_epc_mem *mem;
> > +     int i;
> > +
> > +     for (i = 0; i < epc->mem_windows; i++) {
> > +             mem = epc->mem[i];
> > +
> > +             if (mem->window.phys_base == phys_addr)
> > +                     return mem;
>
> This will work only if the phys_addr is same as start of windows base.
> This need not be true for all the platforms and will fail for all the
> allocations except the first allocation.
>
Agreed, this worked for me because different windows were used for allocation.
If you are OK with below changes Ill post a V5 soon.

for (i = 0; i < epc->mem_windows; i++) {
    mem = epc->mem[i];

    if (phys_addr >= mem->window.phys_base &&
        phys_addr < (mem->window.phys_base + mem->window.size))
        return mem;
....
...
}

Cheers,
--Prabhakar Lad

> Thanks
> Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
