Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFFF14EEBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 15:48:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O86akHI4NXMoouTuL9288O+9y9WsLlAAacjuyR6Yrok=; b=uYVthB0YPffcHvbvxvzQ9TZlh
	XW1/Jp3lERhQ8whEoS9Zor2VzZAJpmGdnrAXEkRhD2LOkWM98CZ4tyAUwaI28KWj0R8+0y3QtkGA/
	in/w+1HvqAaM9ryrjROEtPUe7wwNYUobc85ZZx8sPEQwbY93lk7MdiwSiUtywVidG3TmS2WY3dyFQ
	XNeBD/NGWKIqOXu4EdQ5bJZrDab+fAHdzWuohK/9MGm1E/7D0zg439FRXjS9sc2LRTGOKPhn4DC2i
	t4OX7oMAmcCqgVuVgFc4qCzVyX9L+GqTZWmIs03b03WdiNdgHR4DHnODlCfc4wWGbD4XUUGq55PSc
	ozaThLO5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixXaj-0002Me-Ie; Fri, 31 Jan 2020 14:48:17 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixXaV-0002Kc-JE; Fri, 31 Jan 2020 14:48:05 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 06:48:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="310020734"
Received: from mattu-haswell.fi.intel.com (HELO [10.237.72.170])
 ([10.237.72.170])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2020 06:47:56 -0800
Subject: Re: [PATCH] xhci-mtk: Fix NULL pointer dereference with xhci_irq()
 for shared_hcd
To: Macpaul Lin <macpaul.lin@mediatek.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>
References: <1579246910-22736-1-git-send-email-macpaul.lin@mediatek.com>
From: Mathias Nyman <mathias.nyman@linux.intel.com>
Message-ID: <08f69bab-2ada-d6ab-7bf7-d960e9f148a0@linux.intel.com>
Date: Fri, 31 Jan 2020 16:50:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1579246910-22736-1-git-send-email-macpaul.lin@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_064803_645033_AC49B3D5 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17.1.2020 9.41, Macpaul Lin wrote:
> According to NULL pointer fix: https://tinyurl.com/uqft5ra
> xhci: Fix NULL pointer dereference with xhci_irq() for shared_hcd
> The similar issue has also been found in QC activities in Mediatek.
> 
> Here quote the description from the referenced patch as follows.
> "Commit ("f068090426ea xhci: Fix leaking USB3 shared_hcd
> at xhci removal") sets xhci_shared_hcd to NULL without
> stopping xhci host. This results into a race condition
> where shared_hcd (super speed roothub) related interrupts
> are being handled with xhci_irq happens when the
> xhci_plat_remove is called and shared_hcd is set to NULL.
> Fix this by setting the shared_hcd to NULL only after the
> controller is halted and no interrupts are generated."
> 
> Signed-off-by: Sriharsha Allenki <sallenki@codeaurora.org>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>   drivers/usb/host/xhci-mtk.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> index b18a6baef204..c227c67f5dc5 100644
> --- a/drivers/usb/host/xhci-mtk.c
> +++ b/drivers/usb/host/xhci-mtk.c
> @@ -593,11 +593,11 @@ static int xhci_mtk_remove(struct platform_device *dev)
>   	struct usb_hcd  *shared_hcd = xhci->shared_hcd;
>   
>   	usb_remove_hcd(shared_hcd);
> -	xhci->shared_hcd = NULL;
>   	device_init_wakeup(&dev->dev, false);
>   
>   	usb_remove_hcd(hcd);
>   	usb_put_hcd(shared_hcd);
> +	xhci->shared_hcd = NULL;
>   	usb_put_hcd(hcd);
>   	xhci_mtk_sch_exit(mtk);
>   	xhci_mtk_clks_disable(mtk);
> 

Could you share details of the NULL pointer dereference, (backtrace).

The USB3 hcd is already removed when xhci->shared_hcd is set to NULL.
We might want to add some checks to make sure we are not using the removed
hcd anymore in that codepath anymore.

-Mathias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
