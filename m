Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081FA6546F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 12:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mt2NynFM2U1PJSYzbiZLspoeADu8tYMR4K5FeR5xfA=; b=UpKuWj1P6ommKe
	i77NLJi+u90bG4OfCE92p9SCac0e54OIUIIvumF3sVoVNg3NqW5TtXW8NIIPDx02t711/zAE6xHdv
	c0rd4j8CkIlu3z+qY9aSBFewr9NeEki+4aFVbDGha0LJhzObokuslV6iNOT0/nZw6n3/dBsv9kx9R
	gqFAOh5cuL1MKgg9514l8KAEP2x4HvTBpRYdsC8IMFukub/CDW07HDUrnjjhcg6kGMx6mdJz5q+Qh
	GZAoWb+CpPUagaanAEObKqX4CW0JodZva9Xh0Ep7+QnZyOl4Kpm1/X8Z4Mxv3kLYWPn4dIuZ8guK3
	pLbXQW6ZBx4KC7qpAYXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlWER-0001aN-Ce; Thu, 11 Jul 2019 10:23:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlWEF-0001Zp-RC
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 10:23:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89AD321537;
 Thu, 11 Jul 2019 10:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562840587;
 bh=Qax9TB9v/t+JwqwzSQrrFr6m3BcBICpw8ugber+pTq0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zA91KDGOMxMlfYtukBX0p9X9CZ355qgtXSmRA8Cul/dms1QZxtS4Zo/SIqu8rLCUu
 97yildkCyBKTOn/ch5dbrLyVBMNLW25juxlCHHqyglcBuFKIL7/yl9WciNvLtMkwfT
 Cvw5Nr8/ZmQ5Oug2plUOsj1aTADDr1IQRQadiWZE=
Date: Thu, 11 Jul 2019 11:23:03 +0100
From: Will Deacon <will@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH] iommu: io-pgtable: Drop WARN for empty PTEs on unmap
Message-ID: <20190711102303.pnvy4zlitusjjku7@willie-the-truck>
References: <20190710223119.8151-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710223119.8151-1-robh@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_032307_892917_E526B08B 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Joerg Roedel <joro@8bytes.org>, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 04:31:19PM -0600, Rob Herring wrote:
> If a region has been mapped sparsely (such as on page faults), the user
> has to keep track of what was mapped or not in order to avoid warnings
> when unmapping the entire region. Remove the WARN on empty PTEs to allow
> unmapping sparsely mapped regions.
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <joro@8bytes.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: iommu@lists.linux-foundation.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> This is needed for large (up to 1GB AIUI) scratch buffers on panfrost 
> which are mapped on demand on GPU page faults and can be unmapped on 
> memory pressure. Alternatively, I'd need to have a bitmap of mapped 
> pages to track what is mapped or not. Dropping the WARN seems like a 
> much simpler solution.

I suppose an alternative would be to do an iova_to_phys() before you do the
unmap(). Would that be acceptable? The WARN_ON() indicates invalid usage by
the IOMMU API, so it would be a shame to lose it entirely and I'm hesitant
to continue adding quirks at the rate we're currently doing so!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
