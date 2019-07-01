Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D048C4324C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 05:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mDjXHhxAw1kiYl+6LFIWhYgrfya6OX5mFrjHKkaMqE=; b=m0b6Aht2W4Pjb5
	G+eaBf4/81ejPW1R9CuKuUw7HbRtM0vtTiBEXErV2N1mJAwDGuxLQW//579DOY+oidqWfxeTo41H7
	ej/vv7tFlITx1+47mQJWruEdYznn7TGtk/EMjZxl302RVzV2h9R4FeiBRpW9Sm+OFpDjmdrHWYSa1
	e7iHYM1sYu5btdSZgSxbOr2F4m2KSvwbFBU1RPLoA/Pf1ijj5ttzteSLzymZ3C9Cbp2M4slnxYg4B
	CfU0v+bH99uIgypY4yuPHcnnI8NbNG7ktRA4bxWdpVNldWvJ7vk+e2gfCkGTqzaVGH4wuq1F2nR0i
	bJGgIC1ao2y3I6+YCV+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbGII-00031e-MU; Thu, 13 Jun 2019 03:20:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbGI4-000314-85
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 03:20:42 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66BC220B7C;
 Thu, 13 Jun 2019 03:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560396038;
 bh=x3MUzCH5UZGhEBUiF088WIjr8l2fjI85tqPUGsRsoRY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u6ocmAvsHBkOYD3zYvfDQuLYTxKyn5ME5OPbAODZN/ESQj+fzQXEIhtjuOWjm4lWT
 Lo5nqoPCVtKjkWpN1tiHGN8VxltaCkQK/Xu9YAuo150lwxDJucl2pyKlNFTjrBVyDU
 CzYn2i1AKrL/bQyQ8Hgft6BCThK/l5S20fVl5hSM=
Date: Wed, 12 Jun 2019 22:20:34 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v4 2/3] lib: logic_pio: Reject accesses to unregistered
 CPU MMIO regions
Message-ID: <20190613032034.GE13533@google.com>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-3-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560262374-67875-3-git-send-email-john.garry@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_202040_327974_13ABE73C 
X-CRM114-Status: GOOD (  26.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, linux-pci@vger.kernel.org, will.deacon@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:12:53PM +0800, John Garry wrote:
> Currently when accessing logical indirect PIO addresses in
> logic_{in, out}{,s}, we first ensure that the region is registered.

I think logic_pio is specifically concerned with I/O port space, so
it's a little bit unfortunate that we named this "PIO".

PIO is a general term for "Programmed I/O", which just means the CPU
is involved in each transfer, as opposed to DMA.  The transfers can be
to either MMIO or I/O port space.

So this ends up being a little confusing because I think you mean
"Port I/O", not "Programmed I/O".

> However, no such check exists for CPU MMIO regions. The CPU MMIO regions
> would be registered by the PCI host (when PCI_IOBASE is defined) in
> pci_register_io_range().

IIUC this "CPU MMIO region" is an MMIO region where a memory load or
store from the CPU is converted by a PCI host bridge into an I/O port
transaction on PCI.

Again IIUC, logic_pio supports two kinds of I/O port space accesses:

  1) The simple "bridge converts loads/stores to an MMIO region to PCI
     I/O port transactions" kind, and

  2) The more complicated "somebody supplies logic_pio_host_ops
     functions that do arbitrary magic to generate I/O port
     transactions on some bus.

And this patch is making the first kind smarter.  Previously it would
perform the memory access whenever "addr < MMIO_UPPER_LIMIT", but
after this patch it will only do it if find_io_range() succeeds.

Right?  Sorry for restating what probably should have been obvious to
me.

I have two observations here:

  1) The simple "bridge converts CPU MMIO space to PCI I/O port space"
     flavor is essentially identical to what ia64 (and probably other
     architectures) does.  This should really be combined somehow.

  2) If you made a default set of logic_pio_host_ops that merely did
     loads/stores and maybe added a couple fields in the struct
     logic_pio_hwaddr, I bet you could unify the two kinds so
     logic_inb() would look something like this:

       u8 logic_inb(unsigned long addr)
       {
         struct logic_pio_hwaddr *range = find_io_range(addr);

	 if (!range)
	   return (u8) ~0;

         return (u8) range->ops->in(range->hostdata, addr, sz);
       }

