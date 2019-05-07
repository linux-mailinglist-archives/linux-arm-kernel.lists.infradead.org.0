Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABCB15E52
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 09:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pCc08zmv5moQ7vpcCxtMzRmmSVuqT32spP7XaM/G0g=; b=GzUh24KmiBMU0A
	c6UnzDHpAzpe/oBFpyorq/n9XmarxHAQs4Dwt01Wsvw7nd6edJK1+4a25IzrXp5x04hU2AVKGnQAv
	/8rbOfc58XFAtCGquOiu8zAoFgkMFR1bRr2sEWdH2RThoJ3tk4rd0pR6QhI/3Sy+kBtafuwfd96oj
	Osc6qe5UOLZkPUYuxu9XIVq26ZJd62X7pcizVtu4E1zVj/1U9zmIBotSRVb3MPHDJsryQkwFwXuM7
	/EyyxS2GGBSl5o396qTJnNlbuIw1PuDESqulE0jo7fnUAU/rx+/GGYsa+SbJxZ+MiU0BG5xsMPnSz
	m6jGgVj3pPmKx0SoytKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNufW-0000Yl-Jx; Tue, 07 May 2019 07:37:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNufP-0000YI-NQ; Tue, 07 May 2019 07:37:37 +0000
X-UUID: f098d1cdeee043f2987d178b8aed4191-20190506
X-UUID: f098d1cdeee043f2987d178b8aed4191-20190506
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1281229756; Mon, 06 May 2019 23:37:32 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 00:37:30 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 7 May 2019 15:37:25 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 7 May 2019 15:37:24 +0800
Message-ID: <1557214644.10179.266.camel@mhfsdcap03>
Subject: Re: [PATCH 2/2] usb: xhci-mtk: Do not create shared_hcd if no USB
 3.0 port available
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 7 May 2019 15:37:24 +0800
In-Reply-To: <20190502045631.229386-2-drinkcat@chromium.org>
References: <20190502045631.229386-1-drinkcat@chromium.org>
 <20190502045631.229386-2-drinkcat@chromium.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F29A5653419344021C7CCE1ECFF7F5112A40D61367D92EF03386E42FBB22C6DA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_003735_776201_C2CF4A2A 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Khuong Dinh <khuong@os.amperecomputing.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Hoan Tran <hoan@os.amperecomputing.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,
On Thu, 2019-05-02 at 12:56 +0800, Nicolas Boichat wrote:
> When the controller only supports USB 2.0, do not even create the
> USB 3.0 hcd/root hub.
> 
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> ---
>  drivers/usb/host/xhci-mtk.c | 44 +++++++++++++++++++++++--------------
>  1 file changed, 28 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> index 026fe18972d3e5b..189f5dc614e6e05 100644
> --- a/drivers/usb/host/xhci-mtk.c
> +++ b/drivers/usb/host/xhci-mtk.c
> @@ -527,23 +527,28 @@ static int xhci_mtk_probe(struct platform_device *pdev)
>  	xhci->imod_interval = 5000;
>  	device_property_read_u32(dev, "imod-interval-ns", &xhci->imod_interval);
>  
> -	xhci->shared_hcd = usb_create_shared_hcd(driver, dev,
> +	/* Only create shared_hcd when USB3.0 port is available. */
> +	if (xhci->usb3_rhub.num_ports > 0) {
xhci->usb3_rhub.num_ports is not set until usb_add_hcd() is called.

> +		xhci->shared_hcd = usb_create_shared_hcd(driver, dev,
>  			dev_name(dev), hcd);
> -	if (!xhci->shared_hcd) {
> -		ret = -ENOMEM;
> -		goto disable_device_wakeup;
> +		if (!xhci->shared_hcd) {
> +			ret = -ENOMEM;
> +			goto disable_device_wakeup;
> +		}
>  	}
>  
>  	ret = usb_add_hcd(hcd, irq, IRQF_SHARED);
>  	if (ret)
>  		goto put_usb3_hcd;
>  
> -	if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
> -		xhci->shared_hcd->can_do_streams = 1;
> +	if (xhci->usb3_rhub.num_ports > 0) {
> +		if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
> +			xhci->shared_hcd->can_do_streams = 1;
>  
> -	ret = usb_add_hcd(xhci->shared_hcd, irq, IRQF_SHARED);
> -	if (ret)
> -		goto dealloc_usb2_hcd;
> +		ret = usb_add_hcd(xhci->shared_hcd, irq, IRQF_SHARED);
> +		if (ret)
> +			goto dealloc_usb2_hcd;
> +	}
>  
>  	return 0;
>  
> @@ -552,7 +557,8 @@ static int xhci_mtk_probe(struct platform_device *pdev)
>  
>  put_usb3_hcd:
>  	xhci_mtk_sch_exit(mtk);
> -	usb_put_hcd(xhci->shared_hcd);
> +	if (xhci->shared_hcd)
> +		usb_put_hcd(xhci->shared_hcd);
>  
>  disable_device_wakeup:
>  	device_init_wakeup(dev, false);
> @@ -579,12 +585,14 @@ static int xhci_mtk_remove(struct platform_device *dev)
>  	struct xhci_hcd	*xhci = hcd_to_xhci(hcd);
>  	struct usb_hcd  *shared_hcd = xhci->shared_hcd;
>  
> -	usb_remove_hcd(shared_hcd);
> +	if (shared_hcd)
> +		usb_remove_hcd(shared_hcd);
>  	xhci->shared_hcd = NULL;
>  	device_init_wakeup(&dev->dev, false);
>  
>  	usb_remove_hcd(hcd);
> -	usb_put_hcd(shared_hcd);
> +	if (shared_hcd)
> +		usb_put_hcd(shared_hcd);
>  	usb_put_hcd(hcd);
>  	xhci_mtk_sch_exit(mtk);
>  	xhci_mtk_clks_disable(mtk);
> @@ -611,8 +619,10 @@ static int __maybe_unused xhci_mtk_suspend(struct device *dev)
>  	xhci_dbg(xhci, "%s: stop port polling\n", __func__);
>  	clear_bit(HCD_FLAG_POLL_RH, &hcd->flags);
>  	del_timer_sync(&hcd->rh_timer);
> -	clear_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
> -	del_timer_sync(&xhci->shared_hcd->rh_timer);
> +	if (xhci->shared_hcd) {
> +		clear_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
> +		del_timer_sync(&xhci->shared_hcd->rh_timer);
> +	}
>  
>  	xhci_mtk_host_disable(mtk);
>  	xhci_mtk_clks_disable(mtk);
> @@ -631,8 +641,10 @@ static int __maybe_unused xhci_mtk_resume(struct device *dev)
>  	xhci_mtk_host_enable(mtk);
>  
>  	xhci_dbg(xhci, "%s: restart port polling\n", __func__);
> -	set_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
> -	usb_hcd_poll_rh_status(xhci->shared_hcd);
> +	if (xhci->shared_hcd) {
> +		set_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
> +		usb_hcd_poll_rh_status(xhci->shared_hcd);
> +	}
>  	set_bit(HCD_FLAG_POLL_RH, &hcd->flags);
>  	usb_hcd_poll_rh_status(hcd);
>  	return 0;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
