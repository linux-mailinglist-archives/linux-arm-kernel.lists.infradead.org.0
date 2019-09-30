Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B091BC205D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqPqMvEDFPDdoEXgnXCH3U0jcjvy5TjLkuVFHHuwTzE=; b=l/bjr2VRsEM8mv
	yFSHY3mnVu8gWY9J+0opnl/GmEwUvKEQWfg5S+ytRpRV4PeHjtoofE7z4kU0vNgIFK+Cr0PLrvpLB
	IpMDVjx58MHQkiFkAiRtDYmDJSXN4+sPY9wPoya38PQZ67Ihtq0OGT5R1qCj8KIOZfsqcziA1J3AB
	5t1lcmNTGCzcPHWzrKNx3VaT3Svn6wJLZsTkwL08U7nnulSvQmMt8d1xvMs11NdM1bvGXvC6E+wtT
	bzlLGMC5HnB2LkES1SYfyqIJnmNQ0UjMarDOXhfC1KIu3U5+kAMS45SiYCovukq0IuwK1OyI2wRoQ
	XVL7mm1ZLvvHY8PmHyvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEuUp-0004Ty-0f; Mon, 30 Sep 2019 12:09:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEuUf-0004TE-C4; Mon, 30 Sep 2019 12:09:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26E43206C0;
 Mon, 30 Sep 2019 12:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569845373;
 bh=T9SJSGU8WXO5UsIOSvNDLMijEaReW5+dr3E41swIY98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yXC7VC+skmjWzmwCouYtMdDU+SNlxZHXtQ/mbwq6tDKFujDyqWYETrOlU3yBpanVd
 t/BPYmnze36c5QXEAlQQ8qQ05Yeo0SFhBy2mRlWC5kNCz0C6tjFYCaxSo1Daz+n9pv
 JIwrt+D0Ywqyr9eDIYz8fkeoXiv5ezfl6BcSGWdE=
Date: Mon, 30 Sep 2019 13:09:27 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH] iommu/mediatek: Move the tlb_sync into tlb_flush
Message-ID: <20190930120926.t26ydhgggi2scg3e@willie-the-truck>
References: <1569822142-14303-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569822142-14303-1-git-send-email-yong.wu@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_050933_433265_6F7BE0BA 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, Tomasz Figa <tfiga@google.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 chao.hao@mediatek.com, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 01:42:22PM +0800, Yong Wu wrote:
> The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
> TLB sync") help move the tlb_sync of unmap from v7s into the iommu
> framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
> lacked the dom->pgtlock, then it will cause the variable
> "tlb_flush_active" may be changed unexpectedly, we could see this warning
> log randomly:
> 
> mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
> full flush
> 
> To fix this issue, we can add dom->pgtlock in the "mtk_iommu_iotlb_sync".
> And when checking this issue, we find that __arm_v7s_unmap call
> io_pgtable_tlb_add_flush consecutively when it is supersection/largepage,
> this also is potential unsafe for us. There is no tlb flush queue in the
> MediaTek M4U HW. The HW always expect the tlb_flush/tlb_sync one by one.
> If v7s don't always gurarantee the sequence, Thus, In this patch I move
> the tlb_sync into tlb_flush(also rename the function deleting "_nosync").
> and we don't care if it is leaf, rearrange the callback functions. Also,
> the tlb flush/sync was already finished in v7s, then iotlb_sync and
> iotlb_sync_all is unnecessary.
> 
> Besides, there are two minor changes:
> a) Use writel for the register F_MMU_INV_RANGE which is for triggering the
> HW work. We expect all the setting(iova_start/iova_end...) have already
> been finished before F_MMU_INV_RANGE.
> b) Reduce the tlb timeout value from 100000us to 1000us. the original value
> is so long that affect the multimedia performance.
> 
> Fixes: 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API TLB sync")
> Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
> This patch looks break the logic for tlb_flush and tlb_sync. I'm not
> sure if it
> is reasonable. If someone has concern, I could change:
> a) Add dom->pgtlock in the mtk_iommu_iotlb_sync
> b) Add a io_pgtable_tlb_sync in [1].

The patch looks ok to me, but please could you split it up so that the
timeout and writel are done separately?

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
