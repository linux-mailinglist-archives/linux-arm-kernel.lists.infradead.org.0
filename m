Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3C01074EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 16:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BH6V4Mh6/TPwHOjEtu5vCd9oKvcHQADfZ5lTNDzfTKY=; b=E2JyOsjirTbReX
	6UW/K8eakSfutacKqtBTba8Z1nA2sPSAWyQ0t7sLLcGZ8nwClh4LPtB0iN9Ypgqbc6ZtxEk3ILBSc
	czzdn2PDOg60DyUgwhZtHQkcyF3wZiDTKngRWKwXn/WQnmlTfm17uKmQtVvDerr/9M1JEI22pETur
	rvd9TaNNl5Ibr/pFIlxpp1tiihBQZ/W6k90DbF1wqk3T7bmCyUpE81lGFMAoMQJmtwDuxA0Ck2Qr/
	xla4jSWLMMsk8UJ+LyNY1hHCrUsoiVjcwykrVTDmTM+OMzWwmSyuhM7CtCc5azCy3zdOGuacLupia
	podnvXT15kLxUcHPOdHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYAuw-0003Ol-L6; Fri, 22 Nov 2019 15:32:18 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYAun-0003OR-82
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 15:32:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id u18so7891662wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 07:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=o0Nf3geLcg9Iv2VN5DaVX7zHaQKSf02VaMj3Oj40g7s=;
 b=cmkuqhGjOwfdSwkZ3ss+85BQf54k5DwK5drxsgJ59aUf6B/dAvLhdQ3svBWsyNuhOR
 t2lOL5vWRytQrNu3oBk9S+q/yVsjrSNyFPIvcSDyEH0XASpUvwUBRwMKkEC1LAZxJK8Z
 /jLp+8jON45HOASnNIf9x/9YrfeFqw4v+CfizFYbWJl38eWeYg4fKmj/JSRzGxPqARQI
 C3t1Tm6A/E8EBhc2zA6gmdoNjPZ6fky+ZGuvqVqW6QoSuHMZ5BwEcLEnmAIVWkFHxzhj
 L8t4ZzVHn/mU77X5BkPc7byb8I4PVtKasmkxJwwzQs+FjoJ6wEfFg584rN3oNW7pyahH
 8igA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o0Nf3geLcg9Iv2VN5DaVX7zHaQKSf02VaMj3Oj40g7s=;
 b=Ymv0R00CwGolcYrJJUm+DDPexqXdnTM7pHnSZeWXrvxsFWGE414NCqjGapYlKdm4K6
 NjQOFlFY8Q/8F5o/0W8QyRp0tA8UXrDdPW2wIApFriW3MTIEp/LbK51JUk38saVLDHtS
 DyiYAvX7uvyZRimHLBMHZERzW5YnLKDfK3Ws7tcu/ctuC9zdkSV+YJ0kdRND1sVL1EaO
 sof6CeEx1tmUwjM6v4UUaVG7glntqJkb/3hLe2g72JcTiNsbKQHb1PvFeNqerGID7yV8
 VQJSi7KgBM+ZlOSsblwMfKGLxgw7qlpBl/iAFMqU23fh7qrmOBq3uUyqTl9gpUBYFzl+
 HyRQ==
X-Gm-Message-State: APjAAAWI9zhHNrGfU5XO3Wzb1Qu2oadruK+tDEBz0gROYs8xd5j7wLBz
 +btHG9gcGga9DsFZUG730DzRKw==
X-Google-Smtp-Source: APXvYqxY6pHuhUWCVcZneY2M7eICkz+5eYgu7XtNfAm4R2SBBRGwg3zyF3DJRrQll9z97xbxElVU6Q==
X-Received: by 2002:a1c:6485:: with SMTP id y127mr3164184wmb.19.1574436726287; 
 Fri, 22 Nov 2019 07:32:06 -0800 (PST)
