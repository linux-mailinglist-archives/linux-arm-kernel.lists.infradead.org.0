Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848BA1E106A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 16:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CTb0j77oMRZ8BMbbMp0FFoedfnXMFXA4kld9oxFARI=; b=Si2ITbXxkZTyZk
	gxq0PhK+cuCRgxiICQ6ziSO850wB33dPhQY8GL74jUnt9vjQfykfTopsGjTtBg3HizcTpjv0TbVeW
	cT8voPRSOrUl6e8Veh2Xli8QUW8Kt9dijngShAf4mwbZ5Pdj9vSIJR7bP6IDcwgdkZCgnAGJIvDqS
	Ij8iGgLNl1vi3O8X2kXAaSmSD20yydTLYftEF+4c8479KnnrIMS/QWVB+zUTzObZ0Y8jdX2fXlNB3
	u3OIgIyHA15byMxQAOaIV4Fyhhl2ulkVypTISce0bvwNqAgKV8irci68JumOgYp3yFztvzp64HQal
	UchyLw9H2Kf0p9/fmlIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdE0a-00075N-FY; Mon, 25 May 2020 14:23:16 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdE0S-00074J-87
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 14:23:09 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 40130303; Mon, 25 May 2020 16:23:06 +0200 (CEST)
Date: Mon, 25 May 2020 16:23:04 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [GIT PULL] iommu/arm-smmu: Updates for 5.8
Message-ID: <20200525142304.GE5221@8bytes.org>
References: <20200521173944.GM6608@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521173944.GM6608@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_072308_436012_7EACEF3A 
X-CRM114-Status: GOOD (  12.16  )
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
Cc: kernel-team@android.com, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 06:39:44PM +0100, Will Deacon wrote:
> Hi Joerg,
> 
> Please pull these Arm SMMU updates for 5.8. The branch is based on your
> 'core' branch from a little while ago.
> 
> Summary in the tag.
> 
> Cheers,
> 
> Will
> 
> --->8
> 
> The following changes since commit 1b032ec1ecbce6047af7d11c9db432e237cb17d8:
> 
>   iommu: Unexport iommu_group_get_for_dev() (2020-05-05 14:36:14 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git tags/arm-smmu-updates
> 
> for you to fetch changes up to 0299a1a81ca056e79c1a7fb751f936ec0d5c7afe:
> 
>   iommu/arm-smmu-v3: Manage ASIDs with xarray (2020-05-21 14:54:06 +0100)

Pulled, thanks Will.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
