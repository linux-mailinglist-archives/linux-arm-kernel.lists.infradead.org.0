Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5839B7D8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nU7+fYrxUp+FBKu+1gwlMOYFhMt4GRX6JblrMunVsZs=; b=LNnzGGE9E4jPQF
	dwAsBw5KL4WoiF2XSCRdwSmUSNT9ZcWqBPgXERv7Ds/CAYM3NfDWPFaYIx3yWKnSjE0J0t0t2y6Vd
	UihnWbt6BvHPeBpTmBdL+v4ftJJRFs9cChUBMCGnluFn1dO8HUDx4oSWwZF7F+j0lvTx12II44aUf
	BjtnlBbBW6pYwWlSkJZy23vtSXDkwU/jEyhDz3ZYqMMOhyMz0omVoW8PkAuDy+etYEIevNRtZ3i9a
	JmIuAsIgQk3poilCNj08no/FgXkxmJPLQw2XAAGg6n1NkjT7g7nPQR2iO4/43ltM3ivE+QD6ijwMQ
	hxQ2uYQ26UTcjPGcEYQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAy1h-0005AM-AC; Thu, 19 Sep 2019 15:07:21 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAy0z-0004tH-Mz
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:06:39 +0000
Received: by mail-ed1-x541.google.com with SMTP id a23so3525939edv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 08:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oUQUKfGGLyoufGiv0FoEyuW3RCfv5lyXYP4LRA9yUnI=;
 b=sm1kYe9P5pTViCKFjNk/d6ebqMWyJNooZxf91TSUePYb/5i7/VaEYPsMPIc2wfZVi8
 P/ooqN0dZaXdOGopagPyYfk47lN5uurdLwK5TuwLmyhYW1FITstvFCYOZDjE+2XBbEGs
 DVxBofb6ZPhP/lrm+qE4xpNtlFMAcMZAd1Ca6mP8mwuQVxEQi5Rsqjk+fTKinMoccU00
 yhhDKLGlRrtw55fnv6F+DBvplwGlSB8NUvnA7oH0UD9rik/SsDa/qisHAdtFxMcNHJ5E
 poqcqtsjOyIKhSbiF+IAS/z0wbnfXeBUqDE1jU6R7i186QYsRgMIkQLl1pqPo1r1IhhB
 MT4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oUQUKfGGLyoufGiv0FoEyuW3RCfv5lyXYP4LRA9yUnI=;
 b=kiciElU3TouYS+NLp+ftxZ0wyOliW5b/fITBIGNgyI2Xhmqp6L5WcvpPRvC4Zo5kf+
 DRAU8XI/YJX0kK3uE12ch3mK8LGEymgDkUyHCCrq1MWPh5G4a12LicnCGyzrKPx2ixIc
 0Oewlh0wjHEBbGEkThFTttViqNbl2r5beTe7zJD7Bu7vyIIpmGhqI+tpN3YvQKFtt/of
 n8YfvYxI3kAkLlAkz+Fgg7yk70/cCz03+OuIPqm6DDEMxy7kp8X1d3STIPZmouhXBLwe
 zjr5BqCjEnz6ZV2YcG7qRMPyMH+VFCT7FBVeYrumJ/zmM1YuuAVJCCyZL+z+HOQR+93H
 gZIg==
X-Gm-Message-State: APjAAAWwdBcV1MQK7kx43BMrkGaKwrbRUf/8OBTSMjDzALkpIwcBQBfg
 b0oulFJso41q8ZcJo26ZNorl+g==
X-Google-Smtp-Source: APXvYqyS7bkpasvboOin36PhpvvHG70FNN59FYjP0q8duVqRlwWW9FcPkvkPkK/8rnvVy/QAXxBLOw==
X-Received: by 2002:aa7:d295:: with SMTP id w21mr9488517edq.302.1568905596363; 
 Thu, 19 Sep 2019 08:06:36 -0700 (PDT)
Received: from lophozonia ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id a19sm1374424edy.37.2019.09.19.08.06.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 08:06:35 -0700 (PDT)
Date: Thu, 19 Sep 2019 17:06:34 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 6/8] iommu/arm-smmu-v3: Support auxiliary domains
Message-ID: <20190919150634.GE1013538@lophozonia>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-7-jean-philippe.brucker@arm.com>
 <20190626175959.ubxvb2qn4taclact@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626175959.ubxvb2qn4taclact@willie-the-truck>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_080637_785299_C18355D7 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
 jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, joro@8bytes.org,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 06:59:59PM +0100, Will Deacon wrote:
