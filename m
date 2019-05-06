Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B8414ACA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 15:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KQrqCFejYNSgnVuI2pqCeDWxw1t/O5jUR0EmkYcMqg4=; b=gQQlDHklVsa7QPstzKc41uO0u
	fVKLK+uc4maihHsmaS4Sh6UviZF0ebqz2p9rSZwcxolCF6e+cP7RbMcb6X1GHdBcWOEj+L+I4zBwL
	zwU+YdcwfoxQPqw9jh9wzA9uKKIXPelp2oQUjoGJ5ccqmcj8mmbPWUYNdJ1OzaIPTy5UCr1oGPHvN
	I7kOED0YsScTKGKdWp6Jx/oUXnLUyEaW0j42e1+TsUFCPZ71BNBy5M8kBHWqWVvHHqtkVIFRu/7Z1
	uh3QIM4nMV6yNkoUjUROTVxDGFSIGIhD554AaNWFmnhmhHZz1iW/oy1N6BxIq4ozQrXVZqbLCn9Dd
	oaj+IfJWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdWk-0001Ls-Re; Mon, 06 May 2019 13:19:30 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNdWd-0001L1-86; Mon, 06 May 2019 13:19:24 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 06:19:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="155548586"
Received: from mattu-haswell.fi.intel.com (HELO [10.237.72.164])
 ([10.237.72.164])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2019 06:19:18 -0700
Subject: Re: [PATCH 1/2] usb: xhci: Make it possible to not have a secondary
 HCD (3.0)
To: Nicolas Boichat <drinkcat@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190502045631.229386-1-drinkcat@chromium.org>
From: Mathias Nyman <mathias.nyman@linux.intel.com>
Message-ID: <6844539f-3d5e-e3ff-b498-390cdc731880@linux.intel.com>
Date: Mon, 6 May 2019 16:21:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190502045631.229386-1-drinkcat@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_061923_554470_1FD605CA 
X-CRM114-Status: GOOD (  24.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
 Mathias Nyman <mathias.nyman@intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Hoan Tran <hoan@os.amperecomputing.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2.5.2019 7.56, Nicolas Boichat wrote:
> Some XHCI controllers may not have any USB 3.0 port, in this case, it
> is not useful to create add hcd->shared_hcd, which has 2 main
> downsides:
>   - A useless USB 3.0 root hub is created.
>   - A warning is thrown on boot:
> hub 2-0:1.0: config failed, hub doesn't have any ports! (err -19)
> 
> The change is mostly about checking if hcd->shared_hcd is NULL before
> accessing it. The one special case is in xhci_run, where we need to
> call xhci_run_finished immediately, if there is no secondary hcd.

To me it looks like this creates an controller starting issue for
xHC hardware that have both usb2 and usb3 ports.

When we have usb3 ports xhci->shared_hcd is not set yet when xhci_run is called
the first time. We will end up starting the xHC before properly setting up the secondary hcd.

See further down for details

> 
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> ---
> 
> This is a respin of https://lore.kernel.org/patchwork/patch/863993/,
> hopefully addressing the comments there. Note that I dropped the change
> in xhci-plat.c, as I do not have a device to test it, but made a
> similar change in xhci-mtk.c, in the next patch.
> 
> (the @apm.com addresses seem to bounce, so I added some
> @amperecomputing.com instead, if somebody there can track back the
> original issue, I'm happy to provide a patch for xhci-plat.c as well)
> 
> drivers/usb/host/xhci-hub.c |  7 ++++--
>   drivers/usb/host/xhci.c     | 45 +++++++++++++++++++++++++++----------
>   2 files changed, 38 insertions(+), 14 deletions(-)
> 

...

> @@ -698,6 +703,10 @@ int xhci_run(struct usb_hcd *hcd)
>   
>   	xhci_debugfs_init(xhci);
>   
> +	/* There is no secondary HCD, start the host controller immediately. */
> +	if (!xhci->shared_hcd)
> +		return xhci_run_finished(xhci);
> +

PCI xHC controllers with both usb2 and usb3 ports will be started before usb3 parts are properly set up.

xhci_pci_probe()
   usb_hcd_pci_probe()
     usb_add_hcd()
       hcd->driver->start(hcd)  // .start = xhci_run
         xhci_run()
           if (!xhci->shared_hcd)  // TRUE as xhci->shared_hcd is not yet set,
	    return xhci_run_finished(xhci)  // starting controller too early here
   xhci->shared_hcd = usb_create_shared_hcd()   // now xhci->shared_hcd is set.

-Mathias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
