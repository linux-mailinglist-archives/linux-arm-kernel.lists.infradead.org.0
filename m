Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006DD13BCB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7EzorLNR0Fs2vXX+Zqo8ospfOABc/MUAKto9wNmrt4=; b=oB3DpTtcbf79Yv
	9Th4nG3sAVgcNvfz45Fw8CS4xPntdjcUKDQ+XIR1Q78oE7vaeTxs06cO8OsbJ1CqSQEy4A3lQl6IL
	ILs/Xo+PME2zOAUVeYD5o9s8ZiacstxorCPFTv5piIrmVy361CHvTniuVeqfGZ/KwsXPXM06KXDqF
	TnNDFntO50ftP0MWa0YWBcnE7J0RBXYSOWFGoM7QF3ege843wYdvjPblrY96SLH5qGrzWUkkH1kBw
	Jmmpx/8nNdHiIfipvUbtCSOSIz8oZANmzN7/PkTK8GJrqKfKBHPDgK51kM/E6b6+6imrDgkjaqCyn
	yADnc6cIa9yB7Gkn3dzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfFM-0005HY-QM; Wed, 15 Jan 2020 09:45:56 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfF3-00057b-6P
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:45:41 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so17087256wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 01:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9wkd2dirzcLFMZe8FU543qaw7ijLSERXETdbeouxTnU=;
 b=IDC5rTxOPsqytGko2kQMljlQZBwBuNt8KKgY8q6IVAW/ySemHw5OtVmZYZGFvfjk5l
 GlWXT2vBGCuAa2XIepytG7BISG5MAAQp4FClvQ+7Gxplg445NhK4ii3kFHCOsiYlGxrU
 A0ERCUq5C0NZDeEOmSipXTQkvujaqr4xuaaKREBVgZZJy16KyNEVMT81TD3kMfVjcAOQ
 BQFv4WUk6iuqMyuL27FXeIOxm/zELox0Uo4Fk771+4DoDhhuNYKEaxHul726afcE1Z+w
 7D2oyg9fcoJ5C8vJmJqnq6dIH9xPcEYIil5AL4CwSHtlP9I6O7Q/Ll2kfdeCGqGL66gx
 6wMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9wkd2dirzcLFMZe8FU543qaw7ijLSERXETdbeouxTnU=;
 b=Hki42kk5lQYSbEuMuECQlN5OTb3EKhZSxG8or+qpGHeBhn9v7k671YTZyYLpVEetdd
 3AeqGhNX+sDRJr9BZaahkI0vRqKK+E2a2K+MLvdZ/E++cmHbq5nUrivpfxYP+PX9V/un
 01xo2+r468dWj9+SISzaAq4idkc1MpJ3XSFOoN0xY6hvZ4sTd63hn3FLZeDBtffFc3Tb
 pcNRQoXOd4gh4GESrv66KoAO/EneKW+XTZMRGyOn2YTvuiu6teXq0ho64wPkhAfp/tE8
 DPGVCB6t9AYng7Ql+vw5/6wAIIcs2LcJcM12FMzmIu+b6ThEvx7sgGM9lRheAPUnR5S5
 PZiA==
X-Gm-Message-State: APjAAAUtVS0b8Njehm/Wn5aCt+1U4sGmVBqJU4kg9WVUAAnvO3YET5Jy
 f7ZPtCFzdaWzXUGbi5d7jYwk9A==
X-Google-Smtp-Source: APXvYqxR2npzUP0k42uJhm9Im1rL58AtIxFUtjkScu/sxkhhW7+4pJhKUdhG5rM9VQoJWl4fFZgc9A==
X-Received: by 2002:a1c:488a:: with SMTP id
 v132mr31093095wma.153.1579081533150; 
 Wed, 15 Jan 2020 01:45:33 -0800 (PST)
Received: from myrica ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id j2sm22908749wmk.23.2020.01.15.01.45.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 01:45:32 -0800 (PST)
Date: Wed, 15 Jan 2020 10:45:27 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 10/13] iommu/arm-smmu-v3: Add second level of context
 descriptor table
Message-ID: <20200115094527.GB32782@myrica>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-11-jean-philippe@linaro.org>
 <20200114150435.GA2579@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114150435.GA2579@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_014537_328778_418511ED 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Jan 14, 2020 at 03:04:36PM +0000, Will Deacon wrote:
