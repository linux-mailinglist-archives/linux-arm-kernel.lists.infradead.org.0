Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E366E7F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 17:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLXg2ZkCiFeArUUOizM12eGRMuiPlJZXE9jZ7xC+NQo=; b=Ea+pmPGVjNe8pi
	RA68J0sJWSP5s962NU2tsvP2vPeOAY9wIzk1Tko29WetgmCDtrgtdCfk2SkR9JWGZn2nHeZr/V8c7
	8EIMFZU/JDXsRToDccXm0h6Bm/YRNLpCtDjtPggcjv9AGutxb4840RmOsxniBxeUCmsl7OUghfA2T
	dSXeMR+0NqJGfhodJU/GjA/J8Jb8umQ6wWuPKhqstfHfC6t6PlGKP4GrsHnhSpd0hho86vIMFROKl
	Cd+LT0b0xwvc3a8D8FNLpLyoS9DRvO4Q8yPDLfqlN3SeZNsHKMLwFCD/iRNLsxc8/3JvTSS5/C96X
	IoMtIKP4atWAVt/sVLIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoUqJ-00042a-AZ; Fri, 19 Jul 2019 15:30:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoUpI-00040E-TQ
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 15:29:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F840344;
 Fri, 19 Jul 2019 08:29:39 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 718AD3F59C;
 Fri, 19 Jul 2019 08:29:37 -0700 (PDT)
Subject: Re: MPAM branch verification (was RE: [RFC PATCH 2/2] ACPI / PPTT:
 cacheinfo: Label caches based on fw_token)
To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
References: <5FC3163CFD30C246ABAA99954A238FA83F2B38FD@lhreml524-mbs.china.huawei.com>
 <d3341796-d7ce-8b1b-3575-333eda7e6d07@arm.com>
 <5FC3163CFD30C246ABAA99954A238FA83F2DBB39@lhreml524-mbs.china.huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <6b863739-fc6d-424c-6b70-21e2e3775b78@arm.com>
Date: Fri, 19 Jul 2019 16:29:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5FC3163CFD30C246ABAA99954A238FA83F2DBB39@lhreml524-mbs.china.huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_082941_189738_435E7B6C 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Vijaya Kumar K <vkilari@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linuxarm <linuxarm@huawei.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Tomasz Nowicki <Tomasz.Nowicki@cavium.com>,
 Richard Ruigrok <rruigrok@qti.qualcomm.com>,
 "Guohanjun \(Hanjun Guo\)" <guohanjun@huawei.com>,
 "wangxiongfeng \(C\)" <wangxiongfeng2@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shameer,

On 03/07/2019 13:27, Shameerali Kolothum Thodi wrote:
>> -----Original Message-----
>> On 21/06/2019 16:57, Shameerali Kolothum Thodi wrote:
>>>> -----Original Message-----
>>>> From: James Morse [mailto:james.morse@arm.com]

>> The domid bitfield not being big enough for the width of the cacheinfo id field
>> looks like
>> a bug in the existing resctrl code. Could you spin that as a patch against
>> mainline?
> 
> Yes it could be a bug. But I am not sure about the assumption on x86 platforms with
> respect to cache id width. Also any need to consider 32 bit systems at all or not.
> 
>> It won't affect any x86 system, but I don't want to 'fix' anything as part of the
>> mpam
>> support.
> 
> Does that mean the cache id width on x86 will never be >14 bits?

I have no idea. Today they're 0,1,2, so its unlikely?, but Documentation/x86/resctrl.rst's
"Cache IDs" section says "it isn't guaranteed to be a contiguous sequence", so maybe?

The problem is 'struct cacheinfo's id field is an int, its exposed via sysfs as an int,
but resctrl packs it into a smaller size. That's going to bite one day, it would be good
to fix it now we know its a problem.


>> We almost certainly need to compress the cache-id numbers down to {0,1,2} if
>> only so we
>> haven't filled all the exposed bits on day-1. (so it might not matter for arm64
>> either...)
> 
> That will be nice if we can compress it like that> I think we can leave the fix for now
> and come up with a solution when things gets really going.
> 
> Mean time I am trying to probe memory controller as well on our system and it looks
> like there are still issues.

Typo in the MBA picking code? Should be:
| if (!mpam_has_feature(mpam_feat_mbw_part, class->features) &&
|     !mpam_has_feature(mpam_feat_mbw_max, class->features)) {

It can do something useful with either of those features, but the (!part || !max)
previously forced it to have both.

(This still doesn't work on the model as its describing a 0-bit bitmap MBW_PART)


> I will debug and update if it really is a problem. Please
> let me know if you have any plans to update the branch so that I can try the latest.

I hope to push a new version by the end of June. (whoosh! There goes June).
http://www.linux-arm.org/git?p=linux-jm.git;a=shortlog;h=refs/heads/mpam/snapshot/jun

The changes in there are to avoid the known-issues when the same 'thing' is picked as both
L3 resource and the MBA resource.

I think the risk of sleeping-while-atomic if not all mpam:devices are accessible from all
CPUs in the resctrl:domain is my next highest priority issue...


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
