Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E49D1D7A3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cH9jzIxKscwV+PJllSpZuZHtwpMR2xE/KkEM53P03sM=; b=e9gVsHL9yF/K/c
	QR3JsOk6egUtnBbFCsrjdSkUoPEc56G9zT/0NisG5+F3sV+n3NrGpR5D/MTYZire7bEK57yFxicVK
	s2utqti86UzYiio/8vpm1LwIuLJ9JXJJr2/qvlSSPFNud/CZ3ep7lKqVDCp8PFyQvLA+wzhkfgqW0
	YkVRIMeAd2bBu2h8ma48Yk3Aaxo+Qd0Dzuz1TDxPwp0g8kWV1eKPjxECW8KrQhRUTFX6eTIpLh/gX
	uGz05eBKhmxv+cGSNt5rWzBsLxNtfvKIzapidNOUhuv5g3drQSswTqAmYOS7NpAUOfEQFoskkT7Ub
	1K24Q4WO48pAPS718PaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jag2d-0006Zk-KZ; Mon, 18 May 2020 13:42:51 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jag2T-0006Y1-Hg; Mon, 18 May 2020 13:42:43 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 336D3386; Mon, 18 May 2020 15:42:31 +0200 (CEST)
Date: Mon, 18 May 2020 15:42:29 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH] iommu/mediatek-v1: Add def_domain_type
Message-ID: <20200518134229.GD18353@8bytes.org>
References: <1589530123-30240-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589530123-30240-1-git-send-email-yong.wu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_064241_730534_5050681F 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 04:08:43PM +0800, Yong Wu wrote:
> The MediaTek V1 IOMMU is arm32 whose default domain type is
> IOMMU_DOMAIN_UNMANAGED. Add this to satisfy the bus_iommu_probe to
> enter "probe_finalize".
> 
> The iommu framework will create a iommu domain for each a device.
> But all the devices share a iommu domain here, thus we skip all the
> other domains in the "attach_device" except the domain we create
> internally with arm_iommu_create_mapping.
> 
> Also a minor change: in the attach_device, "data" always is not null.
> Remove "if (!data) return".
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
> a. rebase on linux-next.
> b. After this patch and fixed the mutex issue(locally I only move
>    mutex_unlock(&group->mutex) before __iommu_group_dma_attach(group)),
>    the mtk_iommu_v1.c could work normally.
> ---
>  drivers/iommu/mtk_iommu_v1.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
