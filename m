Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74CF11456D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 18:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=90HRgg5O5/+xyX5nwGB+U3ttwuDTFtibyidMb3EXMyg=; b=ksA/dLjAaVM1Tby0HODLjmaFO
	d1zL2UkPSFHOERFvVKKxKBCqe0tbGKbGlQlxQsAfWUP0vV74+qLqeVg2VkZOGfVFUBz5K7ArJhvOb
	NC7o2OHyoqIryDkBjWGfo1CN5LFygh0dcu/gC4+QmjWArRl+Evg5EYIk27sPajUg9/VzNqY3OsZoZ
	dRajqMmrr5ODS2cZdkKZ5aXSs9j781vaQvezyqVvJ7bQe7Nn0kQFRHHfWm7EkfxJF4xQ/M0OagwXv
	Zz41K/Zsh579kPxB0XwtaQgNYHo34TmoQu/Y/AFzLq5SrddK6T5SByItTlh4R+C71d6JZdAr+8N9n
	G5nxFwrXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icufs-0008U1-62; Thu, 05 Dec 2019 17:12:20 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icufk-0008TA-4d
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 17:12:14 +0000
Received: from lhreml703-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 71946AC5ADACE41880EE;
 Thu,  5 Dec 2019 17:12:06 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml703-cah.china.huawei.com (10.201.108.44) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 5 Dec 2019 17:12:06 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Thu, 5 Dec 2019
 17:12:05 +0000
Subject: Re: PSCI checker query
To: Sudeep Holla <sudeep.holla@arm.com>, Marc Zyngier <maz@kernel.org>
References: <5c3c69bf-cae9-8ad5-9da2-c0af7a5932e7@huawei.com>
 <50f79699a2de7856eb201c8cc1dc51d7@www.loen.fr> <20191205165331.GA21023@bogus>
From: John Garry <john.garry@huawei.com>
Message-ID: <fd70f499-83b4-2fdd-d043-ea9ab8f2c636@huawei.com>
Date: Thu, 5 Dec 2019 17:12:03 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191205165331.GA21023@bogus>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml702-chm.china.huawei.com (10.201.108.51) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_091212_329183_BB1A887B 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Xiaofei Tan <tanxiaofei@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 wanghuiqiang <wanghuiqiang@huawei.com>, Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/12/2019 16:53, Sudeep Holla wrote:

Hi Sudeep, Marc,

>>
>> I get the same garbage, and a couple of:

Thanks for testing

>>
>> [   10.986303] CPU0: failed to come online
>> [   10.986405] CPU0: failed in unknown state : 0x0
>> [   10.986585] psci_checker: Error occurred (-5) while trying to power up
>> CPU 0
>> [...]
>> [   12.468864] ------------[ cut here ]------------
>> [   12.468995] WARNING: CPU: 2 PID: 1 at
>> drivers/firmware/psci/psci_checker.c:135 down_and_up_cpus+0x1d4/0x1f4
>> [   12.469242] Modules linked in:
>> [   12.469324] CPU: 2 PID: 1 Comm: swapper/0 Tainted: G        W
>> 5.4.0-00079-g0a881ca5de9a #214
>> [   12.469556] Hardware name: Huawei Technologies Co., Ltd. D05/D05, BIOS
>> Hisilicon D05 IT21 Nemo 2.0 RC0 04/18/2018
>> [   12.469816] pstate: 20000005 (nzCv daif -PAN -UAO)
>> [   12.469939] pc : down_and_up_cpus+0x1d4/0x1f4
>> [   12.470051] lr : down_and_up_cpus+0x1b4/0x1f4
>> [   12.470162] sp : ffff80001172bcd0
>> [   12.470246] x29: ffff80001172bcd0 x28: ffff800010d73010
>> [   12.470382] x27: ffff001fb6524660 x26: 0000000000000001
>> [   12.470518] x25: ffff800010d72eb0 x24: ffff80001134a390
>> [   12.470654] x23: ffff80001172bd98 x22: 0000000000000100
>> [   12.470789] x21: 0000000000000000 x20: 0000000000000001
>> [   12.470925] x19: ffff80001172bd98 x18: 0000000000000001
>> [   12.471061] x17: 0000000000000000 x16: 0000000000000000
>> [   12.471196] x15: 0000000000000000 x14: 0000000000000000
>> [   12.471331] x13: 0000000000000000 x12: 0000000000000000
>> [   12.471467] x11: 0000000000000000 x10: 0000000000000a60
>> [   12.471602] x9 : ffff80001172b940 x8 : ffff002fb7e81940
>> [   12.471737] x7 : 0000000000000000 x6 : 0000000000000001
>> [   12.471873] x5 : ffff80001135c0e8 x4 : 0000000000000000
>> [   12.472008] x3 : 0000000000000000 x2 : 0000000000000100
>> [   12.472143] x1 : 0000000000000040 x0 : 000000000000003f
>> [   12.472279] Call trace:
>> [   12.472344]  down_and_up_cpus+0x1d4/0x1f4
>> [   12.472451]  psci_checker+0x250/0x4cc
>> [   12.472547]  do_one_initcall+0x54/0x220
>> [   12.472646]  kernel_init_freeable+0x1ec/0x2b4
>> [   12.472760]  kernel_init+0x18/0x108
>> [   12.472851]  ret_from_fork+0x10/0x18
>> [   12.472942] ---[ end trace c328815eb39fc505 ]---
>>
>> where the psci checker is unhappy about the number of CPUs. So CPU0 doesn't
>> come back up, and probably has taken down a few things with it.
>>
>> The console seems to be on a rather bizarre baud rate, and I can't manage
>> to reset it. On reboot, the console recovers though, so the firmware is
>> able to restore some level of sanity (yay!).
>>
>> You can also reproduce it as:
>>
>> root@hot-poop:/home/maz# echo 0 >/sys/devices/system/cpu/cpu0/online
>> root@hot-poop:/home/maz# echo 1 >/sys/devices/system/cpu/cpu0/online
>> bash: echo: write error: Input/output error
>>

