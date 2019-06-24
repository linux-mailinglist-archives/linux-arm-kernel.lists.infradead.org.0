Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD520519A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foVYMJPRuBRolGiVPVAvttDBi8j5fmNA/js4kwQPGo4=; b=gceNGx8OZc6/Mn
	whM7OxhxbqvjgtrP74tEiq3+C1uuKrrT6W1whS5wrcnmDFdtxihMOPjdtYLHftkPLirJZUaOEUJUa
	7tuL8RMpvRZbwpPuyLLgkHdTRoeLwVSe7Frkdgixp08hIgeokrIeJ1gN3bVDoTw1e+EFYaNnqvm8i
	mbl8G5WVoBxvA+kWsIOBd5VqYehK945gue81LX1erNvi8ffP+gzwPNKJsO2rk52BPgkCBEaWMrH6y
	aXJsR7OeqsiuyZW7sxEfWF63bU38FXYUJTj5ewkdIYyn2rvaKdANvIT/564bgj0mkHQKAQdPDDqNl
	m3nN1G9/JnSmrUHQQFkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSsv-0004LR-NM; Mon, 24 Jun 2019 17:36:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSsi-0004Kx-Fp
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:35:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 07DC0C0A;
 Mon, 24 Jun 2019 10:35:52 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E0AA3F718;
 Mon, 24 Jun 2019 10:35:50 -0700 (PDT)
Subject: Re: MPAM branch verification (was RE: [RFC PATCH 2/2] ACPI / PPTT:
 cacheinfo: Label caches based on fw_token)
To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
References: <5FC3163CFD30C246ABAA99954A238FA83F2B38FD@lhreml524-mbs.china.huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <d3341796-d7ce-8b1b-3575-333eda7e6d07@arm.com>
Date: Mon, 24 Jun 2019 18:35:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5FC3163CFD30C246ABAA99954A238FA83F2B38FD@lhreml524-mbs.china.huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_103552_623406_06CA8A0A 
X-CRM114-Status: GOOD (  18.46  )
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
Cc: Vijaya Kumar K <vkilari@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Tomasz Nowicki <Tomasz.Nowicki@cavium.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>,
 "Guohanjun \(Hanjun Guo\)" <guohanjun@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, Jeremy Linton <jeremy.linton@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "wangxiongfeng \(C\)" <wangxiongfeng2@huawei.com>,
 Richard Ruigrok <rruigrok@qti.qualcomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shameer,

On 21/06/2019 16:57, Shameerali Kolothum Thodi wrote:
>> -----Original Message-----
>> From: James Morse [mailto:james.morse@arm.com]

>> Subject: Re: [RFC PATCH 2/2] ACPI / PPTT: cacheinfo: Label caches based on
>> fw_token

>>> and noted that
>>> on our HiSilicon platform all the L3 cache were labeled with the same Id.
>> Debugging> revealed that the above leaf node check was removed in this
>> branch[2] which makes
>>> the min_physid calculation going wrong.

>>> Just wondering is there any particular reason
>>> for removing the check or the branch is not carrying the latest patch?
>>
>> Nope, that's a bug.
>>
>> Jeremy Linton's review feedback[0] was that that PROCESSOR_ID_VALID flag
>> can't be relied
>> on. It looks like I over-zealously removed the whole if(), and this doesn't cause a
>> problem with my pptt so I didn't notice.
>>
>> I've fixed it locally, I've also pushed a fix to those branches, but it will get folded
>> in
>> next time I push a branch.
> 
> Thanks for that.
> 
> Apart from the above, I have come across few other issues as well and had some
> temporary fixes to the branch here[0]. This is encountered while trying to get the
> resctrl fs mounted and attempted a cqm test run using resctrl_tests tool. 

Thanks! I haven't run that on the model yet as I want it to get the monitors working first.

If you are seeing bugs in that monitor code, beware you're the only person to ever run it!


> The fixes may not be proper ones, but I think it will give you an idea. Please take a
> look and let me know your thoughts.

{,!} exposed_mon_capable, yup that's a typo.

the evt_list being uninitialised is because that code has never run, as noted in the
KNOWN_ISSUES, (The model doesn't expose have any of the mpam counters...)

Issues around component->resource mapping will disappear as I've re-written all that to
fix issues around picking the same resource twice.


The domid bitfield not being big enough for the width of the cacheinfo id field looks like
a bug in the existing resctrl code. Could you spin that as a patch against mainline?

It won't affect any x86 system, but I don't want to 'fix' anything as part of the mpam
support.

We almost certainly need to compress the cache-id numbers down to {0,1,2} if only so we
haven't filled all the exposed bits on day-1. (so it might not matter for arm64 either...)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
