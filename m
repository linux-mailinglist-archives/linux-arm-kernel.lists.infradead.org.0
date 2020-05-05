Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B801C4BBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 04:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezWnsqBWQKpQhl3DVpPTJ9JYnKvyNK8oI4Rj7DvFyjw=; b=JVKQ//c+ceZH8i
	tlMFCbDFD8Z3Nrn8wDy/E1pnPniVVQ+iASnBQOU6v8GGC/ii7nXMKfg298VExIh9GQQP5oNmSKL59
	c7m95U4KbJt20T9+lqssLgJMGcgI+x9bqM2bADgUNX6JYeYr7q9mf08883BtPuXgwJ/LtbOyL+aA/
	VCAd75vMeGOYLXMowIaIaolFT22TGkXt0OweoNkr79ZFUEqwc67pKlTgkP7qSJnNQ/SKHAVk0M6FJ
	2q86K1qBidWpsnVJ46KHawaSiSAmIv1IyFTUYsuokMTwhLdy4T7y8sUsDRjdRx/Qx85/XzM91tRjX
	WShZnfN6vRIhJpAo956w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVn0j-00022m-Kd; Tue, 05 May 2020 02:08:41 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVn0c-000211-3k
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 02:08:35 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E5F59D0614359400BC61;
 Tue,  5 May 2020 10:08:20 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.101) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0;
 Tue, 5 May 2020 10:08:19 +0800
Subject: Re: [PATCH] firmware: arm_sdei: remove unused interfaces
To: James Morse <james.morse@arm.com>, Christoph Hellwig <hch@lst.de>
References: <20200504164224.2842960-1-hch@lst.de>
 <7c127e49-b1c6-c7ac-69bf-9fc0a6dba4c4@arm.com>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <6d0adc02-bcd8-2217-c145-d609528fbe77@huawei.com>
Date: Tue, 5 May 2020 10:08:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <7c127e49-b1c6-c7ac-69bf-9fc0a6dba4c4@arm.com>
X-Originating-IP: [10.166.215.101]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_190834_311594_A9B8569E 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 2020/5/5 1:14, James Morse wrote:
> Hi Christoph,
> 
> (CC: +Xiongfeng)
> 
> Thanks for the reminder - I was just searching for who was using this.

Thanks for CC me. We do have a driver that are using it.

> 
> On 04/05/2020 17:42, Christoph Hellwig wrote:
>> The export symbols to register/unregister and enable/disable events
>> aren't ever used outside of arm_sdei.c, so mark them static.
> 
> Xiongfeng, you have drivers using this, could they be posted upstream. Or can we stop
> exporting these?

It's the SDEI Wathchdog which is used for hardlockup detection. But I wasn't
able to push it upstream because we have Pseudo-NMI in mainline.

> 
> 
> (they were originally added for the GHES RAS thing, but by the time it was all merged
> upstream, it wasn't possible to build it as a module)

The SDEI Watchdog driver also can't be built as a module. We still need to
modify the origin kernel. So I think this patch doesn't affect me. Thanks for CC me.

Thanks,
Xiongfeng

> 
> Thanks,
> 
> James
> 
> 
>> diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
>> index 334c8be0c11fb..bdd6461647d74 100644
>> --- a/drivers/firmware/arm_sdei.c
>> +++ b/drivers/firmware/arm_sdei.c
>> @@ -400,7 +400,7 @@ static void _local_event_enable(void *data)
>>  	sdei_cross_call_return(arg, err);
>>  }
>>  
>> -int sdei_event_enable(u32 event_num)
>> +static int sdei_event_enable(u32 event_num)
>>  {
>>  	int err = -EINVAL;
>>  	struct sdei_event *event;
>> @@ -429,7 +429,6 @@ int sdei_event_enable(u32 event_num)
>>  
>>  	return err;
>>  }
>> -EXPORT_SYMBOL(sdei_event_enable);
>>  
>>  static int sdei_api_event_disable(u32 event_num)
>>  {
>> @@ -447,7 +446,7 @@ static void _ipi_event_disable(void *data)
>>  	sdei_cross_call_return(arg, err);
>>  }
>>  
>> -int sdei_event_disable(u32 event_num)
>> +static int sdei_event_disable(u32 event_num)
>>  {
>>  	int err = -EINVAL;
>>  	struct sdei_event *event;
>> @@ -471,7 +470,6 @@ int sdei_event_disable(u32 event_num)
>>  
>>  	return err;
>>  }
>> -EXPORT_SYMBOL(sdei_event_disable);
>>  
>>  static int sdei_api_event_unregister(u32 event_num)
>>  {
>> @@ -502,7 +500,7 @@ static int _sdei_event_unregister(struct sdei_event *event)
>>  	return sdei_do_cross_call(_local_event_unregister, event);
>>  }
>>  
>> -int sdei_event_unregister(u32 event_num)
>> +static int sdei_event_unregister(u32 event_num)
>>  {
>>  	int err;
>>  	struct sdei_event *event;
>> @@ -533,7 +531,6 @@ int sdei_event_unregister(u32 event_num)
>>  
>>  	return err;
>>  }
>> -EXPORT_SYMBOL(sdei_event_unregister);
>>  
>>  /*
>>   * unregister events, but don't destroy them as they are re-registered by
>> @@ -603,7 +600,8 @@ static int _sdei_event_register(struct sdei_event *event)
>>  	return err;
>>  }
>>  
>> -int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
>> +static int sdei_event_register(u32 event_num, sdei_event_callback *cb,
>> +		void *arg)
>>  {
>>  	int err;
>>  	struct sdei_event *event;
>> @@ -643,7 +641,6 @@ int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
>>  
>>  	return err;
>>  }
>> -EXPORT_SYMBOL(sdei_event_register);
>>  
>>  static int sdei_reregister_event_llocked(struct sdei_event *event)
>>  {
>> diff --git a/include/linux/arm_sdei.h b/include/linux/arm_sdei.h
>> index 0a241c5c911d8..5f9fb1d95d515 100644
>> --- a/include/linux/arm_sdei.h
>> +++ b/include/linux/arm_sdei.h
>> @@ -22,21 +22,6 @@
>>   */
>>  typedef int (sdei_event_callback)(u32 event, struct pt_regs *regs, void *arg);
>>  
>> -/*
>> - * Register your callback to claim an event. The event must be described
>> - * by firmware.
>> - */
>> -int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg);
>> -
>> -/*
>> - * Calls to sdei_event_unregister() may return EINPROGRESS. Keep calling
>> - * it until it succeeds.
>> - */
>> -int sdei_event_unregister(u32 event_num);
>> -
>> -int sdei_event_enable(u32 event_num);
>> -int sdei_event_disable(u32 event_num);
>> -
>>  /* GHES register/unregister helpers */
>>  int sdei_register_ghes(struct ghes *ghes, sdei_event_callback *normal_cb,
>>  		       sdei_event_callback *critical_cb);
>>
> 
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
