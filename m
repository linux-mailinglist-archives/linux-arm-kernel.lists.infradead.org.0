Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B062E1C19B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=alvYdDztDzlVNEwxMDgwn/idg6LQ+CixF1MO3K9XtbI=; b=XpRRs2y2ofW575qYVsccBDcGf
	xf4V5obnWgFUGMBOQZ6d/cCGZzto9ZBOheQai/vtfTzg1RrrOKh9Vz3kmK70OzSajFaWHEpnroNuv
	7mVLD1ERfs9uDR9v6s6gr6jBMDtNXFe5J43/a/uSUIjmSi39+PcRqL6kSFlFhK449m8HXRNhB5vxQ
	3lHgsWdCfXkZgQ38pz5GVBMBa6p36AeCwSy9EoO+9yXx/RDL/tim35wCbmbOd6nJJIxe36G71GRki
	5YmTlirYRGR0nkDFcABLJMdMinZjRTiCgJmWdlsCwbCMwvnmWqrcY3xFizV/3RwuXT+brEcLaec+a
	TW0WiR6kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXiH-00070W-Vw; Fri, 01 May 2020 15:36:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXi9-0006zz-Vk
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:36:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53DA130E;
 Fri,  1 May 2020 08:36:21 -0700 (PDT)
Received: from [10.57.39.240] (unknown [10.57.39.240])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 050AD3F68F;
 Fri,  1 May 2020 08:36:19 -0700 (PDT)
Subject: Re: [PATCH] usb: usbfs: correct kernel->user page attribute mismatch
To: Greg KH <gregkh@linuxfoundation.org>, Jeremy Linton <jeremy.linton@arm.com>
References: <20200430211922.929165-1-jeremy.linton@arm.com>
 <20200501070500.GA887524@kroah.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e1ce8224-db38-c0c6-02c0-2032f4165903@arm.com>
Date: Fri, 1 May 2020 16:36:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200501070500.GA887524@kroah.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_083622_059624_F63BBBC6 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: git@thegavinli.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 jarkko.sakkinen@linux.intel.com, stern@rowland.harvard.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-01 8:05 am, Greg KH wrote:
> On Thu, Apr 30, 2020 at 04:19:22PM -0500, Jeremy Linton wrote:
>> On arm64, and possibly other architectures, requesting
>> IO coherent memory may return Normal-NC if the underlying
>> hardware isn't coherent. If these pages are then
>> remapped into userspace as Normal, that defeats the
>> purpose of getting Normal-NC, as well as resulting in
>> mappings with differing cache attributes.
> 
> What is "Normal-NC"?
> 
>> In particular this happens with libusb, when it attempts
>> to create zero-copy buffers as is used by rtl-sdr, and
> 
> What is "rtl-sdr"
> 
>> maybe other applications. The result is usually
>> application death.
> 
> So is this a new problem?  Old problem?  Old problem only showing up on
> future devices?  On current devices?  I need a hint here as to know if
> this is a bugfix or just work to make future devices work properly.
> 
>>
>> If dma_mmap_attr() is used instead of remap_pfn_range,
>> the page cache/etc attributes can be matched between the
>> kernel and userspace.
>>
>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> ---
>>   drivers/usb/core/devio.c | 5 ++---
>>   1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
>> index 6833c918abce..1e7458dd6e5d 100644
>> --- a/drivers/usb/core/devio.c
>> +++ b/drivers/usb/core/devio.c
>> @@ -217,6 +217,7 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
>>   {
>>   	struct usb_memory *usbm = NULL;
>>   	struct usb_dev_state *ps = file->private_data;
>> +	struct usb_hcd *hcd = bus_to_hcd(ps->dev->bus);
>>   	size_t size = vma->vm_end - vma->vm_start;
>>   	void *mem;
>>   	unsigned long flags;
>> @@ -250,9 +251,7 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
>>   	usbm->vma_use_count = 1;
>>   	INIT_LIST_HEAD(&usbm->memlist);
>>   
>> -	if (remap_pfn_range(vma, vma->vm_start,
>> -			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
>> -			size, vma->vm_page_prot) < 0) {
>> +	if (dma_mmap_attrs(hcd->self.sysdev, vma, mem, dma_handle, size, 0)) {
> 
> Given that this code has not changed since 2016, how has no one noticed
> this issue before?

They have. Here's where the most recent one in my inbox ended, which has 
breadcrumbs to a couple more:

https://lore.kernel.org/linux-arm-kernel/20190808130525.GA1756@kroah.com/

Note the author ;)

 From memory, all the previous attempts wound up getting stuck on the 
subtlety that buffers from hcd_alloc() may or may not actually have come 
from the DMA API. Since then, the localmem_pool rework has probably 
helped a bit, but I'm not sure we've ever really nailed down whether 
kmalloc()ed buffers from PIO-mode controllers (i.e. the !hcd_uses_dma() 
case) can end up down this devio path.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
