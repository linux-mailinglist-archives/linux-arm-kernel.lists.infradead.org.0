Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A48DB36E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 11:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLZtOykWKQp7FBHGOkTOJ+NgQXh/sB8DueMTzNM88+Y=; b=YfVZM+ajronXKK
	IiDfCY/v4pYvFwyDa5SyuqaTTvS8xIQADe234SlNndrna3ZfuJbf7DnMFtcasMlVGMqKPfT3f3TOg
	Ikk5asn3YaRfBVOYvWgGbPkeV8UL0wJisCVDI9dk6m9MYB8+2Lm7MGZ6yW77C8A1KC3EDzcnLFR4g
	nDRvME+51wgy9xpO+GDL9CGgwxSWOUc/ezl7rxV3C8/beZNWTaQK2QoaZRUaNwKadb0uc2FWjVzZc
	MIrI/4ui99ARpMz8rqFs76vufzcqC/1+J++i5f4rcJsVJJ9RLNoNOXC3F3uhKk0G98ZVsbS/NC78+
	Cpo85yHMNVrcAtij7Ntw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9n5m-0007Fx-Eo; Mon, 16 Sep 2019 09:14:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9n5X-0007FD-Kn
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 09:14:29 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 79B2B102BB32;
 Mon, 16 Sep 2019 09:14:26 +0000 (UTC)
Received: from [10.36.116.33] (ovpn-116-33.ams2.redhat.com [10.36.116.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C4B05D6A3;
 Mon, 16 Sep 2019 09:14:23 +0000 (UTC)
Subject: Re: [PATCH 0/5] iommu: Implement iommu_put_resv_regions_simple()
To: Thierry Reding <thierry.reding@gmail.com>, Joerg Roedel <joro@8bytes.org>
References: <20190829111752.17513-1-thierry.reding@gmail.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <6254f754-eb37-6b1e-deea-7443d185d49b@redhat.com>
Date: Mon, 16 Sep 2019 11:14:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190829111752.17513-1-thierry.reding@gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Mon, 16 Sep 2019 09:14:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_021427_697151_A2737EE2 
X-CRM114-Status: GOOD (  17.03  )
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thierry,

On 8/29/19 1:17 PM, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Most IOMMU drivers only need to free the memory allocated for each
> reserved region. Instead of open-coding the loop to do this in each
> driver, extract the code into a common function that can be used by
> all these drivers.

If I am not wrong, all the drivers now use the
iommu_put_resv_regions_simple helper. So we can wonder if the callback
is still relevant?

Thanks

Eric
> 
> Thierry
> 
> Thierry Reding (5):
>   iommu: Implement iommu_put_resv_regions_simple()
>   iommu: arm: Use iommu_put_resv_regions_simple()
>   iommu: amd: Use iommu_put_resv_regions_simple()
>   iommu: intel: Use iommu_put_resv_regions_simple()
>   iommu: virt: Use iommu_put_resv_regions_simple()
> 
>  drivers/iommu/amd_iommu.c    | 11 +----------
>  drivers/iommu/arm-smmu-v3.c  | 11 +----------
>  drivers/iommu/arm-smmu.c     | 11 +----------
>  drivers/iommu/intel-iommu.c  | 11 +----------
>  drivers/iommu/iommu.c        | 19 +++++++++++++++++++
>  drivers/iommu/virtio-iommu.c | 14 +++-----------
>  include/linux/iommu.h        |  2 ++
>  7 files changed, 28 insertions(+), 51 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
