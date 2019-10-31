Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004CFEB700
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 19:33:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIKEm55gRb+V7H7FbcnVMsc3YFpjmOT+Sccv6RE+Lak=; b=T9hOhcOXHb+tHm
	tzSZuQ4UAezVYo8iWS15VWXaZrWOdlB2xZRskwvSOBtGrFC6+syyO6SL+N918C0wFNAsb5RzlSWl5
	tagdYmPdTJ6f9BgN/vxK7YPhEdzVoADJWcmsQgEg3Vch9c7gYuv2ZkvCJJmrvuTTk3HfxFQZ48aSB
	UuCWTDkTXJRdJZ5gVPlH92kaFHZsfE+H1+xoq1XRRMlCoz4h5ctTOb23GpnMRhCIFs4GnHR1/RPK6
	gl3jpIPbVdGF4fBU3yG/CvSX/6UwN532MjFujNGs+ybld7cBC+vKvzH/J40AiWeXfVCVzi9GTL1Mt
	qJeCS3yR2Ye3sU7SDX3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQFFu-00052X-8a; Thu, 31 Oct 2019 18:33:10 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFFk-00051j-IL
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 18:33:02 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DC3F5227A81; Thu, 31 Oct 2019 19:32:55 +0100 (CET)
Date: Thu, 31 Oct 2019 19:32:55 +0100
From: Christoph Hellwig <hch@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] dma/direct: turn ARCH_ZONE_DMA_BITS into a variable
Message-ID: <20191031183255.GA10116@lst.de>
References: <20191031152837.15253-1-nsaenzjulienne@suse.de>
 <20191031154759.GA7162@lst.de>
 <40d06d463c05d36968e8b64924d78f7794f8de50.camel@suse.de>
 <20191031155750.GA7394@lst.de>
 <6726a651c12d91ca22b9d8984745d90db5d507ec.camel@suse.de>
 <20191031165853.GA8532@lst.de> <20191031180619.GI39590@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031180619.GI39590@arrakis.emea.arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_113300_757363_7E9EBB24 
X-CRM114-Status: GOOD (  15.38  )
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linuxppc-dev@lists.ozlabs.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 iommu@lists.linux-foundation.org, Paul Mackerras <paulus@samba.org>,
 linux-arm-kernel@lists.infradead.org, Michael Ellerman <mpe@ellerman.id.au>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 06:06:19PM +0000, Catalin Marinas wrote:
> On Thu, Oct 31, 2019 at 05:58:53PM +0100, Christoph Hellwig wrote:
> > On Thu, Oct 31, 2019 at 05:22:59PM +0100, Nicolas Saenz Julienne wrote:
> > > OK, I see what you mean now. It's wrong indeed.
> > > 
> > > The trouble is the ZONE_DMA series[1] in arm64, also due for v5.5, will be
> > > affected by this patch. I don't know the right way to approach this problem
> > > since depending on the merge order, this patch should be updated or the arm64
> > > ZONE_DMA series fixed.
> > > 
> > > Maybe it's easier to just wait for v5.6.
> > 
> > Ok, I can wait.  Or the arm64 maintainers can pick up this patch if
> > you want to add it to that series.
> 
> This branch is stable (may add a fix but not I'm not rebasing it) if you
> want to base this patch on top:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/zone-dma
> 
> Otherwise, with your ack, I can add it on top of the above branch (aimed
> at 5.5).

Please go ahead:

Acked-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