> We have seen scenarios when systems which don't have a PCI host, or they
> do but the PCI host probe fails, certain drivers attempts to still attempt
> to access PCI IO ports; examples are in [1] and [2].
> 
> Such is a case on an ARM64 system without a PCI host:
> 
> root@(none)$ insmod hwmon/f71805f.ko
>  Unable to handle kernel paging request at virtual address ffff7dfffee0002e
>  Mem abort info:
>    ESR = 0x96000046
>    Exception class = DABT (current EL), IL = 32 bits
>    SET = 0, FnV = 0
>    EA = 0, S1PTW = 0
>  Data abort info:
>    ISV = 0, ISS = 0x00000046
>    CM = 0, WnR = 1
>  swapper pgtable: 4k pages, 48-bit VAs, pgdp = (____ptrval____)
>  [ffff7dfffee0002e] pgd=000000000141c003, pud=000000000141d003, pmd=0000000000000000
>  Internal error: Oops: 96000046 [#1] PREEMPT SMP
>  Modules linked in: f71805f(+)
>  CPU: 20 PID: 2736 Comm: insmod Not tainted 5.1.0-rc1-00003-g6f1bfec2a620-dirty #99
>  Hardware name: Huawei Taishan 2280 /D05, BIOS Hisilicon D05 IT21 Nemo 2.0 RC0 04/18/2018
>  pstate: 80000005 (Nzcv daif -PAN -UAO)
>  pc : logic_outb+0x54/0xb8
>  lr : f71805f_find+0x2c/0x1b8 [f71805f]
>  sp : ffff000025fbba90
>  x29: ffff000025fbba90 x28: ffff000008b944d0
>  x27: ffff000025fbbdf0 x26: 0000000000000100
>  x25: ffff801f8c270580 x24: ffff000011420000
>  x23: ffff000025fbbb3e x22: ffff000025fbbb40
>  x21: ffff000008b991b8 x20: 0000000000000087
>  x19: 000000000000002e x18: ffffffffffffffff
>  x17: 0000000000000000 x16: 0000000000000000
>  x15: ffff00001127d6c8 x14: 0000000000000000
>  x13: 0000000000000000 x12: 0000000000000000
>  x11: 0000000000010820 x10: 0000841fdac40000
>  x9 : 0000000000000001 x8 : 0000000040000000
>  x7 : 0000000000210d00 x6 : 0000000000000000
>  x5 : ffff801fb6a46040 x4 : ffff841febeaeda0
>  x3 : 0000000000ffbffe x2 : ffff000025fbbb40
>  x1 : ffff7dfffee0002e x0 : ffff7dfffee00000
>  Process insmod (pid: 2736, stack limit = 0x(____ptrval____))
>  Call trace:
>   logic_outb+0x54/0xb8
>   f71805f_find+0x2c/0x1b8 [f71805f]
>   f71805f_init+0x38/0xe48 [f71805f]
>   do_one_initcall+0x5c/0x198
>   do_init_module+0x54/0x1b0
>   load_module+0x1dc4/0x2158
>   __se_sys_init_module+0x14c/0x1e8
>   __arm64_sys_init_module+0x18/0x20
>   el0_svc_common+0x5c/0x100
>   el0_svc_handler+0x2c/0x80
>   el0_svc+0x8/0xc
>  Code: d2bfdc00 f2cfbfe0 f2ffffe0 8b000021 (39000034)
>  ---[ end trace 10ea80bde051bbfc ]---
> root@(none)$
> 
> Well-behaved drivers call request_{muxed_}region() to grab the IO port
> region, but success here still doesn't actually mean that there is some IO
> port mapped in this region.
> 
> This patch adds a check to ensure that the CPU MMIO region is registered
> prior to accessing the PCI IO ports.
> 
> Any failed checks silently return.

I *think* what you're doing here is making inb/outb/etc work the same
as on x86, i.e., if no device responds to an inb(), the caller gets
~0, and if no device claims an outb() the data gets dropped.

That should be explicit in the commit log.

> [1] https://lore.kernel.org/linux-pci/56F209A9.4040304@huawei.com
> [2] https://lore.kernel.org/linux-arm-kernel/e6995b4a-184a-d8d4-f4d4-9ce75d8f47c0@huawei.com/
> 
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  lib/logic_pio.c | 60 +++++++++++++++++++++++++++++++++----------------
>  1 file changed, 41 insertions(+), 19 deletions(-)
> 
> diff --git a/lib/logic_pio.c b/lib/logic_pio.c
> index 40d9428010e1..47d24f428908 100644
> --- a/lib/logic_pio.c
> +++ b/lib/logic_pio.c
> @@ -126,7 +126,7 @@ static struct logic_pio_hwaddr *find_io_range(unsigned long pio)
>  		if (in_range(pio, range->io_start, range->size))
>  			return range;
>  	}
> -	pr_err("PIO entry token %lx invalid\n", pio);
> +
>  	return NULL;
>  }
>  
> @@ -197,11 +197,12 @@ unsigned long logic_pio_trans_cpuaddr(resource_size_t addr)
>  type logic_in##bw(unsigned long addr)					\
>  {									\
>  	type ret = (type)~0;						\
> +	struct logic_pio_hwaddr *range = find_io_range(addr);		\
>  									\
>  	if (addr < MMIO_UPPER_LIMIT) {					\
> -		ret = read##bw(PCI_IOBASE + addr);			\
> +		if (range)						\
> +			ret = read##bw(PCI_IOBASE + addr);		\
>  	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) { \
> -		struct logic_pio_hwaddr *range = find_io_range(addr);	\
>  		size_t sz = sizeof(type);				\
>  									\
>  		if (range && range->ops)				\
> @@ -214,10 +215,12 @@ type logic_in##bw(unsigned long addr)					\
>  									\
>  void logic_out##bw(type value, unsigned long addr)			\
>  {									\
> +	struct logic_pio_hwaddr *range = find_io_range(addr);		\
> +									\
>  	if (addr < MMIO_UPPER_LIMIT) {					\
> -		write##bw(value, PCI_IOBASE + addr);			\
> +		if (range)						\
> +			write##bw(value, PCI_IOBASE + addr);		\
>  	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {	\
> -		struct logic_pio_hwaddr *range = find_io_range(addr);	\
>  		size_t sz = sizeof(type);				\
>  									\
>  		if (range && range->ops)				\
> @@ -230,10 +233,12 @@ void logic_out##bw(type value, unsigned long addr)			\
>  									\
>  void logic_ins##bw(unsigned long addr, void *buf, unsigned int cnt)	\
>  {									\
> +	struct logic_pio_hwaddr *range = find_io_range(addr);		\
> +									\
>  	if (addr < MMIO_UPPER_LIMIT) {					\
> -		reads##bw(PCI_IOBASE + addr, buf, cnt);			\
> +		if (range)						\
> +			reads##bw(PCI_IOBASE + addr, buf, cnt);		\
>  	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {	\
> -		struct logic_pio_hwaddr *range = find_io_range(addr);	\
>  		size_t sz = sizeof(type);				\
>  									\
>  		if (range && range->ops)				\
> @@ -242,16 +247,17 @@ void logic_ins##bw(unsigned long addr, void *buf, unsigned int cnt)	\
>  		else							\
>  			WARN_ON_ONCE(1);				\
>  	}								\
> -									\
>  }									\
>  									\
>  void logic_outs##bw(unsigned long addr, const void *buf,		\
>  		    unsigned int cnt)					\
>  {									\
> +	struct logic_pio_hwaddr *range = find_io_range(addr);		\
> +									\
>  	if (addr < MMIO_UPPER_LIMIT) {					\
> -		writes##bw(PCI_IOBASE + addr, buf, cnt);		\
> +		if (range)						\
> +			writes##bw(PCI_IOBASE + addr, buf, cnt);	\
>  	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {	\
> -		struct logic_pio_hwaddr *range = find_io_range(addr);	\
>  		size_t sz = sizeof(type);				\
>  									\
>  		if (range && range->ops)				\
> @@ -269,28 +275,44 @@ type logic_in##bw(unsigned long addr)					\
>  {									\
>  	type ret = (type)~0;						\
>  									\
> -	if (addr < MMIO_UPPER_LIMIT)					\
> -		ret = read##bw(PCI_IOBASE + addr);			\
> +	if (addr < MMIO_UPPER_LIMIT) {					\
> +		struct logic_pio_hwaddr *range = find_io_range(addr);	\
> +									\
> +		if (range)						\
> +			ret = read##bw(PCI_IOBASE + addr);		\
> +	}								\
>  	return ret;							\
>  }									\
>  									\
> -void logic_out##bw(type value, unsigned long addr)			\
> +void logic_out##bw(type val, unsigned long addr)			\
>  {									\
> -	if (addr < MMIO_UPPER_LIMIT)					\
> -		write##bw(value, PCI_IOBASE + addr);			\
> +	if (addr < MMIO_UPPER_LIMIT) {					\
> +		struct logic_pio_hwaddr *range = find_io_range(addr);	\
> +									\
> +		if (range)						\
> +			write##bw(val, PCI_IOBASE + addr);		\
> +	}								\
>  }									\
>  									\
>  void logic_ins##bw(unsigned long addr, void *buf, unsigned int cnt)	\
>  {									\
> -	if (addr < MMIO_UPPER_LIMIT)					\
> -		reads##bw(PCI_IOBASE + addr, buf, cnt);			\
> +	if (addr < MMIO_UPPER_LIMIT) {					\
> +		struct logic_pio_hwaddr *range = find_io_range(addr);	\
> +									\
> +		if (range)						\
> +			reads##bw(PCI_IOBASE + addr, buf, cnt);		\
> +	}								\
>  }									\
>  									\
>  void logic_outs##bw(unsigned long addr, const void *buf,		\
>  		    unsigned int cnt)					\
>  {									\
> -	if (addr < MMIO_UPPER_LIMIT)					\
> -		writes##bw(PCI_IOBASE + addr, buf, cnt);		\
> +	if (addr < MMIO_UPPER_LIMIT) {					\
> +		struct logic_pio_hwaddr *range = find_io_range(addr);	\
> +									\
> +		if (range)						\
> +			writes##bw(PCI_IOBASE + addr, buf, cnt);	\
> +	}								\
>  }
>  #endif /* CONFIG_INDIRECT_PIO */
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
