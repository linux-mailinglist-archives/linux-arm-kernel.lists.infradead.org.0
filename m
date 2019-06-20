Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDACA4C961
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/KjQaJBwlyIelHwwfNK7cUzUIeeV2s4gsun42sUryQ=; b=I9qopcERoVi5aA
	L0c6p9V8HMx5I+3lFGXmKrv3SSwMAoVeOM+QUMGSQDwi+Bru99Egas4DshK3GiEOQt9RXMqYKL2Bn
	FZsjjNtd5YexMonhn8HlfTu9x6LiHZ2qdMD+cBen3AeutXqPC4gQ5YpNpB/1Jt+9u1S56TII4HDnQ
	5eb2ENTR7Y4f0imk8pE8gIj6cVKJn+mIU1C8OtC84dFiwJcnYvMiQNLosJfVXgbhpu8FXo726q0Xd
	pzf5amKkqfgois5EIkvwYj/1U4XQT/e7WnT/bhpf+BH27ZKmMDn9i9rCWAqt9H8Izlnk9T8F0In7f
	+Asf/ENa0U/ISOHBiIcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsN0-0003V8-JH; Thu, 20 Jun 2019 08:24:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsMf-0003Of-Oj; Thu, 20 Jun 2019 08:24:15 +0000
X-UUID: 08f2137c27b84097b4d4d89000e811b3-20190620
X-UUID: 08f2137c27b84097b4d4d89000e811b3-20190620
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2094587980; Thu, 20 Jun 2019 00:24:04 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 01:24:03 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32N2.mediatek.inc
 (172.27.4.72) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 20 Jun 2019 16:24:00 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 20 Jun 2019 16:23:59 +0800
Message-ID: <1561019039.19385.0.camel@mhfsdcap03>
Subject: Re: [PATCH] usb: dwc3: remove unused @lock member of dwc3_ep struct
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Felipe Balbi <felipe.balbi@linux.intel.com>
Date: Thu, 20 Jun 2019 16:23:59 +0800
In-Reply-To: <87pnn8brej.fsf@linux.intel.com>
References: <342af01a252a9ef9457a6a6ec653a40698058fbc.1561018149.git.chunfeng.yun@mediatek.com>
 <87pnn8brej.fsf@linux.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 01A5D843B4FDBFD9D544853B9237509789D7821AEC7631073D22747FFC6924A62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_012413_811034_E2107CFF 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Thu, 2019-06-20 at 11:19 +0300, Felipe Balbi wrote:
> Hi,
> 
> Chunfeng Yun <chunfeng.yun@mediatek.com> writes:
> 
> > The member @lock of dwc2_ep struct is only initialized,
> > and not used elsewhere, so remove it.
Sorry, I need send v2 to fix typo of dwc2_ep

> >
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> >  drivers/usb/dwc3/core.h   | 2 --
> >  drivers/usb/dwc3/gadget.c | 2 --
> >  2 files changed, 4 deletions(-)
> >
> > diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
> > index f19cbeb01087..72d28cb14bdf 100644
> > --- a/drivers/usb/dwc3/core.h
> > +++ b/drivers/usb/dwc3/core.h
> > @@ -649,7 +649,6 @@ struct dwc3_event_buffer {
> >   * @cancelled_list: list of cancelled requests for this endpoint
> >   * @pending_list: list of pending requests for this endpoint
> >   * @started_list: list of started requests on this endpoint
> > - * @lock: spinlock for endpoint request queue traversal
> >   * @regs: pointer to first endpoint register
> >   * @trb_pool: array of transaction buffers
> >   * @trb_pool_dma: dma address of @trb_pool
> > @@ -677,7 +676,6 @@ struct dwc3_ep {
> >  	struct list_head	pending_list;
> >  	struct list_head	started_list;
> >  
> > -	spinlock_t		lock;
> >  	void __iomem		*regs;
> >  
> >  	struct dwc3_trb		*trb_pool;
> > diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
> > index d67655384eb2..7f75da30caba 100644
> > --- a/drivers/usb/dwc3/gadget.c
> > +++ b/drivers/usb/dwc3/gadget.c
> > @@ -2251,8 +2251,6 @@ static int dwc3_gadget_init_endpoint(struct dwc3 *dwc, u8 epnum)
> >  		dep->endpoint.comp_desc = NULL;
> >  	}
> >  
> > -	spin_lock_init(&dep->lock);
> 
> heh, thanks. This is left-over from when I playing with further
> paralelizing the driver. Turned out that there are not enough gains to
> justify that work. I'll apply this patch.
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
