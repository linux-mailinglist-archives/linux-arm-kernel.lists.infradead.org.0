Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433A9CB056
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wm10XAvzMr9zECedR8D0jH8v2RLfpqYkfp2Igkk/Nps=; b=aqqtyDoplqnuvbcjKKsBpPIAb
	f6Lk4NZPKv+9Ox5Myeyu2l+1/njFes0YpdwM6PSO0w1rXnk3tVr5zADkjJLQMJK2/Zrz6o7twLwy2
	BYkM+yqaprFAZUGcP3SR2npGBZqmNEj1HfQlDjxAJ3728WOeoNabsV6XwmJTswz0GTEH455XPdH0/
	uvAF/SSO9VSbaNDWAgmOjkTwnibvm6HgOatldlHhggSGUxqrcDb/TpLyB20hXqGtzgs7c+K9twdSO
	xG4zFL6MTB+xsBzRi5iEcpt4FH/cUCX5gfLY0GSFrrhVCqNTb8NIRbFkHr26MWqhSn+0DSDJAMf9F
	JBUlm3Vbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG7vo-00020M-4o; Thu, 03 Oct 2019 20:42:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG7vh-0001zP-0p
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:42:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF79F337;
 Thu,  3 Oct 2019 13:42:25 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E00273F739;
 Thu,  3 Oct 2019 13:42:23 -0700 (PDT)
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Tim Harvey <tharvey@gateworks.com>,
 Douglas Anderson <dianders@chromium.org>,
 Tirumalesh Chalamarla <tchalamarla@caviumnetworks.com>
References: <20190301192017.39770-1-dianders@chromium.org>
 <CAJ+vNU0Ma5nG9_ThLO4cdO+=ivf7rmXiHZonF0HY0xx6X3R6Hw@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5dce2964-8761-e7d0-8963-f0f5cb2feb02@arm.com>
Date: Thu, 3 Oct 2019 21:42:20 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAJ+vNU0Ma5nG9_ThLO4cdO+=ivf7rmXiHZonF0HY0xx6X3R6Hw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_134229_148343_DBF750C6 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: open list <linux-kernel@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 iommu@lists.linux-foundation.org, evgreen@chromium.org, tfiga@chromium.org,
 Rob Clark <robdclark@gmail.com>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tim,

On 2019-10-03 7:27 pm, Tim Harvey wrote:
> On Fri, Mar 1, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
>>
>> If you're bisecting why your peripherals stopped working, it's
>> probably this CL.  Specifically if you see this in your dmesg:
>>    Unexpected global fault, this could be serious
>> ...then it's almost certainly this CL.
>>
>> Running your IOMMU-enabled peripherals with the IOMMU in bypass mode
>> is insecure and effectively disables the protection they provide.
>> There are few reasons to allow unmatched stream bypass, and even fewer
>> good ones.
>>
>> This patch starts the transition over to make it much harder to run
>> your system insecurely.  Expected steps:
>>
>> 1. By default disable bypass (so anyone insecure will notice) but make
>>     it easy for someone to re-enable bypass with just a KConfig change.
>>     That's this patch.
>>
>> 2. After people have had a little time to come to grips with the fact
>>     that they need to set their IOMMUs properly and have had time to
>>     dig into how to do this, the KConfig will be eliminated and bypass
>>     will simply be disabled.  Folks who are truly upset and still
>>     haven't fixed their system can either figure out how to add
>>     'arm-smmu.disable_bypass=n' to their command line or revert the
>>     patch in their own private kernel.  Of course these folks will be
>>     less secure.
>>
>> Suggested-by: Robin Murphy <robin.murphy@arm.com>
>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>> ---
> 
> Hi Doug / Robin,
> 
> I ran into this breaking things on OcteonTx boards based on CN80XX
> CPU. The IOMMU configuration is a bit beyond me and I'm hoping you can
> offer some advice. The IOMMU here is cavium,smmu-v2 as defined in
> https://github.com/Gateworks/dts-newport/blob/master/cn81xx-linux.dtsi
> 
> Booting with 'arm-smmu.disable_bypass=n' does indeed work around the
> breakage as the commit suggests.
> 
> Any suggestions for a proper fix?

Ah, you're using the old "mmu-masters" binding (and in a way which isn't 
well-defined - it's never been specified what the stream ID argument(s) 
would mean for a PCI host bridge, and Linux just ignores them). The 
ideal thing would be to update the DT to generic "iommu-map" properties 
- it's been a long time since I last played with a ThunderX, but I 
believe the SMMU stream IDs should just be the same as the ITS device 
IDs (which is how the "mmu-masters" mapping would have played out anyway).

The arm-smmu driver support for the old binding has always relied on 
implicit bypass - there are technical reasons why we can't realistically 
support the full functionality offered to the generic bindings, but it 
would be possible to add some degree of workaround to prevent it 
interacting quite so poorly with disable_bypass, if necessary. Do you 
have deployed systems with DTs that can't be updated, but still might 
need to run new kernels?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
