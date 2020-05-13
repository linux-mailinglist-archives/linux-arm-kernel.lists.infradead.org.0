Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71271D0EEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVhatwuSy43qaJaA09dUAA/oxKYNCWTBuk/ggh06EIg=; b=ifhR+MGYD37iV8
	/j6LGaut0iCrT6gRTXT78t5pLCslFEVxIVrmF+YXdZO/bQhNBSh1VzBnZBy3YCeVIW90bxaNXQlYy
	xHWgpAhzHmCy2vhCO1n/zrMMsyXLS4CGpjRY4NnZGITBFjJbwXUcHpm96p9t8/XzC94OH3+r3uqHK
	ioHCO+paB/EkXO44HUUPJJuVig1UuTAT+0YmxTNZHE4F+f/Y39pVIR1go1j+7Pom73SRRT236EIX7
	PxqyluH1zBp3cGaYdTT6whseKi2lVrv4awmExG0jZdC2Pyl8hSfkKz66D4Q4glANkUINbAkKQ+frR
	ApB0tuUrqLDrkWvE6N5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYoEP-0002Yl-1T; Wed, 13 May 2020 10:03:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoE5-0002OT-Qx
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:02:59 +0000
Received: by mail-wm1-x343.google.com with SMTP id z72so18171859wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=m6npkSNSQsVCsMpMcC0lz1k4am3Pd5ep45Q5fu5Nptw=;
 b=AYJ8yd5N0EziUK34rRkqe3n2lzmslSv1/nfE+XR/DtpZRU8XpoyvW6pEuqqCirYFXb
 xFrebzvk8h2134/CD/HNPAsQm/b3oyUuY0GNWe1f/cdi/20gIXMGsrFdgNX6btOisC3A
 dgKrBY2KJ98UVkFdaZ7BJ6fCeTucEcTgqy3yd4bcPJ0BV4/x/RNswH2aeF1MqZ/n2NUE
 qOxnglQUTifg9rR+5NA0neYYjlmf39IbTS9Ot+hHbm9APZaxzB1GkokWz0/OTyx95RwW
 TBg22xIDAEOO8pobXPQX9Vm+1PhjpnT9XwhKAOnlYYWAuUfT/JcfZ5Fv568FuLSQVSzs
 qEbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=m6npkSNSQsVCsMpMcC0lz1k4am3Pd5ep45Q5fu5Nptw=;
 b=NxIvq4aPjA2hnrHZnN612oj8IP4oOa4qlir7GDYKYvVDp33tAgCp9BfMwEnJKchXtn
 xcA+Te/S03pZwwBsTeojVh9W8H3RVlXiw0O6d/aaefAKdiQAUZKk+rfIkqEstT45UG7G
 d8GCO+zFlPLlYuDxQNYHup6mVbWqHXtRjkAm4kAkRfzKfsYpONY7wHN7jGFrupS5GIpm
 LpX1XtAr7xYAI8/pPp5ysFBFQ2FRTQ60E4TKKwqZaOPnDh8lGvpjzrlyGBWS1X6mZBXm
 mEofGhAOAGMYiRqH6H0Gb3LZ5jKIH/1czDpPRcfQCV+pXLs8xdy5D4GqJZnMSr68QEDa
 lm0A==
X-Gm-Message-State: AGi0PuYPI8N3/dm3vVqy/R+IRsIvqKgH/a70pcIlxqq5Oo61jw7QTbIP
 RufTJMi8gcTIyP3aglbV25yd9w==
X-Google-Smtp-Source: APiQypJ0rQ7lzqYNr+yDzxDGOcMWgdTnjGTWl7ny9DhlK1VnGjq47izadjU9R0DB/xGz2lI8/ESxVA==
X-Received: by 2002:a1c:f211:: with SMTP id s17mr45903196wmc.168.1589364175644; 
 Wed, 13 May 2020 03:02:55 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id b2sm24029735wrm.30.2020.05.13.03.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 03:02:55 -0700 (PDT)
Date: Wed, 13 May 2020 12:02:45 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/arm-smmu-v3: Don't reserve implementation defined
 register space
Message-ID: <20200513100245.GA214296@myrica>
References: <20200506174629.1504153-1-jean-philippe@linaro.org>
 <2c5b52c0-8be0-9c22-ed27-3a2acd2b570c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2c5b52c0-8be0-9c22-ed27-3a2acd2b570c@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_030257_939936_7C8DC04F 
