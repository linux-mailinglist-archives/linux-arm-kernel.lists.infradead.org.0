Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 788FCC210A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eqj7YmKXtrM3K6sG2z7dAe53B+ae7dII35PyT3MiFWk=; b=fwbzHEP2SNxlGc
	5L1s5HyxDBSTUfwt6QeZ7OeZ5yVSW5y0MUvItH8RH1MMOl4bYB6Mr0OMzWxT/+qMjInO6VXEa6tSm
	yHhatuC45AByH5bZnvhFNLXS7aZ5v0e2FtQ/ckGZ0tUkzo1eVt9nKMxTtUhyVnYKvlp8X63qb7e4v
	cUTy/bZSHRouWEfAoJcfLPEvhj9GUJyM4Wj5MD7yxCuzWv3KuCGCqPKP2aCyI+I1Q5+DmYICtbztU
	I43kbvFNqTeyleSTOWwa04YAcc+xskeyl4nJyAYXmWiTj7aDM9fIgswjoh4Tix12m5uiKmuOBYKxP
	BFVYx8AekQDlCYX2b5wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvFY-0007wF-AE; Mon, 30 Sep 2019 12:58:00 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iEvFQ-0007vv-1U; Mon, 30 Sep 2019 12:57:52 +0000
Date: Mon, 30 Sep 2019 05:57:52 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 05/11] of: Ratify of_dma_configure() interface
Message-ID: <20190930125752.GD12051@infradead.org>
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-6-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927002455.13169-6-robh@kernel.org>
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 07:24:49PM -0500, Rob Herring wrote:
> -int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
> +int of_dma_configure(struct device *dev, struct device_node *parent, bool force_dma)

This creates a > 80 char line.

>  {
>  	u64 dma_addr, paddr, size = 0;
>  	int ret;
>  	bool coherent;
>  	unsigned long offset;
>  	const struct iommu_ops *iommu;
> +	struct device_node *np;
>  	u64 mask;
>  
> +	np = dev->of_node;
> +	if (!np)
> +		np = parent;
> +	if (!np)
> +		return -ENODEV;

I have to say I find the older calling convention simpler to understand.
If we want to enforce the invariant I'd rather do that explicitly:

	if (dev->of_node && np != dev->of_node)
		return -EINVAL;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