> On Thu, Dec 19, 2019 at 05:30:30PM +0100, Jean-Philippe Brucker wrote:
> > The SMMU can support up to 20 bits of SSID. Add a second level of page
> > tables to accommodate this. Devices that support more than 1024 SSIDs now
> > have a table of 1024 L1 entries (8kB), pointing to tables of 1024 context
> > descriptors (64kB), allocated on demand.
> > 
> > Tested-by: Zhangfei Gao <zhangfei.gao@linaro.org>
> > Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> >  drivers/iommu/arm-smmu-v3.c | 154 +++++++++++++++++++++++++++++++++---
> >  1 file changed, 144 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > index b825a5639afc..bf106a7b53eb 100644
> > --- a/drivers/iommu/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm-smmu-v3.c
> > @@ -224,6 +224,7 @@
> >  
> >  #define STRTAB_STE_0_S1FMT		GENMASK_ULL(5, 4)
> >  #define STRTAB_STE_0_S1FMT_LINEAR	0
> > +#define STRTAB_STE_0_S1FMT_64K_L2	2
> >  #define STRTAB_STE_0_S1CTXPTR_MASK	GENMASK_ULL(51, 6)
> >  #define STRTAB_STE_0_S1CDMAX		GENMASK_ULL(63, 59)
> >  
> > @@ -263,7 +264,20 @@
> >  
> >  #define STRTAB_STE_3_S2TTB_MASK		GENMASK_ULL(51, 4)
> >  
> > -/* Context descriptor (stage-1 only) */
> > +/*
> > + * Context descriptors.
> > + *
> > + * Linear: when less than 1024 SSIDs are supported
> > + * 2lvl: at most 1024 L1 entries,
> > + *       1024 lazy entries per table.
> > + */
> > +#define CTXDESC_SPLIT			10
> > +#define CTXDESC_L2_ENTRIES		(1 << CTXDESC_SPLIT)
> > +
> > +#define CTXDESC_L1_DESC_DWORDS		1
> > +#define CTXDESC_L1_DESC_VALID		1
> 
> 	#define CTXDESC_L1_DESC_V	(1UL << 0)
> 
> fits better with the rest of the driver and also ensures that the thing
> is unsigned (we should probably switch over the BIT macros, but that's a
> separate cleanup patch).
> 
> > +#define CTXDESC_L1_DESC_L2PTR_MASK	GENMASK_ULL(51, 12)
> > +
> >  #define CTXDESC_CD_DWORDS		8
> >  #define CTXDESC_CD_0_TCR_T0SZ		GENMASK_ULL(5, 0)
> >  #define ARM64_TCR_T0SZ			GENMASK_ULL(5, 0)
> > @@ -575,7 +589,12 @@ struct arm_smmu_cd_table {
> >  };
> >  
> >  struct arm_smmu_s1_cfg {
> > -	struct arm_smmu_cd_table	table;
> > +	/* Leaf tables or linear table */
> > +	struct arm_smmu_cd_table	*tables;
> > +	size_t				num_tables;
> > +	/* First level tables, when two levels are used */
> > +	__le64				*l1ptr;
> > +	dma_addr_t			l1ptr_dma;
> 
> It probably feels like a nit, but I think this is all a little hard to read
> because it differs unnecessarily from the way the stream table is handled.
> 
> Could we align the two as follows? (I've commented things with what they
> refer to in your patch):
> 
> 
> struct arm_smmu_l1_ctx_desc {				// arm_smmu_cd_table
> 	__le64				*l2ptr;		// ptr
> 	dma_addr_t			l2ptr_dma;	// ptr_dma
> };
> 
> struct arm_smmu_ctx_desc_cfg {
> 	__le64				*cdtab;		// l1ptr
> 	dma_addr_t			cdtab_dma;	// l1ptr_dma
> 	struct arm_smmu_l1_ctx_desc	*l1_desc;	// tables
> 	unsigned int			num_l1_ents;	// num_tables
> };
> 
> struct arm_smmu_s1_cfg {
> 	struct arm_smmu_ctx_desc_cfg	cdcfg;
> 	struct arm_smmu_ctx_desc	cd;
> 	u8				s1fmt;
> 	u8				s1cdmax;
> };
> 
> 
> I don't know whether you'd then want to move s1fmt and s1cdmax into the
> cdcfg, I'll leave that up to you. Similarly if you want any functions
> to operate on arm_smmu_ctx_desc_cfg in preference to arm_smmu_s1_cfg.
> 
> Thoughts?

No problem, it looks cleaner overall.

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
