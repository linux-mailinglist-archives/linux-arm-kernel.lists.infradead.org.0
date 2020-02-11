Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEDE159288
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O6KXq77yPtunWiHVkNP+tgyZ3h/IZS1dpx3sE0dyG4I=; b=OEYk3Cyyw0xBEfS4qUmby4E66
	d158bVqGQO1peSqb9DmC6MWQ3L4tE56NYvb4b810vBpYzbxbImehPAE2bhFbqkQMEtsUTK6MMohHZ
	QtoClUfA6YmfH0zvcLYpvBMg8t7lihYXSFgJ44nfLoKIM11U3W0tme8TAnfB/TUQPsyaT2eskUQAq
	GxGOcI74vLuxS5IObwRhcqV/pRHbgokwj7MSwg5y9wUcmMdvvh+ylQ1GhdqLhnPu8uLeKW013dPa7
	Ro6+A1q8NqyyzFAbz79fwRvFvmlX2KxsydpVx+KVKSm4jBoDH4tIMAnKXQ+JxJKtUsyRvFIJQVaq5
	QcrcHIaig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1X8y-0003a6-Ho; Tue, 11 Feb 2020 15:08:08 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1X8e-0003IE-Ag
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:07:50 +0000
Received: from LHREML713-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 8D03C9F91ED670DD7329;
 Tue, 11 Feb 2020 15:07:33 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML713-CAH.china.huawei.com (10.201.108.36) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 11 Feb 2020 15:07:33 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 11 Feb
 2020 15:07:33 +0000
Subject: Re: [PATCH RFC 5/7] perf pmu: Support matching by sysid
To: Jiri Olsa <jolsa@redhat.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-6-git-send-email-john.garry@huawei.com>
 <20200210120759.GG1907700@krava>
 <63799909-067b-e5f4-dcf1-9ba1ec145348@huawei.com>
 <20200211134704.GB93194@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <2a51ce93-fa68-8088-f31f-2fd692253335@huawei.com>
Date: Tue, 11 Feb 2020 15:07:31 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200211134704.GB93194@krava>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml720-chm.china.huawei.com (10.201.108.71) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_070748_640751_E7DC0700 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/2020 13:47, Jiri Olsa wrote:

Hi Jirka,

>>>> +
>>>> +	return buf;
>>>> +}
>>>> +
>>
>> I have another series to add kernel support for a system identifier sysfs
>> entry, which I sent after this series:
>>
>> https://lore.kernel.org/linux-acpi/1580210059-199540-1-git-send-email-john.garry@huawei.com/
>>
>> It is different to what I am relying on here - it uses a kernel soc driver
>> for firmware ACPI PPTT identifier. Progress is somewhat blocked at the
>> moment however and I may have to use a different method:
>>
>> https://lore.kernel.org/linux-acpi/20200128123415.GB36168@bogus/
> 
> I'll try to check ;-)

Summary is that there exists an ACPI firmware field which we could 
expose to userspace via sysfs - this would provide the system id. 
However there is a proposal to deprecate it in the ACPI standard and, as 
such, would prefer that we don't add kernel support for it at this stage.

So I am evaluating the alternative in the meantime, which again is some 
firmware method which should allow us to expose a system id to userspace 
via sysfs. Unfortunately this is arm specific. However, other archs can 
still provide their own method, maybe a soc driver:

Documentation/ABI/testing/sysfs-devices-soc#n15

> 
>>
>>>> +static char *perf_pmu__getsysid(void)
>>>> +{
>>>> +	char *sysid;
>>>> +	static bool printed;
>>>> +
>>>> +	sysid = getenv("PERF_SYSID");
>>>> +	if (sysid)
>>>> +		sysid = strdup(sysid);
>>>> +
>>>> +	if (!sysid)
>>>> +		sysid = get_sysid_str();
>>>> +	if (!sysid)
>>>> +		return NULL;
>>>> +
>>>> +	if (!printed) {
>>>> +		pr_debug("Using SYSID %s\n", sysid);
>>>> +		printed = true;
>>>> +	}
>>>> +	return sysid;
>>>> +}
>>>
>>> this part is getting complicated and AFAIK we have no tests for it
>>>
>>> if you could think of any tests that'd be great.. Perhaps we could
>>> load 'our' json test files and check appropriate events/aliasses
>>> via in pmu object.. or via parse_events interface.. those test aliases
>>> would have to be part of perf, but we have tests compiled in anyway
>>
>> Sorry, I don't fully follow.
>>
>> Are you suggesting that we could load the specific JSONs tables for a system
>> from the host filesystem?
> 
> I wish to see some test for all this.. I can only think about having
> 'test' json files compiled with perf and 'perf test' that looks them
> up and checks that all is in the proper place

OK, let me consider this part for perf test support.

Thanks,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
