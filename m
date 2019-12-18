Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5B2124CCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKLKFMZyKcE8hQwwpLkJ0tVsHUvDcYqzu39/BXURq/8=; b=jZgGXpVJIJRZNU
	AaHvMAVSJe62qFHhKvIEeaJoJpuDJzRc/CdIQHKOa7NXLjmfNNe8/cy+9OiZ16K9fJ9tDg6hQ47YP
	IISBBS4a3sbeTqX60KxGjbZr7mEBuYKTIQBFhv03NrIrrWZFtGRrRXeIT2AeT5A1vt9XMprnnAQrI
	djsamzf7YtSobjWySWzciWwWjqNr5LZJlDD6XpLGIwih7byT6eSOEVNNliojJ2HHjLX+gqu33negm
	oQ45X6d9m/CgZDYy9Di09gMtO4tWo24mID+rzCkFBqIZx/4xeIdJHdA30QHAsSao5OhqS5ALhmpZ1
	DYMa/9RReP1/eG+VHc1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbuQ-0001kR-Av; Wed, 18 Dec 2019 16:10:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbuD-0001jq-ML
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:10:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so2907172wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 08:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=c8CBYJotaME8s7Ii/JzatZyff2J7fay7KXQVz82AJFg=;
 b=Sxy90pGkAdWmS2Fgg1g9dDmRYM88EKGHw+3sHdVzrc/jXY1im07pY4qUv1tGNMFQQk
 IcekmR8ZcC3tFNKeEjDAkEGo31sQzuifBkI1yTZSgyo4SKdsyJsWbVwWFYGXwlPpAkhx
 XRuhpq4pljIs7U5JvYnTtLM4nZitTnXapzCw5DQHNgB6SeKoZJeGkQ1klqygxkp7+RpW
 WjEwhJC4iCG1aEKCSznQiMBQpuy+m+bSMgY28JLRnV8cBMrn15RqbaEHWG6RiNnqDhbN
 nih4Ob9CXvxvj259j4M6yjk+0zriLR+qz1v/rwXtQ0kpWi6stqyzl02mE7nywETjkOB5
 IjbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c8CBYJotaME8s7Ii/JzatZyff2J7fay7KXQVz82AJFg=;
 b=j75fbBSkQuT3HO8N+ZilgNsk5j7mz2CXhGWfmp+rR3a5hmSRxSScFUzocOn2QgDIcR
 a+8AUXzYZ38b+vH0XoVwO8HofFyEQavtOl1sbqQM5SJLncRhLT/9IHnKtUzz/GPWcJJu
 v0UXj4eg+JmM32z97WRyCxoDwySlNBFWr3gLGFRQoAWuAMUdLoxvzeZ6TEpMaY6MvpD4
 9Sn4Dqri5/qzDzXBSLalyXJ8cO2jQ6fb86q/zlxhL3lSZT5kRRONs4yPjaxek9Tk8fH2
 JJUlmEUyMSRN5vMuK0w+9NobB7OBz+XMGay3ubTj6dzml/9mGLZgnirjEx267DsX1V5X
 BQlw==
X-Gm-Message-State: APjAAAVAF3nySk63oWhlxelwTpmS++pEADsRI9ayWIJ6lSoVJxD8oX0w
 KRIoigos8X943d0Q3eQneHiGCA==
X-Google-Smtp-Source: APXvYqzsaGjamve7e+ufvEcnCPaUD5lFGwfiwdLCMRmGmU/OQUapuquuTDlM74GkdPYUKGdDnOKsEA==
X-Received: by 2002:a5d:4e90:: with SMTP id e16mr3895866wru.318.1576685432128; 
 Wed, 18 Dec 2019 08:10:32 -0800 (PST)
Received: from myrica (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id 60sm3115391wrn.86.2019.12.18.08.10.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 08:10:31 -0800 (PST)
Date: Wed, 18 Dec 2019 17:10:26 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v3 10/13] iommu/arm-smmu-v3: Add second level of context
 descriptor table
