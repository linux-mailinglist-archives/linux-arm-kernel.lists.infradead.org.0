Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8834918411C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 07:52:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psSgMQ3rQ6PlQRs3UD3c+jFORUDu5G6by1mTC+jQdOU=; b=IzqtiTXAC7lRHY
	V5n3z4siazZuWKjToaWQzIvZc3qVb3bJ7hbD9pAFhFxU0rNK0I4sTKDsgVIKIWPAq5Ovuyde0vucw
	Evu3VfyK5nUaoQtEuOQtZS9pBrLYQqbnX+vA51PLjiWn2wRGm2uJDBVGQAKM8Ufm+LIU1bYSgmD7O
	uwCef6x68sZwDIKSK2zfz6FS1ENeLkBPLLdAB7aJnPrXcgxU4PyHYw/GWHqDQZgmr9ffOi3zIRSVM
	fLg+bLrRcC3E896NQTiHAkOqV8UGe1f4JKSRnPUN0M5RJwUVZniesAWixaCWrQMD47aLEacApvtTq
	w2lZqycOxOWyFXzqbwDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCeBI-0002my-9J; Fri, 13 Mar 2020 06:52:28 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCeBA-0002lD-KP
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 06:52:22 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id ED986D771866E831E924;
 Fri, 13 Mar 2020 14:52:05 +0800 (CST)
Received: from [127.0.0.1] (10.65.95.32) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Fri, 13 Mar 2020
 14:51:56 +0800
Subject: Re: [PATCH RFC] perf:Add driver for HiSilicon PCIe PMU
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20200312203657.GA175613@google.com>
From: Qi Liu <liuqi115@huawei.com>
Message-ID: <11216b30-a198-bb85-6f88-2cdae89c5ef3@huawei.com>
Date: Fri, 13 Mar 2020 14:51:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200312203657.GA175613@google.com>
X-Originating-IP: [10.65.95.32]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_235220_843553_BF042C66 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, linux-pci@vger.kernel.org, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,
Thanks for reviewing the patch.

On 2020/3/13 4:36, Bjorn Helgaas wrote:
> Use "git log --oneline drivers/perf" to see the convention, and update
> subject to follow suit.  At least add a space in "perf:Add".
> 
> On Thu, Mar 12, 2020 at 08:06:56PM +0800, Qi Liu wrote:
>> From: Qi liu <liuqi115@huawei.com>
>>
>> PCIe PMU Root Complex Integrate End Point(IEP) device is
>> supported to sample bandwidth, latency, buffer occupation,
>> bandwidth utilization etc.
>> Each PMU IEP device monitors multiple root ports, and each
>> IEP is registered as a pmu in /sys/bus/event_source/devices,
>> so users can select the target IEP, and use filter to select
>> root port, function and event.
>> Filtering options are:
>> event:    - select the event.
>> subevent: - select the subevent.
>> port:     - select target root port.
>> func:     - select target EP device under the port.
> 
> The above *looks* like it's supposed to be three separate paragraphs;
> please add blank lines between them.
> 
> s/Integrate/Integrated/
> 
> I assume this is a vendor-specific device; if so, please mention the
> vendor so it doesn't look like something generic.
> 
OK, thanks, We'll correct it.
>> Example: hisi_pcie_00_14_00/event=0x08,subevent=0x04,   \
>> port=0x05,func=0x00/ -I 1000
>>
>> PMU IEP device is described by its bus, device and function,
>> target root port is 0x05 and target EP under it is function
>> 0x00. Subevent 0x04 of event 0x08 is sampled.
>>
>> Note that in this RFC:
>> 1. PCIe PMU IEP hardware is still in development.
>> 2. Perf common event list is undetermined, and name of these
>> events still need to be discussed.
>> 3. port filter could only select one port each time.
>> 4. There are two possible schemes of pmu registration, one is
>> register each root port as a pmu, it is easier for users to
>> select target port. The other one is register each IEP as pmu,
>> for counters are per IEP, not per root port, the second scheme
>> describes hardware PMC much more reasonable, but need to add
>> "port" filter option to select port. We use the second one in
>> this RFC.
>>
>> Signed-off-by: Qi Liu <liuqi115@huawei.com>
>> ---
>>  drivers/perf/Kconfig             |  10 +
>>  drivers/perf/Makefile            |   1 +
>>  drivers/perf/pci/Makefile        |   2 +
>>  drivers/perf/pci/hisi_pcie_pmu.c | 887 +++++++++++++++++++++++++++++++++++++++
>>  include/linux/cpuhotplug.h       |   1 +
>>  5 files changed, 901 insertions(+)
>>  create mode 100644 drivers/perf/pci/Makefile
>>  create mode 100644 drivers/perf/pci/hisi_pcie_pmu.c
>>
>> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
>> index 09ae8a9..047022b 100644
>> --- a/drivers/perf/Kconfig
>> +++ b/drivers/perf/Kconfig
>> @@ -114,6 +114,16 @@ config THUNDERX2_PMU
>>  	   The SoC has PMU support in its L3 cache controller (L3C) and
>>  	   in the DDR4 Memory Controller (DMC).
>>  
>> +config PCIE_PMU
> 
> This config symbol is too generic for a vendor-specific device.
OK, We'll use HISI_PCIE_PMU here.

