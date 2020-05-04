Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8D31C3C91
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxryQHIdXf/tZSvkpAUlN1KjM20DMwn2dPr1E5JTNhk=; b=myxIspXnTRbS3W
	nAFYJFR07MGcjQZV3J/KCTJ1Yxxlb5FsNxpc7QbRwGr7c1go0ZPG9+vKRN0IObt+ftAP4tSRle6Df
	pMpwpATvLb+TWzgan4OnGzdDvjQ7x9p8EVDs3rPhlOm8/FoL/PbGhk42vqu5ofZPIh+cj9/EKrHox
	tArohvZMM4rXaBuPBSGx2jExGpHqd5rGt9+xruIoCHNidVw0LKYSvlhbbQ1oSCL+PxATZKojhcGw7
	O1TLRAR/K/5e2VcWm00t6wXACvnnidX1c8WZRuYxJ24rMTbXambhCeRjPvatXEFtN0NIefipbQr4J
	48/BVvlFQmsr6OCPXoMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbpX-0001En-Rb; Mon, 04 May 2020 14:12:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbpN-0001Cv-L7
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:12:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so9241109wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 07:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=cBYi8j74hWiNZr+qveo+/wt9+YdcPXbPEFJvXHtn9pk=;
 b=Vq2ie4yP/X47QYD6lxsDV5syeThtLJI2ewNwfJLRuRvqg9UoVTEgtYRgWLvaBdnVPa
 0wxiY2Klubhm0nN4CMoAjyALlAO50NfO102r/fy+H5GCSi63zznRgC0xu4L85wpV03xu
 DfhamtALWXxNYB9JgzXyAATJJmNT8UEf6XEH6k0T1kswbiEY71Yel0l1afn0RX60zeBH
 aqxDJDIPxXQSFKQhe8Dd/PnFMhfN2602ltmhdR00hWRbv/fHUel+9cX1FVpDN6rRaZVF
 s/UX7jAgy7BBd0Tzf4XpwroHU3tmThERIbg1xf8cdc1LjpguouxRX8TELXLyxcryX5LF
 R2oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cBYi8j74hWiNZr+qveo+/wt9+YdcPXbPEFJvXHtn9pk=;
 b=qng6d8S+AqsJBGdW4YiS7e2SBEhtViBNYRjtJlue3Vj/MKQOYderjSXEXMYwy07uDd
 gfILPTGuUVnwl0pOoJTnhmSjSPkpwgJFz6innyVDARQg4aqor7Ed81SN9BiTzf0oTheg
 01Tcwx4AuX9BLPrE1UzFPYDBPrQ/l9GIVgwrUe7+lfTp7N4l4idy8dtbcpCtRQN4LZRI
 y0EKhyqdcOXGeXCWV7ssFTjdO6BqjC46NNob3vSBRCYWlaSDOw/U+G03afg0MofRVp9w
 Ini5pILgC7GFEnMdoYT2fbc+vYNatmiG59OAXhaKPLO/zMFJDQMLPieYc7atwCco/fpw
 6HwQ==
X-Gm-Message-State: AGi0PuZRNvUgM6H1ycG7/ZoZNEyRef3XQ/lfI373FHAXqitYqlhgXWJj
 BXLVo9cod+Jv//8dsUvR3m6lSA==
X-Google-Smtp-Source: APiQypJGsU7OdMfQlFADSEeYP/iyop6F2RgiIW4sMbSjpQ+r/TAhN3MWxBAEOgHp3eUgHcwFPiU/5w==
X-Received: by 2002:a05:600c:290f:: with SMTP id
 i15mr14075509wmd.167.1588601531837; 
 Mon, 04 May 2020 07:12:11 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id r23sm13017379wra.74.2020.05.04.07.11.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 07:11:52 -0700 (PDT)
Date: Mon, 4 May 2020 16:11:37 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v6 11/25] iommu/arm-smmu-v3: Share process page tables
Message-ID: <20200504141137.GA170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-12-jean-philippe@linaro.org>
 <580a915f-f8bf-3b3e-c77d-6d0c2ea4bd02@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <580a915f-f8bf-3b3e-c77d-6d0c2ea4bd02@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_071213_881370_CF237619 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 fenghua.yu@intel.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 04:39:53PM +0100, Suzuki K Poulose wrote:
> On 04/30/2020 03:34 PM, Jean-Philippe Brucker wrote:
> > With Shared Virtual Addressing (SVA), we need to mirror CPU TTBR, TCR,
> > MAIR and ASIDs in SMMU contexts. Each SMMU has a single ASID space split
> > into two sets, shared and private. Shared ASIDs correspond to those
> > obtained from the arch ASID allocator, and private ASIDs are used for
> > "classic" map/unmap DMA.
> > 
> > Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> 
> > +
> > +	tcr = FIELD_PREP(CTXDESC_CD_0_TCR_T0SZ, 64ULL - VA_BITS) |
> > +	      FIELD_PREP(CTXDESC_CD_0_TCR_IRGN0, ARM_LPAE_TCR_RGN_WBWA) |
> > +	      FIELD_PREP(CTXDESC_CD_0_TCR_ORGN0, ARM_LPAE_TCR_RGN_WBWA) |
> > +	      FIELD_PREP(CTXDESC_CD_0_TCR_SH0, ARM_LPAE_TCR_SH_IS) |
> > +	      CTXDESC_CD_0_TCR_EPD1 | CTXDESC_CD_0_AA64;
> > +
> > +	switch (PAGE_SIZE) {
> > +	case SZ_4K:
> > +		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_4K);
> > +		break;
> > +	case SZ_16K:
> > +		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_16K);
> > +		break;
> > +	case SZ_64K:
> > +		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_64K);
> > +		break;
> > +	default:
> > +		WARN_ON(1);
> > +		ret = -EINVAL;
> > +		goto err_free_asid;
> > +	}
> > +
> > +	reg = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
> > +	par = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_PARANGE_SHIFT);
> > +	tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_IPS, par);
> > +
> > +	cd->ttbr = virt_to_phys(mm->pgd);
> 
> Does the TTBR follow the same layout as TTBR_ELx for 52bit IPA ? i.e,
> TTBR[5:2] = BADDR[51:48] ? Are you covered for that ?

Good point, I don't remember checking this. The SMMU TTBR doesn't have the
same layout as the CPU's, and we don't need to swizzle the bits. For the
lower bits, the alignment requirements on the pgd are identical to the
MMU.

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