Message-ID: <20191218161026.GH2371701@myrica>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-11-jean-philippe@linaro.org>
 <26230082-03d2-5c01-389a-9e32dd281b57@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <26230082-03d2-5c01-389a-9e32dd281b57@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_081033_795740_5B001416 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 linux-pci@vger.kernel.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, robin.murphy@arm.com, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 10:59:36AM +0100, Auger Eric wrote:
> >  struct arm_smmu_s1_cfg {
> > -	struct arm_smmu_cd_table	table;
> > +	struct arm_smmu_cd_table	*tables;
> > +	size_t				num_tables;
> > +	__le64				*l1ptr;
> you may add a comment saying that l1ptr and l1ptr_dma are only set/used
> in non linear case and one comment saying that "tables" represent leaf
> tables.

I now have
	/* Leaf tables or linear table */
and
	/* First level tables, when two level are used */
but I'm not entirely convinced it adds value

> > +	dma_addr_t			l1ptr_dma;
> >  	struct arm_smmu_ctx_desc	cd;
> >  	u8				s1fmt;
> >  	u8				s1cdmax;
> > @@ -1521,9 +1538,53 @@ static void arm_smmu_free_cd_leaf_table(struct arm_smmu_device *smmu,
> >  {
> >  	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
> >  
> > +	if (!table->ptr)
> > +		return;
> >  	dmam_free_coherent(smmu->dev, size, table->ptr, table->ptr_dma);
> >  }
> >  
> > +static void arm_smmu_write_cd_l1_desc(__le64 *dst,
> > +				      struct arm_smmu_cd_table *table)
> > +{
> > +	u64 val = (table->ptr_dma & CTXDESC_L1_DESC_L2PTR_MASK) |
> > +		  CTXDESC_L1_DESC_VALID;
> > +
> > +	WRITE_ONCE(*dst, cpu_to_le64(val));
> > +}
> > +
> > +static __le64 *arm_smmu_get_cd_ptr(struct arm_smmu_domain *smmu_domain,
> > +				   u32 ssid)
> > +{
> > +	__le64 *l1ptr;
> > +	unsigned int idx;
> > +	struct arm_smmu_cd_table *table;
> > +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> > +	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
> > +
> > +	if (cfg->s1fmt == STRTAB_STE_0_S1FMT_LINEAR) {
> > +		table = &cfg->tables[0];
> > +		idx = ssid;
> > +	} else {
> nit: you may avoid this extra indent by either returning above or go to
> a label.
> > +		idx = ssid >> CTXDESC_SPLIT;
> > +		if (idx >= cfg->num_tables)
> > +			return NULL;
> > +
> > +		table = &cfg->tables[idx];
> > +		if (!table->ptr) {
> > +			if (arm_smmu_alloc_cd_leaf_table(smmu, table,
> > +							 CTXDESC_L2_ENTRIES))
> > +				return NULL;
> > +
> > +			l1ptr = cfg->l1ptr + idx * CTXDESC_L1_DESC_DWORDS;
> > +			arm_smmu_write_cd_l1_desc(l1ptr, table);
> > +			/* An invalid L1CD can be cached */
> > +			arm_smmu_sync_cd(smmu_domain, ssid, false);
> > +		}
> > +		idx = ssid & (CTXDESC_L2_ENTRIES - 1);
> > +	}
> > +	return table->ptr + idx * CTXDESC_CD_DWORDS;> +}
> > +
> >  static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
> >  {
> >  	u64 val = 0;
> > @@ -1556,8 +1617,10 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
> >  	u64 val;
> >  	bool cd_live;
> >  	struct arm_smmu_device *smmu = smmu_domain->smmu;
> > -	__le64 *cdptr = smmu_domain->s1_cfg.table.ptr + ssid *
> > -			CTXDESC_CD_DWORDS;
> > +	__le64 *cdptr = arm_smmu_get_cd_ptr(smmu_domain, ssid);
> > +
> > +	if (!cdptr)
> > +		return -ENOMEM;
> -ENOMEM does not fit well with (idx >= cfg->num_tables) case
> Besides the idx is checked against the max table capacity only in non
> linear mode. Can't you check the ssid against cfg->s1cdmax earlier?

Ok, I'll move that check here

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
