Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710358ECAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k57I5XqC6zD9Ig63ogdGyNvIKRmW1GLVSO5kw7DINgY=; b=DTtMn6YuWQ1cW7
	Jziba3kwpLB1TS9giSNHqX0pJKrsxXltTQFnXLzJZicoimB9UF3NlVvgEdnD656X4V3rM798NY38h
	7kI/Gk+ccXzNrDav5j0P40+J7zmUQ+S20Dt06u1LWSoQDe41N3LR+DMBdewlZSRWWJZtQl5Y6YdS7
	5/0wuzN2/nI/7JUr8L9Pyh5BEG9jbnEXLSFvTbhiy2TVIvX2cxhuJ2oNKbRPv1lSxlgD5GaioApKC
	XIuwAQfuCPtjUxN4ewMZiN0/F9vwcpvUlQvMd4Ik3b7qd7uHD2ZITpp4LIcaS6VRhGJLHBpclS3Zd
	OmlMOR9MIIprDH82JRxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFj4-0007oe-OT; Thu, 15 Aug 2019 13:23:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFiq-0007nv-Su
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:23:23 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B11572084D;
 Thu, 15 Aug 2019 13:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565875400;
 bh=v8T3qwF6qiZM++7vAT7AL0JPe0r/NT0kv4QeyOYP/rE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PIdKCMQ/Lb50XgkTlSzI4dcJJpEBGXjfxY4vMHFbCuhE6F7PCaSzRKr5kWXihgsd6
 CYq+SBnCJXFALaYcaG3aif6qNMb45WH5wI6jKS8CZyb2VbP+PYmponIEA+124IIRAp
 rJJ2vhvhUrSSeOp1mohuc3t3W+bL3ZyLQHR5jtR4=
Date: Thu, 15 Aug 2019 15:23:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: next take at setting up a dma mask by default for platform devices
Message-ID: <20190815132318.GA27208@kroah.com>
References: <20190811080520.21712-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190811080520.21712-1-hch@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_062320_958222_11C4E586 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Gavin Li <git@thegavinli.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arch@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Alan Stern <stern@rowland.harvard.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Mathias Nyman <mathias.nyman@intel.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>, Olav Kongas <ok@artecdesign.ee>,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Geoff Levand <geoff@infradead.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 iommu@lists.linux-foundation.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 11, 2019 at 10:05:14AM +0200, Christoph Hellwig wrote:
> Hi all,
> 
> this is another attempt to make sure the dma_mask pointer is always
> initialized for platform devices.  Not doing so lead to lots of
> boilerplate code, and makes platform devices different from all our
> major busses like PCI where we always set up a dma_mask.  In the long
> run this should also help to eventually make dma_mask a scalar value
> instead of a pointer and remove even more cruft.
> 
> The bigger blocker for this last time was the fact that the usb
> subsystem uses the presence or lack of a dma_mask to check if the core
> should do dma mapping for the driver, which is highly unusual.  So we
> fix this first.  Note that this has some overlap with the pending
> desire to use the proper dma_mmap_coherent helper for mapping usb
> buffers.  The first two patches from this series should probably
> go into 5.3 and then uses as the basis for the decision to use
> dma_mmap_coherent.

I've taken the first 2 patches for 5.3-final.  Given that patch 3 needs
to be fixed, I'll wait for a respin of these before considering them.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
