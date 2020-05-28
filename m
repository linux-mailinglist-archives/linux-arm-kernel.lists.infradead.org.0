Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA081E532C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qp8bOHsifbFR1LhpF7LY24sGrQZrkb4vu2GX8MyVZtU=; b=V6NsbR2rIdmnMN
	6hnsAQ4wcb/NBUPPYvmIHvqfju0M+gQvHHgaPNvTMJZODnXfGPOX4qAAnma8edSwpH11BQjmAl6cO
	j7quYnSDt1R/EpWAZkSE3qBfYJNTPNp7kn3Adm4ex7tLckHtWrEeLh0iSPf+Pz9wmsvJ9x1BB7/Y3
	bxYLQl1hAtO5akK96+4TW1aZxAZ5KcloNZj6ef0j3n/gMOZWcmu7nkqtgNsyt5S1idg7GIdRtXekd
	yTlnaq3VRi0uXuFKqXI4x2+cbEDELK9neX9+F7As1as8UHFTnQUEkWVP3MnZ297HQQI/jOVXbD37E
	6KG0iB7fFoAfoKMgrtgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7U5-0000SB-P3; Thu, 28 May 2020 01:37:25 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7S8-0007e7-3w
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:35:28 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4A5E2CDD85FBA056B940;
 Thu, 28 May 2020 09:35:19 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Thu, 28 May 2020
 09:35:12 +0800
Subject: Re: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier for
 userspace
To: John Garry <john.garry@huawei.com>, Will Deacon <will@kernel.org>, "Rob
 Herring" <robh@kernel.org>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
 <20200519185125.GB453195@bogus> <20200520073304.GA23534@willie-the-truck>
 <CAL_JsqJfQ0PFy5mmwSG4aM91ghq5xiAEPR2YZOymws+BfGa+uA@mail.gmail.com>
 <20200521130415.GB5949@willie-the-truck>
 <c3be06c5-781f-384f-768b-d809da99b7e0@huawei.com>
 <51aa7cbc-0ce2-b96d-b056-fcc6013ccecf@huawei.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <36a5bf0c-fcf5-ad74-b5ee-1b4502705aec@hisilicon.com>
Date: Thu, 28 May 2020 09:35:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <51aa7cbc-0ce2-b96d-b056-fcc6013ccecf@huawei.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_183524_347043_964953A1 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 2020/5/27 22:34, John Garry wrote:
>>>>>
>>>>> I also really dislike this. What's the preferred way to identify the SoC
>>>>> from userspace?
>>>>
>>>> /proc/cpuinfo? ;)
>>>
>>> The *SoC*!
>>>
>>>> For an non-firmware specific case, I'd say soc_device should be. I'd
>>>> guess ACPI systems don't use it and for them it's dmidecode typically.
>>>> The other problem I have with soc_device is it is optional.
>>>
>>
>> Hi Will,
>>
>>> John -- what do you think about using soc_device to expose this information,
>>> with ACPI systems using DMI data instead?
>>
>> Generally I don't think that DMI is reliable, and I saw this as the least preferred choice. I'm looking at the sysfs DMI info for my dev board, and I don't even see anything like a SoC identifier.
>>
>> As for the event_source device sysfs identifier file, it would not always contain effectively the same as the SoC ID.
>>
>> Certain PMUs which I'm interested in plan to have probe-able identification info available in future.
>>
> 
> BTW, Shaokun now tells me that the HiSi uncore PMU HW have such registers to identify the implementation. I didn't know.
> 

Right, we have this register which shows the PMU version.

Thanks,
Shaokun


> So we could add that identifier file for those PMUs as proof-of-concept, exposing that register.
> 
> As for other PMUs which I'm interested in, again, future versions should have such registers to self-identify.
> 
> So using something derived from the DT compat string would hopefully be the uncommon case.
> 
> Cheers,
> John
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
