Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7E75EA53
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZrgX8qgtoauumK8tH1XNIhZdUHP5L4JEzzSPJOmJWE=; b=urd722nCKYfMO9
	eeaR63o9bN4PKfyBriAbdeDlb/CGmQdddAo+QYOvIPWzAfIvavDcodpOyRbdyeBF5Z8ZIomh4A/xl
	7Xp6Y99QhV53BRKnzpYLIEA+3sDDQT6PGTsAdAC9giffkn6aeyL2O84GZTRF+fqnI+Z7LwD8NNV7G
	+zyFzpRT85OCMlS19y9OUyujAeirvbWTnnWtZcOTuj8Iw3RvUPpaJD29W1jc9s1fPSkPgLPtpXG64
	S2uxCl6EtNsgrFvF4dEsSsznua6kwH1y8c9DthIJyIYoTU5l23jFnObCScRzQtGT9L2x41BnkkiAT
	03zgyVKG0a3MTeL+66gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiwm-0007Bs-Sf; Wed, 03 Jul 2019 17:21:32 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hiiwW-0007Al-2D; Wed, 03 Jul 2019 17:21:16 +0000
Date: Wed, 3 Jul 2019 10:21:16 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH] driver core: platform: Allow using a dedicated dma_mask
 for platform_device
Message-ID: <20190703172115.GA22034@infradead.org>
References: <20190628141550.22938-1-maxime.chevallier@bootlin.com>
 <20190628155946.GA16956@infradead.org>
 <20190701132340.21123dee@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701132340.21123dee@bootlin.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: nadavh@marvell.com, "Rafael J . Wysocki" <rafael@kernel.org>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, brian.brooks@linaro.org,
 Rob Herring <robh+dt@kernel.org>, thomas.petazzoni@bootlin.com,
 Russell King <rmk+kernel@armlinux.org.uk>, stefanc@marvell.com,
 Frank Rowand <frowand.list@gmail.com>, David Miller <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 01:24:39PM +0200, Maxime Chevallier wrote:
> I agree that this the real solution, it just seemed a bit overwhelming
> to me. I'll be happy to help with this though, now that you took a big
> first step.

I think the first step is to resurrect my original patch to default
to a 32-bit DMA mask for platform devices, as that will cut a lot
of crap from the platform device declarations.

IIRC the problem back then was that USB uses the fact that a DMA
mask exist to decide if it uses a DMA vs PIO path in the HCD core.

So I'll need some help from Greg or other USB folks to clean that up,
after that we can try to apply my patch again (preferably early in
the next merge window), and once that sticks clean up all the 32-bit
dma mask initialization for platform devices, and then turn the dma_mask
into a scalar.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
