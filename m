Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6471BD716
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U1oGU09lUDmzYDM3aJYcuJSX3vh0ToEO/kYla7IgH/s=; b=hmPKMTvOngrUCakLUXl1EdrcL
	SOvDndeoMemqjCs+3iaLiWWvVMvan96Re9FM2hweLNFzVxiysmPe0IjZ323kjbQjGZSijK881JP3a
	+vX/FYAQDI02lAL8fZ5JBVfN4zKEVHMtfI9wU/roIOvwrsjsdZDi3bFc/XbpuKpB/qjUY2HcTbcbR
	Hm2W3WzydKKDwIce3ORwwOWioZCDIlQpsapGrzIdaO3Af7Gqk+I77DXHvfXgTpwbPZ+JhsRdNw63g
	UGpfDnfw1B0qXl6mkQvm2cEENt7b9NF5vxFSnkDyF/gpdCgOyH2yZaBvDRom04hm0xRWBj5TCTTxs
	SqdQDPnLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThyd-00007x-2U; Wed, 29 Apr 2020 08:21:55 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThyF-0008Qu-53
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:21:32 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ea938c50002>; Wed, 29 Apr 2020 01:20:21 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 29 Apr 2020 01:21:27 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 29 Apr 2020 01:21:27 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 Apr
 2020 08:21:27 +0000
Received: from [10.24.37.103] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 Apr
 2020 08:21:22 +0000
Subject: Re: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function
 to get BPMP data
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <20191203174229.GA1721849@ulmo>
 <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
 <20191204091703.d32to5omdm3eynon@vireshk-i7> <20191204093339.GA2784830@ulmo>
 <20191204095138.rrul5vxnkprfwmku@vireshk-i7> <20200407100520.GA1720957@ulmo>
 <20200427071800.GA3451400@ulmo>
From: Sumit Gupta <sumitg@nvidia.com>
Message-ID: <e320f849-bbd0-3ab9-64b2-d54da97500a4@nvidia.com>
Date: Wed, 29 Apr 2020 13:51:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200427071800.GA3451400@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1588148421; bh=3T8uyQ4yXKerxDV81gNnyh9w/zfWOeHLjgfBDDESJBI=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Hp8QSRuYhrSjW5iSVnv77wXZqnN0jg2R1n46ywRFLQfqE/DSAHB3IYpMhOvcb8fXA
 6R8UP8eSGS0Y4l2KzgI8IJfzAb5a2ztW0F3mD9LRCCLd1+e7SYPeqMLmAyO48EgAul
 zgtdvV+3l/BNvGBzxcrXJZZGSmFOQdDzIs6hsdHM2IeAnQQcv67Axtk7gA7iHCYbtt
 3yuFDVKmFXzQPLLYh2EiWa8DUDekia62iMwrbwQDhXwjIBGik30Rm33X6dtTHnOcpO
 qoykp0kBRRkWpyRT5xmLQ0z44fkgSfT/GvXgU+tAbOZyWyprpK644cxGd93Yc0UgMk
 DWM+hPL9Ba8LQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_012131_215770_27E39768 
