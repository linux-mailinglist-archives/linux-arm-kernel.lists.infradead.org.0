Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464001C530F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybOiIUkxeN6EtKAQDCDTsjtPBRo43dU6XrqZLmnklys=; b=JjSP3yav8JPUHZ
	Gjyh67iWFb724xQOk81bu9knNp5CKPoz9JiUKU0KPLQaDTncZEWHi4GCYtRVTnTFye+bw55OrBlEL
	jYz1Juo6rWgkcDkkGN24C2ePiav1RmWNujCQmMULeFtF3RoPFe+f3DKvO4b7Zb+7nYpozg9EeqHQT
	plgRELvpnbHSkOG71dwDBT7uwjTybXukZlbIgVrMR8/4FaHmTgydgqtzVGd5pnyjlIEYVsO4F8fQm
	aEkVD0QJjJasdXtxm2HtiNnxZ/edfYT1qKy1hr1puO0+5w+MZqo5D3fFHdoTRMamh7ohmid3npMOk
	nBquITeTVJP/1iX4rnxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuis-0002QN-PD; Tue, 05 May 2020 10:22:46 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuij-0002Om-J7
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:22:38 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AC3CE68C4E; Tue,  5 May 2020 12:22:34 +0200 (CEST)
Date: Tue, 5 May 2020 12:22:34 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v3 01/25] dma-mapping: add generic helpers for mapping
 sgtable objects
Message-ID: <20200505102234.GA15038@lst.de>
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <CGME20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050@eucas1p2.samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_032237_784465_712EC6BC 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +static inline int dma_map_sgtable_attrs(struct device *dev,
> +	struct sg_table *sgt, enum dma_data_direction dir, unsigned long attrs)

Two tab indents for parameter continuation, please.

Can we also skip the separate _attrs version?  The existing ones have the
separate _attrs variant as there were pre-existing versions without the
attrs argument and lots of users, but that doesn't really apply here as
an extra 0 argument isn't really an issue.

> +static inline size_t iommu_map_sgtable(struct iommu_domain *domain,
> +			unsigned long iova, struct sg_table *sgt, int prot)
> +{
> +	return iommu_map_sg(domain, iova, sgt->sgl, sgt->orig_nents, prot);
> +}

Should this be a separate patch due to the different subsystems?

FYI, I'll happily pick up the prep patches in an immutable branch of
the dma-mapping tree one we have settled on the details.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
