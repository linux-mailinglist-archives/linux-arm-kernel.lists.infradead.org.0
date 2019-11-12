Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73C2F9525
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:08:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3ERJ9UbjLBDp6yQ1GMgAEJVV72yLsoIbTrzf69l1IU=; b=BDhKUuvOQdJQXU
	kuoxm/Bdq2f7EkPA8PobVtLwoH+J+54cxRROhy8JIVGIOhsNsRxHXwtR7FngJzz52Xtb02PDNnIWt
	A2ZyUTq5aHXOLSJVe60cl4GcGWXfzzayf0Gp1Wb1bUuJoBTqkOzjKLFMbVu5Qe7KkaQfUv8g/MZKK
	yBDZYhOIxcvvCeOlGyZzeQfg8DtIWc9fFBSDhN2Zw2bdJlsfS77eMpQiXdN0tuNzTeuIXqFdD6hnN
	zsCQKG11pwAi42dMJgajBdXoAYjuC5Z7cjej3tIAJuUIEyDxSPOftEgJAfxjDpli4fJsfGE/YuRio
	UhyOL59T6gr7P6uVNxow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYiT-0002ac-GC; Tue, 12 Nov 2019 16:08:29 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYiL-0002Zr-Pk; Tue, 12 Nov 2019 16:08:23 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id E60A52E2; Tue, 12 Nov 2019 17:08:11 +0100 (CET)
Date: Tue, 12 Nov 2019 17:08:10 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/rockchip: Don't provoke WARN for harmless IRQs
Message-ID: <20191112160810.GB3884@8bytes.org>
References: <82cba203551939399d219e4cb6c602315fd0c410.1573498518.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82cba203551939399d219e4cb6c602315fd0c410.1573498518.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_080821_987690_81EC0082 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: heiko@sntech.de, maz@kernel.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 06:55:18PM +0000, Robin Murphy wrote:
> Although we don't generally expect IRQs to fire for a suspended IOMMU,
> there are certain situations (particularly with debug options) where
> we might legitimately end up with the pm_runtime_get_if_in_use() call
> from rk_iommu_irq() returning 0. Since this doesn't represent an actual
> error, follow the other parts of the driver and save the WARN_ON()
> condition for a genuine negative value. Even if we do have spurious
> IRQs due to a wedged VOP asserting the shared line, it's not this
> driver's job to try to second-guess the IRQ core to warn about that.
> 
> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/rockchip-iommu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
