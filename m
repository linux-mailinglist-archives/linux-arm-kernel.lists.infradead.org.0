Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB89D0F97
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/S/KlIvYWWEY0RbrcVCSRn6Ii38yfc5yHbQJ37aG5JY=; b=oJtmAqFiSr0Pph+hI0IjGPNyq
	Ds3b3T9ARLAZZ6buwgh12yHMy9EhaNxxf0ilDWrHV7KBZOfdoUlqQlbfg3Avk6zmywtCm3I9Q9L5R
	0ZrTK6Kjb7d2R3ObTEyiiHjwVQ1FM4V/x8fyfYVy+Wrk4nBgx3W6uXRp1YxYRtNKxQ25g4+dpFM1h
	W3DZxUlxHuVpezoIJOMDIsXV8+/TNMQBLEBvz2CdNwOrBqEbbdjmhszyz4F0YK9rEfbr6fGQ81fhD
	f16V9d9DN0HJIoS1ft91pAP1SgAbHL5DrOgiaV5VBIcL37scufOTJL0UYI3xczFB7z2lCrMS7qI6t
	HAFPceCfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIBgE-0008Uq-9P; Wed, 09 Oct 2019 13:07:02 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIBfz-0008QQ-LC
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 13:06:50 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3FCCB19A5915D8434BA4;
 Wed,  9 Oct 2019 21:06:44 +0800 (CST)
Received: from [127.0.0.1] (10.133.216.73) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Wed, 9 Oct 2019
 21:06:34 +0800
Subject: Re: [RFC PATCH 07/12] arm/sdei: override qemu_irq handler when
 binding interrupt
To: Peter Maydell <peter.maydell@linaro.org>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
 <1569338511-3572-8-git-send-email-guoheyi@huawei.com>
 <CAFEAcA9ZHs=GdJ-_Ap1PWdgDjSDBnnRqG1UkMGx_FiqCJ5ZyGw@mail.gmail.com>
From: Guoheyi <guoheyi@huawei.com>
Message-ID: <0aa6638c-1155-6446-114b-29d335367007@huawei.com>
Date: Wed, 9 Oct 2019 21:06:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CAFEAcA9ZHs=GdJ-_Ap1PWdgDjSDBnnRqG1UkMGx_FiqCJ5ZyGw@mail.gmail.com>
X-Originating-IP: [10.133.216.73]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_060647_869448_94A25862 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 QEMU Developers <qemu-devel@nongnu.org>, Dave Martin <Dave.Martin@arm.com>,
 qemu-arm <qemu-arm@nongnu.org>, James Morse <james.morse@arm.com>,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

Thanks for your comments. I will explain SDEI in another mail and please 
provide your suggestions for such situation.

Heyi


On 2019/9/30 21:19, Peter Maydell wrote:
> On Tue, 24 Sep 2019 at 16:23, Heyi Guo <guoheyi@huawei.com> wrote:
>> Override qemu_irq handler to support trigger SDEI event transparently
>> after guest binds interrupt to SDEI event. We don't have good way to
>> get GIC device and to guarantee SDEI device is initialized after GIC,
>> so we search GIC in system bus when the first SDEI request happens or
>> in VMSTATE post_load().
>>
>> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
>> Cc: Peter Maydell <peter.maydell@linaro.org>
>> Cc: Dave Martin <Dave.Martin@arm.com>
>> Cc: Marc Zyngier <marc.zyngier@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: James Morse <james.morse@arm.com>
>
>> +static void override_qemu_irq(QemuSDEState *s, int32_t event, uint32_t intid)
>> +{
>> +    qemu_irq irq;
>> +    QemuSDE *sde;
>> +    CPUState *cs;
>> +    int cpu;
>> +
>> +    /* SPI */
>> +    if (intid >= GIC_INTERNAL) {
>> +        cs = arm_get_cpu_by_id(0);
>> +        irq = qdev_get_gpio_in(s->gic_dev,
>> +                               gic_int_to_irq(s->num_irq, intid, 0));
>> +        if (irq) {
>> +            qemu_irq_intercept_in(&irq, qemu_sdei_irq_handler, 1);
>> +        }
> I'm not sure what this code is trying to do, but
> qemu_irq_intercept_in() is a function for internal use
> by the qtest testing infrastructure, so it shouldn't be
> used in 'real' QEMU code.
>
>> +        sde = get_sde_no_check(s, event, cs);
>> +        sde->irq = irq;
>> +        put_sde(sde, cs);
>> +        return;
>> +    }
>> @@ -1042,6 +1152,17 @@ void sdei_handle_request(CPUState *cs, struct kvm_run *run)
>>           return;
>>       }
>>
>> +    if (!sde_state->gic_dev) {
>> +        /* Search for ARM GIC device */
>> +        qbus_walk_children(sysbus_get_default(), dev_walkerfn,
>> +                           NULL, NULL, NULL, sde_state);
>> +        if (!sde_state->gic_dev) {
>> +            error_report("Cannot find ARM GIC device!");
>> +            run->hypercall.args[0] = SDEI_NOT_SUPPORTED;
>> +            return;
>> +        }
>> +    }
> Walking through the qbus tree looking for particular devices
> isn't really something I'd recommend either.
>
> thanks
> -- PMM
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
