Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6551622EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 10:00:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oee436xEzRtcmCfoIf8DGPQcZSrBF0+5NcaqMkdtang=; b=a5iv3e7/EZrWwA
	3O+XuLAuGKFcEaY4eJKCqGhzzUnIBMkhQcCS+VLMSz7hYNlzkqylLDhtDz2pwIShVG0PRjjcW/lDA
	sfrOQ+Y8UmCMcTfwBAo5yM9ai8UVpAGMcueIr3pByGybWzjvD04cpusBTim5JfgF/yhwLpr9iTYRN
	+AvmRQjOSIyyOUM8+LDGxiuQtOAbmhECmcVdTjwV4aqrGb7+Zl0NPPauuTFUNkvh9WRTCTzcFGzG8
	mReJv4vY3lr3txolwLrDQ0rZD48ASIfmuchLnZlWsKSVkzP6PNcJ3c9m/WxOLlZnrE4VIYIeELHFo
	WwE778QwalTKns3nEbCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ykK-0000K8-Fq; Tue, 18 Feb 2020 09:00:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ykB-0000Fl-Gr
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 09:00:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0525021D7D;
 Tue, 18 Feb 2020 09:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582016439;
 bh=nJTlTh1s/kepTsug2+IOCbMEXlfm3m8KEwDaYFJCiXM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kq4bNpYmC9wHa8ldJdKK02M7YRboy2JYMKXp6BlQrueC6uv7i8rLA8L/32u1lkCDY
 8dYx6WlGLEpY/gObTgmwOQZ2cZCx9LM4Ex0xBvsPUGkN0DVYKDQK6X2E2nAJplBaSR
 XzDp4kWaVW1eK3mFWXNHxNKHSkwAosSvcu+z0PWE=
Date: Tue, 18 Feb 2020 09:00:35 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Batch ATC invalidation commands
Message-ID: <20200218090034.GC16828@willie-the-truck>
References: <20200213205600.19690-1-robh@kernel.org>
 <20200217182918.GE1650092@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217182918.GE1650092@myrica>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_010039_589070_4C308CC6 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 07:29:18PM +0100, Jean-Philippe Brucker wrote:
> On Thu, Feb 13, 2020 at 02:56:00PM -0600, Rob Herring wrote:
> > Similar to commit 2af2e72b18b4 ("iommu/arm-smmu-v3: Defer TLB
> > invalidation until ->iotlb_sync()"), build up a list of ATC invalidation
> > commands and submit them all at once to the command queue instead of
> > one-by-one.
> > 
> > As there is only one caller of arm_smmu_atc_inv_master() left, we can
> > simplify it and avoid passing in struct arm_smmu_cmdq_ent.
> > 
> > Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Joerg Roedel <joro@8bytes.org>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> 
> Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> 
> 
> Since I'm adding a third user of cmdq batching [1], I had a go at
> factoring them. I can send the attached patch with my next version, if it
> looks OK.

Yes, the idea looks good to me. Feel free to pick this stuff into a series
so that I can review it for 5.7.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
