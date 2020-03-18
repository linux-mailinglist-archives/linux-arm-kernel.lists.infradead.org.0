Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE6D18A43F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:50:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HT6pBWCxrN6xWL/EEMc8iefpMV13avlgu/yBrkQrS9k=; b=FwKnAa/kOXWBh4
	iVNvAztiBYbrQRP5dXjgPC7krkcOHkJ93WO2+af+3Y8jfjSJ+ZF5Jg7urDx0z3ZL5oFvHs/lu08gx
	ho7tcAvx32Yql+O2Nvrjm/EpuxdX+ym5V8djA15Pd6ZhSLTuhOCTwRBMED71E83+NJxitHWU5kngM
	XQF5kY0sqhYJ+g5ARXO5+mvdMrb9y53QeXqIX8WiSjEai6xETxzSWYuUaU55+WRCi40bL2oYg+OIb
	F6b7i8bV8htT+nOX0snzTq4rBzLkKQZi0g8emDCiZa2+OrRjcB+wg9dojwD/m+cIJMPiTd5x8o/F2
	TPDqszZ5QPJfHgkg0DRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEfeH-0003cb-7n; Wed, 18 Mar 2020 20:50:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEfe9-0003c6-Eu
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 20:50:38 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28DB320724;
 Wed, 18 Mar 2020 20:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584564637;
 bh=RpVUbrA6GLX6oxjlNmWztIMdXN6zWtDhebJqAHQf1+c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uoOE98RpOGBl59PNZvCx/Au9i4LC64YKNe98455ND4I6HWKEz9G1qqIvggonNnedD
 dLXXgSx4gMv0y4BeMSxxI8oJC1jrSz9UVH772yTbtO77WTZ8GQc0V8J6YsKI6Ej165
 xOes8VhTaE8+5snNexRj2elwnj8NYen9ITpA1eu4=
Date: Wed, 18 Mar 2020 20:50:30 +0000
From: Will Deacon <will@kernel.org>
To: Krishna Reddy <vdumpa@nvidia.com>
Subject: Re: [PATCH v4 0/6] Nvidia Arm SMMUv2 Implementation
Message-ID: <20200318205030.GA8094@willie-the-truck>
References: <1572480437-28449-1-git-send-email-vdumpa@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572480437-28449-1-git-send-email-vdumpa@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_135037_522027_B7469E2C 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: snikam@nvidia.com, jtukkinen@nvidia.com, mperttunen@nvidia.com,
 joro@8bytes.org, linux-kernel@vger.kernel.org, praithatha@nvidia.com,
 talho@nvidia.com, olof@lixom.net, iommu@lists.linux-foundation.org,
 nicolinc@nvidia.com, linux-tegra@vger.kernel.org, yhsu@nvidia.com,
 treding@nvidia.com, robin.murphy@arm.com, avanbrunt@nvidia.com,
 linux-arm-kernel@lists.infradead.org, bbiswas@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krishna,

On Wed, Oct 30, 2019 at 05:07:11PM -0700, Krishna Reddy wrote:
> Changes in v4:
> Rebased on top of https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/ for-joerg/arm-smmu/updates.
> Updated arm-smmu-nvidia.c to use the tlb_sync implementation hook.
> Dropped patch that updates arm_smmu_flush_ops for override as it is no longer necessary.
> 
> v3 - https://lkml.org/lkml/2019/10/18/1601
> v2 - https://lkml.org/lkml/2019/9/2/980
> v1 - https://lkml.org/lkml/2019/8/29/1588

Do you plan to repost this at some point?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
