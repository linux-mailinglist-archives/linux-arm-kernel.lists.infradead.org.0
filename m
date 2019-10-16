Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F42ED8EA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1ljCwZ+S46ESGJgFnZV5H6dN2+RedL+sCdCv+47bngA=; b=YzeDT28oUVYklGUKPYEg1sYtL
	E/Mbd6gBDCnV2eabDPdkQxkjTZsZg6/GryT2P12cCBNn+zm75XUPDuAaEMMQBblj9CzYPy/ai6KWU
	xqGuk45NCWX11zrvqsqGbRW1d+cUspWUGJXvc6MfcwDkbOHQ3G1FEg/yZbVFBPxluXXlbGI/3qw43
	R66eWmGZ26EkL6rykOpa9MOqfgKijVp8gJTSKwaBj5g1WHLMX8DappyFzmnh7L6tiQyG3mTv8JTBQ
	yErj2crLIxVjORkWNyweCx/HycO8ya/p6UXpDgnn4XqZbGrw7Iq5ORbFlRGKetwTWLwH5yCRjNqd2
	5sU8jJKzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgv8-0007ba-JM; Wed, 16 Oct 2019 10:52:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgtw-0006lK-FT
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:51:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54E0628;
 Wed, 16 Oct 2019 03:51:31 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 037943F6C4;
 Wed, 16 Oct 2019 03:51:28 -0700 (PDT)
Subject: Re: [RFC PATCH 0/6] SMMUv3 PMCG IMP DEF event support
To: John Garry <john.garry@huawei.com>, lorenzo.pieralisi@arm.com,
 guohanjun@huawei.com, sudeep.holla@arm.com, mark.rutland@arm.com,
 will@kernel.org
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
 <66a3ce9f-d3cd-110f-7353-46e6eaf25b7c@arm.com>
 <1d546b4b-a2ad-49da-b532-951232093a9f@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <fc2df5d8-561a-b25b-e8f1-79aeb913687f@arm.com>
Date: Wed, 16 Oct 2019 11:51:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1d546b4b-a2ad-49da-b532-951232093a9f@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_035132_635063_A779EEC5 
X-CRM114-Status: GOOD (  30.43  )
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
Cc: nleeder@codeaurora.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-16 9:47 am, John Garry wrote:
> On 15/10/2019 19:00, Robin Murphy wrote:
>> Hi John,
>>
>> On 30/09/2019 15:33, John Garry wrote:
>>> This patchset adds IMP DEF event support for the SMMUv3 PMCG.
>>>
>>> It is marked as an RFC as the method to identify the PMCG implementation
>>> may be a quite disliked. And, in general, the series is somewhat
>>> incomplete.
>>>
>>> So the background is that the PMCG supports IMP DEF events, yet we
>>> have no
>>> method to identify the PMCG to know the IMP DEF events.
>>>
>>> A method for identifying the PMCG implementation could be using
>>> PMDEVARCH, but we cannot rely on this being set properly, as whether 
>>> this
>>> is implemented is not defined in SMMUv3 spec.
>>>
>>> Another method would be perf event aliasing, but this method of event
>>> matching is based on CPU id, which would not guarantee same
>>> uniqueness as PMCG implementation.
>>>
>>> Yet another method could be to continue using ACPI OEM ID in the IORT
>>> code, but this does not scale. And it is not suitable if we ever add DT
>>> support to the PMCG driver.
>>>
>>> The method used in this series is based on matching on the parent SMMUv3
>>> IIDR. We store this IIDR contents in the arm smmu structure as the first
>>> element, which means that we don't have to expose SMMU APIs - this is
>>> the part which may be disliked.
>>>
>>> The final two patches switch the pre-existing PMCG model identification
>>> from ACPI OEM ID to the same parent SMMUv3 IIDR matching.
>>>
>>> For now, we only consider SMMUv3' nodes being the associated node for
>>> PMCG.
>>
> 
> Hi Robin,
> 
>> Two significant concerns right off the bat:
>>
>> - It seems more common than not for silicon designers to fail to
>> implement IIDR correctly, so it's only a matter of time before
>> inevitably needing to bring back some firmware-level identifier
>> abstraction (if not already - does Hi161x have PMCGs?)
> 
> Maybe there's a way that we can switch to this method, and leave the 
> door open for an easy way to support firmware-level identifier again, if 
> ever needed. I'm not too pushed - this was secondary to just allowing 
> the PMCG driver know the associated SMMU model.

But that's the part I'm not buying - there's no clear advantage to 
pushing that complexity down into the PMCG driver, vs. leaving the IORT 
code responsible for translating an SMMU model into a PMCG model, yet 
the aforementioned disadvantages jump out right away.

> And, no, hi161x does not have any PMCGs.

Hooray, I guess :)

>>
>> - This seems like a step in entirely the wrong direction for supporting
>> .
> 
> So to support PMCGs that reference a Named Component or Root Complex, I 
> thought that the IORT parsing code would have to do some secondary 
> lookup to the associated SMMU, through the Named Component or Root 
> Complex node.
> 
> What was your idea here?

The associated SMMU has no relevance in that context - the reason for 
the Node Reference to point to a non-SMMU node is for devices that 
implement their own embedded TLB (e.g. AMBA DTI masters) and expose a 
standard PMCG interface to monitor it. It isn't reasonable to expect any 
old PCIe controller or on-chip-accelerator driver to expose a fake SMMU 
IIDR just to keep some other driver happy.

> Note: I do acknowledge that an overall issue is that we assume all PMCG 
> IMP DEF events are same for a given SMMU model.

That assumption does technically fail already - I know MMU-600 has 
different IMP-DEF events for its TCU and TBUs, however as long as we can 
get as far as "this is some part of an MMU-600" the driver should be 
able to figure out the rest (annoyingly it looks like both PMCG types 
expose the same PMCG_ID_REGS information, but they should be 
distinguishable by PMCG_CEIDn).

>> Interpreting the Node Reference is definitely a welcome improvement over
>> matching table headers, but absent a truly compelling argument to the
>> contrary, I'd rather retain the "PMCG model" abstraction in between that
>> and the driver itself (especially since those can trivially be hung off
>> compatibles once it comes to DT support).
> 
> For DT, I would assume that we just use compatible strings would allow 
> us to identify the PMCG model.

Right, that was largely my point - DT probing can start with a PMCG 
model, so it's a lot more logical for ACPI probing to do the same, with 
the actual PMCG model determination hidden away in the ACPI code. That's 
the basis of the current design.

I have been nagging the architects that PMCGs not having their own IIDR 
is an unwelcome hole in the spec, so hopefully this might get a bit 
easier some day.

> On a related matter, is there still a need to deal with scenarios of the 
> PMCG being located within the SMMU register map? As you may remember, we 
> did have this issue but relocated the PMCG to outside the SMMU register 
> map in a later chip rev.

MMU-600 has its TCU PMCG page 0 in the middle of its SMMU page 0 space, 
but given that it's an Arm IP, I expect that when the heat gets turned 
up for making it work, it's most likely to be under me ;)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
