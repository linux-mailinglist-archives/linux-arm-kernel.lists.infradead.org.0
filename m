Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1901515180F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 10:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8tTVWq8r7gpd6f+eFXZ5KhN3iQ2GJ1nWerZVJfIQqds=; b=j7xfPiUSJ2h4rwb/Ps+C2WYOK
	9PKAM+QsLSC3NdVFUZ3vKx1oG2sWHillQdFLMSXUeWt2mbuyNp0mDTPEKI8gVmZFApgvX5UBHwjbf
	OrISdMmz+6+riJYfkTfL0W+6jjAYfD5IV9dfjkC95/Xu4gNYzEMX9E84nk7pXFTtjlv4EhHTNxbAd
	a1AE7qwEX/VYxaaVc9bGX6qRqweEW9Hf4KZtGWzwgnKYSPcJNK4cAKNUniqG0XGUK1zLj24aQSC6I
	b0WiGDdUf+MBaFIPZB9iEoaLoEsPLWD6l+xW0m3/hlCb0jJcp1MxBKGR6k6m1OR6sAPPKoiM+DB6k
	7ONTuQznw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyuj0-0007Fs-4s; Tue, 04 Feb 2020 09:42:30 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyuit-0007F7-0M; Tue, 04 Feb 2020 09:42:24 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 01:42:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="310993361"
Received: from mattu-haswell.fi.intel.com (HELO [10.237.72.170])
 ([10.237.72.170])
 by orsmga001.jf.intel.com with ESMTP; 04 Feb 2020 01:42:18 -0800
Subject: Re: [PATCH] xhci-mtk: Fix NULL pointer dereference with xhci_irq()
 for shared_hcd
To: Macpaul Lin <macpaul.lin@mediatek.com>
References: <1579246910-22736-1-git-send-email-macpaul.lin@mediatek.com>
 <08f69bab-2ada-d6ab-7bf7-d960e9f148a0@linux.intel.com>
 <1580556039.10835.3.camel@mtkswgap22>
From: Mathias Nyman <mathias.nyman@linux.intel.com>
Message-ID: <39ec1610-1686-6509-02ac-6e73d8be2453@linux.intel.com>
Date: Tue, 4 Feb 2020 11:44:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1580556039.10835.3.camel@mtkswgap22>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_014223_060259_4707F806 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sriharsha Allenki <sallenki@codeaurora.org>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1.2.2020 13.20, Macpaul Lin wrote:
> On Fri, 2020-01-31 at 16:50 +0200, Mathias Nyman wrote:
>> On 17.1.2020 9.41, Macpaul Lin wrote:
>>> According to NULL pointer fix: https://tinyurl.com/uqft5ra
>>> xhci: Fix NULL pointer dereference with xhci_irq() for shared_hcd
>>> The similar issue has also been found in QC activities in Mediatek.
>>>
>>> Here quote the description from the referenced patch as follows.
>>> "Commit ("f068090426ea xhci: Fix leaking USB3 shared_hcd
>>> at xhci removal") sets xhci_shared_hcd to NULL without
>>> stopping xhci host. This results into a race condition
>>> where shared_hcd (super speed roothub) related interrupts
>>> are being handled with xhci_irq happens when the
>>> xhci_plat_remove is called and shared_hcd is set to NULL.
>>> Fix this by setting the shared_hcd to NULL only after the
>>> controller is halted and no interrupts are generated."
>>>
>>> Signed-off-by: Sriharsha Allenki <sallenki@codeaurora.org>
>>> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
>>> ---
>>>    drivers/usb/host/xhci-mtk.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
>>> index b18a6baef204..c227c67f5dc5 100644
>>> --- a/drivers/usb/host/xhci-mtk.c
>>> +++ b/drivers/usb/host/xhci-mtk.c
>>> @@ -593,11 +593,11 @@ static int xhci_mtk_remove(struct platform_device *dev)
>>>    	struct usb_hcd  *shared_hcd = xhci->shared_hcd;
>>>    
>>>    	usb_remove_hcd(shared_hcd);
>>> -	xhci->shared_hcd = NULL;
>>>    	device_init_wakeup(&dev->dev, false);
>>>    
>>>    	usb_remove_hcd(hcd);
>>>    	usb_put_hcd(shared_hcd);
>>> +	xhci->shared_hcd = NULL;
>>>    	usb_put_hcd(hcd);
>>>    	xhci_mtk_sch_exit(mtk);
>>>    	xhci_mtk_clks_disable(mtk);
>>>
>>
>> Could you share details of the NULL pointer dereference, (backtrace).
> 
> This bug was found by our QA staff while doing 500 times plug-in and
> plug-out devices. The backtrace I have was recorded by QA and I didn't
> reproduce this issue on my own environment. However, after applied this
> patch the issue seems resolve. Here is the backtrace:
> 
> Exception Class: Kernel (KE)
> PC is at [<ffffff8008cccbc0>] xhci_irq+0x728/0x2364
> LR is at [<ffffff8008ccc788>] xhci_irq+0x2f0/0x2364
> 
> Current Executing Process:
> [iptables, 859][netdagent, 770]
> 
> Backtrace:
> [<ffffff80080ead58>] __atomic_notifier_call_chain+0xa8/0x130
> [<ffffff80080eb6d4>] notify_die+0x84/0xac
> [<ffffff800808e874>] die+0x1d8/0x3b8
> [<ffffff80080a89b0>] __do_kernel_fault+0x178/0x188
> [<ffffff80080a81b4>] do_page_fault+0x44/0x3b0
> [<ffffff80080a811c>] do_translation_fault+0x44/0x98
> [<ffffff8008080e08>] do_mem_abort+0x4c/0x128
> [<ffffff80080832d0>] el1_da+0x24/0x3c
> [<ffffff8008cccbc0>] xhci_irq+0x728/0x2364
> [<ffffff8008c98804>] usb_hcd_irq+0x2c/0x44
> [<ffffff8008179bb0>] __handle_irq_event_percpu+0x26c/0x4a4
> [<ffffff8008179ec8>] handle_irq_event+0x5c/0xd0
> [<ffffff800817e3c0>] handle_fasteoi_irq+0x10c/0x1e0
> [<ffffff80081787b0>] __handle_domain_irq+0x32c/0x738
> [<ffffff800808159c>] gic_handle_irq+0x174/0x1c4
> [<ffffff8008083cf8>] el0_irq_naked+0x50/0x5c
> [<ffffffffffffffff>] 0xffffffffffffffff
> 

Thanks,
Could you help me find out which line of code xhci_irq+0x728 is in your case.

As Guenter pointed out there is a risk of turning the NULL pointer dereference
into a use after free if we just solve this by setting xhci->shared_hcd = NULL
later.

If you still have that kernel around, and xhci is compiled in:
gdb vmlinux
gdb li *(xhci_irq+0x728)

-Mathias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
