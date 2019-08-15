Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35198EE6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 16:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=8umRRgWetNKt8pUcVDGUaoTaXZt8+mTYbVpHiEVLqCs=; b=OtXhPWBf6Y5IWq
	80dMfLYDSN6MWtJ4pAr5aaHd/TJEm4fsD5CfvW8svi4MZKiWzI08OyzlZucsMF3fsqpxZYq3qblq0
	Ob2CVm2OKEhYYA30PEvofdf0mEkFj9pgICp0f1W1Jx9tLLEJKPGDLuQbDB1KpcwfCYArWRASjhBTd
	zxwSvkPEKYGJCQNF2uaNvTL8wgfFvC/hDs3HGRJt+DcSLCXGn0G5lJItLiRLUU9Qbjk9/fSypJEFA
	4WE6pcUCkUgUocL2vEuG64rRkaIP4V8EmYirfjXG1PwTVMzb9iFLnMqJfZ1bCSKwwO0Ebp52VHjdz
	RXeoBYd2M5Cp3BT/fQPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyGvM-0006qA-LB; Thu, 15 Aug 2019 14:40:21 +0000
Received: from iolanthe.rowland.org ([192.131.102.54])
 by bombadil.infradead.org with smtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyGv8-0005dh-Cx
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 14:40:09 +0000
Received: (qmail 2273 invoked by uid 2102); 15 Aug 2019 10:39:58 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 15 Aug 2019 10:39:58 -0400
Date: Thu, 15 Aug 2019 10:39:58 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Christoph Hellwig <hch@lst.de>
Subject: Re: next take at setting up a dma mask by default for platform devices
In-Reply-To: <20190815132531.GA12036@lst.de>
Message-ID: <Pine.LNX.4.44L0.1908151039260.1664-100000@iolanthe.rowland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_074006_654877_8C9DF884 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.131.102.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Gavin Li <git@thegavinli.com>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arch@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 NXP Linux Team <linux-imx@nxp.com>, Mathias Nyman <mathias.nyman@intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Minas Harutyunyan <hminas@synopsys.com>,
 Olav Kongas <ok@artecdesign.ee>, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Geoff Levand <geoff@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 iommu@lists.linux-foundation.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 15 Aug 2019, Christoph Hellwig wrote:

> On Thu, Aug 15, 2019 at 03:23:18PM +0200, Greg Kroah-Hartman wrote:
> > I've taken the first 2 patches for 5.3-final.  Given that patch 3 needs
> > to be fixed, I'll wait for a respin of these before considering them.
> 
> I have a respun version ready, but I'd really like to hear some
> comments from usb developers about the approach before spamming
> everyone again..

I didn't see any problems with your approach at first glance; it looked 
like a good idea.

Alan Stern


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
