Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BB81C51AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 11:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fx6ealHRbk07IwVaOp8hY1x1jFas+QHoaRFN14DOovA=; b=uYgkneVszwkqBH
	6UMPj5DAKqXXDHLc6SmZKK9eb9ofxg3CIkozelebS6WO6XlQyD5SCm3gWeMSSSz7DpID3XAxX6wET
	Eq7MlP+V93Gc3TMcWlR2M0jux/FsFpurJHCpXCNbk2kproWT+Njttaw2xz7XDa4HiPb/I2DdQKbH9
	a1expGZuYkN3Bz1Rx2jP/CESdQC8CpOSKK5tUZR+bTcYBhipyBmMrMPHqpLvYzG+D3cuRqJh5Y2/w
	SJQ9z9k31EVTaxHV5swL9KtSMcgu3YvBiB46XUDfVMEeZr+NIYqxOWWbB1WEmmqak519sOzfTRRU8
	jEK569ru9WCRWKqcTYpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtg7-0001aj-Jo; Tue, 05 May 2020 09:15:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtfy-0001Z4-SF
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 09:15:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id h9so1852971wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 02:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sU7U3FhjLtetQ4yGftkHmkBqFM+M9ZWPk430QlcmjSw=;
 b=QXWA/MYxeBeYOjAoqaNN2WaAGPU0Tv3zhPwTqxa96+5wzt9CdxYYAAOCUz6pWhuzUl
 933MuJKNFPVD3w9C/QvD/C0e6iA+FZPTltexAp+raUdXk9hamFndUJbWV2K4iPOJiiz7
 mqMyTD/SmVD6T8yeuC7kKEIaQK7SAcsO3TOplzzSgBS/tPHNt0Is/ZMyXCEdT7r2D46z
 FIOLqY+T6XzzhHEgdFXwAFjHT0v74ZucOnNkxFTOaVA8+6OV7MLwC5bHsfh2sv+sT888
 szyzUg2wNsB84mYvmwLGhiEl0EZfJEPVQVC4y7fppcLdtB5gerYO6mRdLiS7XmYwmwZ0
 XEWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sU7U3FhjLtetQ4yGftkHmkBqFM+M9ZWPk430QlcmjSw=;
 b=N4XKELY011fH5odvlgELSOx6nZDJ5NVJYqHWjpe4FtMiVVXbF8VrBvg57BejSWIa1S
 JnZSMlxZ9FQXUHO5/IgjXqGA7Dd/TutNQ72UC8O71ygdtxsnMxYTpCBxnM0qQkQ7q43w
 AAlBuKYIqNu59AYSFdwAIg4TbTXk8TK+oocxy9xXjwV8djehqvwmk/lepzGcz31P13C1
 dj5V/9NtFm1gjboKtGcyFj7WHTxJZYB5MXEiJ3e5J3X8hR657XKBlhFKFItyUD062dhI
 mnYKmLDpKPuBsUDX3NP5R/MEBxGdIKGQo5U9gay0uZqRLIPRzYSzczyhqhmpzG9BWTWi
 vS+Q==
X-Gm-Message-State: AGi0PubwUMuq7ZIHnR+jYebohaZpSw1YHVboTsHQqOXdD2IRbRW+vaQl
 davIM8lyT0bb2Q50X4MAI2BIW7oR0NE=
X-Google-Smtp-Source: APiQypLUdwS9EMNq1wqY/xPjJM+u52dIVylq937W1BwIZPG2UftDefGXQhpqhk5pltip4j2URFGphQ==
X-Received: by 2002:a5d:4652:: with SMTP id j18mr2063792wrs.19.1588670141301; 
 Tue, 05 May 2020 02:15:41 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id c190sm2856893wme.4.2020.05.05.02.15.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 02:15:40 -0700 (PDT)
Date: Tue, 5 May 2020 11:15:31 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
Subject: Re: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement
 iommu_sva_bind/unbind()
Message-ID: <20200505091531.GA203922@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-18-jean-philippe@linaro.org>
 <20200430141617.6ad4be4c@jacob-builder>
 <20200504164351.GJ170104@myrica>
 <20200504134723.54e2ebcd@jacob-builder>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504134723.54e2ebcd@jacob-builder>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_021542_952333_7134DDD8 
X-CRM114-Status: GOOD (  15.12  )
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

On Mon, May 04, 2020 at 01:47:23PM -0700, Jacob Pan wrote:
> > > > +	arm_smmu_write_ctx_desc(smmu_domain, mm->pasid,
> > > > &invalid_cd); +
> > > > +	arm_smmu_tlb_inv_asid(smmu_domain->smmu,
> > > > smmu_mn->cd->asid);
> > > > +	/* TODO: invalidate ATS */
> > > > +  
> > > If mm release is called after tlb invalidate range, is it still
> > > necessary to invalidate again?  
> > 
> > No, provided all mappings from the address space are unmapped and
> > invalidated. I'll double check, but in my tests invalidate range
> > didn't seem to be called for all mappings on mm exit, so I believe we
> > do need this.
> > 
> I think it is safe to invalidate again. There was a concern that mm
> release may delete IOMMU driver from the notification list and miss tlb
> invalidate range. I had a hard time to confirm that with ftrace while
> killing a process, many lost events.
> 

If it helps, I have a test that generates small DMA transactions on a SMMU
model. This is the trace for a job on a 8kB mmap'd buffer:

  smmu_bind_alloc: dev=0000:00:03.0 pasid=1
  dev_fault: IOMMU:0000:00:03.0 type=2 reason=0 addr=0x0000ffff860e6000 pasid=1 group=74 flags=3 prot=2
  dev_page_response: IOMMU:0000:00:03.0 code=0 pasid=1 group=74
  dev_fault: IOMMU:0000:00:03.0 type=2 reason=0 addr=0x0000ffff860e7000 pasid=1 group=143 flags=3 prot=2
  dev_page_response: IOMMU:0000:00:03.0 code=0 pasid=1 group=143
  smmu_mm_invalidate: pasid=1 start=0xffff860e6000 end=0xffff860e8000
  smmu_mm_invalidate: pasid=1 start=0xffff860e6000 end=0xffff860e8000
  smmu_mm_invalidate: pasid=1 start=0xffff860e8000 end=0xffff860ea000
  smmu_mm_invalidate: pasid=1 start=0xffff860e8000 end=0xffff860ea000
  smmu_unbind_free: dev=0000:00:03.0 pasid=1

And this is the same job, but the process immediately kills itself after
launching it.

  smmu_bind_alloc: dev=0000:00:03.0 pasid=1
  dev_fault: IOMMU:0000:00:03.0 type=2 reason=0 addr=0x0000ffffb9d15000 pasid=1 group=259 flags=3 prot=2
  smmu_mm_release: pasid=1
  dev_page_response: IOMMU:0000:00:03.0 code=0 pasid=1 group=259
  dev_fault: IOMMU:0000:00:03.0 type=2 reason=0 addr=0x0000ffffb9d15000 pasid=1 group=383 flags=3 prot=2
  dev_page_response: IOMMU:0000:00:03.0 code=1 pasid=1 group=383
  smmu_unbind_free: dev=0000:00:03.0 pasid=1

We don't get any invalidate_range notification in this case.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
