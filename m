Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 210501DD032
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RkyfwHOVoOPSZK4emYueKA+iABOF4blNCw12N/netaU=; b=Zb54ai5Cr0PB4j/uW2V+orc0F
	Vk41UvS22uBuUzteZFyzLJiGb+l6xaSXV/PtUwN64HhYRpYL2b3YLubdX6p5DpMyYKLtzWZl/DxwM
	d6Wm6a9zhdnFLzpa/Y0MSgPznFDrrkoFrWAqOEUpgYoXJ4ck6fALTm/8AEiBeT+Dni9171Q8ao7sm
	2SV5y7jMPAXe1o/cHi8QdwFJb6h9zWqzrb85VzCRh703brIh/ut2B8ejIzP6ghQ1yb09M9oie4Nzt
	lmKATLDI/CLsOwh5dxEAIjlS0Q4+YPc0eGZo+/TGEAG4LqptSwN0ID4Akqt5GoYDqcwOltYSwDO9T
	vnQDq1cJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmLT-0007Gi-7c; Thu, 21 May 2020 14:38:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmLH-0007Fe-Up
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:38:41 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D32A20671;
 Thu, 21 May 2020 14:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590071917;
 bh=OiPs36foL9u2qM53WH6N6taB239fXx9YwYNRpOR+uc8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IOEcaexAkIOaBlLyjmM4y4cc/lI+AvTt2XG3MJSe97tPOOBgmi21ZXYe/wbygmmAv
 5aXAD0JnBq4smiwKKP0tkBFg6mfmBK9KQxomojoIgqFlfdKP3EZ7WzahgMAIQfnPLY
 ixdP2n51XBJE02yNEqT0nnudoDksFaXfwPwqR4lA=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jbmLD-00EFyF-AE; Thu, 21 May 2020 15:38:35 +0100
MIME-Version: 1.0
Date: Thu, 21 May 2020 15:38:35 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v7 13/24] iommu/arm-smmu-v3: Enable broadcast TLB
 maintenance
In-Reply-To: <20200521141730.GJ6608@willie-the-truck>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-14-jean-philippe@linaro.org>
 <20200521141730.GJ6608@willie-the-truck>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <0c896ad27b43b2de554cf772f9453d0a@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, jean-philippe@linaro.org,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org, joro@8bytes.org, catalin.marinas@arm.com,
 robin.murphy@arm.com, kevin.tian@intel.com, baolu.lu@linux.intel.com,
 Jonathan.Cameron@huawei.com, jacob.jun.pan@linux.intel.com,
 christian.koenig@amd.com, felix.kuehling@amd.com, zhangfei.gao@linaro.org,
 jgg@ziepe.ca, xuzaibo@huawei.com, fenghua.yu@intel.com, hch@infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_073840_036045_B1708FB6 
X-CRM114-Status: GOOD (  11.68  )
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, devicetree@vger.kernel.org, jgg@ziepe.ca,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 fenghua.yu@intel.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 robin.murphy@arm.com, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-21 15:17, Will Deacon wrote:
> [+Marc]
> 
> On Tue, May 19, 2020 at 07:54:51PM +0200, Jean-Philippe Brucker wrote:
>> The SMMUv3 can handle invalidation targeted at TLB entries with shared
>> ASIDs. If the implementation supports broadcast TLB maintenance, 
>> enable it
>> and keep track of it in a feature bit. The SMMU will then be affected 
>> by
>> inner-shareable TLB invalidations from other agents.
>> 
>> A major side-effect of this change is that stage-2 translation 
>> contexts
>> are now affected by all invalidations by VMID. VMIDs are all shared 
>> and
>> the only ways to prevent over-invalidation, since the stage-2 page 
>> tables
>> are not shared between CPU and SMMU, are to either disable BTM or 
>> allocate
>> different VMIDs. This patch does not address the problem.
> 
> This sounds like a potential performance issue, particularly as we 
> expose
> stage-2 contexts via VFIO directly. Maybe we could reserve some portion 
> of
> VMID space for the SMMU? Marc, what do you reckon?

Certainly doable when we have 16bits VMIDs. With smaller VMID spaces 
(like on
v8.0), this is a bit more difficult (we do have pretty large v8.0 
systems
around). How many VMID bits are we talking about?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
