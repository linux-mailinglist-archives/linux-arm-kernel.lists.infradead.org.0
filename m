Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8773611EC8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 22:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=24AIFDp2NRRgXgNsZGmK/2KSlq/8AM50mYizG9BOAmQ=; b=E9uy4q/GkfRMXX
	fAF4xw94BgP5Jj4NtHRa2mSZPZdSHKgo5lKE1fZJirhYysd+gUksZ7lbyVe75xbUZ/h/u6JWnHfbS
	u6/7LqH5isiKqW4+y5EBV91SVucXkM1ZCuIQRFZhuni9h/t3+oEIOwhXDqWmL68ZiZKuTphKxTHAd
	06+y6HDKFWfgWLWWbkubKiKerfK7KPnR/PY1wnWu3wblcPbSd2fldqNknHb5JYOnmctWPvxHtYePR
	mTn20cf9EWX6fDV2STFSSsJYI58mlWWxzjLHGNCsKqB71wU1P0mKOYpZDmevJX1tRfIx93GZWvx61
	GZ+kyT7PulNOaLWx00pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifs8s-0006Z0-Hm; Fri, 13 Dec 2019 21:06:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifs8i-0006YV-Fm; Fri, 13 Dec 2019 21:06:22 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 233352467F;
 Fri, 13 Dec 2019 21:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576271179;
 bh=OP2MD7vVXuZ/HR6hPSa6omAMP75J4W5hL0C2oHOrUbs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=tx+2GWSRS+H8b4lB7kgdEPsStI0GtH+zDkqAG67ypoIIrqqt1s663RnkMCFrLSqff
 XJ31ChhjjricI9t0Z3pQjlMvfnk45c2HM93aIYDFnOUALEy6BYrnt3S/OJxBr+as0W
 AEDghZjQNgcTIedqSsall4WFzRdLjOdmi2o27CEU=
Date: Fri, 13 Dec 2019 15:06:18 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: Re: [v2 2/6] pci: endpoint: add support to handle features of
 outbound memory
Message-ID: <20191213195727.GA170874@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213084748.11210-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_130620_568134_490BC330 
X-CRM114-Status: GOOD (  28.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
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
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Catalin Marinas <catalin.marinas@arm.com>,
 devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 08:47:44AM +0000, Lad Prabhakar wrote:
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> rcar pcie controller has support to map multiple memory regions
> for mapping the outbound memory in local system, this feature
> inspires to add support for handling such features in endpoint
> framework. similar features exists on other controllers where
> outbound regions can be specifically used for low/high priority
> transactions, and regions can be flagged and used for allocation
> of large/small memory allocations.
> This patch adds support to handle such features, where the
> properties described for outbound regions are used whenever a
> request to memory is made.

For this and the other patches, please:

  - start sentences with a capital letter
  - leave a blank line between paragraphs
  - wrap commit log text to use the whole 80 character line (I wrap to
    75 characters to account for "git log" indenting by 4 spaces)
  - check your signed-off-by: it shows your name as "Lad, Prabhakar",
    while your email From: line shows "Lad Prabhakar".  Choose one :)

> diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
> index 2bf8bd1..4b610cd 100644
> --- a/drivers/pci/endpoint/pci-epc-mem.c
> +++ b/drivers/pci/endpoint/pci-epc-mem.c

