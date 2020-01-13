Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ECE138C26
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 08:05:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hAL6E3h3tUECpGGpAACWsCTzQsK5bwCHTsHzeHNfHk=; b=Hwai1WUyuog6JU
	twKCAw6sZ+BzDu9Su9Lmm5Z4rYJUZ3mZiIF3Zqu3YRLKOgo7/HMWGlthEK80okxujrfk9C5HNfvFD
	ElGoQLbZ9G732V3LDlLFuMtLFxr/rM/h34btly19LwO6fazUI8YtvwrODuYqorbKEDTsu9VP6SDZM
	0T1zp/5GtgWA98Kg30dxhMFeXVJxxXsohvFRcQ72xvBjTYMPJl1OFV+dv6fBJhL2YJs51lXlLpXEe
	UtyPfNKp3oHNTeiA/oQqjVPg2+sWfB92m+ArHvOlYWw62djaesOIs5RqmV7i8m1wuroNyzAWWEHWl
	MFfku1aPfcdONPFKbZqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtn1-0006M6-TH; Mon, 13 Jan 2020 07:05:31 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtms-0006LV-7H
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 07:05:24 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 90D8B53AD7DB6C6596EA;
 Mon, 13 Jan 2020 15:05:16 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Mon, 13 Jan 2020
 15:05:07 +0800
Subject: Re: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one"
 issue
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
 <20200110121148.GA22244@e121166-lin.cambridge.arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <3b45e62a-89bf-a950-d3de-1435cba9d1a8@huawei.com>
Date: Mon, 13 Jan 2020 15:04:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20200110121148.GA22244@e121166-lin.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_230522_430790_9ABCC85F 
X-CRM114-Status: GOOD (  12.01  )
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/1/10 20:11, Lorenzo Pieralisi wrote:
> On Mon, Dec 30, 2019 at 08:27:04PM +0800, Hanjun Guo wrote:
>> The IORT spec [0] says Number of IDs = The number of IDs in the range minus
>> one, it is confusing but it was written down in the first version of the
>> IORT spec. But the IORT ID mapping function iort_id_map() did something
>> wrong from the start, which bails out if:
>>
>> the request ID >= the input base + number of IDs
>>
>> This is wrong because it ignored the "minus one", and breaks some valid
>> usecases such as ID mapping to contain single device mapping without
>> single mapping flag set.
>>
>> Pankaj Bansal proposed a solution to fix the issue [1], which bails
>> out if:
>>
>> the request ID > the input base + number of IDs
>>
>> This works as the spec defined, unfortunately some firmware didn't
>> minus one for the number of IDs in the range, and the propoased
>> solution will break those systems in this way:
>>
>> PCI hostbridge mapping entry 1:
>> Input base:  0x1000
>> ID Count:    0x100
>> Output base: 0x1000
>> Output reference: 0xC4  //ITS reference
>>
>> PCI hostbridge mapping entry 2:
>> Input base:  0x1100
>> ID Count:    0x100
>> Output base: 0x2000
>> Output reference: 0xD4  //ITS reference
>>
>> Two mapping entries which the second entry's Input base = the first
>> entry's Input base + ID count, so for requester ID 0x1100 will map
>> to ITS 0xC4 not 0xD4 if we update '>=' to '>'.
>>
>> So introduce a workaround to match the IORT's OEM information for
>> the broken firmware, also update the logic of the ID mapping for
>> firmwares report the number of IDs as the IORT spec defined, to
>> make the code compatible for both kinds of system.
>>
>> I checked the ACPI tables in the tianocore/edk2-platforms [2], only
>> HiSilicon HIP07/08 did wrong, so just add HIP07/08 to the workaround
>> info table, if we break other platforms, we can add that later.
>>
>> [0]: http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
>> [1]: https://patchwork.kernel.org/patch/11292823/
>> [2]: https://github.com/tianocore/edk2-platforms
>>
>> Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
>> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> 
> Commit log rewritten below - please update the code (and check the
> log) as per this thread discussion.

Thank you, I will resend it ASAP.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
