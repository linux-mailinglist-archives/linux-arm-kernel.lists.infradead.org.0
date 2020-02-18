Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9C8162F5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIC9y+vQ0IQp2ustgecRQNePSsIFa4RvWRPjpCoy+Gg=; b=oCEvuqCnT99oxR
	yKmaFwK5vYgEcFDlPeWsfaKOZw7n+1ES/cFWdbtXoksni3aPaBucxnaCsZsbYySttok/SsMneVCRT
	RvIKEXXYHxQWmfxQLqVsswlfRtuCBfEmtIHzhp23R+S2pyp/J01lyAckh383xqraT8vX/EVfHwaYZ
	UvHMc8+D1fa/M8c4gVBQN9HfJ/lj0MEHAEN+S5NuukXak7YCRkq405jHQk8jcLhDl2hfK14yDb9tW
	KEy2qnqo4aazlsQPwLd7Bt6PlW0xPFC2pB6GNxK6HOEjjqJIHoba/b2JXNFnKcK5XQDHBK60O6z2b
	kScguRJMvaLgzNkN1IEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48Be-0003kR-Iw; Tue, 18 Feb 2020 19:05:38 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48BW-0003k0-6V
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:05:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1582052726;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=5D52tt6mIQclXNRsDvAzprjKbRWFDl8iC2bcJ4uR/M8=;
 b=GJdo3IVUt+X+7op4EFxqcbzwTZIpSuCxoKUyzq4hnXfYcBR8Jo9TmYY7Hg6gIgRJ3Z
 HUJOebh4RrkC4nGElkRFxkbXdiUe148sJ0cFjrhAIUDLYZLykYW7Zt151K7ivsuiU3BM
 y5DYWqd8W0DPjsde08gJYi5wbKaZOdgIQZQy3c3Rq/CVaMlV2J1TtAJureIjqFDHT3qc
 gmAikl96O2bxoxDyMyyDObazyRuULsKRO0Gwmifxsh6riM+S2IqQj48C3DA+g6msbUcy
 Mt4CL6s8br+e5uEONo/oQr9EUzMriNTich8RzUKTuWdcKUdMoGKm/F9n+CCk14w25OwV
 VOJA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u26zEodhPgRDZ8b7Ic/NaIo="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 46.1.12 DYNA|AUTH)
 with ESMTPSA id a01fe9w1IJ5Mm3U
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Tue, 18 Feb 2020 20:05:22 +0100 (CET)
Date: Tue, 18 Feb 2020 20:05:16 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/qcom: Fix bogus detach logic
Message-ID: <20200218190516.GA19773@gerhold.net>
References: <be92829c6e5467634b109add002351e6cf9e18d2.1582049382.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be92829c6e5467634b109add002351e6cf9e18d2.1582049382.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_110530_845373_07C1C87F 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:8 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, joro@8bytes.org,
 iommu@lists.linux-foundation.org, robdclark@gmail.com,
 Naresh Kamboju <naresh.kamboju@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 06:12:41PM +0000, Robin Murphy wrote:
> Currently, the implementation of qcom_iommu_domain_free() is guaranteed
> to do one of two things: WARN() and leak everything, or dereference NULL
> and crash. That alone is terrible, but in fact the whole idea of trying
> to track the liveness of a domain via the qcom_domain->iommu pointer as
> a sanity check is full of fundamentally flawed assumptions. Make things
> robust and actually functional by not trying to be quite so clever.
> 
> Reported-by: Brian Masney <masneyb@onstation.org>
> Tested-by: Brian Masney <masneyb@onstation.org>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Fixes: 0ae349a0f33f ("iommu/qcom: Add qcom_iommu")
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

This fixes the warning reported by Naresh Kamboju [1] for me. Thank you!

Tested-by: Stephan Gerhold <stephan@gerhold.net>

[1]: https://lore.kernel.org/linux-arm-msm/CA+G9fYtScOpkLvx=__gP903uJ2v87RwZgkAuL6RpF9_DTDs9Zw@mail.gmail.com/

> ---
>  drivers/iommu/qcom_iommu.c | 28 ++++++++++++----------------
>  1 file changed, 12 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
> index 39759db4f003..4328da0b0a9f 100644
> --- a/drivers/iommu/qcom_iommu.c
> +++ b/drivers/iommu/qcom_iommu.c
> @@ -344,21 +344,19 @@ static void qcom_iommu_domain_free(struct iommu_domain *domain)
>  {
>  	struct qcom_iommu_domain *qcom_domain = to_qcom_iommu_domain(domain);
>  
> -	if (WARN_ON(qcom_domain->iommu))    /* forgot to detach? */
> -		return;
> -
>  	iommu_put_dma_cookie(domain);
>  
> -	/* NOTE: unmap can be called after client device is powered off,
> -	 * for example, with GPUs or anything involving dma-buf.  So we
> -	 * cannot rely on the device_link.  Make sure the IOMMU is on to
> -	 * avoid unclocked accesses in the TLB inv path:
> -	 */
> -	pm_runtime_get_sync(qcom_domain->iommu->dev);
> -
> -	free_io_pgtable_ops(qcom_domain->pgtbl_ops);
> -
> -	pm_runtime_put_sync(qcom_domain->iommu->dev);
> +	if (qcom_domain->iommu) {
> +		/*
> +		 * NOTE: unmap can be called after client device is powered
> +		 * off, for example, with GPUs or anything involving dma-buf.
> +		 * So we cannot rely on the device_link.  Make sure the IOMMU
> +		 * is on to avoid unclocked accesses in the TLB inv path:
> +		 */
> +		pm_runtime_get_sync(qcom_domain->iommu->dev);
> +		free_io_pgtable_ops(qcom_domain->pgtbl_ops);
> +		pm_runtime_put_sync(qcom_domain->iommu->dev);
> +	}
>  
>  	kfree(qcom_domain);
>  }
> @@ -404,7 +402,7 @@ static void qcom_iommu_detach_dev(struct iommu_domain *domain, struct device *de
>  	struct qcom_iommu_domain *qcom_domain = to_qcom_iommu_domain(domain);
>  	unsigned i;
>  
> -	if (!qcom_domain->iommu)
> +	if (WARN_ON(!qcom_domain->iommu))
>  		return;
>  
>  	pm_runtime_get_sync(qcom_iommu->dev);
> @@ -417,8 +415,6 @@ static void qcom_iommu_detach_dev(struct iommu_domain *domain, struct device *de
>  		ctx->domain = NULL;
>  	}
>  	pm_runtime_put_sync(qcom_iommu->dev);
> -
> -	qcom_domain->iommu = NULL;
>  }
>  
>  static int qcom_iommu_map(struct iommu_domain *domain, unsigned long iova,
> -- 
> 2.23.0.dirty
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
