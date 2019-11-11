Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89882F75E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:03:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+98Rt1+/VJo/WsSgWY+eSMVpgscAVBve7wpdbdsg5sw=; b=RP8zGnEBl/s46R
	tUIV6dJj3bEuGM0oQFPv7i1t5XaAAp1C8v2rITBwUT69p66jURAIYoNGpX3RHdimKBk6AoesdahjE
	l8LIuMh5rQRoVnFmUpdjpx3SQLgUYYYpAU5S4iNvk7OkqGbTKVuha/aokOCN1xAKUdV6UL0SB49jS
	9TDkOrhNHSQQ4W0PgJlp61sT57rqZEIZ22511bkShh0imwgPeI8MAHIkXxi+2O2Hz18kpvSs80CEr
	zANsl7PoUJFOiQr/tqxNPmW7kFUINdaopgJYHMyVKc2anBlvJ+h5iLB90RG7ydrZAKQlnhFGbCLjc
	z0M+xbd/YN2Uzu8IJGsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAHg-0008PO-VA; Mon, 11 Nov 2019 14:03:12 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAHY-0008OM-4q; Mon, 11 Nov 2019 14:03:05 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 77629120; Mon, 11 Nov 2019 15:02:53 +0100 (CET)
Date: Mon, 11 Nov 2019 15:02:52 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v5 0/7] Improve tlb range flush
Message-ID: <20191111140251.GA18333@8bytes.org>
References: <1572850868-22315-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572850868-22315-1-git-send-email-yong.wu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_060304_337670_AC9DA3D9 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com, edison.hsieh@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 03:01:01PM +0800, Yong Wu wrote:
> Yong Wu (7):
>   iommu/mediatek: Correct the flush_iotlb_all callback
>   iommu/mediatek: Add a new tlb_lock for tlb_flush
>   iommu/mediatek: Use gather to achieve the tlb range flush
>   iommu/mediatek: Delete the leaf in the tlb_flush
>   iommu/mediatek: Move the tlb_sync into tlb_flush
>   iommu/mediatek: Get rid of the pgtlock
>   iommu/mediatek: Reduce the tlb flush timeout value

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