Received: from lophozonia (xdsl-188-155-204-106.adslplus.ch. [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o7sm6578349wrv.63.2019.11.22.07.32.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 07:32:05 -0800 (PST)
Date: Fri, 22 Nov 2019 16:32:03 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jonathan Cameron <jonathan.cameron@huawei.com>
Subject: Re: [PATCH v2 6/8] iommu/arm-smmu-v3: Add second level of context
 descriptor table
Message-ID: <20191122153203.GB810215@lophozonia>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
 <20191108152508.4039168-7-jean-philippe@linaro.org>
 <20191111155007.00002021@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111155007.00002021@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_073209_493363_873CA587 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 eric.auger@redhat.com, robin.murphy@arm.com, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, guohanjun@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 03:50:07PM +0000, Jonathan Cameron wrote:
> > +		cfg->l1ptr = dmam_alloc_coherent(smmu->dev, size,
> > +						 &cfg->l1ptr_dma,
> > +						 GFP_KERNEL | __GFP_ZERO);
> 
> As before.  Fairly sure __GFP_ZERO doesn't give you anything extra.

Indeed

> > +		if (!cfg->l1ptr) {
> > +			dev_warn(smmu->dev, "failed to allocate L1 context table\n");
> > +			return -ENOMEM;
> > +		}
> > +	}
> > +
> > +	cfg->tables = devm_kzalloc(smmu->dev, sizeof(struct arm_smmu_cd_table) *
> > +				   cfg->num_tables, GFP_KERNEL);
> > +	if (!cfg->tables) {
> > +		ret = -ENOMEM;
> > +		goto err_free_l1;
> > +	}
> > +
> > +	/* With two levels, leaf tables are allocated lazily */
> This comment is a kind of odd one.  It is actually talking about what
> 'doesn't' happen here I think..
> 
> Perhaps /*
>          * Only allocate a leaf table for linear case.
>          * With two levels, the leaf tables are allocated lazily.
> 	 */

Yes, that's clearer

> > +	if (!cfg->l1ptr) {
> > +		ret = arm_smmu_alloc_cd_leaf_table(smmu, &cfg->tables[0],
> > +						   max_contexts);
> > +		if (ret)
> > +			goto err_free_tables;
> > +	}
> > +
> > +	return 0;
> > +
> > +err_free_tables:
> > +	devm_kfree(smmu->dev, cfg->tables);
> > +err_free_l1:
> > +	if (cfg->l1ptr)
> > +		dmam_free_coherent(smmu->dev, size, cfg->l1ptr, cfg->l1ptr_dma);
> 
> This cleanup only occurs if we have had an error.
> Is there potential for this to rerun at some point later?  If so we should
> be careful to also reset relevant pointers - e.g. cfg->l1ptr = NULL as
> they are used to control the flow above.

Yes we should definitely clear l1ptr. The domain may be managed by a
device driver, and if attach_dev() fails they will call domain_free(),
which checks this pointer. Plus nothing prevents them from calling
attach_dev() again with the same domain.

> If there is no chance of a rerun why bother cleaning them up at all?  Something
> has gone horribly wrong so let the eventual smmu cleanup deal with them.

The domain is much shorter-lived than the SMMU device, so we need this
cleanup.

> > +	return ret;
> >  }
> >  
> >  static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
> >  {
> > +	int i;
> >  	struct arm_smmu_device *smmu = smmu_domain->smmu;
> >  	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
> > +	size_t num_leaf_entries = 1 << cfg->s1cdmax;
> > +	struct arm_smmu_cd_table *table = cfg->tables;
> >  
> > -	arm_smmu_free_cd_leaf_table(smmu, &cfg->table, 1 << cfg->s1cdmax);
> > +	if (cfg->l1ptr) {
> > +		size_t size = cfg->num_tables * (CTXDESC_L1_DESC_DWORDS << 3);
> > +
> > +		dmam_free_coherent(smmu->dev, size, cfg->l1ptr, cfg->l1ptr_dma);
> 
> 		As above, if we can call this in a fashion that makes sense
> 		other than in eventual smmu tear down, then we need to be
> 		careful to reset the pointers.   If not, then why are we clearing
> 		managed resourced by hand anyway?

Yes, we call this on the error cleanup path (not only domain_free()), so
it needs to leave the domain in a usable state.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
