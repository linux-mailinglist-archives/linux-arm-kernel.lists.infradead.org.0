Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928F61C1ABA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xul+vorcDBbTQ2TaOSTtfZwxtd8rUvdoS60c9GmebRU=; b=ZmepQzHUFVBcHsU8X3UaPFn4W
	un0FaVrbUV7yfAwc5C2EkKOTww3Y114vuPO860eGOLvgF61GutCNYuGg3qP7sgZXkRBrHObPTgSJg
	PdBdxEH91p8OTLFTyMeKqokhESyi38FZgRqWueTttXblFwqo5P4Vmeo0HMBE4hrD/VZDAgmig9RbR
	loAPTueiLQoPvlLzTQ9CqKctpfxGlqzAvzpB6w0i8wyg9RQrrVet5won34y48vzY1LlBROic4e7fO
	Z5Rqd9IhnSDIAsyllaQMs9m6ZEcG1FCuy52AmyG/RNloXLCxJ7Ljj6qsSOmUM7FYbJ3j57ug69vBk
	1i+INrjVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYim-0008OY-32; Fri, 01 May 2020 16:41:04 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYif-0008NP-Nr
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:40:59 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id C1CF8C4B4B34BF9888AE;
 Fri,  1 May 2020 17:40:51 +0100 (IST)
Received: from [127.0.0.1] (10.47.3.165) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Fri, 1 May 2020
 17:40:50 +0100
Subject: Re: [PATCH 5/5] arm/arm64: smccc: Add ARCH_SOC_ID support
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20200430114814.14116-1-sudeep.holla@arm.com>
 <20200430114814.14116-6-sudeep.holla@arm.com>
 <426ff8ab-9c13-4301-a91e-989c19c4ff58@huawei.com>
 <20200501160521.GB24840@bogus>
From: John Garry <john.garry@huawei.com>
Message-ID: <b5657cc3-a162-742f-f1cb-02c2d80631c9@huawei.com>
Date: Fri, 1 May 2020 17:40:08 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200501160521.GB24840@bogus>
Content-Language: en-US
X-Originating-IP: [10.47.3.165]
X-ClientProxiedBy: lhreml727-chm.china.huawei.com (10.201.108.78) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_094057_922865_7F36ACD7 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>,
 "harb@amperecomputing.com" <harb@amperecomputing.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/05/2020 17:05, Sudeep Holla wrote:
> On Fri, May 01, 2020 at 04:25:27PM +0100, John Garry wrote:
>> On 30/04/2020 12:48, Sudeep Holla wrote:
>>> +static int __init smccc_soc_init(void)
>>> +{
>>> +	struct device *dev;
>>> +	int ret, soc_id_rev;
>>> +	struct arm_smccc_res res;
>>> +	static char soc_id_str[8], soc_id_rev_str[12];
>>> +
>>> +	if (arm_smccc_get_version() < ARM_SMCCC_VERSION_1_2)
>>> +		return 0;
>>> +
>>> +	ret = smccc_soc_id_support_check();
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 0, &res);
>>> +
>>> +	ret = smccc_map_error_codes(res.a0);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	soc_id_version = res.a0;
>>> +
>>> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 1, &res);
>>> +
>>> +	ret = smccc_map_error_codes(res.a0);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	soc_id_rev = res.a0;
>>> +
>>> +	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
>>> +	if (!soc_dev_attr)
>>> +		return -ENOMEM;
>>> +
>>> +	sprintf(soc_id_str, "0x%04x", IMP_DEF_SOC_ID(soc_id_version));
>>> +	sprintf(soc_id_rev_str, "0x%08x", soc_id_rev);
>>> +
>>> +	soc_dev_attr->soc_id = soc_id_str;
>>> +	soc_dev_attr->revision = soc_id_rev_str;
>>> +
>>> +	soc_dev = soc_device_register(soc_dev_attr);
>>> +	if (IS_ERR(soc_dev)) {
>>> +		ret = PTR_ERR(soc_dev);
>>> +		goto free_soc;
>>> +	}
>>> +
>>> +	dev = soc_device_to_device(soc_dev);
>>> +
>>
>> Just wondering, what about if the platform already had a SoC driver - now it
>> could have another one, such that we may have multiple sysfs soc devices,
>> right?
>>
> 
> Yes I had a quick look at that.
> 
> 1. Such platform has option not to implement this SOC_ID if it doesn't
>     really require it.

True

> 
> 2. If the firmware starts implementing it on some variants, then we can
>     distinguish them with compatibles and blacklist them from the other
>     SoC driver if having both is an issue
> 
> 3. SoC bus layer supports adding multiple SoC ID driver and it may show
>     up as /sys/devices/soc<n> which may or may not be fine.

Yeah, it's this scenario which I'm concerned about, where some userspace 
expects, for example, soc0 to have a soc id from a known, expected list, 
and now may get something else. However it could be argued then that 
userspace is just too fragile then and there is no read problem here.

  But this
>     happens only if neither [1] nor [2] is done. I am happy to see if there's
>     any solution for this. Any suggestions ?

Not sure, but taking a slight deviation, maybe a way could be found to 
supplement this dev attribute info to other ARM soc drivers.

Cheers,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
