Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C962F5B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpdMu0yJWBQMNoEIfJWt98CyRY12Z8TzzC/btphipqE=; b=CD/kCziUr1ac/a
	FheSieHwPDPCod1BO2l9nXE2eNQe6sZwp8sqTOhu7OU6PQy13ZOr1DawDFsMcIQzU7mrWsHAGhjAL
	Je6eNVxFyPXT7FzcvpSYjEDdR/QSDQzLvlSgFg4qm67cEv4vdkLp8QX6lOjumYYp9gLa3kaA8s5Z4
	ukE9hkZXRvZZPUH32QkAWcV13H+JZAy6F9fQXnWOLvVRf630mDpvH6R7PMGOoOgiMxsmH6IpIYxj+
	P4XOeHFsA1IwoIJ6L+GCMZ36Wbv9NI9P91TiTf907/sxYXIg8DKZdhnZ1NSHTav25grdhvy4fInnn
	fVAAveKMlqaK3YPPfjjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLR0R-0006BO-Le; Tue, 30 Apr 2019 11:33:03 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hLR0H-00069j-G0; Tue, 30 Apr 2019 11:32:53 +0000
Date: Tue, 30 Apr 2019 04:32:53 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 3/4] iommu/dma-iommu: Use the dev->coherent_dma_mask
Message-ID: <20190430113253.GA23210@infradead.org>
References: <20190430002952.18909-1-tmurphy@arista.com>
 <20190430002952.18909-4-tmurphy@arista.com>
 <20190430111222.GA3191@infradead.org>
 <da835ce2-f73e-3035-e1d7-d3028cc1a838@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da835ce2-f73e-3035-e1d7-d3028cc1a838@arm.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Christoph Hellwig <hch@infradead.org>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Tom Murphy <tmurphy@arista.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:27:02PM +0100, Robin Murphy wrote:
> > Hmm, I don't think we need the DMA mask for the MSI mapping, this
> > should probably always use a 64-bit mask.
> 
> If that were true then we wouldn't need DMA masks for regular mappings
> either. If we have to map the MSI doorbell at all, then we certainly have to
> place it at an IOVA that the relevant device is actually capable of
> addressing.

Well, as shown by the patch below we don't even look at the DMA mask
for the MSI page - we just allocate from bottom to top.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
