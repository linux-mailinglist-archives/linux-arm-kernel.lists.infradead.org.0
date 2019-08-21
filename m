Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED06F97A90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ogVf9SErmFUKMZnuuvntcYy8oLJpKWeSjZCYeAwChag=; b=WWAAKJNHMBI0/uWP1y3hNQqTT
	xWqcIKJMlpAzXecbit8U6pN7uozz/moIHcNeaiYIvJA+UxLcH4Hye528/V4km7uGbTaZIWFshVgx1
	TEOrpD7h1yFwcQpv0kL2IHkTgnXYCafJDjLtT2cvztsVeibI+Flv/93847+DsEWFO8EYOYfTMgzCm
	/UpXkxdCCI71JLK/qCS4G8S8Q1F4MkQsOuP+4zVNir5XMQWDM0ym4Pnjbd8Kc/rzQUErtLfG6a6Od
	fonJbOrKMsKXa6F45WCO5mmfu1u3QpNNYD2zJ55ozhr12LEciGz/1JCXfXdfnjwHLPvxP/2eD5dcb
	/+NncdLgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0QXd-0007ND-0Q; Wed, 21 Aug 2019 13:20:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0QXI-0007Mt-S6
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 13:20:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84568337;
 Wed, 21 Aug 2019 06:20:21 -0700 (PDT)
Received: from [192.168.122.164] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B8ED3F706;
 Wed, 21 Aug 2019 06:20:21 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: John Garry <john.garry@huawei.com>, Will Deacon <will@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
References: <20190808204007.30110-1-jeremy.linton@arm.com>
 <20190808204007.30110-2-jeremy.linton@arm.com>
 <20190808222518.5q4fhd2tvs4lb6aw@rric.localdomain>
 <CAJZ5v0imn0X=M38LJcwe76gfLafWGU+MgyGd=NuKAeDtNZ+1DQ@mail.gmail.com>
 <20190812115907.kugk57jvv3g2r66a@willie-the-truck>
 <a2960c68-d422-3cdb-4354-6f357433ad6c@huawei.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <72ee16ea-1038-37a1-25b1-f28b5c6b6edb@arm.com>
Date: Wed, 21 Aug 2019 08:20:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <a2960c68-d422-3cdb-4354-6f357433ad6c@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_062024_953899_16A71C09 
X-CRM114-Status: GOOD (  16.69  )
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
Cc: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "rric@kernel.org" <rric@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, wanghuiqiang <wanghuiqiang@huawei.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 8/20/19 4:01 AM, John Garry wrote:
> On 12/08/2019 12:59, Will Deacon wrote:
>> On Mon, Aug 12, 2019 at 11:06:07AM +0200, Rafael J. Wysocki wrote:
>>> On Fri, Aug 9, 2019 at 12:25 AM Robert Richter <rrichter@marvell.com> =

>>> wrote:
>>>>
>>>> On 08.08.19 15:40:06, Jeremy Linton wrote:
>>>>> ACPI 6.3 adds a flag to the CPU node to indicate whether
>>>>> the given PE is a thread. Add a function to return that
>>>>> information for a given linux logical CPU.
>>>>>
>>>>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>>>>> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
>>>>> ---
>>>>> =A0drivers/acpi/pptt.c=A0 | 53 =

>>>>> +++++++++++++++++++++++++++++++++++++++++++-
>>>>> =A0include/linux/acpi.h |=A0 5 +++++
>>>>> =A02 files changed, 57 insertions(+), 1 deletion(-)
>>>>
>>>> Reviewed-by: Robert Richter <rrichter@marvell.com>
>>>
>>> Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>>>
>>> and please push it through ARM64 along with the second patch.
>>
>> Thanks. I'll push these into -next shortly.
> =

> =

> Hi Jeremy,
> =

> We're considering requesting this support is backported to stable. We =

> have a platform which incorrectly sets the MT bit. To update our =

> firmware to PPTT v2, we need the kernel to support PPTT v2 also.
> =

> Please let me know if you anticipate an issue in this.

No I don't see any issues with that once it lands.

I believe the ball is rolling in the case of some older distro kernel's =

as well.

Thanks,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
