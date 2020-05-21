Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CD01DCF68
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EWhsIHwTOdvI65sM6NtK+nAXjzAYfVFbV6Z98MLys9I=; b=NxM9vKfne083PaLQso8WpEhEX
	eUZX2fJbOd6q4Seh9CnFH838Y7Fe452w4bgZGzn1+9rGgzoH1e8m4cDA5KNIvJrbbsgcCl7y1UiLJ
	9EQyvCMzPQBmoUtoQYG2EiexKmfh53uFz1u6JU+wB5WRBCtJx6CZffuBaWlPV+f8nkZyo2A+lEUcp
	RlucoKhvBqTRmZnupEJCm7OJsRfVwmj8rtxkWR53OX3eSnfsaX6Jrv0a5CuEr2BUPXxvdMQ3L74T2
	EsBTKkCIip69svvB1qCCP6831DW/xLxOU5kKRhPgrq9WC1UQ/BgLMulZO5IqKQtmFDnjwfSrbIZNR
	7MBxO9QDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbm1U-0002Fp-Md; Thu, 21 May 2020 14:18:12 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbm0q-0001vP-EN
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:17:36 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id B7AC5851A8F64C7CAB12;
 Thu, 21 May 2020 15:17:29 +0100 (IST)
Received: from [127.0.0.1] (10.47.6.132) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 21 May
 2020 15:17:28 +0100
Subject: Re: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier for
 userspace
To: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
 <20200519185125.GB453195@bogus> <20200520073304.GA23534@willie-the-truck>
 <20200521132641.GB47848@C02TD0UTHF1T.local>
From: John Garry <john.garry@huawei.com>
Message-ID: <04e6ed82-d33e-9153-eeab-29986ccf8e1e@huawei.com>
Date: Thu, 21 May 2020 15:16:29 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200521132641.GB47848@C02TD0UTHF1T.local>
Content-Language: en-US
X-Originating-IP: [10.47.6.132]
X-ClientProxiedBy: lhreml715-chm.china.huawei.com (10.201.108.66) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_071732_691865_5C4E6709 
X-CRM114-Status: GOOD (  15.53  )
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Joakim Zhang <qiangqing.zhang@nxp.com>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/05/2020 14:26, Mark Rutland wrote:
> On Wed, May 20, 2020 at 08:33:04AM +0100, Will Deacon wrote:
>> On Tue, May 19, 2020 at 12:51:25PM -0600, Rob Herring wrote:
>>> On Tue, May 12, 2020 at 03:31:13PM +0800, Joakim Zhang wrote:
>>>> +static ssize_t ddr_perf_identifier_show(struct device *dev,
>>>> +					struct device_attribute *attr,
>>>> +					char *page)
>>>> +{
>>>> +	struct ddr_pmu *pmu = dev_get_drvdata(dev);
>>>> +
>>>> +	return sprintf(page, "%s\n", pmu->devtype_data->identifier);
>>>
>>> Why do we need yet another way to identify the SoC from userspace?
>>
>> I also really dislike this. What's the preferred way to identify the SoC
>> from userspace? It's needed so that the perf userspace tool can describe
>> perf events that are supported for the PMU, as this isn't probe-able
>> directly from the hardware. We have the same issue with the SMMUv3 PMCG [1],
>> and so we need to solve the problem for both DT and ACPI.
> 
> Worth noting that while in this case it happens to identify the SoC,
> in general you can have distinct instances of system IP in a single
> system, so I do think that we need *something* instance-specific, even
> if that's combined with SoC info.
> 

Hi Mark,

> Where IP gets reused across SoCs, it makes sense for that to not depend
> on top-level SoC info.

This would be quite an uncommon case. Generally most instances of a 
given PMU in a SoC would be identical implementations.

And anyway, we should be able to solve that problem in perf tool, as 
long as the PMU device name is fixed. Like what we have for the SMMUv3 
PMU, where the device name contains the device bus address, i.e don't 
use idr for perf drivers device naming....

Thanks,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
