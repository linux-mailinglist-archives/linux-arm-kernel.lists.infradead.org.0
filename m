Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893171AE953
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 04:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZGZw5dFfLinfkgNg0guLG/5Wr7RJVPeSl1A3TBCzq6g=; b=HgcgWuMKeYs0O5woYVoZ9D4mM
	a4O6j6EWr9GJfEbMZ8UGKWHIDR1aroRvph9bIk8ZDbaNLp00YaEHszQCrcco+aOrhORTwgT/epc9p
	6/Vl5y5QX0II9cqhbYre1FyPYzPNP+KwAJ+znEIshajKPy+agur73lj/55+yRmyjZkI7e+AfGZGAJ
	rmqRDDFNi0sTE72f/gAfLtng1k6se48l/rWIHXfPo3ANXQF05eaMg0fKmYIF7JCrdFyr5CbUusik7
	TgUjrh1FL5LgLd3CckRgRuZTVWhBVnFHPbKTbY6x/L8/hQGA9PzxNFrjyBJNtD4JL0kRh918gUNcC
	M17TxfXKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPd2I-0000gc-IX; Sat, 18 Apr 2020 02:16:50 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPd29-0000bj-1q
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 02:16:42 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 02A29E93685C5E254919;
 Sat, 18 Apr 2020 10:16:25 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Sat, 18 Apr 2020
 10:16:15 +0800
Subject: Re: ACPI support for System Control and Management Interface (SCMI)
To: Souvik Chakravarty <Souvik.Chakravarty@arm.com>, Sudeep Holla
 <Sudeep.Holla@arm.com>
References: <52a50069-7140-b9b4-31b4-8c99e8c0d991@huawei.com>
 <20200414105424.GB17835@bogus>
 <DBBPR08MB4790D0779B7933EEF5C1689F82DA0@DBBPR08MB4790.eurprd08.prod.outlook.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <e5e56ffc-6c7b-4e4c-7a85-5cc5c557e960@huawei.com>
Date: Sat, 18 Apr 2020 10:16:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <DBBPR08MB4790D0779B7933EEF5C1689F82DA0@DBBPR08MB4790.eurprd08.prod.outlook.com>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_191641_264428_0E33BAB8 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Thanu Rangarajan <Thanu.Rangarajan@arm.com>,
 John Garry <john.garry@huawei.com>, Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Matteo Carlini <Matteo.Carlini@arm.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Charles Garcia-Tobin <Charles.Garcia-Tobin@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep, Souvik,

On 2020/4/14 20:08, Souvik Chakravarty wrote:
>> From: Sudeep Holla <sudeep.holla@arm.com>
>> Subject: Re: ACPI support for System Control and Management Interface
>> (SCMI)
>>
>> On Fri, Apr 10, 2020 at 10:26:41AM +0800, Hanjun Guo wrote:
>>> Hi Sudeep,
>>>
>>> We are working on the enablement of SCMI for Kunepeng920, which is a
>>> server chip using ACPI, but I didn't see the ACPI support in the
>>> mainline kernel for SCMI.
>>>
>>> Kunpeng920 and the upcomming Kunpeng930 have thermal sensors and
>> other
>>> system management features which needs the SCMI for abstraction layer,
>>> do we have plan to support ACPI for SCMI?
>>>
>>
>> Yes and No.
>>
>> Yes, because the same SCMI compliant firmware needs to work with ACPI as
>> SCMI is designed so.
>>
>> No, because we don't plan to add another SCMI layer below ACPI in the
>> kernel. ACPI specification was extended to support special PCC types to
>> support the same. IIUC things like sensors are supported using power meter
>> objects in ACPI and you must be able to use PCC opregion for it or any
>> custom mechanism to achieve that. However one need to add PCC opregion
>> handler in Linux. The main idea is you must use existing ACPI methods and
>> we don't plan to add anything special for SCMI.
> 
> Additionally, if you already have an SCMI compliant firmware that uses 
> Shared Memory based transport, it is compatible with PCC Type 3 Channels > in ACPI.

We had a disscusion interally (with firmware folks) and this works
for our sensor usecase too, thanks!

> 
>>
>> SCMI Perf protocol is compatible with CPPC. We can discuss details once you
>> explore PCC opregion or any alternative you come up with. I am no ACPI
>> firmware expert and I reckon you may have other interesting ideas.

Sensor works via PCC channels, and SCMI based clock/reset/cpufreq also
have other abstraction level to make it work on ACPI based system,
so for now no more requirements are needed, I will update if we got
new ones :)

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
