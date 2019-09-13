Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8816FB2377
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 17:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PXxmwlYXmEQyD5kMkQJyr8Pm3yiJzNJfZOuktbl7l9s=; b=SmGDSQTPGPfip5SRHnh0yNvhe
	heirNw6PKgYj+dhtfxUnTTfVl+5JDVigwXHfxTHW+43Wg4i3yOLlUKdS1Vo/Xurg5DktOwSv5D8/n
	sq0OdK2Fb8UQG1pPUNvj7aUXcFckYCuX22yQLF33EFV3xa05XiqztlGWKQSyzHMCi5YSorPJhp1xE
	O7FKeCy6m2Zba+HZ3vGaTM2yNiTS+jEpZvDtHbeZQt+ODTUZef6o3p1AMXy19S0ZfeXgCXBBqkg+8
	nM41RrSiAgXfMD8f1wwXoxcOIl3gI9By7nankWx+uNWOx7GpMwa7VR69cXmWaQAOOqLiAbjn10QIT
	S5UUS3bWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8na4-0002s8-9E; Fri, 13 Sep 2019 15:33:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8nZA-0002q4-Qi; Fri, 13 Sep 2019 15:32:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB2A21000;
 Fri, 13 Sep 2019 08:32:55 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A2CC43F67D;
 Fri, 13 Sep 2019 08:32:50 -0700 (PDT)
Subject: Re: KASAN: slab-out-of-bounds Read in handle_vmptrld
To: Paolo Bonzini <pbonzini@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <000000000000a9d4f705924cff7a@google.com>
 <87lfutei1j.fsf@vitty.brq.redhat.com>
 <5218e70e-8a80-7c5f-277b-01d9ab70692a@redhat.com>
 <20190913044614.GA120223@kroah.com>
 <db02a285-ad1d-6094-6359-ba80e6d3f2e0@redhat.com>
 <20190913130226.GB403359@kroah.com>
 <6a0ec3a2-2a52-f67a-6140-e0a60874538a@redhat.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <462660f4-1537-cece-b55f-0ceba0269eb8@arm.com>
Date: Fri, 13 Sep 2019 16:32:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6a0ec3a2-2a52-f67a-6140-e0a60874538a@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_083256_909473_C4CB4B5A 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, wanpengli@tencent.com, kvm@vger.kernel.org,
 narmstrong@baylibre.com, catalin.marinas@arm.com, will.deacon@arm.com,
 rkrcmar@redhat.com, hpa@zytor.com, khilman@baylibre.com, joro@8bytes.org,
 x86@kernel.org, mingo@redhat.com, linux-arm-kernel@lists.infradead.org,
 syzbot <syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com>,
 devicetree@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 robh+dt@kernel.org, bp@alien8.de, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, Dmitry Vyukov <dvyukov@google.com>, jmattson@google.com,
 USB list <linux-usb@vger.kernel.org>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, carlo@caione.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/09/2019 16:01, Paolo Bonzini wrote:
> On 13/09/19 15:02, Greg Kroah-Hartman wrote:
>> Look at linux-next, we "should" have fixed up hcd_buffer_alloc() now to
>> not need this type of thing.  If we got it wrong, please let us know and
>> then yes, a fix like this would be most appreciated :)
> 
> I still see
> 
> 	/* some USB hosts just use PIO */
> 	if (!hcd_uses_dma(hcd)) {
> 		*dma = ~(dma_addr_t) 0;
> 		return kmalloc(size, mem_flags);
> 	}
> 
> in linux-next's hcd_buffer_alloc and also in usb.git's usb-next branch.
>   I also see the same
> 
> 	if (remap_pfn_range(vma, vma->vm_start,
> 			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
> 			size, vma->vm_page_prot) < 0) {
> 		...
> 	}
> 
> in usbdev_mmap.  Of course it's possible that I'm looking at the wrong
> branch, or just being dense.

Oh, that bit of usbdev_mmap() is already known to be pretty much totally 
bogus for various reasons - there have been a few threads about it, of 
which I think [1] is both the most recent and the most informative. 
There was another patch[2], but that might have stalled (and might need 
reworking with additional hcd_uses_dma() checks anyway).

Robin.

[1] 
https://lore.kernel.org/linux-arm-kernel/20190808084636.GB15080@priv-mua.localdomain/
[2] 
https://lore.kernel.org/linux-usb/20190801220134.3295-1-gavinli@thegavinli.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
