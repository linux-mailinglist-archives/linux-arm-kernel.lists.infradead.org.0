Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9C1123371
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 18:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3OaW0KRFXyW/OnGeH5DhStajT64nQaCQ6KYkqx+Xl8=; b=dWGaS7sVM9+Uba
	QP4iYAN6fYxXUGlRn8sNfX9DHNgh0H4YKRqyPOQ2qVtfUXWIe/kG58luvwMUBYKy1WLq0HHGzVerQ
	L+Zo7i3Xkr32d2dNuQl8uuCg/ap8QcdQUxxlVsFwfz28xsktGcXFSPgAILrlk/0F8nCFjDrjbyHm/
	bl0i5sEBilErNfVJb7BRWdlq+wwWGwYTsVXNGy/a5zJ9vnmHzjj9xMCxzJhBeKEStmpZrTLKUcV34
	j1/+//RC/27Be1vyxV2Ukargym4+bHvty7xuuy4XNQhupqCUkHXhYMh4sLM1BywjuDU1suDgDiwXk
	ub7HL+dvMEWjyyejhZcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihGaR-0007BU-Hg; Tue, 17 Dec 2019 17:24:43 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihGaG-0007AX-O4
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 17:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576603471;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=z9EWxVih18eWOWqVZH496crr0Ey2713iPaECnfpP2vE=;
 b=GEOuPWGwXnir/TVUOE2h7v89iKROZXDJBXaC8BRUOcj71KkPn91ZnsyaE6BR8sp7T0V4Jk
 +16+MZ8kPB3/cKuylVlaeg08mf/WV6r/WXtLPYXbGp5XnRpMbLoRHyg+TtEx+B+lI0G2lL
 YYH+V52amxtgzBfr2DfKAN/Gwkn9XqA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-117-rLIk8wDJP16gfQOgon_8HA-1; Tue, 17 Dec 2019 12:24:26 -0500
X-MC-Unique: rLIk8wDJP16gfQOgon_8HA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42E7E8017DF;
 Tue, 17 Dec 2019 17:24:24 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 12510620A7;
 Tue, 17 Dec 2019 17:24:19 +0000 (UTC)
Subject: Re: [PATCH v3 09/13] iommu/arm-smmu-v3: Handle failure of
 arm_smmu_write_ctx_desc()
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-10-jean-philippe@linaro.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <bff90d55-4f81-aa60-2341-9fb467cfdd59@redhat.com>
Date: Tue, 17 Dec 2019 18:24:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191209180514.272727-10-jean-philippe@linaro.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_092432_861374_146EDA07 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, sudeep.holla@arm.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

On 12/9/19 7:05 PM, Jean-Philippe Brucker wrote:
> Second-level context descriptor tables will be allocated lazily in
> arm_smmu_write_ctx_desc(). Help with handling allocation failure by
> moving the CD write into arm_smmu_domain_finalise_s1().

nit: would rather change the title to something like "Prepare for
arm_smmu_write_ctx_desc() failure"
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric

> ---
>  drivers/iommu/arm-smmu-v3.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index f260abadde6d..fc5119f34187 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -2301,8 +2301,15 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
>  	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
>  	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
>  	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
> +
> +	ret = arm_smmu_write_ctx_desc(smmu_domain, 0, &cfg->cd);
> +	if (ret)
> +		goto out_free_tables;
> +
>  	return 0;
>  
> +out_free_tables:
> +	arm_smmu_free_cd_tables(smmu_domain);
>  out_free_asid:
>  	arm_smmu_bitmap_free(smmu->asid_map, asid);
>  	return ret;
> @@ -2569,10 +2576,6 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>  	if (smmu_domain->stage != ARM_SMMU_DOMAIN_BYPASS)
>  		master->ats_enabled = arm_smmu_ats_supported(master);
>  
> -	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
> -		arm_smmu_write_ctx_desc(smmu_domain, 0,
> -					&smmu_domain->s1_cfg.cd);
> -
>  	arm_smmu_install_ste_for_dev(master);
>  
>  	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