For this I just get a little garbage spurted out along with an 
unresponsive console. Not good.

>> The kernel log says:
>>
>> [   47.145006] IRQ 254: no longer affine to CPU0
>> [   47.149380] IRQ 382: no longer affine to CPU0
>> [   47.153844] CPU0: shutdown
>> [   47.156551] psci: CPU0 killed.
>> [   60.904531] CPU0: failed to come online
>> [   60.904634] CPU0: failed in unknown state : 0x0
>>
>> and the console is dead. I guess nobody ever turned CPU0 off... :-/
>>
> 
> For a moment, I thought PSCI checker found some issue that normal hotplug
> operation didn't. Guess what, I am wrong :). Normal HP tests from the
> kernel triggers this, which is good as not all normally run this PSCI
> tests.

OK, but now for my D06 - which passed the PSCI test - I get this:

root@ubuntu:/home/john# echo 0 > /sys/devices/system/cpu/cpu0/online
root@ubuntu:/home/john# echo 1 > /sys/devices/system/cpu/cpu0/online
[   78.537579] CPU0: failed to come online
[   78.541406] CPU0: failed in unknown state : 0x0
bash: echo: write error: Input/output error
root@ubuntu:/home/john# dmesg | tail
[   26.490683] hid-generic 0003:12D1:0003.0002: input: USB HID v1.10 
Mouse [Keyboard/Mouse KVM 1.1.0] on usb-0000:7a:01.0-2.1/input1
[   70.758432] CPU0: shutdown
[   70.777581] psci: Retrying again to check for CPU kill
[   70.777585] psci: CPU0 killed.
[   78.537579] CPU0: failed to come online
[   78.541406] CPU0: failed in unknown state : 0x0
root@ubuntu:/home/john#
root@ubuntu:/home/john# echo 1 > /sys/devices/system/cpu/cpu0/online
[  458.026871] psci: failed to boot CPU0 (-22)
[  458.031049] CPU0: failed to boot: -22

I intermittently saw this issue a little while ago - that is, CPU0 does 
not come back online. I meant to revisit...

> 
> Anyways, looks like the firmware is broken. 

Yeah

If there are hardware
> limitations, the firmware can fail to poweroff as a workaround. If
> it is anything to do with some secure service or OS, we have PSCI
> ways to convey the same and we now avoid starting the CPU down sequence
> by marking it not hotpluggable. PSCI tests may not be able to use it
> but I expect the firmware to return error for CPU_DOWN in that case.
> 
Thanks,
John

> --
> Regards,
> Sudeep
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
