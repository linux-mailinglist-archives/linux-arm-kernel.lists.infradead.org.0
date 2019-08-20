Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D2A95A8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 11:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IDw7+O/V1MxZr+YhC5WNZLvAKoJ1ZUik//xXLxruoQI=; b=Z9tMICc4X+pRgH6lTrlYZJJVB
	CNYXo3ZzmLLD01Y05iybgRmgmPc/OBXZ/UHRsAOqnPMzKonUymVsua043NVieFtkLz/Jy32TovFny
	kBFrTQTZ5bvRDiZhVpXulWPqf6WnCBZuT+ROZlIlVJvRiZjCfCblsS/TzElE4ugun/ZLUjfu7Aixa
	jelnLX7QXVRc2JQxSy/7rBxrI1t4Yi13eK5vpHXHaad6P8uodKSUO1Ja7km8jICOrrqMl1Vr8t5Mh
	USJiJmDGEi/dg0DdcoSu63AcXPITySSq/omWQToCxrXrTW1WrFgBMgg96x+42WWOVpXkoYsjN0xmS
	QbOFBHlrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i002E-0008U9-EP; Tue, 20 Aug 2019 09:02:34 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i001w-0008Ti-Le
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 09:02:18 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6915A5821CB23C58AC55;
 Tue, 20 Aug 2019 17:02:12 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 20 Aug 2019 17:02:04 +0800
From: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v4 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Will Deacon <will@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>
References: <20190808204007.30110-1-jeremy.linton@arm.com>
 <20190808204007.30110-2-jeremy.linton@arm.com>
 <20190808222518.5q4fhd2tvs4lb6aw@rric.localdomain>
 <CAJZ5v0imn0X=M38LJcwe76gfLafWGU+MgyGd=NuKAeDtNZ+1DQ@mail.gmail.com>
 <20190812115907.kugk57jvv3g2r66a@willie-the-truck>
Message-ID: <a2960c68-d422-3cdb-4354-6f357433ad6c@huawei.com>
Date: Tue, 20 Aug 2019 10:01:57 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190812115907.kugk57jvv3g2r66a@willie-the-truck>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_020217_282912_3B5CFE86 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/08/2019 12:59, Will Deacon wrote:
> On Mon, Aug 12, 2019 at 11:06:07AM +0200, Rafael J. Wysocki wrote:
>> On Fri, Aug 9, 2019 at 12:25 AM Robert Richter <rrichter@marvell.com> wrote:
>>>
>>> On 08.08.19 15:40:06, Jeremy Linton wrote:
>>>> ACPI 6.3 adds a flag to the CPU node to indicate whether
>>>> the given PE is a thread. Add a function to return that
>>>> information for a given linux logical CPU.
>>>>
>>>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>>>> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
>>>> ---
>>>>  drivers/acpi/pptt.c  | 53 +++++++++++++++++++++++++++++++++++++++++++-
>>>>  include/linux/acpi.h |  5 +++++
>>>>  2 files changed, 57 insertions(+), 1 deletion(-)
>>>
>>> Reviewed-by: Robert Richter <rrichter@marvell.com>
>>
>> Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>>
>> and please push it through ARM64 along with the second patch.
>
> Thanks. I'll push these into -next shortly.


Hi Jeremy,

We're considering requesting this support is backported to stable. We 
have a platform which incorrectly sets the MT bit. To update our 
firmware to PPTT v2, we need the kernel to support PPTT v2 also.

Please let me know if you anticipate an issue in this.

Cheers,
John

>
> Will
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
