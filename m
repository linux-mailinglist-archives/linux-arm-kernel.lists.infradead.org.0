Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3F7131ADC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:58:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oP/iLVlpNGamP2qr6jVSw9tGUOSvwb2qdr3sLb2mmLE=; b=aKkELlWq9ywu8N
	S9r7PgCGEjyS1wEBboc7bkkd6Gp4GYsYNa0XYxNFM7figtSOBwhlOaO9uyYR0B9ArYusGCYRy3Fq1
	PhXD6rsiFvtTeRJig9bJFyVAb3rB8bsGK9Y/SMLCgPKl9NAPV/3ma467RTHr93q5dzvBmxp2VfQvA
	n/n56iagTwi20ga+wwRrN8BUVgO6srY3fqyO0Hul5caIv12KhPQxnr8gn2RrTB5Y3u19UFU3B1gEI
	w0EGZfR7pHsbS4ap9cQ+TNkA8CDV7U9W4HDotjpZ3sC5mfZGWYG/Xee50OfyLs+fvuyT5sQnfh1vm
	mKDIUrFlQe0xMsWlRpWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaO0-00086t-4q; Mon, 06 Jan 2020 21:58:08 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaNr-00085H-U1
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 21:58:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578347881; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=Dh6uBBQOO4o59nsJrAsOkHICiEkRHSqYa9UZMQn8AGc=;
 b=RR9hLeMAgi/S1mVbVyM4du74e0TiSFCq8vPvGQrZNuAJwFmo7p9FtCrvpzPySksoVVW+4ZqQ
 5StRvCbeb1nkq34Nvqm5ek0k/FxaWCQVTQZCc3GBSDUMSXjmXYRHDm7oHMR3gMidsOI7xjkJ
 e89QUXeYge7fgRwtI3qNJbPBBIY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e13ad62.7f9b9bd4c810-smtp-out-n03;
 Mon, 06 Jan 2020 21:57:54 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B48D4C433CB; Mon,  6 Jan 2020 21:57:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BEF3EC43383;
 Mon,  6 Jan 2020 21:57:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BEF3EC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Mon, 6 Jan 2020 14:57:51 -0700
From: Jordan Crouse <jcrouse@codeaurora.org>
To: smasetty@codeaurora.org
Subject: Re: [PATCH v3 5/5] drm/msm/a6xx: Support split pagetables
Message-ID: <20200106215750.GA4341@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: smasetty@codeaurora.org, iommu@lists.linux-foundation.org,
 freedreno@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 will@kernel.org, robin.murphy@arm.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
References: <1576514271-15687-1-git-send-email-jcrouse@codeaurora.org>
 <1576514271-15687-6-git-send-email-jcrouse@codeaurora.org>
 <8aec2a4f74fede1cf616b9e2eece3e8e@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8aec2a4f74fede1cf616b9e2eece3e8e@codeaurora.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_135801_659218_BCC2D14B 
X-CRM114-Status: GOOD (  21.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 freedreno@lists.freedesktop.org, robin.murphy@arm.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-msm@vger.kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 24, 2019 at 08:27:28AM +0530, smasetty@codeaurora.org wrote:
> On 2019-12-16 22:07, Jordan Crouse wrote:
> >Attempt to enable split pagetables if the arm-smmu driver supports it.
> >This will move the default address space from the default region to
> >the address range assigned to TTBR1. The behavior should be transparent
> >to the driver for now but it gets the default buffers out of the way
> >when we want to start swapping TTBR0 for context-specific pagetables.
> >
> >Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> >---
> >
> > drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 52
> >++++++++++++++++++++++++++++++++++-
> > 1 file changed, 51 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >index 5dc0b2c..1c6da93 100644
> >--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >@@ -811,6 +811,56 @@ static unsigned long a6xx_gpu_busy(struct msm_gpu
> >*gpu)
> > 	return (unsigned long)busy_time;
> > }
> >
> >+static struct msm_gem_address_space *
> >+a6xx_create_address_space(struct msm_gpu *gpu, struct platform_device
> >*pdev)
> >+{
> >+	struct iommu_domain *iommu = iommu_domain_alloc(&platform_bus_type);
> >+	struct msm_gem_address_space *aspace;
> >+	struct msm_mmu *mmu;
> >+	u64 start, size;
> >+	u32 val = 1;
> >+	int ret;
> >+
> >+	if (!iommu)
> >+		return ERR_PTR(-ENOMEM);
> >+
> >+	/*
> >+	 * Try to request split pagetables - the request has to be made before
> >+	 * the domian is attached
> >+	 */
> >+	iommu_domain_set_attr(iommu, DOMAIN_ATTR_SPLIT_TABLES, &val);
> >+
> >+	mmu = msm_iommu_new(&pdev->dev, iommu);
> >+	if (IS_ERR(mmu)) {
> >+		iommu_domain_free(iommu);
> >+		return ERR_CAST(mmu);
> >+	}
> >+
> >+	/*
> >+	 * After the domain is attached, see if the split tables were actually
> >+	 * successful.
> >+	 */
> >+	ret = iommu_domain_get_attr(iommu, DOMAIN_ATTR_SPLIT_TABLES, &val);
> >+	if (!ret && val) {
> >+		/*
> >+		 * The aperture start will be at the beginning of the TTBR1
> >+		 * space so use that as a base
> >+		 */
> >+		start = iommu->geometry.aperture_start;
> >+		size = 0xffffffff;
> This should be the va_end and not the size

This is a bug in msm_gem_address_space_create - I intended the parameter to be
the size.

Jordan

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