> -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base, size_t size,
> -		       size_t page_size)
> +int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window *windows,
> +		       int num_windows, size_t page_size)
>  {
> -	int ret;
> -	struct pci_epc_mem *mem;
> -	unsigned long *bitmap;
> +	struct pci_epc_mem *mem = NULL;
> +	unsigned long *bitmap = NULL;
>  	unsigned int page_shift;
> -	int pages;
>  	int bitmap_size;
> +	int pages;
> +	int ret;
> +	int i;
> +
> +	epc->mem_windows = 0;
> +
> +	if (!windows)
> +		return -EINVAL;
> +
> +	if (num_windows <= 0)
> +		return -EINVAL;

Why is num_windows signed?

>  void pci_epc_mem_exit(struct pci_epc *epc)
>  {
> -	struct pci_epc_mem *mem = epc->mem;
> +	struct pci_epc_mem *mem;
> +	int i;
> +
> +	if (!epc->mem_windows)
> +		return;

If you fix the loop below, why do you even need to test this?

> +	for (i = 0; i <= epc->mem_windows; i--) {

Huh?  "<="?  "i--"?  Surely you mean

	for (i = 0; i < epc->mem_windows; i++) {

> +		mem = epc->mem[i];
> +		kfree(mem->bitmap);
> +		kfree(epc->mem[i]);
> +	}
> +	kfree(epc->mem);
>  
>  	epc->mem = NULL;
> -	kfree(mem->bitmap);
> -	kfree(mem);
> +	epc->mem_windows = 0;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
>  
> +static int pci_epc_find_best_fit_window(struct pci_epc *epc, size_t size,
> +					u32 flags)

Can this just return a struct pci_epc_mem *, so the caller doesn't
have to lookup epc->mem[i] again?

> +{
> +	size_t window_least_size = 0;
> +	int best_fit_window = -1;
> +	struct pci_epc_mem *mem;
> +	size_t actual_size;
> +	size_t avail_size;
> +	u32 win_flags;
> +	int i;
> +
> +	for (i = 0; i < epc->mem_windows; i++) {
> +		mem = epc->mem[i];
> +		win_flags = mem->window.flags;
> +
> +		actual_size = ALIGN(size, mem->page_size);
> +		avail_size = mem->window.size - mem->window.map_size;
> +
> +		if (win_flags == 0x0) {
> +			if (best_fit_window == -1) {
> +				if (actual_size <= avail_size) {
> +					best_fit_window = i;
> +					window_least_size = mem->window.size;
> +				}
> +			} else {
> +				if (actual_size <= avail_size &&
> +				    mem->window.size < window_least_size) {
> +					best_fit_window = i;
> +					window_least_size = mem->window.size;
> +				}
> +			}
> +		} else {
> +			if (mem->window.map_size &&
> +			    (win_flags | PCI_EPC_WINDOW_FLAG_NON_MULTI_ALLOC))
> +				continue;
> +
> +			if (!(win_flags | flags))
> +				continue;
> +
> +			if (best_fit_window == -1) {
> +				if (actual_size <= avail_size) {
> +					best_fit_window = i;
> +					window_least_size = mem->window.size;
> +				}
> +			} else {
> +				if (actual_size <= avail_size &&
> +				    mem->window.size < window_least_size) {
> +					best_fit_window = i;
> +					window_least_size = mem->window.size;
> +				}
> +			}
> +		}
> +	}
> +
> +	return best_fit_window;
> +}
> +
>  /**
>   * pci_epc_mem_alloc_addr() - allocate memory address from EPC addr space
>   * @epc: the EPC device on which memory has to be allocated
>   * @phys_addr: populate the allocated physical address here
> + * @window: populate the window here which will be used to map PCI address
>   * @size: the size of the address space that has to be allocated
> + * @flags: look for window as requested in flags
>   *
>   * Invoke to allocate memory address from the EPC address space. This
>   * is usually done to map the remote RC address into the local system.
>   */
>  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> -				     phys_addr_t *phys_addr, size_t size)
> +				     phys_addr_t *phys_addr,
> +				     int *window, size_t size, uint32_t flags)
>  {
> +	int best_fit = PCI_EPC_DEFAULT_WINDOW;
> +	void __iomem *virt_addr = NULL;
> +	struct pci_epc_mem *mem;
> +	unsigned int page_shift;
>  	int pageno;
> -	void __iomem *virt_addr;
> -	struct pci_epc_mem *mem = epc->mem;
> -	unsigned int page_shift = ilog2(mem->page_size);
>  	int order;
>  
> +	if (epc->mem_windows <= 0)
> +		return NULL;
> +
> +	if (epc->mem_windows > 1) {

Why bother testing epc->mem_windows here?  Just make sure
pci_epc_find_best_fit_window() returns the correct thing for
"mem_windows == 0" and "mem_windows == 1", and remove both the tests
above.

> +		best_fit = pci_epc_find_best_fit_window(epc, size, flags);
> +		if (best_fit < 0)
> +			return NULL;
> +	}
> +
> +	mem = epc->mem[best_fit];
>  	size = ALIGN(size, mem->page_size);
> +	if (size > (mem->window.size - mem->window.map_size))
> +		return NULL;
> +	page_shift = ilog2(mem->page_size);
>  	order = pci_epc_mem_get_order(mem, size);
>  
>  	pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
>  	if (pageno < 0)
>  		return NULL;
>  
> -	*phys_addr = mem->phys_base + (pageno << page_shift);
> +	*phys_addr = mem->window.phys_base + (pageno << page_shift);
>  	virt_addr = ioremap(*phys_addr, size);
> -	if (!virt_addr)
> +	if (!virt_addr) {
>  		bitmap_release_region(mem->bitmap, pageno, order);
> +	} else {
> +		mem->window.map_size += size;
> +		*window = best_fit;
> +	}
>  
>  	return virt_addr;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
>  
> +static int pci_epc_get_matching_window(struct pci_epc *epc,
> +				       phys_addr_t phys_addr)

Return struct pci_epc_mem * again?

> +{
> +	struct pci_epc_mem *mem;
> +	int i;
> +
> +	for (i = 0; i < epc->mem_windows; i++) {
> +		mem = epc->mem[i];
> +
> +		if (mem->window.phys_base == phys_addr)
> +			return i;
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  /**
>   * pci_epc_mem_free_addr() - free the allocated memory address
>   * @epc: the EPC device on which memory was allocated
> @@ -155,16 +281,26 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
>  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
>  			   void __iomem *virt_addr, size_t size)
>  {
> +	struct pci_epc_mem *mem;
> +	unsigned int page_shift;
> +	int window = 0;
>  	int pageno;
> -	struct pci_epc_mem *mem = epc->mem;
> -	unsigned int page_shift = ilog2(mem->page_size);
>  	int order;
>  
> +	if (epc->mem_windows > 1) {

Same here (unnecessary test).

> +		window = pci_epc_get_matching_window(epc, phys_addr);
> +		if (window < 0)
> +			return;
> +	}
> +
> +	mem = epc->mem[window];
> +	page_shift = ilog2(mem->page_size);
>  	iounmap(virt_addr);
> -	pageno = (phys_addr - mem->phys_base) >> page_shift;
> +	pageno = (phys_addr - mem->window.phys_base) >> page_shift;
>  	size = ALIGN(size, mem->page_size);
>  	order = pci_epc_mem_get_order(mem, size);
>  	bitmap_release_region(mem->bitmap, pageno, order);
> +	mem->window.map_size -= size;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_free_addr);

> @@ -85,7 +126,8 @@ struct pci_epc_mem {
>   * @dev: PCI EPC device
>   * @pci_epf: list of endpoint functions present in this EPC device
>   * @ops: function pointers for performing endpoint operations
> - * @mem: address space of the endpoint controller
> + * @mem: array of address space of the endpoint controller
> + * @mem_windows: number of windows supported by device
>   * @max_functions: max number of functions that can be configured in this EPC
>   * @group: configfs group representing the PCI EPC device
>   * @lock: spinlock to protect pci_epc ops
> @@ -94,7 +136,8 @@ struct pci_epc {
>  	struct device			dev;
>  	struct list_head		pci_epf;
>  	const struct pci_epc_ops	*ops;
> -	struct pci_epc_mem		*mem;
> +	struct pci_epc_mem		**mem;
> +	int				mem_windows;

Can't this be unsigned int and then there's no need to check
"mem_windows < 0"?

>  	u8				max_functions;
>  	struct config_group		*group;
>  	/* spinlock to protect against concurrent access of EP controller */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
