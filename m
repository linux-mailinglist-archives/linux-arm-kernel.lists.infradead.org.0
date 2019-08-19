Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAF89240B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vE16ZhxnAG31C+oAzr4uhHWMagroZ0Ajl571wxWzfho=; b=p49iSIZ85qdv1/83V8TXxdB/Y
	X+BgblUGp7MVXB3ZKadavumEJDugf9NCektDQyMUPVwBv7uUgt2liLiXEH7qFC9DMm1uBwXCJhzNW
	5R3O5wxSTUcpOeX5A/TCf+f+86DYt6vU+Gy0vRsIbgK1ALJs2R2U8rvngGMyb+4c/6A6ib8yXS2CL
	26LimeQ4BXJgYvqx9cvWd6/MFJw4D9pEtBIoA4HvgwYdmiz1Ajy26zu8jTqerS+1bCYdaIcEZrWr7
	wh+h+er5kbJODMbwUkWio3vCZZJfqtKW5gHFttLjkv1Cem/NxAXcOHCLzktXRDEznlnxQWVhTku9N
	ttt8jh8Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhGi-0000Tv-Cp; Mon, 19 Aug 2019 13:00:16 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhGa-0007io-Lz
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:00:10 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id ACA9CA8B24C2C0ADD55A;
 Mon, 19 Aug 2019 20:59:55 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Mon, 19 Aug 2019
 20:59:49 +0800
Subject: Re: [PATCH v2] gpio: pl061: Fix the issue failed to register the ACPI
 interrtupion
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <1565946336-20080-1-git-send-email-xuwei5@hisilicon.com>
 <CAHp75VfjE4V7yY1b3JYd_Mk9-8RTok2WCN=-MMrUBw5NN90o2A@mail.gmail.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5D5A9D43.4040508@hisilicon.com>
Date: Mon, 19 Aug 2019 20:59:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VfjE4V7yY1b3JYd_Mk9-8RTok2WCN=-MMrUBw5NN90o2A@mail.gmail.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_060008_891704_AEA5802C 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: salil.mehta@huawei.com, jinying@hisilicon.com, tangkunshan@huawei.com,
 liguozhu@hisilicon.com, Linus Walleij <linus.walleij@linaro.org>,
 John Garry <john.garry@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 shameerali.kolothum.thodi@huawei.com, Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>, shiju.jose@huawei.com,
 Mika Westerberg <mika.westerberg@linux.intel.com>, zhangyi.ac@huawei.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>, Len
 Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

Thanks!

On 2019/8/16 21:40, Andy Shevchenko wrote:
> On Fri, Aug 16, 2019 at 12:07 PM Wei Xu <xuwei5@hisilicon.com> wrote:
>> Invoke acpi_gpiochip_request_interrupts after the acpi data has been
>> attached to the pl061 acpi node to register interruption.
>>
>> Otherwise it will be failed to register interruption for the ACPI case.
>> Because in the gpiochip_add_data_with_key, acpi_gpiochip_add is invoked
>> after gpiochip_add_irqchip but at that time the acpi data has not been
>> attached yet.
>> 2. cat /proc/interrupts in the guest console:
>>
>>          estuary:/$ cat /proc/interrupts
>>                     CPU0
>>          2:         3228     GICv3  27 Level     arch_timer
>>          4:           15     GICv3  33 Level     uart-pl011
>>          42:           0     GICv3  23 Level     arm-pmu
>>          IPI0:         0       Rescheduling interrupts
>>          IPI1:         0       Function call interrupts
>>          IPI2:         0       CPU stop interrupts
>>          IPI3:         0       CPU stop (for crash dump) interrupts
>>          IPI4:         0       Timer broadcast interrupts
>>          IPI5:         0       IRQ work interrupts
>>          IPI6:         0       CPU wake-up interrupts
>>          Err:          0
>>
>> But on QEMU v3.0.0 and Linux kernel v5.2.0-rc7, pl061 interruption is
>> there as below:
>>
>>          estuary:/$ cat /proc/interrupts
>>                     CPU0
>>            2:       2648     GICv3  27 Level     arch_timer
>>            4:         12     GICv3  33 Level     uart-pl011
>>           42:          0     GICv3  23 Level     arm-pmu
>>           43:          0  ARMH0061:00   3 Edge      ACPI:Event
>>          IPI0:         0       Rescheduling interrupts
>>          IPI1:         0       Function call interrupts
>>          IPI2:         0       CPU stop interrupts
>>          IPI3:         0       CPU stop (for crash dump) interrupts
>>          IPI4:         0       Timer broadcast interrupts
>>          IPI5:         0       IRQ work interrupts
>>          IPI6:         0       CPU wake-up interrupts
>>          Err:          0
> In above show only affected line.

OK. Will update it in v3.

>> And the whole dmesg log on Linux kernel v5.2.0-rc7 is as below:
> NO!
> Please, remove this huge noise!

Sorry for the noise!
I will drop it in v3.

Best Regards,
Wei




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
