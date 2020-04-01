Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EFC19B895
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 00:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0pNvTJtZnXw75jRgKDKtt1d80rW0garrWgJfx5Ryvc=; b=AnjH6GuwN2BObD
	a7dqsf6VH8RuFmuIBlkrGongao99BY3o7qbuVIOVMy5F29wfwhIwcRRw18Wll8VsnBlDlXRt3ck2M
	h20n2jnS5Iv9H+hvFAVhACAFFJ3FTJ/odr+P4ysjBfUUznKBo97SEyIBt+0jJz88JB6ANzfFpILYC
	cs0xLhA5lvJojvD6P3nCX2ku+kzIcAiy9XZntP3B2gArEKBra5NQvxJlFQKTLiy2SxrwQUBUCevvB
	DjgydJr2yJA6wBYOYM1HhTYLu68X1indDjqEHRGNOKQV0BZ9ZvWsDhdE0yweV47uWEqdRNgHBAvYa
	DRR4u6BLtp6rgOC3SbTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJm1w-0003TV-UI; Wed, 01 Apr 2020 22:40:16 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJm1i-0002d7-Ji
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 22:40:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585780799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k+QivSXL5xhLG7M9lhqztlvCh/YTXTzVLqfa0HHMNH8=;
 b=ids4QEDaAGpfUaMUzyz0WUmWZiPbIb3JzMxH/JRsCO9OAb3KyPGjRlMvX1wELi8mG6dlIS
 AKImGokl0hHmtx+EOf1vjU1VZJAgeT276WsQfaKade2XzrFZeeGE7TiPVEPdtXY0SZnKaE
 xIY2c2S4zQUfqoCTH2NgMG91b3CBqKk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-94-qsuGeAdaM0m_TotbpNGXTg-1; Wed, 01 Apr 2020 18:39:56 -0400
X-MC-Unique: qsuGeAdaM0m_TotbpNGXTg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0915A800D4E;
 Wed,  1 Apr 2020 22:39:55 +0000 (UTC)
Received: from w520.home (ovpn-112-162.phx2.redhat.com [10.3.112.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 749B389F0A;
 Wed,  1 Apr 2020 22:39:51 +0000 (UTC)
Date: Wed, 1 Apr 2020 16:39:50 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] vfio: Ignore -ENODEV when getting MSI cookie
Message-ID: <20200401163950.61741738@w520.home>
In-Reply-To: <20200401102724.161712-1-andre.przywara@arm.com>
References: <20200401102724.161712-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_154002_750374_505BD6A0 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kvm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Eric Auger <eric.auger@redhat.com>, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  1 Apr 2020 11:27:24 +0100
Andre Przywara <andre.przywara@arm.com> wrote:

> When we try to get an MSI cookie for a VFIO device, that can fail if
> CONFIG_IOMMU_DMA is not set. In this case iommu_get_msi_cookie() returns
> -ENODEV, and that should not be fatal.
> 
> Ignore that case and proceed with the initialisation.
> 
> This fixes VFIO with a platform device on the Calxeda Midway (no MSIs).
> 
> Fixes: f6810c15cf973f ("iommu/arm-smmu: Clean up early-probing workarounds")
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Acked-by: Robin Murphy <robin.murphy@arm.com>
> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> ---
>  drivers/vfio/vfio_iommu_type1.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
> index 9fdfae1cb17a..85b32c325282 100644
> --- a/drivers/vfio/vfio_iommu_type1.c
> +++ b/drivers/vfio/vfio_iommu_type1.c
> @@ -1787,7 +1787,7 @@ static int vfio_iommu_type1_attach_group(void *iommu_data,
>  
>  	if (resv_msi) {
>  		ret = iommu_get_msi_cookie(domain->domain, resv_msi_base);
> -		if (ret)
> +		if (ret && ret != -ENODEV)
>  			goto out_detach;
>  	}
>  

Applied to vfio next branch for v5.7.  Thanks,

Alex


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
