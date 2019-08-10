Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC908890F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 09:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Lw0+sHP5mFE2smSwx6sVfWeMPGc8s0ODIku8TlM4KI=; b=eoZqOtkq/hQHRz
	NwVqyR/Dy9HDY+dvNw0Tz8k2AzqRBgxo5rpR2Ie6k64Ndt9WridVbXVHTAYyD2JutvYQT3myZ6EN5
	uNmzrF0wZ0T83nHWbADRZo4qf3FN8Fd4gNx3YBXZtOu4UXsbAA3E3FF5Vkr8MM5+bOmM8vKxWnmSI
	DH7UGga6G3CjSbTa2RlOKTouRUXFDfJ5hKsj6c/iGKTU5b4ocP1yI2QUBilLV8cFJk8QzbQVrkO+h
	pJYAf00O2/cvvMMEbR3RJbIXnePVoSOl74d10b4hNpDpDRAKXgKCGkvKxFeqd7PzxC4yjop6CCQN9
	M1di2omE4BO2tJABvtwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwLfx-0006r7-PN; Sat, 10 Aug 2019 07:20:30 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hwLfM-0006iA-Bq; Sat, 10 Aug 2019 07:19:52 +0000
Date: Sat, 10 Aug 2019 00:19:52 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <murphyt7@tcd.ie>, Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v4 0/5] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Message-ID: <20190810071952.GA25550@infradead.org>
References: <20190613223901.9523-1-murphyt7@tcd.ie>
 <20190624061945.GA4912@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624061945.GA4912@infradead.org>
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 virtualization@lists.linux-foundation.org,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Kukjin Kim <kgene@kernel.org>, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 23, 2019 at 11:19:45PM -0700, Christoph Hellwig wrote:
> Tom,
> 
> next time please cc Jerg as the AMD IOMMU maintainer.
> 
> Joerg, any chance you could review this?  Toms patches to convert the
> AMD and Intel IOMMU drivers to the dma-iommu code are going to make my
> life in DMA land significantly easier, so I have a vested interest
> in this series moving forward :)

Tom, can you repost the series?  Seems like there hasn't been any
news for a month.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
