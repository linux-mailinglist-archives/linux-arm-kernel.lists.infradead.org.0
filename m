Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4C718AA59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 02:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvdK10uH+rMyDcCrm1Zq43KkyDfeIRdrNMnORUeokFE=; b=j3oZJ41OWeXrn0
	Z84fwmpdTPkuZCPrrwHcPdxTmHHWTWfG8MLeGF89FVc9DLupzj/g1wjXGAQWP8J1NLYeGK2Buk+8s
	S2ODj25kpDlNl5ceYt/U3jzv0CO55KW2dNYvgraC2Mq6zIJzUrJp2Qv84tRKyXb4dt6KyHH+oIiF0
	qK/2k3w0rvm5IhsqMsOjfzrqp2y+MUcnGRpGRVdLeyvK1DHjwkNyv8lnKB7i6h3hphwASxHTNaZsS
	F93zkK1ioWHEERtq4grVmTLLXfrmHL8MYP6GTY2wACG3wEOVbFD5H2C6vysf5z/37fY5wFt+P65Vj
	2rD+/rwXlScAre/Bx8hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEk5r-0003tW-9o; Thu, 19 Mar 2020 01:35:31 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEk5g-00032n-GH
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 01:35:22 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5F4303A32EB79CAF7C94;
 Thu, 19 Mar 2020 09:34:59 +0800 (CST)
Received: from [127.0.0.1] (10.65.95.32) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Thu, 19 Mar 2020
 09:34:50 +0800
Subject: Re: [PATCH RFC] perf:Add driver for HiSilicon PCIe PMU
To: Mark Rutland <mark.rutland@arm.com>, Robin Murphy <robin.murphy@arm.com>
References: <1584014816-1908-1-git-send-email-liuqi115@huawei.com>
 <49a04327-b58b-3103-f992-97e8838c41df@arm.com>
 <20200313135940.GK42546@lakrids.cambridge.arm.com>
From: Qi Liu <liuqi115@huawei.com>
Message-ID: <8a154c7b-9698-a329-a63a-4d13680d5916@huawei.com>
Date: Thu, 19 Mar 2020 09:34:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200313135940.GK42546@lakrids.cambridge.arm.com>
X-Originating-IP: [10.65.95.32]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_183520_711076_F5F6F457 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: linux-pci@vger.kernel.org, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, bhelgaas@google.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for reviewing this patch, will fix these in v2 patch!

On 2020/3/13 21:59, Mark Rutland wrote:
> On Fri, Mar 13, 2020 at 01:23:53PM +0000, Robin Murphy wrote:
>> On 2020-03-12 12:06 pm, Qi Liu wrote:
>>> From: Qi liu <liuqi115@huawei.com>
> 
> [...]
> 
>>> +#define HISI_PCIE_EVENT_SHIFT_M			GENMASK(15, 0)
>>> +#define HISI_PCIE_SUBEVENT_SHIFT_M		GENMASK(31, 16)
>>> +#define HISI_PCIE_SUBEVENT_SHIFT_S		16
>>> +#define HISI_PCIE_PORT_SHIFT_M			GENMASK(7, 0)
>>> +#define HISI_PCIE_FUNC_SHIFT_M			GENMASK(15, 8)
>>> +#define HISI_PCIE_FUNC_SHIFT_S			8
>>
>> So "SHIFT_S" means "shift" and "SHIFT_M" actually means "mask"? That's
>> unnecessarily confusing. Furthermore it might be helpful if there was a more
>> obvious distinction between hardware register fields and config fields.
> 
> Also, If you use the FIELD_GET() and FIELD_PREP() helpers, you only need
> to define the mask. See <linux/bitfield.h>.
> 
>>> +int hisi_pcie_pmu_event_init(struct perf_event *event)
>>> +{
>>> +	struct hisi_pcie_pmu *pcie_pmu = to_pcie_pmu(event->pmu);
>>> +	struct hw_perf_event *hwc = &event->hw;
>>> +	u32 subevent_id, event_id, func_id, port_id;
>>> +
>>> +	if (event->attr.type != event->pmu->type)
>>> +		return -ENOENT;
>>> +
>>> +	/*
>>> +	 * We do not support sampling as the counters are all shared by all
>>> +	 * CPU cores in a CPU die(SCCL). Also we do not support attach to a
>>
>> Do the PCIe counters have anything to do with CPU clusters at all?
>>
>>> +	 * task(per-process mode)
>>> +	 */
>>> +	if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
>>> +		return -EOPNOTSUPP;
>>> +
>>> +	/*
>>> +	 * The uncore counters not specific to any CPU, so cannot
>>> +	 * support per-task
>>> +	 */
>>> +	if (event->cpu < 0)
>>> +		return -EINVAL;
>>> +
>>> +	/*
>>> +	 * Validate if the events in group does not exceed the
>>> +	 * available counters in hardware.
>>> +	 */
>>> +	if (!hisi_validate_event_group(event))
>>> +		return -EINVAL;
>>> +
>>> +	event_id = event->attr.config && HISI_PCIE_EVENT_SHIFT_M;
>>
>> Really? Are you sure you've tested this properly?
> 
> If you had:
> 
> #define HISI_PCI_EVENT_ID	GENMASK(15, 0)
> #define HISI_PCI_SUBEVENT_ID	GENMASK(31, 16)
> 
> ... here you could do:
> 
> 	event_id = FIELD_GET(HISI_PCI_EVENT_ID, event->attr.config);
> 
>>
>>> +	subevent_id = (event->attr.config && HISI_PCIE_SUBEVENT_SHIFT_M)
>>> +		       >> HISI_PCIE_SUBEVENT_SHIFT_S;
> 
> ... and:
> 
> 	subevent_id = FIELD_GET(HISI_PCI_SUBEVENT_ID, event->attr.config);
> 
> ... and so on for other fields.
> 
> Thanks,
> Mark.
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
