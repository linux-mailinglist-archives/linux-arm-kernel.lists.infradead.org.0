Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2656BF76E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:45:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVpsNjye4CEdo/pDLN95A/edCnu7A0CNmFCd6Oyk34k=; b=d6YntxkkTGd+eZ
	I55SHJHg4mnHHUbb6R0ruBiuPfskN4ilaSZ3/g6rsASPY3GSRRfmHhRigpXxQUAtB1vcFE0Gvlr7R
	wt4Ai5YaMHLev5elrWAZvuJcanGkjLRToaRiWzgLNI23t60YLQhteMkVcnVXtnCIYaX+z1qLDfAHs
	oTZ7GBOu6bCjXRHl7ps6/tXUfC0dcMVkslqeFKqScCvIJqLZN5w3tr5nP/qtrtIBfY933ysp0IT3O
	8+kSFE6X0Nl0/oGGv9PaXyrlttD8Fjt9tQh+2gjgVMDqKCo/vyFQoZqdaGlpWXun+hh4c+G2yLdWZ
	nmqkETSrUMB/8r2By9CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAwm-0006AT-Vr; Mon, 11 Nov 2019 14:45:40 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAvv-0004Kt-Ds
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:44:49 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 9D8FE1E6; Mon, 11 Nov 2019 15:44:44 +0100 (CET)
Date: Mon, 11 Nov 2019 15:44:43 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 1/2] iommu/arm-smmu-v3: Don't display an error when IRQ
 lines are missing
Message-ID: <20191111144442.GE18333@8bytes.org>
References: <20191111111721.4145919-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111111721.4145919-1-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_064447_661985_15DA51AA 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: robin.murphy@arm.com, iommu@lists.linux-foundation.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 12:17:20PM +0100, Jean-Philippe Brucker wrote:
> Since commit 7723f4c5ecdb ("driver core: platform: Add an error message
> to platform_get_irq*()"), platform_get_irq_byname() displays an error
> when the IRQ isn't found. Since the SMMUv3 driver uses that function to
> query which interrupt method is available, the message is now displayed
> during boot for any SMMUv3 that doesn't implement the combined
> interrupt, or that implements MSIs.
> 
> [   20.700337] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ combined not found
> [   20.706508] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ eventq not found
> [   20.712503] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ priq not found
> [   20.718325] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ gerror not found
> 
> Use platform_get_irq_byname_optional() to avoid displaying a spurious
> error.
> 
> Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
