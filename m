Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0294E1A7A8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FL/V6vxz0Tm2U90lVvjwuPFYb8E00+6QlRpEcN/Oqy0=; b=CPoHAEH1WgDiN9
	CenuZmgz46jM0uXwA/tQEAc/PlAgiV7bGeOY3unGTAxQozzuIUko1ReyN4KCjbeJcs/oMGOhFv/5T
	Jk8I0WSYiaEMzQ/svyryFWdAwWURxQKXt0MptEaBE3YSBh9v1EfMeH2O/kix4CuPQSUZy8R/qO3HX
	km9Nhvijukg2hjRM5BQwIECqaZnwAP4Dl1iZC0NwT7mz4/Sjnnk4L9VRw9oCJJBAQFd0ea2tvz8o5
	k9HwV4584VIxl9ptMKUkGzSWpbSR4RDVKHZSJooMOKlGp3xjKu4ICdIP79LfohL4D6B//8FofzfPN
	dDSHlDo6Zd0W99bsFQFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKY1-0008Tc-Bx; Tue, 14 Apr 2020 12:20:13 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKXp-0007V4-4e
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:20:03 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 593FA43AC802EDBA096C;
 Tue, 14 Apr 2020 20:19:49 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.49) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Tue, 14 Apr 2020
 20:19:42 +0800
Subject: Re: [PATCH] arm64: panic on synchronous external abort in kernel
 context
To: Mark Rutland <mark.rutland@arm.com>
References: <20200410015245.23230-1-xiexiuqi@huawei.com>
 <20200414105923.GA2486@C02TD0UTHF1T.local>
From: Xie XiuQi <xiexiuqi@huawei.com>
Message-ID: <9982d344-328e-320d-020f-218ab74ae2b1@huawei.com>
Date: Tue, 14 Apr 2020 20:19:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414105923.GA2486@C02TD0UTHF1T.local>
Content-Language: en-US
X-Originating-IP: [10.173.221.49]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_052001_827549_86C5687C 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 tanxiaofei@huawei.com, james.morse@arm.com, tglx@linutronix.de,
 will@kernel.org, wangxiongfeng2@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 2020/4/14 18:59, Mark Rutland wrote:
> On Fri, Apr 10, 2020 at 09:52:45AM +0800, Xie XiuQi wrote:
>> We should panic even panic_on_oops is not set, when we can't recover
>> from synchronous external abort in kernel context.
>>
>> Othervise, there are two issues:
>> 1) fallback to do_exit() in exception context, cause this core hung up.
>>    do_sea()
>>    -> arm64_notify_die
>>       -> die
>>          -> do_exit
>> 2) errors may propagated.
>>
>> Signed-off-by: Xie XiuQi <xiexiuqi@huawei.com>
>> Cc: Xiaofei Tan <tanxiaofei@huawei.com>
>> ---
>>  arch/arm64/include/asm/esr.h | 12 ++++++++++++
>>  arch/arm64/kernel/traps.c    |  2 ++
>>  2 files changed, 14 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
>> index cb29253ae86b..acfc71c6d148 100644
>> --- a/arch/arm64/include/asm/esr.h
>> +++ b/arch/arm64/include/asm/esr.h
>> @@ -326,6 +326,18 @@ static inline bool esr_is_data_abort(u32 esr)
>>  	return ec == ESR_ELx_EC_DABT_LOW || ec == ESR_ELx_EC_DABT_CUR;
>>  }
>>  
>> +static inline bool esr_is_inst_abort(u32 esr)
>> +{
>> +	const u32 ec = ESR_ELx_EC(esr);
>> +
>> +	return ec == ESR_ELx_EC_IABT_LOW || ec == ESR_ELx_EC_IABT_CUR;
>> +}
>> +
>> +static inline bool esr_is_ext_abort(u32 esr)
>> +{
>> +	return esr_is_data_abort(esr) || esr_is_inst_abort(esr);
>> +}
> 
> A data abort or an intstruction abort are not necessarily synchronus
> external aborts, so this isn't right.
> 
> What exactly are you trying to catch here? If you are seeing a problem
> in practice, can you please share your log from a crash?

Yes, I meet a problem in practice.

Tan Xiaofei report this issue when doing ras error inject testing:
1) panic_on_oops is not set;
2) trigger a sea by inject a ECC error;
3) a cpu core receive a sea in kernel context:
   do_mem_abort
     -> arm64_notify_die
        -> die                    # kernel context, call die() directly;
           -> do_exit             # kernel process context, call do_exit(SIGSEGV);
              -> do_task_dead()   # call do_task_dead(), and hung up this core;

Actually, we should not call do_exit() for kernel task, or before return from
external abort.

So, I send this patch intend to panic directly when receive a sea in kernel context.

crash log:

