Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8C41DCF6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X80jyDHlnKREooIQb6JvTHjlmdkIbtWG6AoR+oB8u4M=; b=BGhZikAYxqdQPu
	rxO7AFTPEPbIjif+ODmxlBMGB6B3760UyuqNJcW8cwPjh9Qq9ajxeFygdFnNV5S+KnJu2SfjCjccD
	QFxlRHlVz1KhfQ2t7BpDLvtaz/0MpBcDZp8oi3Mpfa2dW5zYz9ngDcSsppKimfdcqUMwo+HeZ+HJT
	Aeft/crk3JEch9Dtr9zRjLdgYcv7TgWyK+xmH3SSbB8q9fLML5KvMEtiq2sRPKnG7nVhGz6JfmlsA
	ploFeT1xLKFDkUlCUHVJo+5TbECgvjQK1yeiux+jyK2ztOQSGs6Mv0NNFfxv/AmKZQRfA5nIgmk8q
	/N46CUuH7KR9Tlnf5SGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbm25-0002lp-BY; Thu, 21 May 2020 14:18:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbm0w-00022V-4x
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:17:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A49A20721;
 Thu, 21 May 2020 14:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590070657;
 bh=5MRn3H5sZAZmyAJ7ms4hcDmOF+0kJdAcWrKPmQYOlR0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hk9BuL52Yd+s1F9PZBKDi1fOj/hBpMdLhnVRrqDGLJHOMJUJ4cx1CtTqJjqji14lA
 se04HPgcV50e35bBPs6oZN10HauSB5SCTxRi9BAEpAi6JOpzQotWs8pN2P23RLU3T9
 jRk0X8KLGknqWO03sXQQpGyIbmzpKdaGmJhlarzo=
Date: Thu, 21 May 2020 15:17:31 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v7 13/24] iommu/arm-smmu-v3: Enable broadcast TLB
 maintenance
Message-ID: <20200521141730.GJ6608@willie-the-truck>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-14-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519175502.2504091-14-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_071738_219222_C46F9227 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, maz@kernel.org, jgg@ziepe.ca,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 fenghua.yu@intel.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 robin.murphy@arm.com, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Marc]

On Tue, May 19, 2020 at 07:54:51PM +0200, Jean-Philippe Brucker wrote:
> The SMMUv3 can handle invalidation targeted at TLB entries with shared
> ASIDs. If the implementation supports broadcast TLB maintenance, enable it
> and keep track of it in a feature bit. The SMMU will then be affected by
> inner-shareable TLB invalidations from other agents.
> 
> A major side-effect of this change is that stage-2 translation contexts
> are now affected by all invalidations by VMID. VMIDs are all shared and
> the only ways to prevent over-invalidation, since the stage-2 page tables
> are not shared between CPU and SMMU, are to either disable BTM or allocate
> different VMIDs. This patch does not address the problem.

This sounds like a potential performance issue, particularly as we expose
stage-2 contexts via VFIO directly. Maybe we could reserve some portion of
VMID space for the SMMU? Marc, what do you reckon?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
