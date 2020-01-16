Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FBF13FB5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 22:23:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWkiGJET4fYY2LsLr6nQoxX6w9a5l2GbnwMoK2g12os=; b=V8rEw4JfIua/gw
	C1g4oql6CIQ4ZgchvCz0xS8QNsTT5YQgQKHWZ7FyH3QLbB4a/A44ZUG98JIw7c40761i7/uZDF/cw
	aA8t10Flz0QQjtJUcJfwV/eSIfU3C3TbO78SJTzFDkShV8FosLkYzFKTn19kpqxdMIv7WkFcWZnsm
	ZM/vq58a38UmzQCATyptsJXGtXWgmR8Yh87VLXW1LmIQ5Yvd4N/yUft7h4/iqo6Ger4TaURw3QIOU
	MHUQheCkX1kEqGaAZ+XeD/jajt5eynYxF1x4QKTJrI/4Tgp0G445EoVrnG825z8CQuWmJJuuiHDeG
	pwrQ5GpMfmbEQRzokPtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isCc9-0004NE-LV; Thu, 16 Jan 2020 21:23:41 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isCc0-0004M3-M5
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 21:23:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579209809;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KO9+uw/hq0OkXeKJuZfGCr+At+A43QGZAYlRPTwNi6Y=;
 b=TtqKuT0ciN077gVnHzW/DsbfuHq2w4/ni83ZdTlh44tkJQNLH3Qw1Z4uB2x8RO1CWuEOZA
 arShEITcEeqApHQy8fQGPgdS5XSdgey66DtJORkXCKmEGzKIGNEES37Gu6F4A6jekv04/O
 oHklZsCZs1QySZf+kois9Fygfsx9g9A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-U-uhHCL1M0-Z0rRLKVDtnQ-1; Thu, 16 Jan 2020 16:23:23 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1DBC210054E3;
 Thu, 16 Jan 2020 21:23:22 +0000 (UTC)
Received: from [10.36.117.108] (ovpn-117-108.ams2.redhat.com [10.36.117.108])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BC1988867;
 Thu, 16 Jan 2020 21:23:20 +0000 (UTC)
Subject: Re: [PATCH] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation support
To: Rob Herring <robh@kernel.org>
References: <20200113143924.11576-1-robh@kernel.org>
 <2ee87a12-1a0e-bd48-0209-b5e205342d44@redhat.com>
 <CAL_JsqKrh0nLuoRgi1-bKyEErwCFpWPRPNVDuoeJrbFMCz60KQ@mail.gmail.com>
 <bc72f4c5-de47-8684-c7d5-0e60a4a78ee2@redhat.com>
 <CAL_Jsq+fwdLfxgW=aoMNySrKunSgtC+i5ttsn1vCdR2p4BMPfA@mail.gmail.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <4e56aa27-37f0-d8d9-46fd-871055abcb49@redhat.com>
Date: Thu, 16 Jan 2020 22:23:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+fwdLfxgW=aoMNySrKunSgtC+i5ttsn1vCdR2p4BMPfA@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: U-uhHCL1M0-Z0rRLKVDtnQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_132332_792715_8E9AA26E 
X-CRM114-Status: GOOD (  23.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 1/16/20 5:57 PM, Rob Herring wrote:
> On Wed, Jan 15, 2020 at 10:33 AM Auger Eric <eric.auger@redhat.com> wrote:
>>
>> Hi Rob,
>>
>> On 1/15/20 3:02 PM, Rob Herring wrote:
>>> On Wed, Jan 15, 2020 at 3:21 AM Auger Eric <eric.auger@redhat.com> wrote:
>>>>
>>>> Hi Rob,
>>>>
>>>> On 1/13/20 3:39 PM, Rob Herring wrote:
>>>>> Arm SMMUv3.2 adds support for TLB range invalidate operations.
>>>>> Support for range invalidate is determined by the RIL bit in the IDR3
>>>>> register.
>>>>>
>>>>> The range invalidate is in units of the leaf page size and operates on
>>>>> 1-32 chunks of a power of 2 multiple pages. First we determine from the
>>>>> size what power of 2 multiple we can use and then adjust the granule to
>>>>> 32x that size.
> 
>>>>> @@ -2022,12 +2043,39 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>>>>>               cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
>>>>>       }
>>>>>
>>>>> +     if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
>>>>> +             unsigned long tg, scale;
>>>>> +
>>>>> +             /* Get the leaf page size */
>>>>> +             tg = __ffs(smmu_domain->domain.pgsize_bitmap);
>>>> it is unclear to me why you can't set tg with the granule parameter.
>>>
>>> granule could be 2MB sections if THP is enabled, right?
>>
>> Ah OK I thought it was a page size and not a block size.
>>
>> I requested this feature a long time ago for virtual SMMUv3. With
>> DPDK/VFIO the guest was sending page TLB invalidation for each page
>> (granule=4K or 64K) part of the hugepage buffer and those were trapped
>> by the VMM. This stalled qemu.
> 
> I did some more testing to make sure THP is enabled, but haven't been
> able to get granule to be anything but 4K. I only have the Fast Model
> with AHCI on PCI to test this with. Maybe I'm hitting some place where
> THPs aren't supported yet.
> 
>>>>> +             /* Determine the power of 2 multiple number of pages */
>>>>> +             scale = __ffs(size / (1UL << tg));
>>>>> +             cmd.tlbi.scale = scale;
>>>>> +
>>>>> +             cmd.tlbi.num = CMDQ_TLBI_RANGE_NUM_MAX - 1;
>>>> Also could you explain why you use CMDQ_TLBI_RANGE_NUM_MAX.
>>>
>>> How's this:
>>> /* The invalidation loop defaults to the maximum range */
>> I would have expected num=0 directly. Don't we invalidate the &size in
>> one shot as 2^scale * pages of granularity @tg? I fail to understand
>> when NUM > 0.
> 
> NUM is > 0 anytime size is not a power of 2. For example, if size is
> 33 pages, then it takes 2 loops doing 32 pages and then 1 page. If
> size is 34 pages, then NUM is (17-1) and SCALE is 1.
OK I get it now. I misread the scale computation as log2() :-(.

I still have a doubt about the scale choice. What if you invalidate a
large number of pages such as 1025 pages. scale is 0 and you end up with
32 * 32 * 2^0 + 1 * 2 * 2^0  invalidations (33). Whereas you could
invalidate the whole range with 2 invalidation commands: 1 x 2^10 +
1*1^1 (packing the invalidations by largest scale). Am I correct or do I
still miss something?

Besides in the patch I think in the while loop the iova should be
incremented with the actual number of invalidated bytes and not the max
sized granule variable.

Thanks

Eric







> 
> Rob
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
