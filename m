Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CDC11B62
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 16:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ne4/u/oXewqS/znojbeY7fnkhl48bf/1LYz+usie6BI=; b=rYFtou3EHdht3r1q61wDknLAD
	2ABFqCscqL4mpAbzzQLlZ/wTk1GPzfzJnC19VegNFmO2CuQtC2l6DmOU4rWrzAJCkC9cblkVxCRR5
	h36lZnhKpqbc/waZ5ksO5CFN5AHkCCzJfYDCf+lOCwYGsv2Tsz6XvBOK7bXHUEDBCGsUTjjp4UxLL
	M9he8XO9s+rBFEqKIpLKVt1UX3QQCKw1UidBsqcljdoFPhomMP5cTpXVkUfprC4blJ/EHQrYmvKA8
	IwZOCn7SCcmSqE9xrDgBGgAlyEPO3r5SUvK/thT3crZsSIBBmId+QnoBZGkGKsgQRn7B8BrVEzp5h
	8juk2n+GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCgx-0007Ta-Nt; Thu, 02 May 2019 14:28:07 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCgr-0007TE-B8
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 14:28:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3C87374;
 Thu,  2 May 2019 07:27:57 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E8E93F5AF;
 Thu,  2 May 2019 07:27:56 -0700 (PDT)
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will.deacon@arm.com>
References: <20190301192017.39770-1-dianders@chromium.org>
 <20190404145957.GA25912@fuggles.cambridge.arm.com>
 <4754bcf1-6423-f1fe-64d4-da4a35b164ad@free.fr>
 <20190424115231.GA14829@fuggles.cambridge.arm.com>
 <20190502105912.GA943@ulmo>
 <20190502110821.GD30966@fuggles.cambridge.arm.com>
 <20190502124525.GA3579@ulmo>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <94cf6d56-5dcb-051a-06da-5edfacde1655@arm.com>
