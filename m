Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D66C61B80
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 09:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxLETmoSmIbYHxOnRvRpg9MgJml8kMp3YoImuURpZqg=; b=HCkz0nBtSnfMhx
	39Qr56sUGEN1gJ9ebxag/edRnvwwO9N1KWmJN/vwGPNAmk7jHe2iZxROmSfVQZHfLOMKCz/whwyLC
	qsr8qWEpiEL7o4sbQg+uOXK37nZCqfy4kg66Hsn1arN4fuJsES7K2s8PIJAJ56K2qayGfqje7purV
	FmiWquoM7kY3OTcPYdopySbK9qxelmzDIRpLoUuIo3KhIxocaDc+lqde25XMNld6h+izA8raqpmEw
	cR0+wb2UjwTpvaTd5LtaCLxqLyNTq01gdpjaJoBPLageNnj6r1xwAZb9x8e66TWXSVl6mDHNd9vcv
	ouqZ1OF3paQDFbYIIS+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkOYU-0007PL-2j; Mon, 08 Jul 2019 07:59:22 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkOXf-0006wr-1x
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 07:58:32 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A9F72300602A;
 Mon,  8 Jul 2019 07:58:30 +0000 (UTC)
Received: from [10.36.116.46] (ovpn-116-46.ams2.redhat.com [10.36.116.46])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DC44D5D9E2;
 Mon,  8 Jul 2019 07:58:27 +0000 (UTC)
Subject: Re: [PATCH 7/8] iommu/arm-smmu-v3: Improve add_device() error handling
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, will.deacon@arm.com
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-8-jean-philippe.brucker@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <1e35f298-25bb-719a-b314-c46ded4886a3@redhat.com>
Date: Mon, 8 Jul 2019 09:58:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190610184714.6786-8-jean-philippe.brucker@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Mon, 08 Jul 2019 07:58:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_005831_194905_00B546A9 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jacob.jun.pan@linux.intel.com, joro@8bytes.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

On 6/10/19 8:47 PM, Jean-Philippe Brucker wrote:
> Let add_device() clean up behind itself. The iommu_bus_init() function
> does call remove_device() on error, but other sites (e.g. of_iommu) do
> not.
> 
> Don't free level-2 stream tables because we'd have to track if we
> allocated each of them or if they are used by other endpoints. It's not
> worth the hassle since they are managed resources.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric
> ---
>  drivers/iommu/arm-smmu-v3.c | 28 +++++++++++++++++++++-------
>  1 file changed, 21 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 633d829f246f..972bfb80f964 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -2398,14 +2398,16 @@ static int arm_smmu_add_device(struct device *dev)
>  	for (i = 0; i < master->num_sids; i++) {
>  		u32 sid = master->sids[i];
>  
> -		if (!arm_smmu_sid_in_range(smmu, sid))
> -			return -ERANGE;
> +		if (!arm_smmu_sid_in_range(smmu, sid)) {
> +			ret = -ERANGE;
> +			goto err_free_master;
> +		}
>  
>  		/* Ensure l2 strtab is initialised */
>  		if (smmu->features & ARM_SMMU_FEAT_2_LVL_STRTAB) {
>  			ret = arm_smmu_init_l2_strtab(smmu, sid);
>  			if (ret)
> -				return ret;
> +				goto err_free_master;
>  		}
>  	}
>  
> @@ -2419,13 +2421,25 @@ static int arm_smmu_add_device(struct device *dev)
>  	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB))
>  		master->ssid_bits = min(master->ssid_bits, 10U);
>  
> +	ret = iommu_device_link(&smmu->iommu, dev);
> +	if (ret)
> +		goto err_free_master;
> +
>  	group = iommu_group_get_for_dev(dev);
> -	if (!IS_ERR(group)) {
> -		iommu_group_put(group);
> -		iommu_device_link(&smmu->iommu, dev);
> +	if (IS_ERR(group)) {
> +		ret = PTR_ERR(group);
> +		goto err_unlink;
>  	}
>  
> -	return PTR_ERR_OR_ZERO(group);
> +	iommu_group_put(group);
> +	return 0;
> +
> +err_unlink:
> +	iommu_device_unlink(&smmu->iommu, dev);
> +err_free_master:
> +	kfree(master);
> +	fwspec->iommu_priv = NULL;
> +	return ret;
>  }
>  
>  static void arm_smmu_remove_device(struct device *dev)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