X-CRM114-Status: GOOD (  25.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Mikko Perttunen <cyndis@kapsi.fi>,
 linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, talho@nvidia.com,
 bbasu@nvidia.com, linux-tegra@vger.kernel.org, Sumit Gupta <sumitg@nvidia.com>,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 27/04/20 12:48 PM, Thierry Reding wrote:
> On Tue, Apr 07, 2020 at 12:05:20PM +0200, Thierry Reding wrote:
>> On Wed, Dec 04, 2019 at 03:21:38PM +0530, Viresh Kumar wrote:
>>> On 04-12-19, 10:33, Thierry Reding wrote:
>>>> Yeah, the code that registers this device is in drivers/base/cpu.c in
>>>> register_cpu(). It even retrieves the device tree node for the CPU from
>>>> device tree and stores it in cpu->dev.of_node, so we should be able to
>>>> just pass &cpu->dev to tegra_bpmp_get() in order to retrieve a reference
>>>> to the BPMP.
>>>>
>>>> That said, I'm wondering if perhaps we could just add a compatible
>>>> string to the /cpus node for cases like this where we don't have an
>>>> actual device representing the CPU complex. There are a number of CPU
>>>> frequency drivers that register dummy devices just so that they have
>>>> something to bind a driver to.
>>>>
>>>> If we allow the /cpus node to represent the CPU complex (if no other
>>>> "device" does that yet), we can add a compatible string and have the
>>>> cpufreq driver match on that.
>>>>
>>>> Of course this would be slightly difficult to retrofit into existing
>>>> drivers because they'd need to remain backwards compatible with existing
>>>> device trees. But it would allow future drivers to do this a little more
>>>> elegantly. For some SoCs this may not matter, but especially once you
>>>> start depending on additional resources this would come in handy.
>>>>
>>>> Adding Rob and the device tree mailing list for feedback on this idea.
>>>
>>> Took some time to find this thread, but something around this was
>>> suggested by Rafael earlier.
>>>
>>> https://lore.kernel.org/lkml/8139001.Q4eV8YG1Il@vostro.rjw.lan/
>>
>> I gave this a try and came up with the following:
>>
>> --- >8 ---
>> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
>> index f4ede86e32b4..e4462f95f0b3 100644
>> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
>> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
>> @@ -1764,6 +1764,9 @@ bpmp_thermal: thermal {
>>   	};
>>   
>>   	cpus {
>> +		compatible = "nvidia,tegra194-ccplex";
>> +		nvidia,bpmp = <&bpmp>;
>> +
>>   		#address-cells = <1>;
>>   		#size-cells = <0>;
>>   
>> --- >8 ---
>>
>> Now I can do something rougly like this, although I have a more complete
>> patch locally that also gets rid of all the global variables because we
>> now actually have a struct platform_device that we can anchor everything
>> at:
>>
>> --- >8 ---
>> static const struct of_device_id tegra194_cpufreq_of_match[] = {
>> 	{ .compatible = "nvidia,tegra194-ccplex", },
>> 	{ /* sentinel */ }
>> };
>> MODULE_DEVICE_TABLE(of, tegra194_cpufreq_of_match);
>>
>> static struct platform_driver tegra194_ccplex_driver = {
>> 	.driver = {
>> 		.name = "tegra194-cpufreq",
>> 		.of_match_table = tegra194_cpufreq_of_match,
>> 	},
>> 	.probe = tegra194_cpufreq_probe,
>> 	.remove = tegra194_cpufreq_remove,
>> };
>> module_platform_driver(tegra194_ccplex_driver);
>> --- >8 ---
>>
>> I don't think that's exactly what Rafael (Cc'ed) had in mind, since the
>> above thread seems to have mostly talked about binding a driver to each
>> individual CPU.
>>
>> But this seems a lot better than having to instantiate a device from
>> scratch just so that a driver can bind to it and it allows additional
>> properties to be associated with the CCPLEX device.
>>
>> Rob, any thoughts on this from a device tree point of view? The /cpus
>> bindings don't mention the compatible property, but there doesn't seem
>> to be anything in the bindings that would prohibit its use.
>>
>> If we can agree on that, I can forward my local changes to Sumit for
>> inclusion or reference.
> 
> Rob, do you see any reason why we shouldn't be able to use a compatible
> string in the /cpus node for devices such as Tegra194 where there is no
> dedicated hardware block for the CCPLEX?
> 
> Thierry
> 

Ping.
Please suggest if we can add compatible string in the '/cpus' node.
If not then i propose accepting the current patch to get BPMP data 
without adding any property in respective driver's DT node.
We can push separate patch later if we need to add compatible string in 
the '/cpus' node or create new DT node for cpufreq.

Regards,
Sumit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
