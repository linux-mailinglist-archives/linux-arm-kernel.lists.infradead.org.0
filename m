Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8120D13AD9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:26:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZT0K4AkLr4neXpZanKnvtUP6ZLzaUM8Hjw0+bBgLSWo=; b=FrnzifwcMbDYg/
	EXDpYPrU9jL8B6oCMBEHS2u+KU4uwoXenPIpJbY78iqY7/tHkFhZlsC+AjmNtmyLWa+ax2UU1FQGa
	h9s5tv22/6l7fz+9reBh+ZnGUY+pWFC7dab/5EqaEqby0hGxiE8izDE7dHM6V4HWGusm6RQf0EGTj
	493BhGevgw8NVBpA68+r9T4oh6s/ki6uIGeDVozGPCJgtPWtRlEV9KVHTx1YTzgc+mSL3/CGOC9Be
	kqLCIsAsFM4+y0kv3DdEh9tHhpL3MsHEf9XUJH6ODPkX81w6DgYOtfSrWbvw6VTslOFQPlV8B4Y6i
	+m6ed1wUQvZsWOxMzcyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irO4t-00074r-BG; Tue, 14 Jan 2020 15:25:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irO4g-00073V-3A
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:25:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 945E02072B;
 Tue, 14 Jan 2020 15:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579015545;
 bh=lCzT2r10t8tKjNMq10HvvXZufirJmV3nQEiebEYP3gc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RkN7x9BHeMRrLPT+H/Vs2eAvyxwdMCtxWZmirmotOXrXKM50Xkbz2VUrqG8FcVImK
 P8szE3NrMlFvQuC5m4VfQX6pJmIKvCFzay0rFPkLwzHVZLgYMzftKk7hUjTc4jYYru
 GRgHe2lPXAh9kwyaBFQssQ72gTeD94bIFnjasRYo=
Date: Tue, 14 Jan 2020 15:25:39 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>, robin.murphy@arm.com
Subject: Re: [PATCH v4 11/13] iommu/arm-smmu-v3: Improve add_device() error
 handling
Message-ID: <20200114152538.GB2579@willie-the-truck>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-12-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219163033.2608177-12-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_072546_172983_40FD8285 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, Dec 19, 2019 at 05:30:31PM +0100, Jean-Philippe Brucker wrote:
> Let add_device() clean up after itself. The iommu_bus_init() function
> does call remove_device() on error, but other sites (e.g. of_iommu) do
> not.
> 
> Don't free level-2 stream tables because we'd have to track if we
> allocated each of them or if they are used by other endpoints. It's not
> worth the hassle since they are managed resources.
> 
> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 28 +++++++++++++++++++++-------
>  1 file changed, 21 insertions(+), 7 deletions(-)

I think this is alright, with one caveat relating to:


	/*
	 * We _can_ actually withstand dodgy bus code re-calling add_device()
	 * without an intervening remove_device()/of_xlate() sequence, but
	 * we're not going to do so quietly...
	 */
	if (WARN_ON_ONCE(fwspec->iommu_priv)) {
		master = fwspec->iommu_priv;
		smmu = master->smmu;
	} ...


which may be on shakey ground if the subsequent add_device() call can fail
and free stuff that the first one allocated. At least, I don't know what
we're trying to support with this, so it's hard to tell whether or not it
still works as intended after your change.

How is this supposed to work? I don't recall ever seeing that WARN fire,
so can we just remove this and bail instead? Robin?

Something like below before your changes...

Will

--->8

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index effe72eb89e7..6ae3df2f3495 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2534,28 +2534,23 @@ static int arm_smmu_add_device(struct device *dev)
 
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
