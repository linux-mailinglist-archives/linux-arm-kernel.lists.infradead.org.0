Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D505213C903
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:17:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8u9umkFFzeUZrafdAhaKO2V/UJQ1LiLU88N6xYm6Vg=; b=rOUTAhIiS44mpH
	ZoyyUGwZF2oFTFd3DzB7IBPZVw6VtXdULL4zvT+8FUYdFsHH2NFb41CSo6xI3DxGWW6Y/7FqIOE+q
	GdRYl+aLAsJ0kilRqux0PElveGEqD5VRxZ7RcDT7YQTd84tQyvEPZYyjbLDo8XS0uD3kTE62+rgHG
	ygkIeQEB4bS/cy/pUEPdc5CX08fYJk8mGzUWk+fhL9ahligycmy+jz4/7Ibspx75wef4uFcgPfKd3
	zailA47Lf4WD6NpoSiB+92mZUgCvbbI8CBrNZR/E0Q+dnt9hP4vfIUYm3f7jMTUAXUbXgnLK86FNh
	iBmDuO7bC/tKdCZH5gcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlMJ-0008Ve-SI; Wed, 15 Jan 2020 16:17:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlMA-0008Us-0V
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:17:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 617A6222C3;
 Wed, 15 Jan 2020 16:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579105041;
 bh=ukrQNfklcHgQLcXCXuNtN53CWWqys1txNDvrg263c4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nyuW482lUGZB2PULa3IQt7cUjuRCEQEVx2g3VQ4GXNPaKyQojamqURrbldP4Ev0Wh
 SPzO+PCTcua153EUkXezNqb0c41e+W10ZK+DHfcoFD2dUxDSwI3nk111kPYmcMzWYU
 lJM9yUOkJu2WkDpF+kKpoe0IhAp1tOWD3ho1Y08Y=
Date: Wed, 15 Jan 2020 16:17:15 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>, robin.murphy@arm.com
Subject: Re: [PATCH v4 11/13] iommu/arm-smmu-v3: Improve add_device() error
 handling
Message-ID: <20200115161714.GA30746@willie-the-truck>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-12-jean-philippe@linaro.org>
 <20200114152538.GB2579@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114152538.GB2579@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_081722_091670_618A9A54 
X-CRM114-Status: GOOD (  26.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, guohanjun@huawei.com,
 lorenzo.pieralisi@arm.com, linux-acpi@vger.kernel.org,
 linux-pci@vger.kernel.org, joro@8bytes.org, jonathan.cameron@huawei.com,
 rjw@rjwysocki.net, eric.auger@redhat.com, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, sudeep.holla@arm.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 03:25:39PM +0000, Will Deacon wrote:
> On Thu, Dec 19, 2019 at 05:30:31PM +0100, Jean-Philippe Brucker wrote:
> > Let add_device() clean up after itself. The iommu_bus_init() function
> > does call remove_device() on error, but other sites (e.g. of_iommu) do
> > not.
> > 
> > Don't free level-2 stream tables because we'd have to track if we
> > allocated each of them or if they are used by other endpoints. It's not
> > worth the hassle since they are managed resources.
> > 
> > Reviewed-by: Eric Auger <eric.auger@redhat.com>
> > Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> >  drivers/iommu/arm-smmu-v3.c | 28 +++++++++++++++++++++-------
> >  1 file changed, 21 insertions(+), 7 deletions(-)
> 
> I think this is alright, with one caveat relating to:
> 
> 
> 	/*
> 	 * We _can_ actually withstand dodgy bus code re-calling add_device()
> 	 * without an intervening remove_device()/of_xlate() sequence, but
> 	 * we're not going to do so quietly...
> 	 */
> 	if (WARN_ON_ONCE(fwspec->iommu_priv)) {
> 		master = fwspec->iommu_priv;
> 		smmu = master->smmu;
> 	} ...
> 
> 
> which may be on shakey ground if the subsequent add_device() call can fail
> and free stuff that the first one allocated. At least, I don't know what
> we're trying to support with this, so it's hard to tell whether or not it
> still works as intended after your change.
> 
> How is this supposed to work? I don't recall ever seeing that WARN fire,
> so can we just remove this and bail instead? Robin?
> 
> Something like below before your changes...

FWIW, I've written this as a patch locally, since I'd like to apply it
on top of v5 of your series.

Will

--->8

From 6029102f406d4db5e7a465da5fd2e08a5b12c532 Mon Sep 17 00:00:00 2001
From: Will Deacon <will@kernel.org>
Date: Wed, 15 Jan 2020 15:35:16 +0000
Subject: [PATCH] iommu/arm-smmu-v3: Return -EBUSY when trying to re-add a
 device

Although we WARN in arm_smmu_add_device() if the device being added has
been added already without a subsequent call to arm_smmu_remove_device(),
we still continue half-heartedly, initialising the stream-table for any
new StreamIDs that may have magically appeared and re-establishing device
links that should still be there from last time.

Given that calling ->add_device() twice without removing the device in the
meantime is indicative of an error in the caller, just return -EBUSY after
warning.

Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Jean Philippe-Brucker <jean-philippe@linaro.org>
Signed-off-by: Will Deacon <will@kernel.org>
---
 drivers/iommu/arm-smmu-v3.c | 37 ++++++++++++++++---------------------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index efa326601308..cc26e1323da3 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2841,28 +2841,23 @@ static int arm_smmu_add_device(struct device *dev)
 
 	if (!fwspec || fwspec->ops != &arm_smmu_ops)
 		return -ENODEV;
-	/*
-	 * We _can_ actually withstand dodgy bus code re-calling add_device()
-	 * without an intervening remove_device()/of_xlate() sequence, but
-	 * we're not going to do so quietly...
-	 */
-	if (WARN_ON_ONCE(fwspec->iommu_priv)) {
-		master = fwspec->iommu_priv;
-		smmu = master->smmu;
-	} else {
-		smmu = arm_smmu_get_by_fwnode(fwspec->iommu_fwnode);
-		if (!smmu)
-			return -ENODEV;
-		master = kzalloc(sizeof(*master), GFP_KERNEL);
-		if (!master)
-			return -ENOMEM;
 
-		master->dev = dev;
-		master->smmu = smmu;
-		master->sids = fwspec->ids;
-		master->num_sids = fwspec->num_ids;
-		fwspec->iommu_priv = master;
-	}
+	if (WARN_ON_ONCE(fwspec->iommu_priv))
+		return -EBUSY;
+
+	smmu = arm_smmu_get_by_fwnode(fwspec->iommu_fwnode);
+	if (!smmu)
+		return -ENODEV;
+
+	master = kzalloc(sizeof(*master), GFP_KERNEL);
+	if (!master)
+		return -ENOMEM;
+
+	master->dev = dev;
+	master->smmu = smmu;
+	master->sids = fwspec->ids;
+	master->num_sids = fwspec->num_ids;
+	fwspec->iommu_priv = master;
 
 	/* Check the SIDs are in range of the SMMU and our stream table */
 	for (i = 0; i < master->num_sids; i++) {
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
