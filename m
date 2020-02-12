Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2122B15A6F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 11:49:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHbiMO2NI0WQWM9Nbg9OjbQZL/zZyN7JpolYOsuAwVQ=; b=r40QfnsCZ3gWIk
	ulwZw8XSht2cS6r0gOvB0Ry6HoI0vgXdQDD2OuPt0mUTFRAvEi2+jtE9frXBKduonK/RTyo1xiJZM
	vHYzI2tCqUL9LCoGoP83JnC1qcJHtfnYjIsJFXLTY0rza6GqCV7NmmFBK3T9e/2rbbxztbWUGuwuq
	+S5EBGk269OKDOPyLpCi86cCYNZgcpWQdCzTfhTt1BYn3FGKzyC9WZAobljFiMZ3J59Skeo0ySS0m
	OhOvKkMhYI/cOjf27o9ULrhBT/+nVuHb9SVNQSCU2sKX2iGiwGH8iqUM153Es196xf/Pm1YXaXrp2
	xN+2FLjgt+SooZxsORVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1paL-0000o3-6j; Wed, 12 Feb 2020 10:49:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pZs-0000b4-OZ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 10:49:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA3D32082F;
 Wed, 12 Feb 2020 10:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581504548;
 bh=e7/KyaTyypq+Fd/F2Np5hVC5zzZzRMc32NuzncQ3qr4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k3CZSF6H7D/ew3dYU1hxbYGV9FK3JiiBQCudA+bcHr5Dk5IZycoxRNeIIAczEJqZx
 If5vFyX31y5yq6FxhPyHwSCDqIAJJh6SwTK1/8xMwNCt3TKZ/W20LPfEpWgZrOpiXN
 VIfGeiSbNiAu4H64sjCjLwY8SP/gbnSeWNK9h0qc=
Date: Wed, 12 Feb 2020 10:49:03 +0000
From: Will Deacon <will@kernel.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH] iommu/arm-smmu: fix the module name to be consistent
 with older kernel
Message-ID: <20200212104902.GA3664@willie-the-truck>
References: <1581467841-25397-1-git-send-email-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581467841-25397-1-git-send-email-leoyang.li@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_024908_816600_90081981 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 06:37:20PM -0600, Li Yang wrote:
> Commit cd221bd24ff5 ("iommu/arm-smmu: Allow building as a module")
> introduced a side effect that changed the module name from arm-smmu to
> arm-smmu-mod.  This breaks the users of kernel parameters for the driver
> (e.g. arm-smmu.disable_bypass).  This patch changes the module name back
> to be consistent.
> 
> Signed-off-by: Li Yang <leoyang.li@nxp.com>
> ---
>  drivers/iommu/Makefile                          | 4 ++--
>  drivers/iommu/{arm-smmu.c => arm-smmu-common.c} | 0
>  2 files changed, 2 insertions(+), 2 deletions(-)
>  rename drivers/iommu/{arm-smmu.c => arm-smmu-common.c} (100%)

Can't we just override MODULE_PARAM_PREFIX instead of renaming the file?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
