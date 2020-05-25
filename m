Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D6B1E0F03
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 15:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZK5mQrVsKXLoM/R9jN1+7NmiFGM9sLg/nM4rsHWAek=; b=ru2RIspSuhyE65
	s8p5Jq451m2q7PX2g7WQAv/00wCkW6KzfXTXQheWEz0ZvELpFOKUGQS/FuOgAVxNCqxLgYb08GR32
	V+jLhc1iFvj4wyEnQW9593dTq4Bgju+5sUYAwpr184ROFPcr4KGEaH+S0zbxlvFHGLf9nSAQg3MFz
	Ts9ZHzsXOvHbKoIaRSyXpzdSly8goL1G7pryP5KKr4yZWRDXsy8XlBI/9vJCi0g//4Yj1sjf9mqHY
	B7DwLmRraJ1bw9eWZKSSY2OLxe23BEELcwYphagpavN9j2+vhcc9qvl3v2m+VVV476Zj/bgiQopfZ
	aVo9TdqX/gNUTzut/m/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCl2-00086V-Ae; Mon, 25 May 2020 13:03:08 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCks-000861-C5
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 13:02:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 17DBFACDB;
 Mon, 25 May 2020 13:02:58 +0000 (UTC)
Date: Mon, 25 May 2020 15:02:53 +0200
From: Joerg Roedel <jroedel@suse.de>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH] iommu: Fix group refcount in iommu_alloc_default_domain()
Message-ID: <20200525130253.GH5075@suse.de>
References: <20200522130145.30067-1-saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522130145.30067-1-saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_060258_557108_91DA35EE 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, iommu@lists.linux-foundation.org,
 linux-arm-msm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, May 22, 2020 at 06:31:45PM +0530, Sai Prakash Ranjan wrote:
> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> index a4c2f122eb8b..05f7b77c432f 100644
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -1491,6 +1491,7 @@ static int iommu_alloc_default_domain(struct device *dev)
>  {
>  	struct iommu_group *group;
>  	unsigned int type;
> +	int ret;
>  
>  	group = iommu_group_get(dev);
>  	if (!group)
> @@ -1501,7 +1502,11 @@ static int iommu_alloc_default_domain(struct device *dev)
>  
>  	type = iommu_get_def_domain_type(dev);
>  
> -	return iommu_group_alloc_default_domain(dev->bus, group, type);
> +	ret = iommu_group_alloc_default_domain(dev->bus, group, type);
> +
> +	iommu_group_put(group);
> +
> +	return ret;
>  }
>  
>  /**

Thanks for the report and the fix. I think it is better to fix this by
not taking a group reference in iommu_alloc_default_domain() at all and
pass group as a parameter. Please see the patch I just sent out.

Regards,

	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
