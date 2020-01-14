Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986D813A8CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sF48klfq0UyOPi8XsfavwPhmYkpOC2OEWprAxSh6NDM=; b=hnwfphNYTCAeHj
	9Z1PbtAfzT4nEYh2ubtk5CZdCCGlsfMIA1jIHF+ahVWoynhZmjb+CbkwURdKBVZiBK9crhxKK6B3O
	BXBv6XfMPHeSm5B+e2/bea6nUBaHyKZ9f7yNUKRxssfxNiqWK8BHcLRgaEEdpMcowHTWb5jN0Px6l
	Hnj7H2ypEzVJ+GkEnaG3tYH/zxVZARJtbxCcUOjSPpHdpKv/Opj/3Vu7m/pM0NTEbdjiy+e0+gvEF
	j0ClDMUKO8Nj41XFmpR6SBi39U1DNaKBFMM2LFmngCpQFJlpUpGlGUQdONE+C+m21qrTNOnzKVpqY
	eYbjKC5mLNZtNW47ysWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irKo6-00025F-Lt; Tue, 14 Jan 2020 11:56:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irKny-00024N-D7
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:56:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2B6424672;
 Tue, 14 Jan 2020 11:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579002977;
 bh=ahbXe4hwMQQLlrN5u66UYJDrMHT3NIY/p5dKKof/mlc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OZd5ICnclBnHLWVfm9YUQb5LWnL7oJhvwxZkC88/Qfz/xVf7KUgZ8/ayoCIO7ZVY4
 kzZacU3EMKl9p71FFs2ixfivPi6PsnxWs/K7aKsLkECRQmsPqQyhhtdDdv7bv1Inov
 /MVYLw34ynCIxhIjPlRlKlOz7eRnPqLnOObYNQdM=
Date: Tue, 14 Jan 2020 11:56:11 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 06/13] iommu/arm-smmu-v3: Add context descriptor
 tables allocators
Message-ID: <20200114115611.GB29222@willie-the-truck>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-7-jean-philippe@linaro.org>
 <20200114110651.GA29222@willie-the-truck>
 <20200114115230.GA1799@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114115230.GA1799@myrica>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_035618_466456_19748DF6 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 eric.auger@redhat.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 12:52:30PM +0100, Jean-Philippe Brucker wrote:
> On Tue, Jan 14, 2020 at 11:06:52AM +0000, Will Deacon wrote:
> > >  /* Context descriptor manipulation functions */
> > > +static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
> > > +					struct arm_smmu_cd_table *table,
> > > +					size_t num_entries)
> > > +{
> > > +	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
> > > +
> > > +	table->ptr = dmam_alloc_coherent(smmu->dev, size, &table->ptr_dma,
> > > +					 GFP_KERNEL);
> > > +	if (!table->ptr) {
> > > +		dev_warn(smmu->dev,
> > > +			 "failed to allocate context descriptor table\n");
> > > +		return -ENOMEM;
> > > +	}
> > > +	return 0;
> > > +}
> > > +
> > > +static void arm_smmu_free_cd_leaf_table(struct arm_smmu_device *smmu,
> > > +					struct arm_smmu_cd_table *table,
> > > +					size_t num_entries)
> > > +{
> > > +	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
> > > +
> > > +	dmam_free_coherent(smmu->dev, size, table->ptr, table->ptr_dma);
> > > +}
> > 
> > I think we'd be better off taking the 'arm_smmu_s1_cfg' as a parameter here
> > instead of the table pointer and a num_entries value, since the code above
> > implies that we support partial freeing of the context descriptors.
> > 
> > I can do that as a follow-up patch if you agree. Thoughts?
> 
> Do you mean only changing the arguments of arm_smmu_free_cd_leaf_table(),
> or arm_smmu_alloc_cd_leaf_table() as well? For free() I agree, for alloc()
> I'm not sure it would look better.

Yeah, just for free(). I'll spin something on top after I've finished
reviewing the series.

> For my tests I have a debug patch that allocates PASIDs randomly which
> quickly consumes DMA for leaf tables. So I do have to free the leaves
> individually when they aren't used, but it will be easy for me to update.

Cool.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
