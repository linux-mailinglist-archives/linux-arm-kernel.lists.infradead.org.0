Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBC833EBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqBSYnpmZT+gT6C5z683ml2cliCoGJ2XP+pY6WKKPDw=; b=SGJLyMk8q8Dt6t
	1AZZ8uqLXlRRhZrCqI4qqDhWPV9QIJjedVhe7flaxHz9auqCGI23bWbaCmRJ7YWd6MDyxGo9C3lQP
	AxXLyZ0Uj1u06DNsLmXTFWhPzo0AptztS3qNN65asItM2v7SjwDaAocdRvnEljg8TpOCzu5/mSUKR
	xBigjw5LchYpG8aTFGXzPq6MK4mKCbvlq8fUnLzVMz/abpVRN0NhibtRv5EZN/qmwinR4UL+rg8/C
	LMd11yQKQrc5DcPBAgG9DyBn3fyx40Se0O/yhnYU7C6+Vpjv4mZgFZo0xvE1C/h4sXtQ8QOBSpI54
	qkQ2HI/Z5yVRYYmPUgMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2af-0008Iw-0q; Tue, 04 Jun 2019 06:06:33 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2aX-0008Hx-FV
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:06:27 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id EF17568B02; Tue,  4 Jun 2019 08:05:54 +0200 (CEST)
Date: Tue, 4 Jun 2019 08:05:54 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jon Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH 07/26] iommu/dma: move the arm64 wrappers to common code
Message-ID: <20190604060554.GA14536@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-8-hch@lst.de>
 <06b331f0-7df7-a6cd-954c-789f89a0836d@arm.com>
 <acb46c7f-0855-de30-485f-a6242968f947@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acb46c7f-0855-de30-485f-a6242968f947@nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_230625_673418_7CFB11FC 
X-CRM114-Status: GOOD (  11.49  )
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-tegra <linux-tegra@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 08:47:57PM +0100, Jon Hunter wrote:
> Since next-20190529 one of our tests for MMC has started failing, where
> the symptom is that the data written to the MMC does not match the
> source. Bisecting this is pointing to this commit. Unfortunately, I am
> not able to cleanly revert this on top of -next, but wanted to report
> this if case you have any ideas.

Does this fix your problem?

https://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git/commit/?h=generic-dma-ops&id=1b961423158caaae49d3900b7c9c37477bbfa9b3

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
