Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627DB13BA92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 08:58:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlQ701+Qr5x6/vmQEIlYIrWIx5jxxdoOHSkeRfqv10c=; b=K65gVzdKYiCHh7
	cX0/d94oU+gqBZvsCOr45/lixsHYf59/sALotYLbPKohfwvZG3fVpLEaVO9A9Tfkvgbd+JWYamnhH
	y0Jm31KnWr72cdcagdfBo++tlEC1uTbh4+Qg8v+lnxznKqhYoy+d00IJH6qM6yy7I7YUIXcazQqCg
	UIds/iVIDlNqDcZj98A8p6D/y2zMHbd52qY7yNN89sD+FSosS/pF5gbXQrK3Vl4OO6Nxq09QPZV+X
	MwbHL2RBcDRfhHy4k2FWmo1+XoqmvIm+DOarKFHJcfxsFmF2D3sm+ZPWh/PGapQ6M6eeIBPkVVEg4
	jg1sKMP3vdsDQi4/ADKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdYy-0007PI-Af; Wed, 15 Jan 2020 07:58:04 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdYn-0007OX-Ch
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 07:57:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id m24so16702706wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 23:57:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6Ia3VncVrF7c3ZybtE0PPF5JK9Ck+5/tRhdE7y0iz1s=;
 b=i8ACrPmCSBs+LYW5GnsySs7+9Wv84u6t9RSSW45kj5ZeFcp32dD8ehSZC7Xt1/5Bqg
 h1DjGveoSyal45wtXHcZT12ieGr2xy/e8wo3G3CDUp4cnmrVk2dBMBHelGHp79Fony6U
 PzxYeHpAPCO7OJlHOgT9kJnoaQxA/TYufvx/R4aFz+DWsO6XAAmRO/6BrT+Ih8WgpQdu
 c6ekNSgZ6GiY2J08rJXJvTGQ1oEZ9kxZNs4IRe/nMDFb9UnQ9GcYUYMB+eaE+qqao7xg
 33CsbG7zAeSpBNRqs3YmXjFWPmjtHKVWEZJY7FefO2sA/OEizZXaufWIgyH59yrGNt8Q
 Yk/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6Ia3VncVrF7c3ZybtE0PPF5JK9Ck+5/tRhdE7y0iz1s=;
 b=alZdgJOPRIh1elwDTXgqh2m6HVjjFyqXHFAFKZMyJ/4ts36uFMcIGIjbgV7ckheGBW
 gMBjQCZFlAym5ziAOmEr6ULAlFfGoO0e2a/DX+dymlNqLE40DEnrr2VNhcS2qsjgHaQP
 Sus+MNuZGwbhgvqlSPVzekrGva8qF0tsw0ovwNGXkVehByiDgPFQMksLagLidsJ+wFKx
 Dt1eYt+NX5MspoAzRL6umQBBXFFRb612cPX9A3ER3oCbVda8jXB+97OQ6IXvsNqwnlYz
 m7IsrYGPI4AGG/mzVKGnvbOga6lhACHaPGEwN2pqXtG7refZnTjZTEZo1lmd4kQzL8PV
 UUmQ==
X-Gm-Message-State: APjAAAUPqwgvKy62ttz4OFrUrvz6uT/Ad733f5OmMFEkForfQMusgqj0
 U000+geLEsq1EmOVsKafKMBeUw==
X-Google-Smtp-Source: APXvYqyNEYvahUX2hjnKrrpMAXYUfqqL20FGP88ce7WRH3XP7tUR3FPmbPiIfTuZpy5b/JjF1w/zZg==
X-Received: by 2002:a7b:cd07:: with SMTP id f7mr30916595wmj.37.1579075071790; 
 Tue, 14 Jan 2020 23:57:51 -0800 (PST)
Received: from myrica ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id h2sm23782648wrv.66.2020.01.14.23.57.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 23:57:51 -0800 (PST)
Date: Wed, 15 Jan 2020 08:57:46 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 13/13] iommu/arm-smmu-v3: Add support for PCI PASID
Message-ID: <20200115075746.GA32782@myrica>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-14-jean-philippe@linaro.org>
 <20200114124541.GE29222@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114124541.GE29222@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_235753_442015_EA291959 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Tue, Jan 14, 2020 at 12:45:42PM +0000, Will Deacon wrote:
> On Thu, Dec 19, 2019 at 05:30:33PM +0100, Jean-Philippe Brucker wrote:
> > Enable PASID for PCI devices that support it. Since the SSID tables are
> > allocated by arm_smmu_attach_dev(), PASID has to be enabled early enough.
> > arm_smmu_dev_feature_enable() would be too late, since by that time the
> 
> What is arm_smmu_dev_feature_enable()?

It's the implementation of the IOMMU op .dev_enable_feat(), which I'll add
later (called by a device driver to enable the SVA feature). I'll reword
this comment, since the only real requirement is enabling PASID before
ATS.

> >  static void arm_smmu_detach_dev(struct arm_smmu_master *master)
> >  {
> >  	unsigned long flags;
> > @@ -2852,13 +2899,16 @@ static int arm_smmu_add_device(struct device *dev)
> >  
> >  	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
> >  
> > +	/* Note that PASID must be enabled before, and disabled after ATS */
> > +	arm_smmu_enable_pasid(master);
> 
> Is that part of the PCIe specs? If so, please can you add a citation to the
> comment?

Yes (PCIe 4.0r1.0 10.5.1.3 ATS Control register).

> Are there any other ordering requirements, i.e. with respect to enabling
> substreams at the SMMU? For example, can a speculative ATS request provide
> a PASID?

You recent fix bfff88ec1afe ("iommu/arm-smmu-v3: Rework enabling/disabling
of ATS for PCI masters") should prevent from speculative ATS requests.
More generally both ATS and SSID are enabled and disabled at the same time
in the SMMU, when toggling STE.V, so any request arriving before STE
enablement will be aborted regardless of SSID.

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