Date: Thu, 2 May 2019 15:27:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502124525.GA3579@ulmo>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_072801_395573_9C0A87DB 
X-CRM114-Status: GOOD (  31.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>, Joerg Roedel <joro@8bytes.org>,
 Douglas Anderson <dianders@chromium.org>, Jon Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/05/2019 13:45, Thierry Reding wrote:
> On Thu, May 02, 2019 at 12:08:21PM +0100, Will Deacon wrote:
>> On Thu, May 02, 2019 at 12:59:12PM +0200, Thierry Reding wrote:
>>> On Wed, Apr 24, 2019 at 12:52:31PM +0100, Will Deacon wrote:
>>>> On Wed, Apr 24, 2019 at 01:36:58PM +0200, Marc Gonzalez wrote:
>>>>> On 04/04/2019 17:00, Will Deacon wrote:
>>>>>
>>>>>> On Fri, Mar 01, 2019 at 11:20:17AM -0800, Douglas Anderson wrote:
>>>>>>
>>>>>>> If you're bisecting why your peripherals stopped working, it's
>>>>>>> probably this CL.  Specifically if you see this in your dmesg:
>>>>>>>    Unexpected global fault, this could be serious
>>>>>>> ...then it's almost certainly this CL.
>>>>>>>
>>>>>>> Running your IOMMU-enabled peripherals with the IOMMU in bypass mode
>>>>>>> is insecure and effectively disables the protection they provide.
>>>>>>> There are few reasons to allow unmatched stream bypass, and even fewer
>>>>>>> good ones.
>>>>>>>
>>>>>>> This patch starts the transition over to make it much harder to run
>>>>>>> your system insecurely.  Expected steps:
>>>>>>>
>>>>>>> 1. By default disable bypass (so anyone insecure will notice) but make
>>>>>>>     it easy for someone to re-enable bypass with just a KConfig change.
>>>>>>>     That's this patch.
>>>>>>>
>>>>>>> 2. After people have had a little time to come to grips with the fact
>>>>>>>     that they need to set their IOMMUs properly and have had time to
>>>>>>>     dig into how to do this, the KConfig will be eliminated and bypass
>>>>>>>     will simply be disabled.  Folks who are truly upset and still
>>>>>>>     haven't fixed their system can either figure out how to add
>>>>>>>     'arm-smmu.disable_bypass=n' to their command line or revert the
>>>>>>>     patch in their own private kernel.  Of course these folks will be
>>>>>>>     less secure.
>>>>>>>
>>>>>>> Suggested-by: Robin Murphy <robin.murphy@arm.com>
>>>>>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>>>>>> ---
>>>>>>>
>>>>>>> Changes in v2:
>>>>>>> - Flipped default to 'yes' and changed comments a lot.
>>>>>>>
>>>>>>>   drivers/iommu/Kconfig    | 25 +++++++++++++++++++++++++
>>>>>>>   drivers/iommu/arm-smmu.c |  3 ++-
>>>>>>>   2 files changed, 27 insertions(+), 1 deletion(-)
>>>>>>
>>>>>> Cheers, I'll pick this one up for 5.2.
>>>>>
>>>>> Hello Will,
>>>>>
>>>>> You haven't pushed this patch out to linux-next AFAICT.
>>>>>
>>>>> Is that expected?
>>>>
>>>> It's on my branch for Joerg:
>>>>
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-joerg/arm-smmu/updates
>>>>
>>>> which I'll send to him today. My SMMU stuff doesn't go directly into -next.
>>>
>>> This made it to linux-next yesterday (less than a week before the merge
>>> window opens) and deliberately breaks existing configurations. That's a
>>> little rude.
>>>
>>> At least give people a fair heads-up and a chance to fix things before
>>> you start break things.
>>
>> Sorry about the inconvenience here.
>>
>> This patch has been floating around for a while (albeit not in -next, since
>> I send my stuff via Joerg)
> 
> You can't expect people to test random patches from the list if they're
> not on Cc. I don't think it's safe to claim that patches have been well
> tested until they've been in linux-next for at least a couple of days.
> 
>>                             and is heading for 5.3, so you have ages to fix
>> up your config!
> 
> Last I checked, Joerg applied this for 5.2 because you sent it as part
> of your "Updates for 5.2" pull request.
> 
>>                  It would, of course, be better to configure the IOMMU to
>> provide mappings for your DMA peripherals, but the trivial config change
>> will be enough to keep things working. We won't remove that as long as
>> people are relying on it.
> 
> I don't think the Kconfig option is really useful. People nowadays want
> to run standard distribution kernels on their devices, and distribution
> maintainers will often rely on kernel developers' guidance on what good
> defaults are. This patch suggests that the default should be to disable
> bypass, so if this hits 5.2 final and distributions create their kernel
> packages, they're likely going to go with this default and potentially
> break things for many of their users.
> 
> Luckily this seems like it's fairly easy to fix, but given that we're
> past v5.1-rc6, fixes for this now need to get special treatment. That
> would've been okay if this was a pressing issues, but this is changing
> something that's worked this way for ages, so it's hardly urgent.
> 
>> I don't expect most people to run into problems with this change (the new
>> behaviour matches what SMMUv3 does already).
> 
> I see the ARM SMMU v2 used in quite a few DTS files. Not all of these
> may be problematic, but I'd be somewhat surprised if Tegra was the only
> one impacted.

If people have real technical reasons for needing unmatched stream 
bypass, then we'll probably need to consider some sort of per-SMMU 
override anyway, since well-meaning users rendering the system unusable 
by enabling a security option isn't ideal. I'm in the middle of a big 
rework to accommodate platform-specific extensions more easily, so 
that's certainly an angle I can try to plan for.

On the other hand, if it's merely that nobody's yet got round to filling 
out the DT properly, then AIUI that's pretty much exactly what Doug 
wanted to motivate, so that the option *can* be used more widely by 
users who might want it. Hence the provocative title :)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
