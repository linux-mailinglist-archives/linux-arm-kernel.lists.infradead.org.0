Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF347D809
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGkqU9ezSPD90IjGlK1ucbYxfzzbocVehhGlNcdBlow=; b=WCBmY7ArDZWlly
	nG0gyxGLv7ZrU7nsNE+oNE+sgrRxJNKgvO5DOyo3GKssZBJxOJRzflXlrW7TJhSNaDLHdTqbyV0HG
	cniSutwjtr0/+SrEwQsR/3diW7aDfEXiyH1DrWLB8SOS11IpJTBFQJGmIzA3mbu3h7yDYjDz64x5R
	lkl93NTK77q7JS5ZGLQcsByEpUlbhQOwZceUV0vDgpE6EvTgDB66YGrw37+ZZieyHOK2D8F3TmVaf
	1EGrYGPb1MTpd62UN5S3QM7WWW8e/L6p3d/cB6JdvSYd0E/7s+Pp7LHjOYHfeDgqetHVXgcwyeBvF
	L4obgqI584C1rSoK+Ujw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6mj-0008FR-D2; Thu, 01 Aug 2019 08:50:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6mb-0008F6-Qo
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:49:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 19CAD337;
 Thu,  1 Aug 2019 01:49:57 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3938A3F694;
 Thu,  1 Aug 2019 01:49:55 -0700 (PDT)
Subject: Re: [PATCH v4.4 V2 25/43] arm64: Move BP hardening to
 check_and_switch_context
To: Greg KH <greg@kroah.com>, Will Deacon <will@kernel.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <f655aaa158af070d45a2bd4965852b0c97a08838.1562908075.git.viresh.kumar@linaro.org>
 <59b252cf-9cb7-128b-4887-c21a8b9b92a9@arm.com>
 <20190801050940.h65crfawrdifsrgg@vireshk-i7>
 <86354576-fc54-a8b7-4dc9-bc613d59fb17@arm.com>
 <20190801063544.ruw444isj5uojjdx@vireshk-i7>
 <20190801065700.GA17391@kroah.com>
 <20190801070541.hpmadulgp45txfem@vireshk-i7>
 <20190801073444.4n45h6kcbmejvzte@willie-the-truck>
 <20190801084354.GA1085@kroah.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <bfa41364-6e98-2b1a-6584-6d956c99cfcc@arm.com>
Date: Thu, 1 Aug 2019 09:49:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190801084354.GA1085@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_014957_994742_632D8740 
X-CRM114-Status: GOOD (  15.03  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/08/2019 09:43, Greg KH wrote:
> On Thu, Aug 01, 2019 at 08:34:45AM +0100, Will Deacon wrote:
>> On Thu, Aug 01, 2019 at 12:35:41PM +0530, Viresh Kumar wrote:
>>> On 01-08-19, 08:57, Greg KH wrote:
>>>> On Thu, Aug 01, 2019 at 12:05:44PM +0530, Viresh Kumar wrote:
>>>>> On 01-08-19, 07:30, Julien Thierry wrote:
>>>>>> I must admit I am not familiar with backport/stable process enough. But
>>>>>> personally I think the your suggestion seems more sensible than
>>>>>> backporting 4 patches.
>>>>>>
>>>>>> Or you can maybe ignore patch 25 and say in patch 24 that among the
>>>>>> changes made for the 4.4 codebase, the call arm64_apply_bp_hardening()
>>>>>> was moved from post_ttbr_update_workaround as it doesn't exist and
>>>>>> placed in check_and_switch_context() as it is its final destination.
>>>>>
>>>>> Done that and dropped the other two patches.
>>>>>
>>>>>> However, I really don't know what's the best way to proceed according to
>>>>>> existing practices. So input from someone else would be welcome.
>>>>>
>>>>> Lets see if someone comes up and ask me to do something else :)
>>>>
>>>> Keeping the same patches that upstream has is almost always the better
>>>> thing to do in the long-run.
>>>
>>> That would require two additional patches to be backported, 22 and 23
>>> from this series. From your suggestion it seems that keeping them is
>>> better here ?
>>
>> Yes. Backporting individual patches as they appear upstream is definitely
>> the preferred method for -stable. It makes the relationship to mainline
>> crystal clear, as well as any dependencies between patches that have been
>> backported. Everytime we tweak something unecessarily in a stable backport,
>> it just creates the potential for confusion and additional conflicts in
>> future backports, so it's best to follow the shape of upstream as closely as
>> possible, even if it results in additional patches.
>>
>> So I wouldn't worry about total number of patches. I'd worry more about
>> things like conflicts, deviation from mainline and overall testing coverage.
> 
> That is exactly correct, thanks for saying it better than I could :)
> 

Thanks, I'll try to keep those guidelines in mind for my future comments
on backports.

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
