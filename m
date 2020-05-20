Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD3F1DA879
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aN82nwaf2pcDgc4u3rwUm8FeQZQHl+uIwzj4LSL7jeQ=; b=eD1WYZeaJuAtef
	+xksjGlgjn96P7F3BAZq3devQ5rqTylprrgBZrBLr7092ozg+DTQzqSTbaNIUb0Y42mW8Ar9S9Hdv
	3NuxPF6+YwfnYhMNxx5hdpMbKnWOPUG1FQY5P0ABhc/DpD8ZmN4PucslFvcaQlsiIoI1Vidm1XREn
	2M4XEcQY5tn1OBwZ8KKWvY+qC8zuA05Au1nDbXnx5Rsfxpqmsta+TbJwy7l5ZGgBJzJSVcv4+kGLQ
	wbjTgZ4ofb+l8H8h31jcucj4RsDCNzimP9jMIYlUbSNmmDlPogu2ZtV3uG7ZKqviVZQM89RDNtrIu
	opcGD+/c9hBbmkplDz3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbF4Y-0004vI-An; Wed, 20 May 2020 03:07:10 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbF4K-0004ru-5T
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 03:07:00 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 94CA74A8013FC1636D76;
 Wed, 20 May 2020 11:06:45 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.101) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0;
 Wed, 20 May 2020 11:06:40 +0800
Subject: Re: [PATCH] firmware: arm_sdei: remove unused interfaces
To: James Morse <james.morse@arm.com>, Christoph Hellwig <hch@lst.de>
References: <20200504164224.2842960-1-hch@lst.de>
 <7c127e49-b1c6-c7ac-69bf-9fc0a6dba4c4@arm.com>
 <6d0adc02-bcd8-2217-c145-d609528fbe77@huawei.com>
 <0ac1444b-bbdf-1efb-54e6-db90fe6ac707@arm.com>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <f3944635-39d3-f68c-9adb-9471e51ee3be@huawei.com>
Date: Wed, 20 May 2020 11:06:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0ac1444b-bbdf-1efb-54e6-db90fe6ac707@arm.com>
X-Originating-IP: [10.166.215.101]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_200656_384342_BBEF190E 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2020/5/19 23:47, James Morse wrote:
> Hi Xiongfeng,
> 
> On 05/05/2020 03:08, Xiongfeng Wang wrote:
>> On 2020/5/5 1:14, James Morse wrote:
>>> Hi Christoph,
>>>
>>> (CC: +Xiongfeng)
>>>
>>> Thanks for the reminder - I was just searching for who was using this.
>>
>> Thanks for CC me. We do have a driver that are using it.
> 
>>> On 04/05/2020 17:42, Christoph Hellwig wrote:
>>>> The export symbols to register/unregister and enable/disable events
>>>> aren't ever used outside of arm_sdei.c, so mark them static.
>>>
>>> Xiongfeng, you have drivers using this, could they be posted upstream. Or can we stop
>>> exporting these?
>>
>> It's the SDEI Wathchdog which is used for hardlockup detection. But I wasn't
>> able to push it upstream because we have Pseudo-NMI in mainline.
> 
> Hmm, that shouldn't be directly relevant, unless your SDEI watchdog is using the
> bindable-irq thing?

Yes, we are using the bindable-irq thing. It's easier for the UEFI team.
Firmware doesn't need to too much modification.

> 
> 
> If your firmware offers an event-id for the watchdog, please upstream the driver. Half of
> the event-id space is reserved for vendor stuff like this.

My origin thought is using a new event-id. But the firmware guys are new to SDEI
and don't know how to add a new event-id.

> 
> If firmware needs to be told to re-configure the watchdog irq to make this work, then pNMI
> is a much better fit. Having firmware and linux modifying the irqchip hardware is a
> nightmare best avoided.
> 

Yes, we are using the secure timer irq as the watchdog irq. So the firmware
needs to disable and enable the irq when we disable and enable the event. But
linux don't need to modify the irqchip hardware about the secure timer irq.

All works well except the kdump situation. Because in sdei_handler the secure
timer irq, which is routed to EL3, remains active. We clear the EOI when we
complete the event. So when we panic and start kdump in sdei_handler, the EL2
interrupt of the second kernel can not be taken. We add a hack to clear the EOI
before start kdump.

Yes, the pNMI is a much better fit. We don't need such a hack. But the product
department seems to have get used to the SDEI watchdog method. It works well and
they don't want much change.

Thanks,
Xiongfeng

> 
>>> (they were originally added for the GHES RAS thing, but by the time it was all merged
>>> upstream, it wasn't possible to build it as a module)
>>
>> The SDEI Watchdog driver also can't be built as a module. We still need to
>> modify the origin kernel. So I think this patch doesn't affect me. Thanks for CC me.
> 
> Okay, I'll pick this up to drop the module exports.
> 
> I'd prefer not to make all this static as these register/unregister calls are the
> interface that is supposed to be used. If we are going to gut it, we should do it completely.
> 
> 
> Thanks,
> 
> James
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
