Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81A297EA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67DyrZiFNQNJU+A9KEuSmTnu2DBJcbCAYSMns9Y98ws=; b=MTv2RBavhvepuD
	dy6vxYNiyYbK+NSs15DQSIAObYVyE+bbek+2VtjB3hTZOv7n2RXYPNeok7tJWIaaoTaOOsWCtNaIU
	JgoOCKvV7CCBqKCOvizSCCGMKf13uvapbNuYUNpazRldg2MMtt5tJarZL+S2ZJbpyKGYe2YMg447d
	hq3HccmT80ori2X6pV8Hqo0rVZwx+W43feEDhxlE/itK4CtU5ykN6TYgL2kENP41xQ1B92FvBDeVV
	1Bpa7iuJ60vvzDvCqJgAmTKDyzpPddHw9LPy6uZ178spY+hAIzDKUcSOoBkSbQPbuu3xAvj1JI4GB
	KKAL3BalFD/wZ2xxWBkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SV1-0002Er-Ft; Wed, 21 Aug 2019 15:26:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0SUq-0002EG-CJ; Wed, 21 Aug 2019 15:26:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CED6D206BA;
 Wed, 21 Aug 2019 15:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566401160;
 bh=NFr0/nY3IfPKUVlKWEhZAqr+dzWcs/Y2p7eY45qm4Bs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vx3lNhdbRokT/r8unMb1miHNxu9JN9NYu+yPM5e+d2LRwW3AGqFtGETXG7VnK1Rno
 rwhPd99dPfgCZlkLeur4F2jSZAS09a9CQm0zjp5fGWWUdpUfDIblVXpp6dtG0i2LnH
 PFbPOvk9DZnA0p7rlzFDMc2c1v17Q08ToAhdHSEk=
Date: Wed, 21 Aug 2019 16:25:54 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v10 08/23] iommu/io-pgtable-arm-v7s: Rename the quirk
 from MTK_4GB to MTK_EXT
Message-ID: <20190821152553.r6mdhucvuovq4xdk@willie-the-truck>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-9-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566395606-7975-9-git-send-email-yong.wu@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_082600_431805_8CFE7874 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 09:53:11PM +0800, Yong Wu wrote:
> In previous mt2712/mt8173, MediaTek extend the v7s to support 4GB dram.
> But in the latest mt8183, We extend it to support the PA up to 34bit.
> Then the "MTK_4GB" name is not so fit, This patch only change the quirk
> name to "MTK_EXT".
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/iommu/io-pgtable-arm-v7s.c | 6 +++---
>  drivers/iommu/mtk_iommu.c          | 2 +-
>  include/linux/io-pgtable.h         | 4 ++--
>  3 files changed, 6 insertions(+), 6 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
