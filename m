Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB6118D3B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:10:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33DOEMEoqG0zcnu4nUUE5j0kNshFPYuDVPcV2rGpa5E=; b=DJUthliF4dkO17
	Pd6iqj8k+OXSbRByTTQnj188bafaLwK+osWfhqNW1OrwhVP5fCvzrva6GgIvAFiISMcTYFKKfhRXK
	ohrfLHVbd5YXpQ5OzhSNEXOAksNuBYLDtJU4N6p5JVRGHjBOiuUFWVX14rCXvsyReBcaqyq/D1fzU
	ba/tnnFEbjPGLKAh84QebYwUWIVCdVuckQj8KyQGkGutOMO6LVV4nz1W9o9ojgGgHOEmrrbIkne3e
	Yg8VTvFGlAqJgtfs+5n1rDtGxFcOLYMjUSUwzuuXz7Z6iAi1mexmb1DBZhEmbItdLG18jP23xkjbu
	uh3GQyRJXleElQ3nSj1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKDv-0002qu-Sj; Fri, 20 Mar 2020 16:10:15 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKDm-0001lG-Ja
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 16:10:08 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id F26624BB; Fri, 20 Mar 2020 17:09:54 +0100 (CET)
Date: Fri, 20 Mar 2020 17:09:53 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [GIT PULL] iommu/arm-smmu: Updates for 5.7
Message-ID: <20200320160953.GG5122@8bytes.org>
References: <20200320153519.GB6815@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320153519.GB6815@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_091006_815525_28EC0EEA 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: jean-philippe@linaro.org, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 03:35:20PM +0000, Will Deacon wrote:
> Hi Joerg,
> 
> Please pull these Arm SMMU updates for 5.7. The summary is in the tag (which
> you may need to re-fetch if you've got my tree added as a remote).
> 
> Cheers,
> 
> Will
> 
> --->8
> 
> The following changes since commit f8788d86ab28f61f7b46eb6be375f8a726783636:
> 
>   Linux 5.6-rc3 (2020-02-23 16:17:42 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git tags/arm-smmu-updates

Pulled, thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