NOTICE:  [TotemRasIntCpuNodeEri]:[1879L]
NOTICE:  [RasEriInterrupt]:[173L]NodeTYP2Status = 0x0
[  387.740609] {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 9
[  387.748837] {1}[Hardware Error]: event severity: recoverable
[  387.754470] {1}[Hardware Error]:  Error 0, type: recoverable
[  387.760103] {1}[Hardware Error]:   section_type: ARM processor error
[  387.766425] {1}[Hardware Error]:   MIDR: 0x00000000481fd010
[  387.771972] {1}[Hardware Error]:   Multiprocessor Affinity Register (MPIDR): 0x0000000081080000
[  387.780628] {1}[Hardware Error]:   error affinity level: 0
[  387.786088] {1}[Hardware Error]:   running state: 0x1
[  387.791115] {1}[Hardware Error]:   Power State Coordination Interface state: 0
[  387.798301] {1}[Hardware Error]:   Error info structure 0:
[  387.803761] {1}[Hardware Error]:   num errors: 1
[  387.808356] {1}[Hardware Error]:    error_type: 0, cache error
[  387.814160] {1}[Hardware Error]:    error_info: 0x0000000024400017
[  387.820311] {1}[Hardware Error]:     transaction type: Instruction
[  387.826461] {1}[Hardware Error]:     operation type: Generic error (type cannot be determined)
[  387.835031] {1}[Hardware Error]:     cache level: 1
[  387.839878] {1}[Hardware Error]:     the error has been corrected
[  387.845942] {1}[Hardware Error]:    physical fault address: 0x00000027caf50770
[  387.853162] Internal error: synchronous external abort: 96000610 [#1] PREEMPT SMP
[  387.860611] Modules linked in: l1l2_inject(O) vfio_iommu_type1 vfio_pci vfio_virqfd vfio ib_ipoib ib_umad rpcrdma ib_iser libiscsi scsi_transport_iscsi hns_roce_hw_v2 crct10dif_ce ses hns3 hclge hnae3 hisi_trng_v2 rng_core hisi_zip hisi_sec2 hisi_hpre hisi_qm uacce hisi_sas_v3_hw hisi_sas_main libsas scsi_transport_sas
[  387.888725] CPU: 0 PID: 940 Comm: kworker/0:3 Kdump: loaded Tainted: G           O      5.5.0-rc4-g5993cbe #1
[  387.898592] Hardware name: Huawei TaiShan 2280 V2/BC82AMDC, BIOS 2280-V2 CS V3.B210.01 03/12/2020
[
 Message from  387.907429] Workqueue: events error_inject [l1l2_inject]
[  387.914098] pstate: 80c00009 (Nzcv daif +PAN +UAO)
 s[yslogd@localho  387.918867] pc : lsu_inj_ue+0x58/0x70 [l1l2_inject]
[  387.925103] lr : error_inject+0x64/0xb0 [l1l2_inject]
[  387.930132] sp : ffff800020af3d90
[  387.933435] x29: ffff800020af3d90 x28: 0000000000000000
st[ at Mar 30 11:  387.938723] x27: ffff0027dae6e838 x26: ffff80001178bcc8
[  387.945391] x25: 0000000000000000 x24: ffffa2c77162e090
[  387.950680] x23: 0000000000000000 x22: ffff2027d7c33d40
33[:55 ...
 ker  387.955968] x21: ffff2027d7c37a00 x20: ffff0027d679c000
[  387.962636] x19: ffffa2c77162e088 x18: 0000000020cbf59a
ne[l:Internal err  387.967924] x17: 000000000000000e x16: ffffa2c7b812bc98
[  387.974592] x15: 0000000000000001 x14: 0000000000000000
[  387.979880] x13: ffff2027cf75a780 x12: ffffa2c7b8299c18
or[: synchronous   387.985168] x11: 0000000000000000 x10: 00000000000009f0
[  387.991836] x9 : ffff800020af3d50 x8 : fefefefefefefeff
ex[ternal abort:   387.997124] x7 : 0000000000000000 x6 : 001d4ed88e000000
[  388.003792] x5 : 000073746e657665 x4 : 0000080110f81381
[  388.009080] x3 : 000000000000002f x2 : 807fffffffffffff
96[000610 [#1] PR  388.014369] x1 : ffffa2c77162c518 x0 : 0000000000000081
[  388.021037] Call trace:
EEMPT SMP
[  388.023475]  lsu_inj_ue+0x58/0x70 [l1l2_inject]
[  388.029019]  error_inject+0x64/0xb0 [l1l2_inject]
[  388.033707]  process_one_work+0x158/0x4b8
[  388.037699]  worker_thread+0x50/0x498
[  388.041348]  kthread+0xfc/0x128
[  388.044480]  ret_from_fork+0x10/0x1c
[  388.048042] Code: b2790000 d519f780 f9800020 d5033f9f (58001001)
[  388.054109] ---[ end trace 39d51c21b0e42ba6 ]---

core 0 hung up at here.


> 
> Thanks,
> Mark.
> 
>> +
>>  const char *esr_get_class_string(u32 esr);
>>  #endif /* __ASSEMBLY */
>>  
>> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
>> index cf402be5c573..08f7f7688d5b 100644
>> --- a/arch/arm64/kernel/traps.c
>> +++ b/arch/arm64/kernel/traps.c
>> @@ -202,6 +202,8 @@ void die(const char *str, struct pt_regs *regs, int err)
>>  		panic("Fatal exception in interrupt");
>>  	if (panic_on_oops)
>>  		panic("Fatal exception");
>> +	if (esr_is_ext_abort(err))
>> +		panic("Synchronous external abort in kernel context");
>>  
>>  	raw_spin_unlock_irqrestore(&die_lock, flags);
>>  
>> -- 
>> 2.20.1
>>
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
