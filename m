Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9B2124CE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:13:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpLaQZ4BRYAQqtixdgZz4W/4USA4is3PaaWrz10slCI=; b=Poj5F7e8QEVOy4
	CNtEwQkXaKxoUERMXl7Y7Nxlg9u2bgzx69YMbn7769au76orBkfWxgfd3av56+2AVDrQwzJeyIoE+
	fB9K9+PfxugJk2uSOin+o74I5F2KvUAxodu6FkgcttVGaoYJEpKmcvvfA5XEB0V9NebJfCMkIVE9N
	4tBdkwCi6wdllHihWfrfTTLA3X/Nz4QeeMru0Fc5C6xzDvQ3Pvkcd6ZxIy6CAu7Mp4RWT0fOWWm5M
	X0bgAIA8DoKpjREHcIxC2eEXTcnm2mTjNvKN9Zr+cWVim8xMFO58J77M+jRv2jLLH6Vny3cMmoGxJ
	T2fZOygjMm3oW869D2ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbxF-0002Lm-TS; Wed, 18 Dec 2019 16:13:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbx6-0002L4-4e
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:13:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id d16so2890582wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 08:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PXvdq6qWFeAmRkgUP6ivkMlcnTIDIWAWnzZnITD9gIQ=;
 b=TO3udsaM0wHSFHtqq3lx9Vpw/cuxpABpx0ZL6fQor8a23g56txPXE2jNc4FuScZ3Fi
 LXZKSp/98TUo9nRfA1Ld8V1forbku0Bk8tJ7SeCtxPlk3DYZ/BK9L2TwV3xh0U+J3QHt
 JSei+y68UXeLCYVSEiEOrmRm+hf9jKrLSy3waZ06SVfY3S32E4pocftRNi7yO6SsbTOE
 unPpzZIPwL0bn7imVjhmGKGqJ7kxahOEYFOwX2CzXvusbd5u0aHn0r4+JtE8EWQKZb4G
 tXYPPjKJCaNiGfLjAylBAAaSiaK44cjKb9WiZ+3GgVPYjq+oQZQM5pfgoyCaaxXTBT4G
 e4hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PXvdq6qWFeAmRkgUP6ivkMlcnTIDIWAWnzZnITD9gIQ=;
 b=hjxtqStM1dW1rTOKOE9kfspAbRIfAJkzlyw1zWgJWqMHdR4FaBaVhsGltduwo01fSb
 nLFbzDeAvc5idQWuM7l60gH1baB4wKvxbj4AN5Aof+LrgfCwhplaEFNjwRLo7T0QakPm
 eltsW4/LQ4dUK19/Ux0LjM7i5KGoDKKghIo0M36iqcaHpuig512E0+83s+J1ie+AkQ+3
 F/WfTe14gytLKZb/bN/SfwRZwH4ZE85zMUsRZJKxOQH4QuYu4i6z15AhtcioCOaUcLCv
 LidS+PgeeWTjohjn9hGO8RZRl6n5d2oXlCYB1nTRZaMvdUQcW1wb6gQW4wsk3SQjh54L
 DHaA==
X-Gm-Message-State: APjAAAVDOQx+RKwOTmPfkNHGdrdXq/+gzLDRRZo/LPd8Z0sjrkNo7PxM
 FDxrJSmABm8uYrd207RiFndcAA==
X-Google-Smtp-Source: APXvYqz3/O6xngUMvfQZDBfpU617F1qkmNRS56a4TzmWh1A2QPAdGPRnlUyBsXlERsvvTcYDCOXcBA==
X-Received: by 2002:adf:f244:: with SMTP id b4mr3692481wrp.88.1576685610515;
 Wed, 18 Dec 2019 08:13:30 -0800 (PST)
Received: from myrica (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id b17sm3034639wrp.49.2019.12.18.08.13.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 08:13:29 -0800 (PST)
Date: Wed, 18 Dec 2019 17:13:23 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v3 13/13] iommu/arm-smmu-v3: Add support for PCI PASID
Message-ID: <20191218161323.GI2371701@myrica>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-14-jean-philippe@linaro.org>
 <551ce08c-4160-72c9-05b5-97799f6e5d25@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <551ce08c-4160-72c9-05b5-97799f6e5d25@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_081332_191745_A2EFE651 
X-CRM114-Status: GOOD (  13.46  )
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

On Wed, Dec 18, 2019 at 11:17:55AM +0100, Auger Eric wrote:
> > +static int arm_smmu_enable_pasid(struct arm_smmu_master *master)
> > +{
> > +	int ret;
> > +	int features;
> > +	int num_pasids;
> > +	struct pci_dev *pdev;
> > +
> > +	if (!dev_is_pci(master->dev))
> > +		return -ENODEV;
> > +
> > +	pdev = to_pci_dev(master->dev);
> > +
> > +	features = pci_pasid_features(pdev);
> > +	if (features < 0)
> > +		return -ENODEV;
> why -ENODEV?

Right that should return features. The below should return num_pasids.

> > +
> > +	num_pasids = pci_max_pasids(pdev);
> > +	if (num_pasids <= 0)
> > +		return -ENODEV;
> > +
> > +	ret = pci_enable_pasid(pdev, features);
> > +	if (!ret)
> > +		master->ssid_bits = min_t(u8, ilog2(num_pasids),
> > +					  master->smmu->ssid_bits);
> so here we are ;-)
> > +	return ret;
> > +}
> > +
> > +static void arm_smmu_disable_pasid(struct arm_smmu_master *master)
> > +{
> > +	struct pci_dev *pdev;
> > +
> > +	if (!dev_is_pci(master->dev))
> > +		return;
> > +
> > +	pdev = to_pci_dev(master->dev);
> > +
> > +	if (!pdev->pasid_enabled)
> > +		return;
> > +
> > +	master->ssid_bits = 0;
> > +	pci_disable_pasid(pdev);
> > +}
> > +
> >  static void arm_smmu_detach_dev(struct arm_smmu_master *master)
> >  {
> >  	unsigned long flags;
> > @@ -2851,13 +2894,16 @@ static int arm_smmu_add_device(struct device *dev)
> >  
> >  	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
> >  
> > +	/* Note that PASID must be enabled before, and disabled after ATS */
> > +	arm_smmu_enable_pasid(master);
> No error handling?

The device still works if PASID isn't supported or cannot be enabled, it
just won't have some capabilities (IOMMU_DEV_FEAT_AUX and
IOMMU_DEV_FEAT_SVA), so I don't think add_device should return an error.

But it's a good point, I think at least printing an error like
arm_smmu_enable_ats() does would be better.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
