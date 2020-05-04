Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19CA1C405F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JC3NwAqpvrxkEjbg9+pRGYSm/AQ2J/0jw17t3z5A9ig=; b=S//T8R7P8HsdnN
	P8LqJKYbzZqP7LKMfN8pTXRKXdDmusWDepiRgiQFc6os+9IHj3nnwRfUAdtczoCO9vOZPT7MSdjkr
	tnQSq+XL3bKl6qpvLAKDm9pQtfv3Dz0ZH9mpitf7+f5p2GRr05AzB29XVBi5ou6QRYF/8ZBM2JatV
	PaMQdF5A2DAqLp2DnAON5Z85LCrbel8k+ePqYYpCD56lebV2xAtqdg1bmO+pJOGpZ/GCi1t0TdUww
	PXIk6YipcZo4JCumRmYnacMsq5YQ/DLl4mkFmW2n07QWOeAy5uvKBo45JvyGDnXJHkZYzw7ON00q2
	NPYsc+xrkhFz45kiFerQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeCc-0007Ha-NN; Mon, 04 May 2020 16:44:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeCJ-00079d-Nb
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:44:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id d15so21790304wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nKcmHJjl9tIFKl3vh2WZWbQ1a6qf0OFNOmjvKAG+T5w=;
 b=GVujRTu9LfTtfSzWvR/blDgA6L4wRuxbhYL/JkbyHQuSK8LBG1AbIRX7hrdeiN0O7Z
 8Baza83dK07XMfbk20Q4GjHiYd4X4taXQr82nh40jV8dNTlKcvoKIZtYRHESbkJA0Mei
 m0JLe0wL6lKWe3B00KhI1No1bnfAYcK4FWXAj0PDFUuXEgS3N/NCSXdao12JT6mYvX7R
 wWA8cKGRE8zdnC3olLE8Amc6l6swWxcCLhl/UAEav9UYx2rkCZQF3jq3haIKHqp/B/Tc
 bv20hTPber8xWSwz5soOC6sjFXModYLMxNromwl4JxU9GswTWo613kfBFwjSkE/8acrI
 lxjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nKcmHJjl9tIFKl3vh2WZWbQ1a6qf0OFNOmjvKAG+T5w=;
 b=d/mfIEFbQH4puX13S4IXCFs8eL8tH9+BxyWZRTm2ZxjmAdgV33DIlUJqMDbjPHgRti
 u0nEziI/IG5q3APnWnnF4gRyyuE1dG9ckI1w/3Y8FQu6yP9s/Jj2dZejPNQNGPOccO2C
 6J7vQ9LSZY3GytyMCTdp1Fud61VexGae29ReHu1puTyA5wb/PRoOgkZkSbG4rPSWGlkR
 zHA7LJMJjzyMf0nJHj/8k3UXVc2Ftg9c5sUO7yv1H/GblL176QJTdMlcPXYnLkbuFTvy
 blhHPlgTPq9lDn7Poi7k53eiz3ZRJ+iUxvpdXf10OV63U0kYwMxkjGh90M86IcizDyNo
 IhRg==
X-Gm-Message-State: AGi0Pua6TR+1pnTPiqgO8eyzTL3G5om5qxcqZOkXuICRdW/IgW8+7fzH
 py4HxmPatng/779uATvotNW8LQ==
X-Google-Smtp-Source: APiQypIoWxNfvYjKhhuxv6cQDK75SO+JQ8441jozvjondQeZtyDNRGUJBpfXr2gHhMn+rcM5zZPzpw==
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr12708701wrt.215.1588610642110; 
 Mon, 04 May 2020 09:44:02 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n12sm7101170wrj.95.2020.05.04.09.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 09:44:01 -0700 (PDT)
Date: Mon, 4 May 2020 18:43:51 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
Subject: Re: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement
 iommu_sva_bind/unbind()
Message-ID: <20200504164351.GJ170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-18-jean-philippe@linaro.org>
 <20200430141617.6ad4be4c@jacob-builder>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430141617.6ad4be4c@jacob-builder>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_094403_948907_5E33F419 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com, jgg@ziepe.ca,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, fenghua.yu@intel.com, hch@infradead.org,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 02:16:17PM -0700, Jacob Pan wrote:
> > +static void arm_smmu_mm_invalidate_range(struct mmu_notifier *mn,
> > +					 struct mm_struct *mm,
> > +					 unsigned long start,
> > unsigned long end) +{
> > +	/* TODO: invalidate ATS */
> > +}
> > +
> > +static void arm_smmu_mm_release(struct mmu_notifier *mn, struct
> > mm_struct *mm) +{
> > +	struct arm_smmu_mmu_notifier *smmu_mn = mn_to_smmu(mn);
> > +	struct arm_smmu_domain *smmu_domain;
> > +
> > +	mutex_lock(&arm_smmu_sva_lock);
> > +	if (smmu_mn->cleared) {
> > +		mutex_unlock(&arm_smmu_sva_lock);
> > +		return;
> > +	}
> > +
> > +	smmu_domain = smmu_mn->domain;
> > +
> > +	/*
> > +	 * DMA may still be running. Keep the cd valid but disable
> > +	 * translation, so that new events will still result in
> > stall.
> > +	 */
> Does "disable translation" also disable translated requests?

No it doesn't disable translated requests, it only prevents the SMMU from
accessing the pgd.

> I guess
> release is called after tlb invalidate range, so assuming no more
> devTLB left to generate translated request?

I'm counting on the invalidate below (here a TODO, implemented in next
patch) to drop all devTLB entries. After that invalidate, the device:
* issues a Translation Request, returns with R=W=0 because we disabled
  translation (and it isn't present in the SMMU TLB).
* issues a Page Request, returns with InvalidRequest because
  mmget_not_zero() fails.

> 
> > +	arm_smmu_write_ctx_desc(smmu_domain, mm->pasid, &invalid_cd);
> > +
> > +	arm_smmu_tlb_inv_asid(smmu_domain->smmu, smmu_mn->cd->asid);
> > +	/* TODO: invalidate ATS */
> > +
> If mm release is called after tlb invalidate range, is it still
> necessary to invalidate again?

No, provided all mappings from the address space are unmapped and
invalidated. I'll double check, but in my tests invalidate range didn't
seem to be called for all mappings on mm exit, so I believe we do need
this.

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
