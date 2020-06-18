Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048651FEFF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jtybv3SOyH42uhoHaV62+U+bKVW7Qm+xMlWjm0kAnis=; b=NpHSKX0VBxgHKG
	fH6f4Inu/277cHT0p5HfTuZKGviLmSe3S3og6nT5C9o8yNONb1zuwDhTZUZkEgcbNd+p8ABwlov0/
	CJfwjQCCnjGpXKuIXHg003ytxSgZIiKT+ZEbe7Rt0y5vp8uBVbVOdDyoBLVHeKc/y2r68U0bu04Cm
	z2hyD8TeWGBbxr8KDJ8mN/BdR7/2TOISjamFOaC1/DB0/Rzv1LIWA4cMBylwF99XFTdee9cef/8cY
	2QC5uPyFTuKKaRW7Phlrhjt2bZf09TkvAoZoKR4zwePtInryOOfLtjYSSbkzWfcQV5lk91SGo+Z2r
	hXmoOHPMNmp+nFQgi0Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jls8S-0006CT-UO; Thu, 18 Jun 2020 10:51:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jls7z-00063Q-G0
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:50:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAAFA31B;
 Thu, 18 Jun 2020 03:50:38 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EA903F71F;
 Thu, 18 Jun 2020 03:50:37 -0700 (PDT)
Subject: Re: [PATCH v5 6/7] arm_pmu: Introduce pmu_irq_ops
To: Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
 <20200617113851.607706-7-alexandru.elisei@arm.com>
 <159242539231.62212.11549121838391298623@swboyd.mtv.corp.google.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <8db25400-5a01-18f6-d362-af3ad229361a@arm.com>
Date: Thu, 18 Jun 2020 11:51:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <159242539231.62212.11549121838391298623@swboyd.mtv.corp.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_035039_839277_54C3F353 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 maz@kernel.org, Will Deacon <will.deacon@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 6/17/20 9:23 PM, Stephen Boyd wrote:
> Quoting Alexandru Elisei (2020-06-17 04:38:50)
>> diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
>> index df352b334ea7..17e5952d21e4 100644
>> --- a/drivers/perf/arm_pmu.c
>> +++ b/drivers/perf/arm_pmu.c
>> @@ -26,8 +26,46 @@
>>  
>>  #include <asm/irq_regs.h>
>>  
>> +static int armpmu_count_irq_users(const int irq);
>> +
>> +struct pmu_irq_ops {
>> +       void (*enable_pmuirq)(unsigned int irq);
>> +       void (*disable_pmuirq)(unsigned int irq);
>> +       void (*free_pmuirq)(unsigned int irq, int cpu, void __percpu *devid);
> Does 'cpu' need to be signed?

I'm not sure what you mean. The cpu argument comes from
drivers/perf/arm_pmu_platform.c::armpmu_free_irqs -> arpmu_free_irq, where is the
iterator variable used by the macro for_each_cpu. The documentation for the macro
states:

/**
* for_each_cpu - iterate over every cpu in a mask
* @cpu: the (optionally unsigned) integer iterator ^^^^^^^^^^^^^^^^^^^

I could write a patch to convert to an unsigned int, but it seems like unnecessary
churn to me.

>> +};
>> +
>> +static void armpmu_free_pmuirq(unsigned int irq, int cpu, void __percpu *devid)
>> +{
>> +       free_irq(irq, per_cpu_ptr(devid, cpu));
>> +}
>> +
>> +static const struct pmu_irq_ops pmuirq_ops = {
>> +       .enable_pmuirq = enable_irq,
>> +       .disable_pmuirq = disable_irq_nosync,
>> +       .free_pmuirq = armpmu_free_pmuirq
>> +};
>> +
>> +static void armpmu_enable_percpu_pmuirq(unsigned int irq)
>> +{
>> +       enable_percpu_irq(irq, IRQ_TYPE_NONE);
>> +}
>> +
>> +static void armpmu_free_percpu_pmuirq(unsigned int irq, int cpu,
>> +                                  void __percpu *devid)
>> +{
>> +       if (armpmu_count_irq_users(irq) == 1)
>> +               free_percpu_irq(irq, devid);
>> +}
>> +
>> +static const struct pmu_irq_ops percpu_pmuirq_ops = {
>> +       .enable_pmuirq = armpmu_enable_percpu_pmuirq,
>> +       .disable_pmuirq = disable_percpu_irq,
>> +       .free_pmuirq = armpmu_free_percpu_pmuirq
>> +};
>> +
>>  static DEFINE_PER_CPU(struct arm_pmu *, cpu_armpmu);
>>  static DEFINE_PER_CPU(int, cpu_irq);
> Same question as above.

Same situation as above - cpu is the iterator variable for for_each_cpu.

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
