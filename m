Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DFF8BF6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJWJn4ZogizYp0FJLz0tNCroW/JWt3hotN4LD/iCkI4=; b=OhCgNtQeuv55Ku
	XzDVDGmBFuYn+J1RqQszCeb8I7TMD2I3kA1IWkvJl+OUBdue/UsVu1wilOSwwqR6Kw4tdIqrwIPpW
	wQUC3yPCMBUYPIjWHZeNhQFRYUToCeQ9XtZcMLpioyzzszwVak9zXOO5C36ibaKs6mNkPvcp9Ryhm
	rgb7rGrY27I3z3KUJeA/saY3cEdIOURcmPXZ/ez2ZHItv7VLeZQWnkCzH+R0eT8ad96ODUopUEZ48
	3j1S1uu98DA6TTTb1pesq7DrCEzLYqw2i3irwkDgJoa8f6lcnrbp9130ppGD16l8cErbTmgeY4cHZ
	c/u92C/2JRwHqykL1YLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaK5-0007Hi-0N; Tue, 13 Aug 2019 17:11:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaJo-0007HJ-Nt
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:10:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCE5E20679;
 Tue, 13 Aug 2019 17:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565716244;
 bh=3HAujAOVhRvVLw9Wr49q0ihG1ZR2YhR/IpIuwrI01jM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VSoIwMBNPftQwtRHK78noD6VrYTtEw2/zdtVMnZa+W21+JNwBjt4M/+CUmJoAKYgm
 vxnL6pOXtRJd3CWe1kfjMMNi8OVv8A4+2H2XXoExvno/NOG8KwCkt3EU/SRc/RJnOy
 8Wu9Xp1qau4NNWdG7KQeXOPxv1afsB4fLI53LFeo=
Date: Tue, 13 Aug 2019 18:10:40 +0100
From: Will Deacon <will@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] iommu/arm-smmu-v3: add nr_ats_masters to avoid
 unnecessary operations
Message-ID: <20190813171039.y64wslo4dzgyis3e@willie-the-truck>
References: <20190801122040.26024-1-thunder.leizhen@huawei.com>
 <b5866f7a-013a-5900-6fce-268052f2ba0a@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5866f7a-013a-5900-6fce-268052f2ba0a@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_101044_800861_457E06F1 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jean-philippe@linaro.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 iommu <iommu@lists.linux-foundation.org>,
 Zhen Lei <thunder.leizhen@huawei.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 11:42:17AM +0100, John Garry wrote:
> On 01/08/2019 13:20, Zhen Lei wrote:
> > When (smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS) is true, even if a
> > smmu domain does not contain any ats master, the operations of
> > arm_smmu_atc_inv_to_cmd() and lock protection in arm_smmu_atc_inv_domain()
> > are always executed. This will impact performance, especially in
> > multi-core and stress scenarios. For my FIO test scenario, about 8%
> > performance reduced.
> > 
> > In fact, we can use a atomic member to record how many ats masters the
> > smmu contains. And check that without traverse the list and check all
> > masters one by one in the lock protection.
> > 
> 
> Hi Will, Robin, Jean-Philippe,
> 
> Can you kindly check this issue? We have seen a signifigant performance
> regression here.

Sorry, John: Robin and Jean-Philippe are off at the moment and I've been
swamped dealing with the arm64 queue. I'll try to get to this tomorrow.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
