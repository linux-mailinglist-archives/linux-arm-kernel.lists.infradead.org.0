Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D32138D4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:57:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLHRjV2sNi0Vu/uxJ12Ay2SY2sdtR7nK2AYGAmW5EBk=; b=sH1edIAMviyLi5
	1Ko+0iEjyoisyxLiYXG0tlwp5+pz6s1R1LvA8y7jKPGgS71J8430d9vE+ATeYzDYGrJ6Gb9f3oaA4
	NPgmKhjYIFB3Brd82uUdL2u/YG4ZI6Ff3Q1y/D+Hd8jakIn+dsEqKTMEaaWQV4TaDLvxnQJ0o1Z/U
	1kBc3TACby+7I69tKzIUwdgWOlZVW+t8TjL0sPUbhgtz4AtABZthx2r2qB1DcHNEy4OO3cK5ZINdT
	CbZp2c+6iTtTgVTgwlk5Z5nrr4UjXT2N3hQ9+/WixgRBVvMOsdIVMG3G3zHWovljfuLgBwoKLbUSz
	jofP1IGfQQI9qYcqcNWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvWr-0001OJ-Pk; Mon, 13 Jan 2020 08:56:57 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvWg-0001NZ-Jo; Mon, 13 Jan 2020 08:56:48 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00D8uPmw052759;
 Mon, 13 Jan 2020 02:56:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578905785;
 bh=qiluW+qBpvQyARnjqX2JEhlxa6K7JfbnE7vKlMFGKsQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=rYZZxqHUR9N6nLKtsz38/NT5IEKxu8f9c1YxZL9P8v4I0w5+jmY2yA0ez7Q6zyJKp
 pyNkqSeWVw4w1aHLDlCFPt7dNX3XcYKPred2L+ha0F+yxZi3sGUARnEdBOpBD7GgGE
 Y58DBXtybW3uCVrjHg/Cy0PdnHf5Uyuk0E9rsh7U=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00D8uPvS120096;
 Mon, 13 Jan 2020 02:56:25 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 13
 Jan 2020 02:56:24 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 13 Jan 2020 02:56:24 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00D8uGnf076383;
 Mon, 13 Jan 2020 02:56:17 -0600
Subject: Re: [v3 3/6] PCI: endpoint: Add support to handle multiple base for
 mapping outbound memory
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200108162211.22358-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <53d74632-34ee-f7f7-656f-a93a6c10e7ba@ti.com>
 <CA+V-a8tHkqkxE_5DMtt6PbJyGz1vfKZUezE5nOFmJXarJAugkw@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <2b4dd351-76ee-60bd-bd91-20d5f1ac4e79@ti.com>
