Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A365434BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qQXlu21fJX1HftbKufCsYfb+O+kHD+oIk1OAn2avw8E=; b=XtUxLC6dm579M2bd0x5XI0Fd6
	ld+fJm7sf6wLGVk1TRJ4EiluliMM+bn2gMx7zf+hJjF1i5d7UTSQT5IIWpXW4j1ombJBcL9KZJ1w2
	nfvOu+IZyDtESIpGsmXDxJxonN/e5DCNafKqnkQqhD+iR1Ys/znS3tnQJkLABGZZatT/RmtSkgmDx
	8Vakrdx7NbjRKPphwOw2+OoWTRmsMOPPnrMrFLS5panvbR4N6IK1Nur5EZRWaIeY0Hke0E6bHKUhq
	M2sneb+jvyXJVfVZpH67n3AWZveVew1MLv8RqXKTXz8dqCZ4ZAirDS2NNGdZ/7SUgdxAO3fODiNh0
	hgjKSjAvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMD2-000811-K2; Thu, 13 Jun 2019 09:39:52 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMCp-00080J-L4
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:39:41 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C3BCD401283C5328100B;
 Thu, 13 Jun 2019 17:39:29 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 13 Jun 2019 17:39:18 +0800
From: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v4 1/3] lib: logic_pio: Use logical PIO low-level
 accessors for !CONFIG_INDIRECT_PIO
To: Bjorn Helgaas <helgaas@kernel.org>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-2-git-send-email-john.garry@huawei.com>
 <20190613023947.GD13533@google.com>
Message-ID: <8ef228f8-97cb-e40e-ea6b-410b80a845cf@huawei.com>
Date: Thu, 13 Jun 2019 10:39:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190613023947.GD13533@google.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_023940_151928_4B68974F 
X-CRM114-Status: GOOD (  26.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/06/2019 03:39, Bjorn Helgaas wrote:
> On Tue, Jun 11, 2019 at 10:12:52PM +0800, John Garry wrote:
>> Currently we only use logical PIO low-level accessors for when
>> CONFIG_INDIRECT_PIO is enabled.
>>
>> Otherwise we just use inb/out et all directly.
>>

Hi Bjorn,

thanks for checking this.

>> It is useful to now use logical PIO accessors for all cases, so we can add
>> legality checks to accesses. Such a check would be for ensuring that the
>> PCI IO port has been IO remapped prior to the access.
>
> IIUC, *this* patch doesn't actually add any

ok, fine. I suppose that the subsequent patches in the series describe 
the motivation.

   additional checks, so no
> need to mention that in this commit log.
>
> One thing this patch *does* do is "#define inb logic_inb" whenever
> PCI_IOBASE is defined (we used to do that #define only when
> CONFIG_INDIRECT_PIO was defined).

Yes, right.

 >  That's a pretty important change and needs to be very clear in the 
commit log.

ok

>
> I'm not sure it's even safe, because CONFIG_INDIRECT_PIO depends on
> ARM64,  but PCI_IOBASE is defined on most arches via asm-generic/io.h,
> so this potentially affects arches other than ARM64.

It would do. It would affect any arch which defines PCI_IOBASE and does 
not have arch-specific definition of inb et all.

>
> If possible, split out the cleanup patches as below and make the patch
> that does this PCI_IOBASE change as small as possible so we can
> evaluate that change by itself.
>

Fine

>> Using the logical PIO accesses will add a little processing overhead, but
>> that's ok as IO port accesses are relatively slow anyway.
>>
>> Some changes are also made to stop spilling so many lines under
>> CONFIG_INDIRECT_PIO.
>
> "Some changes are also made" is a good hint to me that this patch
> might be able to be split up :)
>
>> Signed-off-by: John Garry <john.garry@huawei.com>
>> ---
>>  include/linux/logic_pio.h |  7 ++--
>>  lib/logic_pio.c           | 83 ++++++++++++++++++++++++++++-----------
>>  2 files changed, 63 insertions(+), 27 deletions(-)
>>
>> diff --git a/include/linux/logic_pio.h b/include/linux/logic_pio.h
>> index cbd9d8495690..06d22b2ec99f 100644
>> --- a/include/linux/logic_pio.h
>> +++ b/include/linux/logic_pio.h
>> @@ -37,7 +37,7 @@ struct logic_pio_host_ops {
>>  		     size_t dwidth, unsigned int count);
>>  };
>>
>> -#ifdef CONFIG_INDIRECT_PIO
>> +#if defined(PCI_IOBASE)
>
> Why change the #ifdef style?  I understand these are equivalent, but
> unless there's a movement to change from "#ifdef X" to "#if defined(X)"
> I wouldn't bother.

Not intentional. I can keep this style.

