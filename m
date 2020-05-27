Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0D71E4607
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 16:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EUYwnVti7CLVsLFGuN0HYm6WyxmhW9Bsredj8sZ8LpY=; b=VHLydcgMurf0OWbhFjRPZtdlx
	VEKmMe7w1B/VTQQpYlSxK80u6rK5GjHQSxemqwW2MqU0So/LTJyIHSpI2Xy7nUe+bmDWnnavT4k+H
	x2cSADpAdgqhflfiLSv/t+P4Uo+Zz+lXRarW4Kb+tw6HlxxFq1phnNDgcjiYLFDusv8UkObb5QbNr
	byx/9RaC4WqUkdvxVw89yla6gnJzilEFpKCHrTQGNkoR3Xv3eGYq6J0aCS1V+0xC34PW9N6wkWpIh
	DGgtl+rX3tSPcebQxejKnLAFkVuKA15C+4FEDhLXEJES4yzcR26r3IuEjHyEmH6bikLqhnSavPNm+
	GPMhEONcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxAS-00076Q-HZ; Wed, 27 May 2020 14:36:28 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxAI-00074r-VP
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 14:36:20 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id B48B11895055C8A31AB1;
 Wed, 27 May 2020 15:35:53 +0100 (IST)
Received: from [127.0.0.1] (10.47.6.244) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 27 May
 2020 15:35:52 +0100
From: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier for
 userspace
To: Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
 <20200519185125.GB453195@bogus> <20200520073304.GA23534@willie-the-truck>
 <CAL_JsqJfQ0PFy5mmwSG4aM91ghq5xiAEPR2YZOymws+BfGa+uA@mail.gmail.com>
 <20200521130415.GB5949@willie-the-truck>
 <c3be06c5-781f-384f-768b-d809da99b7e0@huawei.com>
Message-ID: <51aa7cbc-0ce2-b96d-b056-fcc6013ccecf@huawei.com>
Date: Wed, 27 May 2020 15:34:48 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <c3be06c5-781f-384f-768b-d809da99b7e0@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.47.6.244]
X-ClientProxiedBy: lhreml717-chm.china.huawei.com (10.201.108.68) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_073619_152639_51EC390A 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
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
 Zhangshaokun <zhangshaokun@hisilicon.com>, NXP Linux Team <linux-imx@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>>>>
>>>> I also really dislike this. What's the preferred way to identify the 
>>>> SoC
>>>> from userspace?
>>>
>>> /proc/cpuinfo? ;)
>>
>> The *SoC*!
>>
>>> For an non-firmware specific case, I'd say soc_device should be. I'd
>>> guess ACPI systems don't use it and for them it's dmidecode typically.
>>> The other problem I have with soc_device is it is optional.
>>
> 
> Hi Will,
> 
>> John -- what do you think about using soc_device to expose this 
>> information,
>> with ACPI systems using DMI data instead?
> 
> Generally I don't think that DMI is reliable, and I saw this as the 
> least preferred choice. I'm looking at the sysfs DMI info for my dev 
> board, and I don't even see anything like a SoC identifier.
> 
> As for the event_source device sysfs identifier file, it would not 
> always contain effectively the same as the SoC ID.
> 
> Certain PMUs which I'm interested in plan to have probe-able 
> identification info available in future.
> 

BTW, Shaokun now tells me that the HiSi uncore PMU HW have such 
registers to identify the implementation. I didn't know.

So we could add that identifier file for those PMUs as proof-of-concept, 
exposing that register.

As for other PMUs which I'm interested in, again, future versions should 
have such registers to self-identify.

So using something derived from the DT compat string would hopefully be 
the uncommon case.

Cheers,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