Date: Mon, 13 Jan 2020 14:28:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CA+V-a8tHkqkxE_5DMtt6PbJyGz1vfKZUezE5nOFmJXarJAugkw@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_005646_797904_C1102F2D 
X-CRM114-Status: GOOD (  26.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Arnd Bergmann <arnd@arndb.de>,
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

Hi Prabhakar,

On 10/01/20 11:38 PM, Lad, Prabhakar wrote:
> Hi Kishon,
> 
> Thank you for the review.
> 
> On Thu, Jan 9, 2020 at 6:25 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>
>> Hi Prabhakar,
>>
>> On 08/01/20 9:52 PM, Lad Prabhakar wrote:
>>> R-Car PCIe controller has support to map multiple memory regions for
>>> mapping the outbound memory in local system also the controller limits
>>> single allocation for each region (that is, once a chunk is used from the
>>> region it cannot be used to allocate a new one). This features inspires to
>>> add support for handling multiple memory bases in endpoint framework.
>>>
>>> With this patch pci_epc_mem_init() now accepts multiple regions, also
>>> page_size for each memory region is passed during initialization so as
>>> to handle single allocation for each region by setting the page_size to
>>> window_size.
>>>
>>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>>> ---
>>>  .../pci/controller/cadence/pcie-cadence-ep.c  |  12 +-
>>>  .../pci/controller/dwc/pcie-designware-ep.c   |  31 ++-
>>>  drivers/pci/controller/pcie-rockchip-ep.c     |  14 +-
>>>  drivers/pci/endpoint/functions/pci-epf-test.c |  29 +--
>>>  drivers/pci/endpoint/pci-epc-core.c           |   7 +-
>>>  drivers/pci/endpoint/pci-epc-mem.c            | 199 ++++++++++++++----
>>>  include/linux/pci-epc.h                       |  46 ++--
>>>  7 files changed, 245 insertions(+), 93 deletions(-)
>>>
>> .
>> .
>> <snip>
>> .
>> .
>>> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
>>> index 2091508c1620..289c266c2d90 100644
>>> --- a/drivers/pci/endpoint/pci-epc-core.c
>>> +++ b/drivers/pci/endpoint/pci-epc-core.c
>>> @@ -358,13 +358,15 @@ EXPORT_SYMBOL_GPL(pci_epc_unmap_addr);
>>>   * @epc: the EPC device on which address is allocated
>>>   * @func_no: the endpoint function number in the EPC device
>>>   * @phys_addr: physical address of the local system
>>> + * @window: index to the window region where PCI address will be mapped
>>>   * @pci_addr: PCI address to which the physical address should be mapped
>>>   * @size: the size of the allocation
>>>   *
>>>   * Invoke to map CPU address with PCI address.
>>>   */
>>>  int pci_epc_map_addr(struct pci_epc *epc, u8 func_no,
>>> -                  phys_addr_t phys_addr, u64 pci_addr, size_t size)
>>> +                  phys_addr_t phys_addr, int window,
>>> +                  u64 pci_addr, size_t size)
>>>  {
>>>       int ret;
>>>       unsigned long flags;
>>> @@ -376,7 +378,8 @@ int pci_epc_map_addr(struct pci_epc *epc, u8 func_no,
>>>               return 0;
>>>
>>>       spin_lock_irqsave(&epc->lock, flags);
>>> -     ret = epc->ops->map_addr(epc, func_no, phys_addr, pci_addr, size);
>>> +     ret = epc->ops->map_addr(epc, func_no, phys_addr,
>>> +                              window, pci_addr, size);
>>>       spin_unlock_irqrestore(&epc->lock, flags);
>>>
>>>       return ret;
>>> diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
>>> index d2b174ce15de..f205f7819292 100644
>>> --- a/drivers/pci/endpoint/pci-epc-mem.c
>>> +++ b/drivers/pci/endpoint/pci-epc-mem.c
>>> @@ -38,57 +38,77 @@ static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
>>>  /**
>>>   * __pci_epc_mem_init() - initialize the pci_epc_mem structure
>>>   * @epc: the EPC device that invoked pci_epc_mem_init
>>> - * @phys_base: the physical address of the base
>>> - * @size: the size of the address space
>>> - * @page_size: size of each page
>>> + * @windows: pointer to windows supported by the device
>>> + * @num_windows: number of windows device supports
>>>   *
>>>   * Invoke to initialize the pci_epc_mem structure used by the
>>>   * endpoint functions to allocate mapped PCI address.
>>>   */
>>> -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base, size_t size,
>>> -                    size_t page_size)
>>> +int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window *windows,
>>> +                    int num_windows)
>>>  {
>>> -     int ret;
>>> -     struct pci_epc_mem *mem;
>>> -     unsigned long *bitmap;
>>> +     struct pci_epc_mem *mem = NULL;
>>> +     unsigned long *bitmap = NULL;
>>>       unsigned int page_shift;
>>> -     int pages;
>>> +     size_t page_size;
>>>       int bitmap_size;
>>> +     int pages;
>>> +     int ret;
>>> +     int i;
>>>
>>> -     if (page_size < PAGE_SIZE)
>>> -             page_size = PAGE_SIZE;
>>> +     epc->mem_windows = 0;
>>>
>>> -     page_shift = ilog2(page_size);
>>> -     pages = size >> page_shift;
>>> -     bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
>>> +     if (!windows)
>>> +             return -EINVAL;
>>>
>>> -     mem = kzalloc(sizeof(*mem), GFP_KERNEL);
>>> -     if (!mem) {
>>> -             ret = -ENOMEM;
>>> -             goto err;
>>> -     }
>>> +     if (num_windows <= 0)
>>> +             return -EINVAL;
>>>
>>> -     bitmap = kzalloc(bitmap_size, GFP_KERNEL);
>>> -     if (!bitmap) {
>>> -             ret = -ENOMEM;
>>> -             goto err_mem;
>>> -     }
>>> +     epc->mem = kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
>>> +     if (!epc->mem)
>>> +             return -EINVAL;
>>> +
>>> +     for (i = 0; i < num_windows; i++) {
>>> +             page_size = windows[i].page_size;
>>> +             if (page_size < PAGE_SIZE)
>>> +                     page_size = PAGE_SIZE;
>>> +             page_shift = ilog2(page_size);
>>> +             pages = windows[i].size >> page_shift;
>>> +             bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
>>> +
>>> +             mem = kzalloc(sizeof(*mem), GFP_KERNEL);
>>> +             if (!mem) {
>>> +                     ret = -ENOMEM;
>>> +                     goto err_mem;
>>> +             }
>>>
>>> -     mem->bitmap = bitmap;
>>> -     mem->phys_base = phys_base;
>>> -     mem->page_size = page_size;
>>> -     mem->pages = pages;
>>> -     mem->size = size;
>>> +             bitmap = kzalloc(bitmap_size, GFP_KERNEL);
>>> +             if (!bitmap) {
>>> +                     ret = -ENOMEM;
>>> +                     goto err_mem;
>>> +             }
>>>
>>> -     epc->mem = mem;
>>> +             mem->bitmap = bitmap;
>>> +             mem->window.phys_base = windows[i].phys_base;
>>> +             mem->page_size = page_size;
>>> +             mem->pages = pages;
>>> +             mem->window.size = windows[i].size;
>>> +             mem->window.map_size = 0;
>>> +
>>> +             epc->mem[i] = mem;
>>> +     }
>>> +     epc->mem_windows = num_windows;
>>>
>>>       return 0;
>>>
>>>  err_mem:
>>> -     kfree(mem);
>>> +     for (; i >= 0; i--) {
>>
>> mem has to be reinitialized for every iteration of the loop.
> not sure what exactly you mean here, could you please elaborate.

You are invoking "kfree(mem->bitmap);" in a loop without re-initializing
mem. Refer pci_epc_mem_exit() where you are doing the free properly.

> 
>>> +             kfree(mem->bitmap);
>>> +             kfree(epc->mem[i]);
>>> +     }
>>> +     kfree(epc->mem);
>>>
>>> -err:
>>> -return ret;
>>> +     return ret;
>>>  }
>>>  EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
>>>
>>> @@ -101,48 +121,127 @@ EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
>>>   */
>>>  void pci_epc_mem_exit(struct pci_epc *epc)
>>>  {
>>> -     struct pci_epc_mem *mem = epc->mem;
>>> +     struct pci_epc_mem *mem;
>>> +     int i;
>>> +
>>> +     if (!epc->mem_windows)
>>> +             return;
>>> +
>>> +     for (i = 0; i <= epc->mem_windows; i++) {
>>> +             mem = epc->mem[i];

Missing the above line in the error handling above.


>>> +             kfree(mem->bitmap);
>>> +             kfree(epc->mem[i]);
>>> +     }

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
