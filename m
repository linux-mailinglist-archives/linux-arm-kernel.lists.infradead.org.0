Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0FC2FFA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o4fhUCsb2bAV8OS6KGs8xApEDdZq3FZ6H7PkHpNpLAs=; b=JGaYK02jSizq4xcFlS0TK7oq4
	buZKpWUV9Sm/3cKdUkUWutwrzzQy3ancONp8ekislu3V0PDoK65IZ7WfAYrXtlK9lkuPbLAPU9lm4
	WUTfxX/kU3LO0+MCfizQpIuqMcOYBzMdfKM4uvFq2CyUhOnwPgGeaFgMMdAabdCBOUXPhV47BUuLj
	iXkHxIAudmviSOr27I9dszHYm+OoevPvldKzb+bzVQk5ZSn4RTKkgAHUGAoFd9YPj8TAdtP9lpzoI
	qXose3uyrP8Ois3eufInCoCkbmfOjHO91/HfLcUHS4ePHlc2/V3Y9Umu2X7U4AnGXhPPOMPxDu2nL
	zdSL/IP5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWNMJ-00013F-Rm; Thu, 30 May 2019 15:52:51 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWNMC-00012V-81
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:52:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5546C341;
 Thu, 30 May 2019 08:52:43 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53F3F3F59C;
 Thu, 30 May 2019 08:52:42 -0700 (PDT)
Subject: Re: [PATCH 1/4] coresight: tmc-etr: Do not call smp_processor_id()
 from preemptible
To: robin.murphy@arm.com, mathieu.poirier@linaro.org
References: <1557480663-16759-1-git-send-email-suzuki.poulose@arm.com>
 <1557480663-16759-2-git-send-email-suzuki.poulose@arm.com>
 <319d4d63-326b-9bb5-6a24-f7aa8ec549f9@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <b3e5dd32-5231-36fa-fe97-136aa98f1bef@arm.com>
Date: Thu, 30 May 2019 16:52:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <319d4d63-326b-9bb5-6a24-f7aa8ec549f9@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_085244_288722_47F582C3 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On 10/05/2019 11:38, Robin Murphy wrote:
> Hi Suzuki,
> 
> On 10/05/2019 10:31, Suzuki K Poulose wrote:
>> Instead of using smp_processor_id() to figure out the node,
>> use the numa_node_id() for the current CPU node to avoid
>> splats like :


>
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> index 793639f..cae9d8a 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> @@ -1323,13 +1323,11 @@ static struct etr_perf_buffer *
>>    tmc_etr_setup_perf_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
>>    		       int nr_pages, void **pages, bool snapshot)
>>    {
>> -	int node, cpu = event->cpu;
>> +	int node;
>>    	struct etr_buf *etr_buf;
>>    	struct etr_perf_buffer *etr_perf;
>>    
>> -	if (cpu == -1)
>> -		cpu = smp_processor_id();
>> -	node = cpu_to_node(cpu);
>> +	node = (event->cpu == -1) ? numa_node_id() : cpu_to_node(event->cpu);
> 
> If cpu == -1 represents a "don't care" scenario, it might be clearer to
> just use NUMA_NO_NODE instead, and let the allocator handle it.

Thanks for the suggestion, will use that instead

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
