Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366631DCED7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z9xtjVsAgRGWo8JjNblAQAvHgxBTLIE0ABX5z4LL1WA=; b=tKdiljQOZlGIHf9k1wC+/nG7p
	7159+caMa+WjgUwpt4U9L1fFOvlAINtMYglg+maz/nldjr9w7dxKQgwih957IVogNPiSeDJ66q49+
	Q86FVjY1gVeLuVoSRr5Zv0gYgyZCBmVmCOSna+zfFKWLx65QRNaALttqQQO/bUrMa0X78Tx5LdzVk
	0N2p4UxltbVRMxcRQXF/21IoFUALemQuAkCz1bUE5eeDYkaRy1IhYuZ8Aw8igmo9GYhI0gZEKrghu
	i1rvHyBeNW9m0JnQmXlyEZDSTy9AcpUzjB0pdLpsTlbCytN8rfDKwYLETX0EwRZQAMwcF+outeG4m
	mUOJ+i2Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbllQ-0007fp-PT; Thu, 21 May 2020 14:01:36 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbllF-0007f5-7P
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:01:26 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 3CC2F38420F11539B82D;
 Thu, 21 May 2020 15:01:14 +0100 (IST)
Received: from [127.0.0.1] (10.47.6.132) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 21 May
 2020 15:01:13 +0100
Subject: Re: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier for
 userspace
To: Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
 <20200519185125.GB453195@bogus> <20200520073304.GA23534@willie-the-truck>
 <CAL_JsqJfQ0PFy5mmwSG4aM91ghq5xiAEPR2YZOymws+BfGa+uA@mail.gmail.com>
 <20200521130415.GB5949@willie-the-truck>
From: John Garry <john.garry@huawei.com>
Message-ID: <c3be06c5-781f-384f-768b-d809da99b7e0@huawei.com>
Date: Thu, 21 May 2020 15:00:13 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200521130415.GB5949@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.47.6.132]
X-ClientProxiedBy: lhreml715-chm.china.huawei.com (10.201.108.66) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_070125_411774_4B1E18EC 
X-CRM114-Status: GOOD (  14.52  )
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
 NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/05/2020 14:04, Will Deacon wrote:
> On Wed, May 20, 2020 at 09:23:41AM -0600, Rob Herring wrote:
>> On Wed, May 20, 2020 at 1:33 AM Will Deacon <will@kernel.org> wrote:
>>>
>>> On Tue, May 19, 2020 at 12:51:25PM -0600, Rob Herring wrote:
>>>> On Tue, May 12, 2020 at 03:31:13PM +0800, Joakim Zhang wrote:
>>>>> +static ssize_t ddr_perf_identifier_show(struct device *dev,
>>>>> +                                   struct device_attribute *attr,
>>>>> +                                   char *page)
>>>>> +{
>>>>> +   struct ddr_pmu *pmu = dev_get_drvdata(dev);
>>>>> +
>>>>> +   return sprintf(page, "%s\n", pmu->devtype_data->identifier);
>>>>
>>>> Why do we need yet another way to identify the SoC from userspace?
>>>
>>> I also really dislike this. What's the preferred way to identify the SoC
>>> from userspace?
>>
>> /proc/cpuinfo? ;)
> 
> The *SoC*!
> 
>> For an non-firmware specific case, I'd say soc_device should be. I'd
>> guess ACPI systems don't use it and for them it's dmidecode typically.
>> The other problem I have with soc_device is it is optional.
> 

Hi Will,

> John -- what do you think about using soc_device to expose this information,
> with ACPI systems using DMI data instead?

Generally I don't think that DMI is reliable, and I saw this as the 
least preferred choice. I'm looking at the sysfs DMI info for my dev 
board, and I don't even see anything like a SoC identifier.

As for the event_source device sysfs identifier file, it would not 
always contain effectively the same as the SoC ID.

Certain PMUs which I'm interested in plan to have probe-able 
identification info available in future.

Thanks,
John




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
