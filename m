Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43292122C72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:01:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfnFaRD6DzTVQGjIJKRbkAQMH1NN3kk9pVd2GLHIiT8=; b=et6RCWDEYPhRwx
	YvuSmMmal7jfC+8A9X/tpY7rG7sqjYcTsFNe3HIKRtMZgaon6TR7yRWjnTa9uN3IF7Jb0LeAWb3fY
	NZm+TIHftdkTUnmXm1tssIlvv6jfU92dD/LRGTuwVA6TBECO40qVAVskl3LkvnfJhCSGtTwHPTDcf
	f6nCm+H4GqGzNSp1lxovCzLtcqqXGRbdrySq7nF3R1xwYb+HgUvpDEUgPHQB/FsSOYDePdqUVc/Z2
	JwUu+s2MWhOHdWMWtRbOZ4S4mnsOTOiW6evQmeLHypXX1TsYR40Eqm2XGhe6HmQSCw70Rh4aygxue
	sNKrksODlDcug/hOW8Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihCTd-000439-Af; Tue, 17 Dec 2019 13:01:25 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihCTU-000420-De
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:01:18 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 383559BDEB357B89426A;
 Tue, 17 Dec 2019 21:01:03 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Tue, 17 Dec 2019
 21:00:54 +0800
Subject: Re: [PATCH] ACPI/IORT: fix the iort_id_map function
To: Pankaj Bansal <pankaj.bansal@nxp.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J
 . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
References: <20191215203303.29811-1-pankaj.bansal@nxp.com>
 <ffc5a6e9-cac3-d6c6-fe16-745b4f9e481f@huawei.com>
 <VI1PR0401MB2496E243F45C82E789B867A6F1510@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <eedbf670-00e2-93ce-06ac-469d6032ce74@huawei.com>
 <VI1PR0401MB2496DEA6CDEFD57C9427883FF1510@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB2496A549A21DD18B214A083BF1500@VI1PR0401MB2496.eurprd04.prod.outlook.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <3a3f4624-cbb0-390f-6285-d91663c82d87@huawei.com>
Date: Tue, 17 Dec 2019 21:00:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <VI1PR0401MB2496A549A21DD18B214A083BF1500@VI1PR0401MB2496.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_050116_632220_B3BEB244 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Jonathan Cameron <jonathan.cameron@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pankaj,

On 2019/12/17 19:58, Pankaj Bansal wrote:
[...]
>>>>>> Number of IDs = The number of IDs in the range minus one.
>>>>>
>>>>> Hmm, the spec is confusing, the spec may need to be updated, for
>>>>> example, for a PCI bus, device ID + function ID will take 8 bits
>>>>> and will be 256 IDs for that PCI bus, not sure why we need to minus one.
>>>>>
>>>>
>>>> I agree that this "minus one" thing is confusing. Not sure why It
>>>> was put in the spec like that. I guess they wanted the number of IDs
>>>> to be 0
>>> based instead of 1 based.
>>>>
>>>>>>
>>>>>> Therefore, it's valid for ID mapping to contain single device
>>>>>> mapping which would have Number of IDs field 0.
>>>>>
>>>>> Why not use single mapping flag for this case?
>>>>
>>>> Actually single mapping flag doesn't mean that there is single
>>>> mapping in
>>> an ID mapping.
>>>> It means that Input ID should not be considered when looking for
>>>> Output
>>> ID.
>>>> If we put single id flag, then we cannot have a case where we have
>>>> an array of single mappings for one device.
>>>> e.g. an array of single mappings for one PCIe Root Complex, where we
>>>> have a unique output ID for a unique BDF(Input ID)
>>>
>>> Agreed, single mapping flag is not working for multi-entris of single
>> mappings.
>>>
>>> Do you have a real use case for this fix? I'm thinking if we will
>>> break any delivered platforms with this patch applied, since this code
>>> is not changed from 2016, and it's the key logic for mapping the IDs.
>>
>> We have this use case in our platform NXP LX2160A, where we provide the
>> array of single mappings in IORT table. Actually we can only have limited
>> number of output IDs for PCIe devices, so we allocate unique output ID to
>> each BDF connected to a PCIe root complex and pass these IDs in IORT table.

Thanks for the detail information, it's quite useful.

>>
>>>
>>> I checked Hisilicon's ARM64 server platform, Number of IDs is equal to
>>> the number of IDs in the range in the firmware, which is not doing the
>>> same as the spec said, but (rid_in > map->input_base + map->id_count)
>>> is still valid with this patch applied, not sure for other platforms.
>>
>> I don't think that this patch would break any platform which has IORT table
>> defined as per spec.	
> 
> Let me rephase this to persuade you. This patch is *increasing* the allowed input
> IDs. Therefore, this patch would *include* more platforms and none of the existing
> Platforms can be affected by it, because already their Input IDs would fall in the allowed IDs.

Unfortunately it breaks systems (Number of IDs = The number of IDs in the range)
in this way:

PCI hostbridge mapping entry 1:
Input base:  0x1000
ID Count:    0x100
Output base: 0x1000
Output reference: 0xC4

PCI hostbridge mapping entry 2:
Input base:  0x1100
ID Count:    0x100
Output base: 0x2000
Output reference: 0xD4

Without your patch, Requester ID 0x1100 will be excluded to mapping
entry1, and will map to entry 2, pointing to ITS or SMMU 0xD4;

With your patch, will mapping to ITS or SMMU 0xC4. Correct me if I'm
wrong.

Also will not work if we update the firmware but leave the kernel
not updated.

Your patch is doing the right thing, but I need to figure out how to
avoid breaking the exiting system as well, the basic idea is to
workaroud the firmware issue with some OEM information such as
OEM ID/Table ID/Oem Revision in IORT table, please shout if you
have some other ideas.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