> > @@ -666,8 +668,14 @@ struct arm_smmu_domain {
> >  
> >  	struct iommu_domain		domain;
> >  
> > +	/* Unused in aux domains */
> >  	struct list_head		devices;
> >  	spinlock_t			devices_lock;
> > +
> > +	/* Auxiliary domain stuff */
> > +	struct arm_smmu_domain		*parent;
> > +	ioasid_t			ssid;
> > +	unsigned long			aux_nr_devs;
> 
> Maybe use a union to avoid comments about what is used/unused?

OK

> > +static void arm_smmu_aux_detach_dev(struct iommu_domain *domain, struct device *dev)
> > +{
> > +	struct iommu_domain *parent_domain;
> > +	struct arm_smmu_domain *parent_smmu_domain;
> > +	struct arm_smmu_master *master = dev_to_master(dev);
> > +	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
> > +
> > +	if (!arm_smmu_dev_feature_enabled(dev, IOMMU_DEV_FEAT_AUX))
> > +		return;
> > +
> > +	parent_domain = iommu_get_domain_for_dev(dev);
> > +	if (!parent_domain)
> > +		return;
> > +	parent_smmu_domain = to_smmu_domain(parent_domain);
> > +
> > +	mutex_lock(&smmu_domain->init_mutex);
> > +	if (!smmu_domain->aux_nr_devs)
> > +		goto out_unlock;
> > +
> > +	if (!--smmu_domain->aux_nr_devs) {
> > +		arm_smmu_write_ctx_desc(parent_smmu_domain, smmu_domain->ssid,
> > +					NULL);
> > +		/*
> > +		 * TLB doesn't need invalidation since accesses from the device
> > +		 * can't use this domain's ASID once the CD is clear.
> > +		 *
> > +		 * Sadly that doesn't apply to ATCs, which are PASID tagged.
> > +		 * Invalidate all other devices as well, because even though
> > +		 * they weren't 'officially' attached to the auxiliary domain,
> > +		 * they could have formed ATC entries.
> > +		 */
> > +		arm_smmu_atc_inv_domain(smmu_domain, 0, 0);
> 
> I've been struggling to understand the locking here, since both
> arm_smmu_write_ctx_desc and arm_smmu_atc_inv_domain take and release the
> devices_lock for the domain. Is there not a problem with devices coming and
> going in-between the two calls?

Yes, I need to think about this more. I bet there are plenty more issues
like this. For example I don't think I currently prevent the parent
domain from disappearing while auxiliary domains are attached.

> >  static struct iommu_ops arm_smmu_ops = {
> >  	.capable		= arm_smmu_capable,
> >  	.domain_alloc		= arm_smmu_domain_alloc,
> > @@ -2539,6 +2772,13 @@ static struct iommu_ops arm_smmu_ops = {
> >  	.of_xlate		= arm_smmu_of_xlate,
> >  	.get_resv_regions	= arm_smmu_get_resv_regions,
> >  	.put_resv_regions	= arm_smmu_put_resv_regions,
> > +	.dev_has_feat		= arm_smmu_dev_has_feature,
> > +	.dev_feat_enabled	= arm_smmu_dev_feature_enabled,
> > +	.dev_enable_feat	= arm_smmu_dev_enable_feature,
> > +	.dev_disable_feat	= arm_smmu_dev_disable_feature,
> 
> Why can't we use the existing ->capable and ->dev_{get,set}_attr callbacks
> for this?

->capable isn't very useful because it applies to all SMMUs in the
system. The existing ->{get,set}_attr callbacks apply to an
iommu_domain. I think the main reason for doing it on endpoints was that
it would be tedious to keep track of capabilities when attaching and
detaching devices to a domain, especially for drivers that allow
multiple IOMMUs per domain [1]. There were more discussions, and in the
end we agreed on this API for device attributes [2].

Thanks,
Jean

[1] https://lore.kernel.org/lkml/aa1ff748-c2ec-acc0-f1d9-cdff2b131e58@linux.intel.com/
[2] https://lore.kernel.org/linux-iommu/20181207102926.GM16835@8bytes.org/


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
