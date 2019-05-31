Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5974E31268
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7tLfDSmBsEbSVkxfKAOHiJOD3JowgAJ4K3kBVxpboU=; b=V9mDKC4OhVLyLf
	+V9HM0QWL4hUVkpkfUK7jFW9f5MKpAMBOipgeqUlXI453lbA+1ntYwrrwqpLbsxQA8R0q80bFwjwX
	Cfawb0nFJ59qHuGQc7MYHnlPLsOuKtSq7cfZ9wOO7L6SK1DKrd1F79TOvci0E/j+7t1q+Aujv/2lz
	Eu6ng3Y7m9z36B/FMxSEdprqyWgJGrmpwjsnyXtSHDD+PSH+fznrdQ25+MsKqPcZzrWbufhK02cPz
	fl3hONtMnvyJEwpp1bSXK8/DpiMUvV6d2WOQN8U0eGnZDOgnLAeIUn9fnwku3YmHrUiOPK8ldhqIi
	bknATtHKIFq/rYdSas0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkSL-0003lG-Tt; Fri, 31 May 2019 16:32:37 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hWkSD-0003l4-C7; Fri, 31 May 2019 16:32:29 +0000
Date: Fri, 31 May 2019 09:32:29 -0700
From: Christoph Hellwig <hch@infradead.org>
To: laurentiu.tudor@nxp.com
Subject: Re: [PATCH v3 5/6] dpaa_eth: fix iova handling for contiguous frames
Message-ID: <20190531163229.GA8708@infradead.org>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <20190530141951.6704-6-laurentiu.tudor@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530141951.6704-6-laurentiu.tudor@nxp.com>
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
Cc: madalin.bucur@nxp.com, netdev@vger.kernel.org, roy.pledge@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Joakim.Tjernlund@infinera.com, iommu@lists.linux-foundation.org,
 camelia.groza@nxp.com, linuxppc-dev@lists.ozlabs.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 05:19:50PM +0300, laurentiu.tudor@nxp.com wrote:
> +static phys_addr_t dpaa_iova_to_phys(const struct dpaa_priv *priv,
> +				     dma_addr_t addr)
> +{
> +	return priv->domain ? iommu_iova_to_phys(priv->domain, addr) : addr;
> +}

Again, a driver using the iommu API must not call iommu_* APIs.

This chane is not acceptable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
