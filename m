Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADA6EB156
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxoCovMSsZ+BPWcJT6SYLFPW37B4p9sCM0OtAGq37/s=; b=FGh4Kf0YMmgQU1
	gj7PSHl34z0ROySmnUc2bvAM2gkJ6FAfxFJsLJoYGmzKLmR6N1SaaDQbYc5zcYUJgJnnG9c1RGgAZ
	UoKC8MsRY+LxLgAuVXUUB3HfsJPe3rJ++jsTebmDipWljESlgVFkTiX+MOhqdKSVXW1AJqWj5wCWw
	iDOx86dYVrCdhANYcQY0lCYaA3znoYx+QhQj7tl2PAxtvNv9gr35Ygxly29ARD7O3qQj/+9C8UJuL
	F9nuYKvKwQEFghDdqe7gBZQqmbkA6ekOIONFqdCT53LuJgOXP9HTswr/kOzi9a9emIVHmKF5gx7pn
	q87l8riq033faS4janaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAev-0005da-Dm; Thu, 31 Oct 2019 13:38:41 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iQAel-0005dF-3D; Thu, 31 Oct 2019 13:38:31 +0000
Date: Thu, 31 Oct 2019 06:38:31 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH RFC 1/5] dma/direct: turn ARCH_ZONE_DMA_BITS into a
 variable
Message-ID: <20191031133831.GA21509@infradead.org>
References: <20191014183108.24804-1-nsaenzjulienne@suse.de>
 <20191014183108.24804-2-nsaenzjulienne@suse.de>
 <20191030214914.GA15939@infradead.org>
 <8c525f66c1c0d9f07e0cff4948d1ec3229756220.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c525f66c1c0d9f07e0cff4948d1ec3229756220.camel@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: linux-s390@vger.kernel.org, mbrugger@suse.com,
 Vasily Gorbik <gor@linux.ibm.com>, wahrenst@gmx.net,
 Michael Ellerman <mpe@ellerman.id.au>,
 Catalin Marinas <catalin.marinas@arm.com>, linuxppc-dev@lists.ozlabs.org,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 iommu@lists.linux-foundation.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 11:30:36AM +0100, Nicolas Saenz Julienne wrote:
> On Wed, 2019-10-30 at 14:49 -0700, Christoph Hellwig wrote:
> > On Mon, Oct 14, 2019 at 08:31:03PM +0200, Nicolas Saenz Julienne wrote:
> > > Some architectures, notably ARM, are interested in tweaking this
> > > depending on their runtime DMA addressing limitations.
> > > 
> > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > 
> > Do you want me to pick this up for the 5.5 dma-mapping tree, or do you
> > want me to wait for the rest to settle?
> 
> I'd say take it, this will be ultimately needed once we push forward with ARM.

Can you resend a version that applies against 5.4-rc?  The current one
has conflicts in the arm64 code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
