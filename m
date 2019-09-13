Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7919B1E3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 15:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlIqwplfNOMM/jm05yR3CTxObFpOI/5K7P7yqGWDtHM=; b=ZcTMSCHogwoL3L
	tDCHZ7KZ2RfbuOtTWfJVWZM0mhNYtHoxk72Ay3NUzzLZgbLvj5BPXYN81BwEWmlA+AMdvkrl0bDAB
	ytDVb97fSe7NhaOIKH++g02qnlbAT6WwBa2uVUyTAzGUXiVBuzhlohukggt1dXt4agzi2LZjQA/P+
	6ZouyB51d0cNXWFvr+N3rmjk9mKrwsb3kbQT9QbO/vKrbwrvHWW1F+zOIQOdXbHr2EVBIkd33RqJO
	7jAj8kuH+GElEkotWMxFi69peZ4w5mpNDckNBCUYh3dpY3RVSLFI9jYDvflSCzp7wbJorR07Y8veV
	DVEbbCoy+HjQHfs3tXaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8lIZ-00029x-Uj; Fri, 13 Sep 2019 13:07:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8lHq-00026T-EQ; Fri, 13 Sep 2019 13:06:58 +0000
Received: from localhost (unknown [104.132.45.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6A18206A5;
 Fri, 13 Sep 2019 13:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568380012;
 bh=qO9j38kTvRaom9Dympgw2PZ3SD1mqzGyLVqm6MafZvk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DmLuAT95jpNYwx9mcqkIJBKYgBFryoL4/2NE56owCBA/8l9guoozSKta/pl1FKLao
 Ee00LCjo3EWu2DiGr/XxqrCHMqZySU/dJzXcIbr1Vmdkc9PrtyyQroCAtUSzUrWWPY
 jCLDKEymWrMobIA5yZQB5s21gjO45xSONyJBjH28=
Date: Fri, 13 Sep 2019 14:02:26 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: KASAN: slab-out-of-bounds Read in handle_vmptrld
Message-ID: <20190913130226.GB403359@kroah.com>
References: <000000000000a9d4f705924cff7a@google.com>
 <87lfutei1j.fsf@vitty.brq.redhat.com>
 <5218e70e-8a80-7c5f-277b-01d9ab70692a@redhat.com>
 <20190913044614.GA120223@kroah.com>
 <db02a285-ad1d-6094-6359-ba80e6d3f2e0@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db02a285-ad1d-6094-6359-ba80e6d3f2e0@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_060656_425857_9A239BB5 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, x86@kernel.org, wanpengli@tencent.com,
 kvm@vger.kernel.org, narmstrong@baylibre.com, catalin.marinas@arm.com,
 will.deacon@arm.com, hpa@zytor.com, khilman@baylibre.com, joro@8bytes.org,
 rkrcmar@redhat.com, mingo@redhat.com, Dmitry Vyukov <dvyukov@google.com>,
 syzbot <syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com>,
 devicetree@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 robh+dt@kernel.org, bp@alien8.de, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 USB list <linux-usb@vger.kernel.org>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, carlo@caione.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 09:34:32AM +0200, Paolo Bonzini wrote:
> On 13/09/19 06:46, Greg Kroah-Hartman wrote:
> > USB drivers expect kmalloc to return DMA-able memory.  I don't know
> > about specific alignment issues, that should only an issue for the host
> > controller being used here, which you do not say in the above list.
> 
> I have no idea, this is just the analysis of a syzkaller report.  From 
> the backtrace, it's one that ends up calling kmalloc; all of them should
> have the same issue with KASAN.
> 
> The specific alignment requirement for this bug comes from this call in
> usbdev_mmap:
> 
> 	if (remap_pfn_range(vma, vma->vm_start,
> 			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
> 			size, vma->vm_page_prot) < 0) {
> 
> > We have had some reports that usbdev_mmap() does not do the "correct
> > thing" for all host controllers, but a lot of the DMA work that is in
> > linux-next for 5.4-rc1 should have helped resolve those issues.  What
> > tree are you seeing these bug reports happening from?
> 
> It's in master, but the relevant code is the same in linux-next; in fact
> in this case there is no DMA involved at all.  hcd_buffer_alloc hits
> the case "some USB hosts just use PIO".
> 
> On those host controllers, it should be reproducible with just this:
> 
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 7fcb9f782931..cc0460730bce 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -905,9 +905,12 @@ EXPORT_SYMBOL_GPL(__usb_get_extra_descriptor);
>  void *usb_alloc_coherent(struct usb_device *dev, size_t size, gfp_t mem_flags,
>  			 dma_addr_t *dma)
>  {
> +	void *buf;
>  	if (!dev || !dev->bus)
>  		return NULL;
> -	return hcd_buffer_alloc(dev->bus, size, mem_flags, dma);
> +	buf = hcd_buffer_alloc(dev->bus, size, mem_flags, dma);
> +	WARN_ON_ONCE(virt_to_phys(buf) & ~PAGE_MASK);
> +	return buf;
>  }
>  EXPORT_SYMBOL_GPL(usb_alloc_coherent);

Look at linux-next, we "should" have fixed up hcd_buffer_alloc() now to
not need this type of thing.  If we got it wrong, please let us know and
then yes, a fix like this would be most appreciated :)

thanks,

greg k-h

>  
> 
> and CONFIG_KASAN=y or possibly just CONFIG_DEBUG_SLAB=y.  mmap-ing /dev/usb
> should warn if my analysis is correct.
> 
> If you think the above patch makes sense, I can test it and submit it formally.
> 
> Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
