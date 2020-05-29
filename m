Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9F21E89E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 23:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygduobzmFciB/oMfCq1gYvM23FNM5TAIzO0yCc2wD80=; b=lxeVlim/hXusGF
	e2jI0ZSFTAEd89aPwf6lP5SK8gQuxcVAQjmi7Zgq3STOsAtMqUL8oR3hGHJj856IXWVgbrEkXPU/4
	HdU5piNXECc6Q/SbI1m4YmoPW6WlBkFlhN2k8sXlV0ZG+hgZZi/2yVLPL/v4qQwLMRLeiDFmYmgpF
	SfinUSNHiZ9rc67tVsH08L7Xd2q5BFQW8zJ46PVk1AY1UenkLZJ6rwy9Wg3zdX6dwPM/GV+D+TtAf
	z7pWD/2XUPSnOrpCz/PSfUeJm0wodqyewTjtqIMzGyYhu/3f3StQF8nYsJjiHzKzTYC6Q1HL7snh9
	jHltHYkoQsX3aQFELLbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemRv-0001vM-4X; Fri, 29 May 2020 21:21:55 +0000
Received: from [204.191.154.188] (helo=ale.deltatee.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemRR-0001mS-VD; Fri, 29 May 2020 21:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fj4wKOtVYLrcqYVXpt9c2vH51FUvKotCgqQuY7zVZ2k=; b=b96g+2M4iyp1SAYrzZS1fpiUCq
 ePzANrhF0COO+6jRUPoeDmySlgJVU6m/rPyXt57P4RCIonCpkajDWlESxSns8SkeMf1JUN+p5VwXI
 LaIpyCsQ3xEY1tRZbmrAX1IIBtYPv/hiJXGWo2BfT5aPumyg7CKRMqnBzpal97YO+lQtoBA8ZuQUK
 SvJ/HICeFgy28c6+YAi2NJ+GFJ1XPggoZqdjJjDjetSllwedUe6OueW8gHeiWxj/co4q2lewqWPGz
 DL15eKFLSm2BXN06PzSHNqzjDuDvbEQNIY7M7rCSGRrH1HOWFDVmuFoq8SLMVZEdPWs3RbLgauKc/
 5xPZm2ZA==;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.92)
 (envelope-from <logang@deltatee.com>)
 id 1jemRE-0004yn-1k; Fri, 29 May 2020 15:21:12 -0600
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Christoph Hellwig <hch@infradead.org>
References: <20191221150402.13868-1-murphyt7@tcd.ie>
 <465815ae-9292-f37a-59b9-03949cb68460@deltatee.com>
 <20200529124523.GA11817@infradead.org>
 <CGME20200529190523eucas1p2c086133e707257c0cdc002f502d4f51d@eucas1p2.samsung.com>
 <33137cfb-603c-86e8-1091-f36117ecfaf3@deltatee.com>
 <ef2150d5-7b6a-df25-c10d-e43316fe7812@samsung.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <b9140772-0370-a858-578c-af503a06d8e9@deltatee.com>
Date: Fri, 29 May 2020 15:21:04 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <ef2150d5-7b6a-df25-c10d-e43316fe7812@samsung.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: joonas.lahtinen@linux.intel.com, jani.nikula@linux.intel.com,
 dwmw2@infradead.org, kgene@kernel.org, linux-kernel@vger.kernel.org,
 cohuck@redhat.com, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 virtualization@lists.linux-foundation.org, tglx@linutronix.de,
 linux-tegra@vger.kernel.org, rodrigo.vivi@intel.com,
 linux-mediatek@lists.infradead.org, alex.williamson@redhat.com,
 intel-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 linux-s390@vger.kernel.org, gerald.schaefer@de.ibm.com, agross@kernel.org,
 linux-rockchip@lists.infradead.org, jonathanh@nvidia.com, krzk@kernel.org,
 maz@kernel.org, linux-samsung-soc@vger.kernel.org, jean-philippe@linaro.org,
 will@kernel.org, thierry.reding@gmail.com, julien.grall@arm.com,
 matthias.bgg@gmail.com, bjorn.andersson@linaro.org,
 dri-devel@lists.freedesktop.org, airlied@linux.ie, kvm@vger.kernel.org,
 iommu@lists.linux-foundation.org, murphyt7@tcd.ie, hch@infradead.org,
 m.szyprowski@samsung.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] Convert the intel iommu driver to the dma-iommu api
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_142126_148842_399148F5 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: kvm@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 iommu@lists.linux-foundation.org, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020-05-29 3:11 p.m., Marek Szyprowski wrote:
> Patches are pending:
> https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/

Cool, nice! Though, I still don't think that fixes the issue in
i915_scatterlist.h given it still ignores sg_dma_len() and strictly
relies on sg_next()/sg_is_last() to stop iterating -- and I suspect this
is the bug that got in Tom's way.

>> However, as Robin pointed out, there are other ugly tricks like stopping
>> iterating through the SGL when sg_dma_len() is zero. For example, the
>> AMD driver appears to use drm_prime_sg_to_page_addr_arrays() which does
>> this trick and thus likely isn't buggy (otherwise, I'd expect someone to
>> have complained by now seeing AMD has already switched to IOMMU-DMA.
> 
> I'm not sure that this is a trick. Stopping at zero sg_dma_len() was 
> somewhere documented.

Well whatever you want to call it, it is ugly to have some drivers doing
one thing with the returned value and others assuming there's an extra
zero at the end. It just causes confusion for people reading/copying the
code. It would be better if they are all consistent. However, I concede
stopping at zero should not be broken, presently.

Logan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
