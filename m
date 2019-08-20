Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132A095B5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 11:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSbX8a0WsJ4eJ740+Igzsr6xUaxkKabxyW1GJ2c5NEg=; b=fOtxoYYhtSocw1
	knE77d7xNlgnSDE4RrfwDPBJp1hJ5bjE9ZMeEK67ZmuXsevBzG6jCJ1MABVHv7yILgECFtGxqO82T
	Dwy43xHLLxisQJnzBZsORSh0TNQKLDbxyuCN5vv5fwDGYtYwo3+6FzVm/ulAj5rk3zxNPgSUKAieT
	0X6roieS9hSHL5HNzZrLRZolynBMIFANywA3l5ijoRxcy+xGlpBCbBfXQyBgp9WABzrvnXAPeWxBO
	WtiKNXbr48F75MMWuWrsggto0oZPssq1QJEqfKiYI5S9c7jmC5MMPoXlZk8P5M09o7Fj/cRUH1/1W
	kSAU7STkH40zMQiIkhIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00fq-0000x7-D8; Tue, 20 Aug 2019 09:43:30 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i00fS-0000ug-OG; Tue, 20 Aug 2019 09:43:06 +0000
Date: Tue, 20 Aug 2019 02:43:06 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <murphyt7@tcd.ie>
Subject: Re: [PATCH V5 3/5] iommu/dma-iommu: Handle deferred devices
Message-ID: <20190820094306.GC24154@infradead.org>
References: <20190815110944.3579-1-murphyt7@tcd.ie>
 <20190815110944.3579-4-murphyt7@tcd.ie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815110944.3579-4-murphyt7@tcd.ie>
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-s390@vger.kernel.org, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 David Woodhouse <dwmw2@infradead.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +static int handle_deferred_device(struct device *dev,
> +	struct iommu_domain *domain)

Nitick: we usually use double tab indents (or indents to after
the opening brace) for multi-line prototyped.

> +	if (!is_kdump_kernel())
> +		return 0;
> +
> +	if (unlikely(ops->is_attach_deferred &&
> +		ops->is_attach_deferred(domain, dev)))
> +		return iommu_attach_device(domain, dev);

And for multi-line conditionals we also use two-tab indents.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