X-CRM114-Status: GOOD (  27.02  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: iommu@lists.linux-foundation.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, tuanphan@amperemail.onmicrosoft.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 08:03:05PM +0100, Robin Murphy wrote:
> On 2020-05-06 6:46 pm, Jean-Philippe Brucker wrote:
> > Some SMMUv3 implementation embed the Perf Monitor Group Registers (PMCG)
> > inside the first 64kB region of the SMMU. Since PMCG are managed by a
> > separate driver, this layout causes resource reservation conflicts
> > during boot.
> > 
> > To avoid this conflict, only reserve the MMIO region we actually use:
> > the first 0xe0 bytes of page 0 and the first 0xd0 bytes of page 1.
> > Although devm_ioremap() still works on full pages under the hood, this
> > way we benefit from resource conflict checks.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> > A nicer (and hopefully working) solution to the problem dicussed here:
> > https://lore.kernel.org/linux-iommu/20200421155745.19815-1-jean-philippe@linaro.org/
> > ---
> >   drivers/iommu/arm-smmu-v3.c | 50 +++++++++++++++++++++++++++++++++----
> >   1 file changed, 45 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > index 82508730feb7a1..fc85cdd5b62cca 100644
> > --- a/drivers/iommu/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm-smmu-v3.c
> > @@ -171,6 +171,9 @@
> >   #define ARM_SMMU_PRIQ_IRQ_CFG1		0xd8
> >   #define ARM_SMMU_PRIQ_IRQ_CFG2		0xdc
> > +#define ARM_SMMU_PAGE0_REG_SZ		0xe0
> > +#define ARM_SMMU_PAGE1_REG_SZ		0xd0
> 
> I wonder if we shouldn't still claim all the way up to 0xdff for good
> measure, since the IMP-DEF areas only start appearing beyond that.

Works for me, the 0xe0 limit was arbitrary. I'll set both reg sizes to
0xe00.

> > +
> >   /* Common MSI config fields */
> >   #define MSI_CFG0_ADDR_MASK		GENMASK_ULL(51, 2)
> >   #define MSI_CFG2_SH			GENMASK(5, 4)
> > @@ -628,6 +631,7 @@ struct arm_smmu_strtab_cfg {
> >   struct arm_smmu_device {
> >   	struct device			*dev;
> >   	void __iomem			*base;
> > +	void __iomem			*page1;
> >   #define ARM_SMMU_FEAT_2_LVL_STRTAB	(1 << 0)
> >   #define ARM_SMMU_FEAT_2_LVL_CDTAB	(1 << 1)
> > @@ -733,11 +737,14 @@ static struct arm_smmu_option_prop arm_smmu_options[] = {
> >   static inline void __iomem *arm_smmu_page1_fixup(unsigned long offset,
> >   						 struct arm_smmu_device *smmu)
> >   {
> > -	if ((offset > SZ_64K) &&
> > -	    (smmu->options & ARM_SMMU_OPT_PAGE0_REGS_ONLY))
> > -		offset -= SZ_64K;
> > +	void __iomem *base = smmu->base;
> > -	return smmu->base + offset;
> > +	if (offset > SZ_64K) {
> > +		offset -= SZ_64K;
> > +		if (smmu->page1)
> > +			base = smmu->page1;
> > +	}
> > +	return base + offset;
> >   }
> 
> Why not just assign page1 = base in the Cavium case and let this simply be:
> 
> 	if (offset > SZ_64K)
> 		return smmu->page1 + offset - SZ_64K;
> 	return smmu->base + offset;
> 
> Then it's only one step further to get rid of the fixup and use page1
> directly where relevant, but that could be a cleanup on top, since we
> probably want a minimal change here for the sake of backporting (I believe
> this deserves to go to stable, now that MMU-600 hardware is reaching the
> field and will go wonky otherwise).

Yes looks much better. As it is the SMMUv3 driver isn't really wrong, but
I'll still add a Fixes: tag to ease backporting.

> 
> >   static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
> > @@ -4021,6 +4028,28 @@ err_reset_pci_ops: __maybe_unused;
> >   	return err;
> >   }
> > +static void __iomem *arm_smmu_ioremap(struct device *dev,
> > +				      resource_size_t start,
> > +				      resource_size_t size)
> > +{
> > +	void __iomem *dest_ptr;
> > +	struct resource *res;
> > +
> > +	res = devm_request_mem_region(dev, start, size, dev_name(dev));
> > +	if (!res) {
> > +		dev_err(dev, "can't request SMMU region %pa\n", &start);
> > +		return IOMEM_ERR_PTR(-EINVAL);
> > +	}
> > +
> > +	dest_ptr = devm_ioremap(dev, start, size);
> > +	if (!dest_ptr) {
> > +		dev_err(dev, "ioremap failed for SMMU region %pR\n", res);
> > +		devm_release_mem_region(dev, start, size);
> > +		dest_ptr = IOMEM_ERR_PTR(-ENOMEM);
> > +	}
> > +	return dest_ptr;
> > +}
> 
> Would it be any less complicated to stick with devm_ioremap_resource() and
> fix up the resource itself for each call, rather than open-coding it?

Much better as well.

> > +
> >   static int arm_smmu_device_probe(struct platform_device *pdev)
> >   {
> >   	int irq, ret;
> > @@ -4056,10 +4085,21 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
> >   	}
> >   	ioaddr = res->start;
> > -	smmu->base = devm_ioremap_resource(dev, res);
> > +	/*
> > +	 * Only map what we need, because the IMPLEMENTATION DEFINED registers
> > +	 * may be used for the PMCGs, which are reserved by the PMU driver.
> > +	 */
> > +	smmu->base = arm_smmu_ioremap(dev, ioaddr, ARM_SMMU_PAGE0_REG_SZ);
> >   	if (IS_ERR(smmu->base))
> >   		return PTR_ERR(smmu->base);
> > +	if (arm_smmu_resource_size(smmu) > SZ_64K) {
> > +		smmu->page1 = arm_smmu_ioremap(dev, ioaddr + SZ_64K,
> > +					       ARM_SMMU_PAGE1_REG_SZ);
> > +		if (IS_ERR(smmu->page1))
> > +			return PTR_ERR(smmu->page1);
> > +	}
> 
> As above,
> 
> 	} else {
> 		smmu->page1 = smmu->base;
> 	}
> 
> Either way, those are just cleanliness nitpicks; I've no real objection to
> the patch in its current state. Getting MMU-600 systems un-broken at all is
> more important, there will always be time for cleanup :)

Thanks for the review, I'll test and resend.

Thanks,
Jean

> 
> Robin.
> 
> > +
> >   	/* Interrupt lines */
> >   	irq = platform_get_irq_byname_optional(pdev, "combined");
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