> 
>> +	tristate "PCIE PERF PMU"
>> +	depends on ARM64
>> +	default m
>> +	help
>> +	   Provide support for 1630 PCIe performance monitoring unit (PMU)
>> +	   IEP devices.
>> +	   Adds the PCIe PMU into perf events system for monitoring latency,
>> +	   bandwidth etc.
> 
>> +static int hisi_pcie_pmu_irq_register(struct pci_dev *pdev,
>> +				      struct hisi_pcie_pmu *pcie_pmu)
>> +{
>> +	int irq, ret;
>> +
>> +	irq = pci_irq_vector(pdev, HISI_PCIE_EVENT_IRQ_VECTOR);
>> +	ret = request_irq(irq, hisi_pcie_pmu_irq, IRQF_SHARED,
>> +			  pcie_pmu->dev_name, pcie_pmu);
>> +	if (ret)
>> +		return ret;
>> +
>> +	pcie_pmu->irq = irq;
>> +	return ret;
> 
>   return 0;
> 
>> +}
> 
>> +static int hisi_pcie_init_pmu(struct pci_dev *pdev,
>> +			      struct hisi_pcie_pmu *pcie_pmu)
>> +{
>> +	char *name;
>> +	int ret;
>> +
>> +	hisi_get_pcie_pmu(pdev, pcie_pmu);
>> +
>> +	ret = cpuhp_state_add_instance(CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE,
>> +				       &pcie_pmu->node);
>> +	if (ret) {
>> +		pci_err(pdev, "Error %d registering hotplug;\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	/*
>> +	 * domain_id is 0x00 means continuous domain, we use bdf num to
>> +	 * select IEP. Otherwise, use domain_id + bdf.
> 
> I don't see what this comment applies to.  Nothing in this function
> uses "domain_id".  In fact, pcie_pmu->domain_id is set but never used
> anywhere.
> 
OK ,will delete pcie_pmu->domain_id.
>> +	 */
>> +	name = devm_kasprintf(&pdev->dev, GFP_KERNEL,
>> +			      "hisi_pcie_%x_%x_%x", pcie_pmu->bus_id,
>> +			      pcie_pmu->device_id, pcie_pmu->func_id);
> 
>> +static int hisi_pcie_pmu_probe(struct pci_dev *pdev,
>> +			       const struct pci_device_id *id)
>> +{
>> +	struct hisi_pcie_pmu *pcie_pmu;
>> +	int ret;
>> +
>> +	pcie_pmu = devm_kzalloc(&pdev->dev, sizeof(*pcie_pmu), GFP_KERNEL);
>> +	if (!pcie_pmu)
>> +		return -ENOMEM;
>> +
>> +	pci_set_drvdata(pdev, pcie_pmu);
>> +	ret = hisi_pcie_init_dev(pdev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = hisi_pcie_init_pmu(pdev, pcie_pmu);
>> +	if (ret)
>> +		return ret;
>> +
>> +	return ret;
> 
> This is the same as:
> 
>   return hisi_pcie_init_pmu(pdev, pcie_pmu);
> 
>> +}
> 
thanks, will change it to  return hisi_pcie_init_pmu(pdev, pcie_pmu);
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
