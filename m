Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1F917A2CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 11:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DGXefS0zf3sVxp9/MbtrkFUM8H+VEVscWWGvQKS2EHY=; b=jX+PLaV+UmIWAwch6tnGUvqGT
	dB3GtIcDCc+bJ3ilEkiyiI/DJa348q+KZ5gv4XojYQeFh84VFd0X4Wr7/2J8ZJdyoBAV4+7mLtpR7
	AVsNWh84++GhkDqqy+OTQU6akTL9qBAc0t+WVs6Qy7RolGPiNK012M3aUJq/UyCMKPHlHUXf2SfuV
	k4/Bje/f+Ev3EWHOapsxl030xNEszYbNxre/ri9oNh7tK4KX/nH56q2nJLwbLsLwlyVYcxHPCIXkF
	8D+jrGo8upZEK19Fz5E+4/DdRZYf8Nxxzr73H9qk+klOP9Z84grPuffEtJMVIZdISiYSUlDwQjmf3
	mDDsl98XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nNa-0006EE-Bx; Thu, 05 Mar 2020 10:05:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nNQ-0006Dc-LE
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 10:05:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C89F331B;
 Thu,  5 Mar 2020 02:05:11 -0800 (PST)
Received: from [10.37.12.115] (unknown [10.37.12.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73E993F6C4;
 Thu,  5 Mar 2020 02:05:07 -0800 (PST)
Subject: Re: [PATCH] drm/exynos: Fix memory leak and release IOMMU mapping
 structures
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <CGME20200304220106eucas1p232aae5af79945664c4586930a9412eda@eucas1p2.samsung.com>
 <20200304220022.8003-1-lukasz.luba@arm.com>
 <684ef9fb-eafb-22d3-40c1-50f596211d85@samsung.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <1044756c-39cf-9fea-4338-40e5a68349a9@arm.com>
Date: Thu, 5 Mar 2020 10:05:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <684ef9fb-eafb-22d3-40c1-50f596211d85@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_020512_738146_3F524653 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jy0922.shim@samsung.com, b.zolnierkie@samsung.com, airlied@linux.ie,
 sw0312.kim@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 a.hajda@samsung.com, kyungmin.park@samsung.com, kgene@kernel.org,
 daniel@ffwll.ch, Dietmar.Eggemann@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On 3/5/20 7:07 AM, Marek Szyprowski wrote:
> Hi Lukasz,
> 
> On 04.03.2020 23:00, Lukasz Luba wrote:
>> There is a memory leak which left some objects not freed. The reference
>> counter of mapping: 'mapping->kref' was 2 when calling
>> arm_iommu_detach_device(), so the release_iommu_mapping() won't be called.
>> Since the old mapping structure is not going to be used any more (because
>> it is detached and new one attached), call arm_iommu_release_mapping()
>> to trigger cleanup.
> 
> This will break IOMMU support in Exynos DRM if deferred probe happens.
> Here is a proper fix:

I forgot about the deferred probe.

> 
> https://patchwork.kernel.org/patch/11415715/
> 
> The mapping initially created by DMA-mapping framework should be
> attached back when Exynos DRM releases the subdev device.
> 

Indeed, as you responded in that thread with the example, there is
more dependencies and attaching back the old mapping will work.

I am going add my reviewed-by to your patch.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
