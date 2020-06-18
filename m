Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDB11FEE81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 11:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6MPQUeyIAgy0g1ou/fQ3Sp4Xk1HARyxI/Pi7wv9STVE=; b=QiALm2FSR8kP4fKwI1CJXjcUt
	u5jSJgsF1nkmj8E5bUJh7rka2+09AlCwha1GsIxpPGxgwL/wcl+xVQAURrkssoncZzKp2lclbkzpb
	FW1nu488qjLnhnNZIhuEWfB4743SfmD/BfHg9P7SwZhT6Sq0Y5SUy755Et36sRRFKog5NVOgClBAv
	dbMTom+DxKgl/Ly/bTFg3ofl/uYfTXvpAPYL/LHR6mF9gvJPHjNLdJLcI8bf37UlnOSv2DSmt6LCi
	L4A1bifI8J6ANI+frsQYRXQkLsjv5JhZPRwLUzYnt0w7VETPt6HWjEdzZ6aU6heJacwIJGRP2598+
	++30h9uuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlqim-0000uG-S5; Thu, 18 Jun 2020 09:20:32 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqid-0000ta-Ew
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 09:20:25 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id F2C18BCA44432416FAA3;
 Thu, 18 Jun 2020 10:20:07 +0100 (IST)
Received: from [127.0.0.1] (10.210.165.247) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Thu, 18 Jun
 2020 10:20:07 +0100
Subject: Re: [PATCH] drivers/perf: hisi: Add identifier sysfs file
To: Shaokun Zhang <zhangshaokun@hisilicon.com>, <will@kernel.org>,
 <mark.rutland@arm.com>
References: <1592399111-134786-1-git-send-email-john.garry@huawei.com>
 <089b4276-a247-5d39-4227-32629d3ee888@hisilicon.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <086e0fd0-590b-8a95-5ac9-9d585e8a3342@huawei.com>
Date: Thu, 18 Jun 2020 10:18:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <089b4276-a247-5d39-4227-32629d3ee888@hisilicon.com>
Content-Language: en-US
X-Originating-IP: [10.210.165.247]
X-ClientProxiedBy: lhreml701-chm.china.huawei.com (10.201.108.50) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_022023_649643_4AEF87FF 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [185.176.76.210 listed in wl.mailspike.net]
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
Cc: linuxarm@huawei.com, jolsa@redhat.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, qiangqing.zhang@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/06/2020 02:40, Shaokun Zhang wrote:
>> }
>>   
>> +	hha_pmu->identifier = readl(hha_pmu->base + HHA_VERSION);
> Since we are now refactoring the PMU framework, the PMU version offset
> is always the same except DDRC PMU and other uncore PMU modules will
> also use this, how about we do it as the common code:
> 
> #define HISI_PMU_VERSION_REG   0x1CF0
> int hisi_uncore_pmu_version(struct hisi_pmu *hisi_pmu)
> {
>         return readl(hisi_pmu->base + HISI_PMU_VERSION_REG);
> }
> EXPORT_SYMBOL_GPL(hisi_uncore_pmu_version);

Hi Shaokun,

Some points to make:

- It's hardly worth having a separate function to do this 1-line readl() 
call, especially since it not even generic (DDRC is different)

- We would have to export it (or put in a common header file with static 
inline keywords) - less exports are good

- with factoring out common code, it's good to reduce total code - this 
change would increase it, AFAICS

- This is HW specific. The driver is currently layered such that all HW 
specific stuff is in the HW driver (like hisi_uncore_ddrc_pmu.c), and 
not library code (hisi_uncore_pmu.c). I don't see why you want to mix 
that, like you're proposing in the framework revision you proposed 
internally.

Thanks,
John

> 
> hha_pmu->identifier = hisi_uncore_pmu_version(hha_pmu);
> we can remove the duplicated PMU version register definition in each module.
> 
> Thanks,
> Shaokun
> 
>> +
>>   	return 0;
>>   }
>>   
>> @@ -320,10 +323,23 @@ static const struct attribute_group hisi_hha_pmu_cpumask_attr_group = {
>>   	.attrs = hisi_hha_pmu_cpumask_attrs,
>>   };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
