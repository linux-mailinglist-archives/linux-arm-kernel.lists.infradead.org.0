Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EFF179E0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 03:59:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1WkRho7eHc3FUjM616pZa2mEo4nyA0EXCMG+EZ7OxM=; b=t99+IdU7dZxPIU
	QWmQXRKN2oi+MJiTqGLO6V9cfmkjDZetKHH6oEeFDCW6yqaX2aHveMGV6UrLtZ6vOc6iX0zkNAy03
	tKE1xX3qkn60/wSVARM8WZFG7BheVf7PgX+OkNo7PmQiX6em1cJeTU8f2lO5/Evo9+6pwJVid6vBJ
	lZAhmHAKzloHgLaavHonCVT5/QrFeUsJckZIrLFjxxPlEVJdwqFSMk3GQBZUukYw746dcNs6PuNWD
	JwDkSiO8LbNu5jXgpP8HzOV/EEntNdJZvVnccXQZZXzEJb0IrEcGvvccH5XmUVe0ev+77lN3e/Hh4
	mtdynperJLJ91qEwpnXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9gj8-0003gJ-E8; Thu, 05 Mar 2020 02:59:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9gix-0003eE-5I; Thu, 05 Mar 2020 02:59:00 +0000
X-UUID: 85b47e1d05b84330ba36395ec32abdbd-20200304
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=F7PLKBwRKlNMHN+qvRx/poyq+GC8uN8Rdyl0q+FHkC0=; 
 b=bwi+QgHxF7+70QzDd5pQu7Ulhi99aqe6bKZIC3LPK5wOMpI5ygbT2Xk4HKktgBf7kDZZxnda6/G9QDgP/eATXYNHDw2YK4I3Kdn9EgCvqkuQ6rt/+GafFyJ2xLXhmLeCfQrW/Uyr4ZUz/QhkEJ2ynhZA7xdDzQKMSXqoT0P4bJQ=;
X-UUID: 85b47e1d05b84330ba36395ec32abdbd-20200304
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1686734397; Wed, 04 Mar 2020 18:58:50 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 18:59:06 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Mar 2020 10:57:54 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Mar 2020 10:58:02 +0800
Message-ID: <1583377126.12083.63.camel@mtkswgap22>
Subject: Re: [PATCH] xhci-mtk: Fix NULL pointer dereference with xhci_irq()
 for shared_hcd
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Mathias Nyman <mathias.nyman@linux.intel.com>
Date: Thu, 5 Mar 2020 10:58:46 +0800
In-Reply-To: <ef4d9d96-df4d-be0c-22af-a97a03c39d3a@linux.intel.com>
References: <1579246910-22736-1-git-send-email-macpaul.lin@mediatek.com>
 <08f69bab-2ada-d6ab-7bf7-d960e9f148a0@linux.intel.com>
 <1580556039.10835.3.camel@mtkswgap22>
 <39ec1610-1686-6509-02ac-6e73d8be2453@linux.intel.com>
 <1583291775.12083.59.camel@mtkswgap22>
 <ef4d9d96-df4d-be0c-22af-a97a03c39d3a@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_185859_216080_7A3B5230 
