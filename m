Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204B1EB598
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:59:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssyTCxY5VaalKZbWfIcV4cEjE9M4zOOIguaSElpehug=; b=tOfhNm2KdL+cFo
	bOSff97naz2IZ0YqcSChI5T7RZBauc085l8fTGudmU+/XKsQFcANJQOhPasj5HQCYoXGzpZVGZYXj
	uT5snVveBDYBsaDvb7AZePTSiPL3f2gzhVoTZlsQQEZhJIgw9irztOAcnOMGQB8o17Byb1qnpyPxS
	pc0dqHlXbexI4JOH9jEUjS7Wv1OI2rNqw9WBR9cxZ9gxP+r//g+krxm7dhnamYAAZR/oEUXISQKfv
	AA+l/MPwDVPJ1NTvJ5MGG9peBenWl22Q1aFjS90kdMz0IzFzZlojQ9cIs8Yz75Ee4obfdEAGZtpqs
	4xuXq/pF26yit2Amjo5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDms-0008Hl-Jq; Thu, 31 Oct 2019 16:59:06 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDmj-0008HM-8M
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:58:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 68576227A81; Thu, 31 Oct 2019 17:58:53 +0100 (CET)
Date: Thu, 31 Oct 2019 17:58:53 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH] dma/direct: turn ARCH_ZONE_DMA_BITS into a variable
Message-ID: <20191031165853.GA8532@lst.de>
References: <20191031152837.15253-1-nsaenzjulienne@suse.de>
 <20191031154759.GA7162@lst.de>
 <40d06d463c05d36968e8b64924d78f7794f8de50.camel@suse.de>
 <20191031155750.GA7394@lst.de>
 <6726a651c12d91ca22b9d8984745d90db5d507ec.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6726a651c12d91ca22b9d8984745d90db5d507ec.camel@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_095857_448540_8C848719 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linuxppc-dev@lists.ozlabs.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 iommu@lists.linux-foundation.org, Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 05:22:59PM +0100, Nicolas Saenz Julienne wrote:
> OK, I see what you mean now. It's wrong indeed.
> 
> The trouble is the ZONE_DMA series[1] in arm64, also due for v5.5, will be
> affected by this patch. I don't know the right way to approach this problem
> since depending on the merge order, this patch should be updated or the arm64
> ZONE_DMA series fixed.
> 
> Maybe it's easier to just wait for v5.6.

Ok, I can wait.  Or the arm64 maintainers can pick up this patch if
you want to add it to that series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
