Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A9289D69
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:57:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZCaO2q0wpjJrUMxFA6ohVYZ399/WbckbL93UXGBpAM=; b=uZakJXtJuIbvn9
	3ni+74Hk+GwT2+9+B9bkQ9W4UOTvoqgli7vqhuDs63DW+Upa6YXUu72kZNqN9P4Iny88RovDhqvMs
	lk/jnyyVVvUDy6KvT0hfjDdOWy9xDx8xri/DYSm94bPG8/ikOJPLTIOvcQfhhiPV6k7KWrJLEv+07
	rJzNTwq8tOqcWTc1KNAFQ3V+Ph4zD7EGtYBinrBaCyXTT3U6pJ/TxzOYfcxdrCKleMnIXtoAknA22
	AOOIUwMO0onz9Tj/mEhWgiPvAK4tIWMAR/69olqRULbLnEnzPLIUwy6+1YcyPRSKHMxmZcEgFzqSQ
	V+Vh6ATv3ONyb1pf1KdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8xP-0002wa-M3; Mon, 12 Aug 2019 11:57:47 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8xA-0002w6-U7
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:57:34 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9DBBD227A81; Mon, 12 Aug 2019 13:57:26 +0200 (CEST)
Date: Mon, 12 Aug 2019 13:57:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH 3/6] usb: add a HCD_DMA flag instead of guestimating
 DMA capabilities
Message-ID: <20190812115726.GA9180@lst.de>
References: <20190811080520.21712-1-hch@lst.de>
 <20190811080520.21712-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190811080520.21712-4-hch@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_045733_120600_1835753B 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Gavin Li <git@thegavinli.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mathias Nyman <mathias.nyman@intel.com>, Geoff Levand <geoff@infradead.org>,
 Olav Kongas <ok@artecdesign.ee>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-usb@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 iommu@lists.linux-foundation.org, Alan Stern <stern@rowland.harvard.edu>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Minas Harutyunyan <hminas@synopsys.com>, Shawn Guo <shawnguo@kernel.org>,
 linuxppc-dev@lists.ozlabs.org, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> diff --git a/drivers/usb/host/ehci-ppc-of.c b/drivers/usb/host/ehci-ppc-of.c
> index 576f7d79ad4e..9d17e0695e35 100644
> --- a/drivers/usb/host/ehci-ppc-of.c
> +++ b/drivers/usb/host/ehci-ppc-of.c
> @@ -31,7 +31,7 @@ static const struct hc_driver ehci_ppc_of_hc_driver = {
>  	 * generic hardware linkage
>  	 */
>  	.irq			= ehci_irq,
> -	.flags			= HCD_MEMORY | HCD_USB2 | HCD_BH,
> +	.flags			= HCD_MEMORY | HC_DMA | HCD_USB2 | HCD_BH,

FYI, the kbuild bot found a little typo here, so even for the unlikely
case that the series is otherwise perfect I'll have to resend it at
least once.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