X-CRM114-Status: GOOD (  28.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 wsd_upstream <wsd_upstream@mediatek.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chunfeng Yun =?UTF-8?Q?=28=E4=BA=91=E6=98=A5=E5=B3=B0=29?=
 <Chunfeng.Yun@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-03-04 at 16:39 +0200, Mathias Nyman wrote:
> On 4.3.2020 5.16, Macpaul Lin wrote:
> > On Tue, 2020-02-04 at 17:44 +0800, Mathias Nyman wrote:
> >> On 1.2.2020 13.20, Macpaul Lin wrote:
> >>> On Fri, 2020-01-31 at 16:50 +0200, Mathias Nyman wrote:
> >>>> On 17.1.2020 9.41, Macpaul Lin wrote:
> >>>>> According to NULL pointer fix: https://tinyurl.com/uqft5ra
> >>>>> xhci: Fix NULL pointer dereference with xhci_irq() for shared_hcd
> >>>>> The similar issue has also been found in QC activities in Mediatek.
> >>>>>
> >>>>> Here quote the description from the referenced patch as follows.
> >>>>> "Commit ("f068090426ea xhci: Fix leaking USB3 shared_hcd
> >>>>> at xhci removal") sets xhci_shared_hcd to NULL without
> >>>>> stopping xhci host. This results into a race condition
> >>>>> where shared_hcd (super speed roothub) related interrupts
> >>>>> are being handled with xhci_irq happens when the
> >>>>> xhci_plat_remove is called and shared_hcd is set to NULL.
> >>>>> Fix this by setting the shared_hcd to NULL only after the
> >>>>> controller is halted and no interrupts are generated."
> >>>>>
> >>>>> Signed-off-by: Sriharsha Allenki <sallenki@codeaurora.org>
> >>>>> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> >>>>> ---
> >>>>>    drivers/usb/host/xhci-mtk.c | 2 +-
> >>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>>
> >>>>> diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> >>>>> index b18a6baef204..c227c67f5dc5 100644
> >>>>> --- a/drivers/usb/host/xhci-mtk.c
> >>>>> +++ b/drivers/usb/host/xhci-mtk.c
> >>>>> @@ -593,11 +593,11 @@ static int xhci_mtk_remove(struct platform_device *dev)
> >>>>>    	struct usb_hcd  *shared_hcd = xhci->shared_hcd;
> >>>>>    
> >>>>>    	usb_remove_hcd(shared_hcd);
> >>>>> -	xhci->shared_hcd = NULL;
> >>>>>    	device_init_wakeup(&dev->dev, false);
> >>>>>    
> >>>>>    	usb_remove_hcd(hcd);
> >>>>>    	usb_put_hcd(shared_hcd);
> >>>>> +	xhci->shared_hcd = NULL;
> >>>>>    	usb_put_hcd(hcd);
> >>>>>    	xhci_mtk_sch_exit(mtk);
> >>>>>    	xhci_mtk_clks_disable(mtk);
> >>>>>
> >>>>
> >>>> Could you share details of the NULL pointer dereference, (backtrace).
> >>>
> >>> This bug was found by our QA staff while doing 500 times plug-in and
> >>> plug-out devices. The backtrace I have was recorded by QA and I didn't
> >>> reproduce this issue on my own environment. However, after applied this
> >>> patch the issue seems resolve. Here is the backtrace:
> >>>
> >>> Exception Class: Kernel (KE)
> >>> PC is at [<ffffff8008cccbc0>] xhci_irq+0x728/0x2364
> >>> LR is at [<ffffff8008ccc788>] xhci_irq+0x2f0/0x2364
> >>>
> >>> Current Executing Process:
> >>> [iptables, 859][netdagent, 770]
> >>>
> >>> Backtrace:
> >>> [<ffffff80080ead58>] __atomic_notifier_call_chain+0xa8/0x130
> >>> [<ffffff80080eb6d4>] notify_die+0x84/0xac
> >>> [<ffffff800808e874>] die+0x1d8/0x3b8
> >>> [<ffffff80080a89b0>] __do_kernel_fault+0x178/0x188
> >>> [<ffffff80080a81b4>] do_page_fault+0x44/0x3b0
> >>> [<ffffff80080a811c>] do_translation_fault+0x44/0x98
> >>> [<ffffff8008080e08>] do_mem_abort+0x4c/0x128
> >>> [<ffffff80080832d0>] el1_da+0x24/0x3c
> >>> [<ffffff8008cccbc0>] xhci_irq+0x728/0x2364
> >>> [<ffffff8008c98804>] usb_hcd_irq+0x2c/0x44
> >>> [<ffffff8008179bb0>] __handle_irq_event_percpu+0x26c/0x4a4
> >>> [<ffffff8008179ec8>] handle_irq_event+0x5c/0xd0
> >>> [<ffffff800817e3c0>] handle_fasteoi_irq+0x10c/0x1e0
> >>> [<ffffff80081787b0>] __handle_domain_irq+0x32c/0x738
> >>> [<ffffff800808159c>] gic_handle_irq+0x174/0x1c4
> >>> [<ffffff8008083cf8>] el0_irq_naked+0x50/0x5c
> >>> [<ffffffffffffffff>] 0xffffffffffffffff
> >>>
> >>
> >> Thanks,
> >> Could you help me find out which line of code xhci_irq+0x728 is in your case.
> >>
> >> As Guenter pointed out there is a risk of turning the NULL pointer dereference
> >> into a use after free if we just solve this by setting xhci->shared_hcd = NULL
> >> later.
> >>
> >> If you still have that kernel around, and xhci is compiled in:
> >> gdb vmlinux
> >> gdb li *(xhci_irq+0x728)
> >>
> > 
> > Sorry that I couldn't get back to you soon. The internal code version
> > for this issue was really old and a little bit difficult to rewind to
> > that version.
> > However, I think the following dump might be correct for the code base.
> > 
> > (gdb) li *(xhci_irq+0x728)
> > 0xffffff8008cc8634 is in xhci_irq (*stripped*
> > kernel-4.14/drivers/usb/host/xhci.h:1694).
> > 1689     */
> > 1690    #define XHCI_MAX_REXIT_TIMEOUT_MS       20
> > 1691
> > 1692    static inline unsigned int hcd_index(struct usb_hcd *hcd)
> > 1693    {
> > 1694            if (hcd->speed >= HCD_USB3)
> > 1695                    return 0;
> > 1696            else
> > 1697                    return 1;
> > 1698    }
> > (gdb)
> > 
> > Thanks
> > Macpaul Lin
> > 
> 
> Ah, it was a 4.14 kernel.
> This should be fixed in 4.20 with patch:
> 1245374e9b83 xhci: handle port status events for removed USB3 hcd
> 
> Port arrays/structures were changed completely in 4.18
> 
> Something like the below should work for 4.14:
> 
> diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
> index 61fa3007a74a..e7367b9f19c5 100644
> --- a/drivers/usb/host/xhci-ring.c
> +++ b/drivers/usb/host/xhci-ring.c
> @@ -1640,6 +1640,12 @@ static void handle_port_status(struct xhci_hcd *xhci,
>  	if ((major_revision == 0x03) != (hcd->speed >= HCD_USB3))
>  		hcd = xhci->shared_hcd;
>  
> +	if (!hcd) {
> +		xhci_dbg(xhci, "No hcd found for port %u event\n", port_id);
> +		bogus_port_status = true;
> +		goto cleanup;
> +	}
> +
>  	if (major_revision == 0) {
>  		xhci_warn(xhci, "Event for port %u not in "
>  				"Extended Capabilities, ignoring.\n",

Thanks for this suggestion, this is much better! I am sorry that we're
using android kernel that some reported issue might be out of date. I
will update the suggestion into our code base. Thanks!

Regards,
Macpaul Lin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