>
>>  u8 logic_inb(unsigned long addr);
>>  void logic_outb(u8 value, unsigned long addr);
>>  void logic_outw(u16 value, unsigned long addr);
>> @@ -102,6 +102,7 @@ void logic_outsl(unsigned long addr, const void *buffer, unsigned int count);
>>  #define outsl logic_outsl
>>  #endif
>>
>> +#if defined(CONFIG_INDIRECT_PIO)
>>  /*
>>   * We reserve 0x4000 bytes for Indirect IO as so far this library is only
>>   * used by the HiSilicon LPC Host. If needed, we can reserve a wider IO
>> @@ -109,10 +110,10 @@ void logic_outsl(unsigned long addr, const void *buffer, unsigned int count);
>>   */
>>  #define PIO_INDIRECT_SIZE 0x4000
>>  #define MMIO_UPPER_LIMIT (IO_SPACE_LIMIT - PIO_INDIRECT_SIZE)
>> -#else
>> +#else /* CONFIG_INDIRECT_PIO */
>>  #define MMIO_UPPER_LIMIT IO_SPACE_LIMIT
>>  #endif /* CONFIG_INDIRECT_PIO */
>> -
>> +#endif /* PCI_IOBASE */
>>  struct logic_pio_hwaddr *find_io_range_by_fwnode(struct fwnode_handle *fwnode);
>>  unsigned long logic_pio_trans_hwaddr(struct fwnode_handle *fwnode,
>>  			resource_size_t hw_addr, resource_size_t size);
>> diff --git a/lib/logic_pio.c b/lib/logic_pio.c
>> index feea48fd1a0d..40d9428010e1 100644
>> --- a/lib/logic_pio.c
>> +++ b/lib/logic_pio.c
>> @@ -191,7 +191,8 @@ unsigned long logic_pio_trans_cpuaddr(resource_size_t addr)
>>  	return ~0UL;
>>  }
>>
>> -#if defined(CONFIG_INDIRECT_PIO) && defined(PCI_IOBASE)
>> +#if defined(PCI_IOBASE)
>> +#if defined(CONFIG_INDIRECT_PIO)
>>  #define BUILD_LOGIC_IO(bw, type)					\
>>  type logic_in##bw(unsigned long addr)					\
>>  {									\
>> @@ -200,11 +201,11 @@ type logic_in##bw(unsigned long addr)					\
>>  	if (addr < MMIO_UPPER_LIMIT) {					\
>>  		ret = read##bw(PCI_IOBASE + addr);			\
>>  	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) { \
>> -		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
>> +		struct logic_pio_hwaddr *range = find_io_range(addr);	\
>> +		size_t sz = sizeof(type);				\
>
> I don't mind changing "entry" to "range" and adding "sz".  But that
> could be done in a separate "no functional change" patch that is
> trivial to review, which would make *this* patch smaller and easier to
> review.

ok

>
> Another "no functional change" simplification patch would be to
> replace this:
>
>   type ret = (type)~0;
>
>   if (addr < MMIO_UPPER_LIMIT) {
>     ret = read##bw(...);
>   } else if (...) {
>     if (range && range->ops)
>       ret = range->ops->in(...);
>     else
>       WARN_ON_ONCE();
>   }
>   return ret;
>
> with this:
>
>   if (addr < MMIO_UPPER_LIMIT)
>     return read##bw(...);
>
>   if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {
>     if (range && range->ops)
>       return range->ops->in(...);
>     else
>       WARN_ON_ONCE();
>   }
>
>   return (type)~0;
>
> Finally, I think the end result would be a little easier to read if
> you restructured the #ifdefs like this:
>
>   #ifdef PCI_IOBASE
>   #define BUILD_LOGIC_IO(...)
>   type logic_in##bw(...)
>   {
>     if (addr < MMIO_UPPER_LIMIT)
>       return read##bw(...);
>
>   #ifdef CONFIG_INDIRECT_PIO

I get your idea, but I don't think that that we can have an ifdef in 
macros (BUILD_LOGIC_IO) like this.

>     if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {
>       if (range && range->ops)
> 	return range->ops->in(...);
>       else
> 	WARN_ON_ONCE();
>     }
>   #endif
>
>     return (type)~0;
>   }
>
> That does mean a CONFIG_INDIRECT_PIO #ifdef in each in/out/ins/outs
> builder, but it's more localized so I think it's easier to understand
> that INDIRECT_PIO is just adding a new case to the default path.

I'll see what I can do to improve the flow. But any change would also 
depend on your idea in response to patch v2, to unify the 2 types of 
logic_inb.

>
>> -		if (entry && entry->ops)				\
>> -			ret = entry->ops->in(entry->hostdata,		\
>> -					addr, sizeof(type));		\
>> +		if (range && range->ops)				\
>> +			ret = range->ops->in(range->hostdata, addr, sz);\
>>  		else							\
>>  			WARN_ON_ONCE(1);				\
>>  	}								\
>> @@ -216,49 +217,83 @@ void logic_out##bw(type value, unsigned long addr)			\
>>  	if (addr < MMIO_UPPER_LIMIT) {					\
>>  		write##bw(value, PCI_IOBASE + addr);			\


thanks again


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
