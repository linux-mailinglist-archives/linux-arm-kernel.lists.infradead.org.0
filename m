Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC4F44494
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sd7YveYMO5PWaBFJcqtR8HZo6GMm6SNR2kP8ucwmcQo=; b=of7Ek7sI0EBzWz
	ZQowx3rkt30smbd4gPxbLsHokgcSfMB0JH5e2r4AD/UoSGgxXltn+aHTgCMI6B+Ia21RDyJTHL/6F
	5jw74UTTa54uJ02HC+CvBmU1kHGCD+XZuppfnzjGfWA5RZh+FI4ig1B0+s7/22ZDqWn1/XbcRAqUk
	6wdzO1g0WLeMlcMHODGWdrQRjHnJ+t6s6nYUYeAXHgjhq++aPU2P4lj8EIQg4ZmFUUYj8P9cwk9jS
	+IxBayXlaoYJeyg7/dl7D798Wo5J++MGaKVi8bp9z9hzlKgDdIH6ZCrf2w/w4XpPY8khNlYC7WMGi
	vScFxWYtYq4aLI7rVfow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSkP-0003qx-Cq; Thu, 13 Jun 2019 16:38:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSkB-0003q1-Po; Thu, 13 Jun 2019 16:38:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB24E367;
 Thu, 13 Jun 2019 09:38:30 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 664303F694;
 Thu, 13 Jun 2019 09:38:28 -0700 (PDT)
Date: Thu, 13 Jun 2019 17:38:26 +0100
From: Will Deacon <will.deacon@arm.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 02/10] iommu/io-pgtable: convert to SPDX license tags
Message-ID: <20190613163826.GE18966@fuggles.cambridge.arm.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
 <20190613162703.986-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613162703.986-2-tiny.windzz@gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_093831_886936_5DB6BF1D 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, heiko@sntech.de,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 joro@8bytes.org, agross@kernel.org, krzk@kernel.org, jonathanh@nvidia.com,
 david.brown@linaro.org, robdclark@gmail.com, kgene@kernel.org,
 thierry.reding@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:26:55PM -0400, Yangtao Li wrote:
> Updates license to use SPDX-License-Identifier.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/iommu/io-pgtable.c | 13 +------------
>  1 file changed, 1 insertion(+), 12 deletions(-)

Acked-by: Will Deacon <will.deacon@arm.com>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
