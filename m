Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A68315B0D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 20:18:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bKpU46y0MzieDv/ztnL6yiBXQ+m1yihskHT6WVjvLiM=; b=mYPJs/HnFJmTYtT8wDVJ/POsI
	mmDAVJE8R+pFs91geLdXvPiCndFy8BZvPLohfIFXfIKO4XcmDMgLhxZchD+uC+mtkA6UoBl3w24Ro
	NGztF6lzac8K8UDReekbntIQ84Aixy7hCJECL35OsIncePIR/djj4aphrwf0mik0PqF8naSviYzwx
	sjbYN+ybk5w0y7Jj9MPi6TXVdxojRkpc0csPo0etXsPgy81JYYAr35YztT+1W6yEjzUKHs28KvQLk
	+Rre8Boc59f1RiUnPE3YMo2o1+v85JYLhlN/UU+ycvTscZEjCOs8GEAtctoyb7ZY5yqHkeT7jDDpZ
	D/j/c3X5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1xWb-0003ZR-Uc; Wed, 12 Feb 2020 19:18:17 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1xWU-0003Z3-BC
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 19:18:11 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01CJI2nt129769;
 Wed, 12 Feb 2020 13:18:02 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581535082;
 bh=RddroMl+8V9fWReNg0unj/DoPpgOqUAGzQHwwWEjayM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=iyt0kwiq+Zq9gc61whMBKHqQL+1AHSFr0zlCgr2krxL8AEBt0WMnafVGBgcTZRAln
 sUPOlXS6XQeoKNMR+92LDJ/Uy6jX+TNZL3hZma9YBqfn3V0LeXHQR0Qedl1n8Jo+rW
 Xyc9RZbHtIEFz2UAKmeNTj7RjcDWQLHZrCGBCfoI=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01CJI2OO121270
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 12 Feb 2020 13:18:02 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 12
 Feb 2020 13:18:01 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 12 Feb 2020 13:18:01 -0600
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01CJHxFU129951;
 Wed, 12 Feb 2020 13:18:00 -0600
Subject: Re: Question about kthread_mod_delayed_work() allowed context
To: Petr Mladek <pmladek@suse.com>
References: <cfa886ad-e3b7-c0d2-3ff8-58d94170eab5@ti.com>
 <20200212154116.hh2vdyi7e2xflxr5@pathway.suse.cz>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <59802c56-1013-3042-167d-89f288f51b58@ti.com>
Date: Wed, 12 Feb 2020 21:17:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200212154116.hh2vdyi7e2xflxr5@pathway.suse.cz>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_111810_516406_B0CF79D2 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev <netdev@vger.kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-rt-users@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/02/2020 17:41, Petr Mladek wrote:
> On Tue 2020-02-11 12:23:59, Grygorii Strashko wrote:
>> Hi All,
>>
>> I'd like to ask question about allowed calling context for kthread_mod_delayed_work().
>>
>> The comment to kthread_mod_delayed_work() says:
>>
>>   * This function is safe to call from any context including IRQ handler.
>>   * See __kthread_cancel_work() and kthread_delayed_work_timer_fn()
>>   * for details.
>>   */
>>
>> But it has del_timer_sync() inside which seems can't be called from hard_irq context:
>> kthread_mod_delayed_work()
>>    |-__kthread_cancel_work()
>>       |- del_timer_sync()
>> 	|- WARN_ON(in_irq() && !(timer->flags & TIMER_IRQSAFE));
> 
> It is safe because kthread_delayed_work_timer_fn() is IRQ safe.
> Note that it uses raw_spin_lock_irqsave(). It is the reason why
> the timer could have set TIMER_IRQSAFE flag, see
> KTHREAD_DELAYED_WORK_INIT().
> 
> In more details. The timer is either canceled before the callback
> is called. Or it waits for the callback but the callback is safe
> because it can't sleep.

I think, my issue (warning) could be related to the fact that kthread_init_delayed_work()
is used, which seems doesn't set TIMER_IRQSAFE flag.

> 
> 
>> My use case is related to PTP processing using PTP auxiliary worker:
>> (commit d9535cb7b760 ("ptp: introduce ptp auxiliary worker")):
>>   - periodic work A is started and res-schedules itself for every dtX
>>   - on IRQ - the work A need to be scheduled immediately
> 
> This is exactly where kthread_mod_delayed_work() need to be used
> in the IRQ context with 0 delay.
> 
> 
>> Any advice on how to proceed?
>> Can kthread_queue_work() be used even if there is delayed work is
>> scheduled already (in general, don't care if work A will be executed one
>> more time after timer expiration)?
> 
> Yes, it can be used this way. It should behave the same way as
> the workqueue API.
> 
> I am happy that there are more users for this API. I wanted to
> convert more kthreads but it was just falling down in my TODO.
> 
> I hope that I answered all questions. Feel free to ask more
> when in doubts.
> 
> Best Regards,
> Petr
> 

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
