Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEC1199B1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOs6aVdm1EUg5q72vOuRohThpnVV7ONPdWwzyFnOXxU=; b=FU95IBdy4S4waK
	GLdRoY0wmCPj4d64G4z425dglhgaUq//4yII7HKbhOwvnPxAG7YDZCNgTtibVdxQJMWl7eiDdl1Q4
	oRMg/uP+yPfUtTz4z7Lm2WTeeXNVfOnKpgH8JFVoDE3Ns1HM+ui+7DvhT9x8hD1Ref02pOHG/DBYY
	k/9vCDTjV0kd6p6kHX4ws1gUDaAqkN6i4VyODvca3yqPpozg5fZtUDg+X4tkvrOrGqajbxg4aYeUq
	RbtPzVc0/uEd5EoNhOcvZH06YZ/0L/s/QoP+AivxETNHwjVceOFUAUQbbDche9cExjftyUTa7u2gY
	HGYlsx6mB27I+Ij1QTBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJWC-0006qz-AW; Tue, 31 Mar 2020 16:13:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJVy-0006ql-Ib
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:13:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=OUBFwMaCdyw1jFUI5caI8I7JvXKZGkBxj0a10nSzzRk=; b=SCKOECXx4Xxpu4MICADmBMwc+2
 q6sb8lKgv+okzmFAUse4GSXUcOCEa93XuLr5bCigfVoqX6EKWK9C8MbWz7OrXzUsdImqPvCDme6SE
 lTRkmjZ43/Ycc3i6kyB7Jf/DJVLbVrTi7fjEfhuIcSBpwZsTR8RUal8fWqHeydzBi1yZRRwKxpGU7
 PE6tiu+5oiDiD7tlDTWo/bEeB4+M4Ux1Vo0cXyhQO/2th7BTgIeniP1Ht3GJOHlb+7eGNwXuykIbV
 3jbX2nCmAuXdIDQtPmcWNNOmuBb2AvWa2XZZ93Ao255BG/rHyHhCvWI5SKf7MFKpGIT4k/9z1gGyw
 ztLf6MFg==;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHOH-0002si-HU
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 13:57:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585663013;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OUBFwMaCdyw1jFUI5caI8I7JvXKZGkBxj0a10nSzzRk=;
 b=Xx0NsN32JpezzdSaL+HUH4PWW6uEmh92rHHGDbypcNFjyv8ge4CFNxtjJTrRR04LaScQtD
 MPkxkTQTDmfZkqsQMzL7dsHqYOs6qABnXr8qsK8IhvOA8CXVCsVkZ+s3pNdwyiOIRqkuwI
 OGf1ftQBV8OwuPyTathR6CpFhWeYmQk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-B7sSyFA1Ogi6Y2t9tub8HQ-1; Tue, 31 Mar 2020 09:56:51 -0400
X-MC-Unique: B7sSyFA1Ogi6Y2t9tub8HQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 33B061005509;
 Tue, 31 Mar 2020 13:56:50 +0000 (UTC)
Received: from [10.36.112.58] (ovpn-112-58.ams2.redhat.com [10.36.112.58])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DEA4F1036D00;
 Tue, 31 Mar 2020 13:56:44 +0000 (UTC)
Subject: Re: [RFC PATCH] vfio: Ignore -ENODEV when getting MSI cookie
To: Andre Przywara <andre.przywara@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Cornelia Huck <cohuck@redhat.com>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
References: <20200312181950.60664-1-andre.przywara@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <629dd065-4fc0-eed4-975a-db05dda8504d@redhat.com>
Date: Tue, 31 Mar 2020 15:56:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200312181950.60664-1-andre.przywara@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

On 3/12/20 7:19 PM, Andre Przywara wrote:
> When we try to get an MSI cookie for a VFIO device, that can fail if
> CONFIG_IOMMU_DMA is not set. In this case iommu_get_msi_cookie() returns
> -ENODEV, and that should not be fatal.
> 
> Ignore that case and proceed with the initialisation.
> 
> This fixes VFIO with a platform device on the Calxeda Midway (no MSIs).
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Would you mind resending this as non RFC (+ R-b tags) so that it gets a
chance to be taken by Alex for 5.7

Thanks

Eric
> ---
> Hi,
> 
> not sure this is the right fix, or we should rather check if the
> platform doesn't support MSIs at all (which doesn't seem to be easy
> to do).
> Or is this because arm-smmu.c always reserves an IOMMU_RESV_SW_MSI
> region?
> 
> Also this seems to be long broken, actually since Eric introduced MSI
> support in 4.10-rc3, but at least since the initialisation order was
> fixed with f6810c15cf9.
> 
> Grateful for any insight.
> 
> Cheers,
> Andre
> 
>  drivers/vfio/vfio_iommu_type1.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
> index a177bf2c6683..467e217ef09a 100644
> --- a/drivers/vfio/vfio_iommu_type1.c
> +++ b/drivers/vfio/vfio_iommu_type1.c
> @@ -1786,7 +1786,7 @@ static int vfio_iommu_type1_attach_group(void *iommu_data,
>  
>  	if (resv_msi) {
>  		ret = iommu_get_msi_cookie(domain->domain, resv_msi_base);
> -		if (ret)
> +		if (ret && ret != -ENODEV)
>  			goto out_detach;
>  	}
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
