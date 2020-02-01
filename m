Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9208214F79C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Feb 2020 12:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYSMlJ78lZWqyhdpF+z3OYkQwPCd2rqkxySdSGwugvI=; b=hM+Bu/DE9ufZWY
	6/Ew9c73UHM6pGOBLTRNZ4+soPaflAd+1HP7T2OmCofnhk28r5+KfQ7tBIi8/Y3szdYIA+F6zS/ro
	hD6vn+ieFx/Z+8QT0+cK3loDeIas9Bh9SB8g9x8nZgwOMgJuwcj7gRLq7cYag3ChQia26FsnLLc7p
	VAsbufLel0/6naYzU0Y/1SvbBqXspxsuJvtiVjgkLTFdBfnjC9NpaCl5wce7lOghE+6rjM5wFjLEy
	8Ol52/NtDaWWG+NMjmiXfAWDrjdpZD+62oLcMWUV3ih2osWXAliHwnkUsVc7MzkF05YyrjMBFv08n
	nXlHWKnTOPK4wbYu8NPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixqpi-0007jS-6H; Sat, 01 Feb 2020 11:21:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixqpX-0007i2-Nz; Sat, 01 Feb 2020 11:20:53 +0000
X-UUID: bcbd727529d045edb7bc724982423182-20200201
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=XTEY6dMzjjkyr9jLk6HV6IbqAj2VEs2vvVsCYlO1zCo=; 
 b=O2lunh2CYnelsPghBBc8tQjtARKVahjGyYkgXmE1ks0euaqYu3DkTfLc72ehY1+YElDdMJm8mfO+uCP4ty0HnjVFe44IzSgmmIp6kaQhsHPXqhAiyR2YQ1ajlPcXEtPpEIPrP6csZbIrE2J7BRvd5CtcDduZ2h1/omEM34d3OTs=;
X-UUID: bcbd727529d045edb7bc724982423182-20200201
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1205037972; Sat, 01 Feb 2020 03:20:42 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Feb 2020 03:21:09 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Feb 2020 19:20:01 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 1 Feb 2020 19:18:14 +0800
Message-ID: <1580556039.10835.3.camel@mtkswgap22>
Subject: Re: [PATCH] xhci-mtk: Fix NULL pointer dereference with xhci_irq()
 for shared_hcd
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Mathias Nyman <mathias.nyman@linux.intel.com>
Date: Sat, 1 Feb 2020 19:20:39 +0800
In-Reply-To: <08f69bab-2ada-d6ab-7bf7-d960e9f148a0@linux.intel.com>
References: <1579246910-22736-1-git-send-email-macpaul.lin@mediatek.com>
 <08f69bab-2ada-d6ab-7bf7-d960e9f148a0@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_032051_793046_37F5A16C 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-01-31 at 16:50 +0200, Mathias Nyman wrote:
> On 17.1.2020 9.41, Macpaul Lin wrote:
> > According to NULL pointer fix: https://tinyurl.com/uqft5ra
> > xhci: Fix NULL pointer dereference with xhci_irq() for shared_hcd
> > The similar issue has also been found in QC activities in Mediatek.
> > 
> > Here quote the description from the referenced patch as follows.
> > "Commit ("f068090426ea xhci: Fix leaking USB3 shared_hcd
> > at xhci removal") sets xhci_shared_hcd to NULL without
> > stopping xhci host. This results into a race condition
> > where shared_hcd (super speed roothub) related interrupts
> > are being handled with xhci_irq happens when the
> > xhci_plat_remove is called and shared_hcd is set to NULL.
> > Fix this by setting the shared_hcd to NULL only after the
> > controller is halted and no interrupts are generated."
> > 
> > Signed-off-by: Sriharsha Allenki <sallenki@codeaurora.org>
> > Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> > ---
> >   drivers/usb/host/xhci-mtk.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > index b18a6baef204..c227c67f5dc5 100644
> > --- a/drivers/usb/host/xhci-mtk.c
> > +++ b/drivers/usb/host/xhci-mtk.c
> > @@ -593,11 +593,11 @@ static int xhci_mtk_remove(struct platform_device *dev)
> >   	struct usb_hcd  *shared_hcd = xhci->shared_hcd;
> >   
> >   	usb_remove_hcd(shared_hcd);
> > -	xhci->shared_hcd = NULL;
> >   	device_init_wakeup(&dev->dev, false);
> >   
> >   	usb_remove_hcd(hcd);
> >   	usb_put_hcd(shared_hcd);
> > +	xhci->shared_hcd = NULL;
> >   	usb_put_hcd(hcd);
> >   	xhci_mtk_sch_exit(mtk);
> >   	xhci_mtk_clks_disable(mtk);
> > 
> 
> Could you share details of the NULL pointer dereference, (backtrace).

This bug was found by our QA staff while doing 500 times plug-in and
plug-out devices. The backtrace I have was recorded by QA and I didn't
reproduce this issue on my own environment. However, after applied this
patch the issue seems resolve. Here is the backtrace:

Exception Class: Kernel (KE)
PC is at [<ffffff8008cccbc0>] xhci_irq+0x728/0x2364
LR is at [<ffffff8008ccc788>] xhci_irq+0x2f0/0x2364

Current Executing Process:
[iptables, 859][netdagent, 770]

Backtrace:
[<ffffff80080ead58>] __atomic_notifier_call_chain+0xa8/0x130   
[<ffffff80080eb6d4>] notify_die+0x84/0xac      
[<ffffff800808e874>] die+0x1d8/0x3b8   
[<ffffff80080a89b0>] __do_kernel_fault+0x178/0x188     
[<ffffff80080a81b4>] do_page_fault+0x44/0x3b0  
[<ffffff80080a811c>] do_translation_fault+0x44/0x98    
[<ffffff8008080e08>] do_mem_abort+0x4c/0x128   
[<ffffff80080832d0>] el1_da+0x24/0x3c  
[<ffffff8008cccbc0>] xhci_irq+0x728/0x2364     
[<ffffff8008c98804>] usb_hcd_irq+0x2c/0x44     
[<ffffff8008179bb0>] __handle_irq_event_percpu+0x26c/0x4a4     
[<ffffff8008179ec8>] handle_irq_event+0x5c/0xd0
[<ffffff800817e3c0>] handle_fasteoi_irq+0x10c/0x1e0    
[<ffffff80081787b0>] __handle_domain_irq+0x32c/0x738   
[<ffffff800808159c>] gic_handle_irq+0x174/0x1c4
[<ffffff8008083cf8>] el0_irq_naked+0x50/0x5c   
[<ffffffffffffffff>] 0xffffffffffffffff

> The USB3 hcd is already removed when xhci->shared_hcd is set to NULL.
> We might want to add some checks to make sure we are not using the removed
> hcd anymore in that codepath anymore.
> 
> -Mathias

Thanks,
Macpaul Lin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
