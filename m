Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE4BEB6A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 19:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWrWEi5R51SdRjJqYHtftFLRUpv1QtwoEMckWeJFiHI=; b=Nkmk1trb2u+YQx
	i4jgR1eUv/V3lUzx/LB49qqMiP96XxZP9vogPJ2aHV969HXEZJ0QrrqM98NS8cXp774WkoeNmM4aV
	qYqR9SF95TUAa72hEPs6PHv+x9PTQXWtgcmcLvdpQS67+iIgj1RntusNceLX0qIBmcSK9l0+3kS3u
	SH74JFwAc51YdDFysbbuooWSlLtXP76p9at6dNGdwM3cVBdiwxnNVFjOKo1Ii4lg/8XtNXq9Jw0sY
	YusacwVcALGuhLh1b8TPFKSdmevKT8z9AI1DIP5GYXC3saNEPOpQy3LYNoTsP12H1dyOz96FyXFV9
	5ZwKM1Y7whcq1Oj/YOTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEqB-0003zf-M5; Thu, 31 Oct 2019 18:06:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEq1-0003yz-42
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 18:06:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC1D41FB;
 Thu, 31 Oct 2019 11:06:23 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A95563F6C4; Thu, 31 Oct 2019 11:06:21 -0700 (PDT)
Date: Thu, 31 Oct 2019 18:06:19 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] dma/direct: turn ARCH_ZONE_DMA_BITS into a variable
Message-ID: <20191031180619.GI39590@arrakis.emea.arm.com>
References: <20191031152837.15253-1-nsaenzjulienne@suse.de>
 <20191031154759.GA7162@lst.de>
 <40d06d463c05d36968e8b64924d78f7794f8de50.camel@suse.de>
 <20191031155750.GA7394@lst.de>
 <6726a651c12d91ca22b9d8984745d90db5d507ec.camel@suse.de>
 <20191031165853.GA8532@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031165853.GA8532@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_110625_209957_0745ED8C 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Will Deacon <will@kernel.org>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 05:58:53PM +0100, Christoph Hellwig wrote:
> On Thu, Oct 31, 2019 at 05:22:59PM +0100, Nicolas Saenz Julienne wrote:
> > OK, I see what you mean now. It's wrong indeed.
> > 
> > The trouble is the ZONE_DMA series[1] in arm64, also due for v5.5, will be
> > affected by this patch. I don't know the right way to approach this problem
> > since depending on the merge order, this patch should be updated or the arm64
> > ZONE_DMA series fixed.
> > 
> > Maybe it's easier to just wait for v5.6.
> 
> Ok, I can wait.  Or the arm64 maintainers can pick up this patch if
> you want to add it to that series.

This branch is stable (may add a fix but not I'm not rebasing it) if you
want to base this patch on top:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/zone-dma

Otherwise, with your ack, I can add it on top of the above branch (aimed
at 5.5).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
