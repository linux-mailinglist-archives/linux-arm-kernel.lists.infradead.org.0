Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB797B7D5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAJyx9tBQeFyaesCIWWXdiuUZkHljPCHwWxqHV4Vu5A=; b=XyB1g4Fq54rxtX
	vIUp/l8BHVMFv2x9ibpMojme3eoJBl7/TyYRueUyA9GP7ddA8Efk1hrpm0inNVGmSKQQKFOZ6+OK6
	K6PDEa4JxjzFo+k2Xqtq/y5msZLKiVrQsrTTILtB+yzVCqP2pNQ92vdkQ3UUeqxT/NWBUXASkc7Ft
	91Tnf3+5gCSSyChwSIBlDhuUqGZZDtOhBEbbPny4EHfPheJG6xRw8KA3Oq4P4H/wbkgrrVk3LZOYl
	B0zaRhGr4RX4LM3d55GI6HUrMCLOOTZ22RYFkNVvF+bUh7jiQd1NP1TpxdbP39UtcPUukQZ3aQMCU
	RbnPqVke5I4BlNvaq0sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxtM-0008Ta-M4; Thu, 19 Sep 2019 14:58:45 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxse-0008LZ-MS
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:58:03 +0000
Received: by mail-ed1-x542.google.com with SMTP id r16so3451087edq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 07:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eEK3lLhQaGb6Uf5dm+fgmb2DX85yl5wvHqgPEcR4Tns=;
 b=LAwSAOYhenFH3sp+/nJqQR/xEhMF07jQ0LzJnulzYtxXyS6jo42nxoXy0LJ7ZQOdQ0
 k4zJxD4gKB3toDN/TXFgQAVO9NSFVRiN7KtT9M+2g/5WmVGHnsY7t+cB21TQGs6f9ygX
 uMDn/eVqzoP7f2yfdGe4KtjcdoZ2aYJtKvmYVTQJQGv9x+oyGVcKnkwukDs1WhzKLbN9
 2+X6nk+uTZY14iW7DQz1hJ6vVP8zUHPrHUKf5DVh8wCbVmSxfReX9wCreMqNT0/cr579
 2ce/53jovih8tAQyzGGbyrEbwO8/Ju7DWwFOEeQWhonRepegb/JHdn2h0fQh872/fFK7
 tgjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eEK3lLhQaGb6Uf5dm+fgmb2DX85yl5wvHqgPEcR4Tns=;
 b=dCCMdE5jSZBZQqAQF8WdLVqmyzkCn17gG44vVztxLx1T05biyv5fqTIXYSZv6dz6Q4
 zz+WTvgt+SlqoIcxkDwn80IchyNJrlkA1v3ndwuhMzKqFcOHLuLyK2a2liv+52npV9pu
 0P4f7CUtOUJxp9NWmsJBQAn+vW+m4SRGDZsFaDlRTQrTjQDxZ8TuZxqggdxyOA5XZO3l
 s3eOVPohNkPtSLh4vNGPqjq1b7/M3FKG6g1Jl8y19nwzi1QdtWsVdNDWCjJ/GtjRLR80
 xMMe06RjiBFXZshJZalD8Yi55FxtMuCf8vTJ9KXIDPow0/h+vxaaKXzIaTK/El0MSAs0
 Ezhw==
X-Gm-Message-State: APjAAAUjTzr42TrVmeJkiA6WUHullUE/EwbnDqoOW4GfDrgH6c//XOIn
 Nx3zQhrSlbYNFSWX+ep+v8MTUA==
X-Google-Smtp-Source: APXvYqwk1K+MGMggp+/l3DiL4j0oR3ZGy4qRdCDJYY4eyD0SE8qOKY+ATrvkN66cEC/bhZ+wwLlWaQ==
X-Received: by 2002:a50:d718:: with SMTP id t24mr1264594edi.168.1568905078372; 
 Thu, 19 Sep 2019 07:57:58 -0700 (PDT)
Received: from lophozonia ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id a22sm1038936ejs.17.2019.09.19.07.57.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 07:57:57 -0700 (PDT)
Date: Thu, 19 Sep 2019 16:57:55 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 4/8] iommu/arm-smmu-v3: Add support for Substream IDs
Message-ID: <20190919145755.GB1013538@lophozonia>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-5-jean-philippe.brucker@arm.com>
 <20190626180025.g4clm6qnbbna65de@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626180025.g4clm6qnbbna65de@willie-the-truck>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_075801_047928_FB1CAB52 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jacob.jun.pan@linux.intel.com, joro@8bytes.org, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 07:00:26PM +0100, Will Deacon wrote:
> On Mon, Jun 10, 2019 at 07:47:10PM +0100, Jean-Philippe Brucker wrote:
> > In all stream table entries, we set S1DSS=SSID0 mode, making translations
> > without an SSID use context descriptor 0. Although it would be possible by
> > setting S1DSS=BYPASS, we don't currently support SSID when user selects
> > iommu.passthrough.
> 
> I don't understand your comment here: iommu.passthrough works just as it did
> before, right, since we set bypass in the STE config field so S1DSS is not
> relevant?

What isn't supported is bypassing translation *only* for transactions
without SSID, and using context descriptors for anything with SSID. I
don't know if such a mode would be useful, but I can drop that sentence
to avoid confusion.

> I also notice that SSID0 causes transactions with SSID==0 to
> abort. Is a PASID of 0 reserved, so this doesn't matter?

Yes, we never allocate PASID 0.

> 
> > @@ -1062,33 +1143,90 @@ static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
> >  	return val;
> >  }
> >  
> > -static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
> > -				    struct arm_smmu_s1_cfg *cfg)
> > +static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
> > +				   int ssid, struct arm_smmu_ctx_desc *cd)
> >  {
> >  	u64 val;
> > +	bool cd_live;
> > +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> > +	__le64 *cdptr = arm_smmu_get_cd_ptr(&smmu_domain->s1_cfg, ssid);
> >  
> >  	/*
> > -	 * We don't need to issue any invalidation here, as we'll invalidate
> > -	 * the STE when installing the new entry anyway.
> > +	 * This function handles the following cases:
> > +	 *
> > +	 * (1) Install primary CD, for normal DMA traffic (SSID = 0).
> > +	 * (2) Install a secondary CD, for SID+SSID traffic.
> > +	 * (3) Update ASID of a CD. Atomically write the first 64 bits of the
> > +	 *     CD, then invalidate the old entry and mappings.
> > +	 * (4) Remove a secondary CD.
> >  	 */
> > -	val = arm_smmu_cpu_tcr_to_cd(cfg->cd.tcr) |
> > +
> > +	if (!cdptr)
> > +		return -ENOMEM;
> > +
> > +	val = le64_to_cpu(cdptr[0]);
> > +	cd_live = !!(val & CTXDESC_CD_0_V);
> > +
> > +	if (!cd) { /* (4) */
> > +		cdptr[0] = 0;
> 
> Should we be using WRITE_ONCE here? (although I notice we don't seem to
> bother for STEs either...)

Yes, I think it makes sense

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
