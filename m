Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AABA140746
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 11:03:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UNkZjJvTQhITlD4B/Cu3SYP7hFjlOBQHwifYSsly1o=; b=EKhKNJL5ass8LR
	VCvW035qKYarL0/vFkVl0mXe3XJ9iNU5s8CgsJgjG1NGOEZA3OZc03jCwqW1otEmc4lA+OxyEjP69
	35QiO1TqdGF0IKnA/LBG6xbwmfRUhdtOPBVkBybOyliJ2KRGymUN660JK1oiBGwxV2QHeE3vDrVR2
	tf7puS3f08EsZPN90vTAxmdwEUlIXaOkhZyas+00BEUlSnLff1zfrMbzSChTMyDwHrmkSaqsX9jRL
	TS835DJlYeg1QQEor6i3r7DJo+bAj7F/+LEnhHkMuz/O4XQNNIxLSB1QGVrIrVSJB2cwHPKrYiJ+p
	zL9iQCI34EBvpm6ui/8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOTL-0002ZZ-5D; Fri, 17 Jan 2020 10:03:23 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOT7-0002WW-VY
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 10:03:16 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id F0116327; Fri, 17 Jan 2020 11:02:56 +0100 (CET)
Date: Fri, 17 Jan 2020 11:02:55 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [GIT PULL] iommu/arm-smmu: Updates for 5.6
Message-ID: <20200117100255.GC15760@8bytes.org>
References: <20200116102548.GA14761@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116102548.GA14761@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_020310_171267_739D454A 
X-CRM114-Status: GOOD (  12.41  )
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
Cc: jean-philippe@linaro.org, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 10:25:49AM +0000, Will Deacon wrote:
> Hi Joerg,
> 
> Please pull these Arm SMMU updates for 5.6. The branch is based on your
> arm/smmu branch and includes a patch addressing the feedback from Greg
> about setting the module 'owner' field in the 'iommu_ops'.
> 
> I've used a signed tag this time, so you can see the summary of the
> changes listed in there. The big deal is that we're laying the groundwork
> for PCIe PASID support in SMMUv3, and I expect to hook that up for PCIe
> masters in 5.7 once we've exported the necessary symbols to do so.
> 
> Cheers,
> 
> Will
> 
> --->8
> 
> The following changes since commit 1ea27ee2f76e67f98b9942988f1336a70d351317:
> 
>   iommu/arm-smmu: Update my email address in MODULE_AUTHOR() (2019-12-23 14:06:06 +0100)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git tags/arm-smmu-updates

Pulled, thanks Will.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
