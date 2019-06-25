Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C76F952908
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 12:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b/2XHnvdyx9bAYdwed8n6GOLQ+dTLDQkyv/ReXomx7c=; b=mfqw5R0p3R14gMTUqV1LcoNw9
	Qt8R1AM47l3Hp32e1rSWR1zryxPRNlQaRBJ7aNtWqXKUCkdi/RJOC8eEVztielK/wDsy/pwJ2kbiK
	fRpO1ss8VyBe7ZSNXrX9ixSVuKQB3k5720tw8jLLbso5XIs2xQ4f3BBcgShVaUZHJeXRZwLwcJNN7
	46TAzEbXYaXeEpscfXKeR70hnJTaGstNoPppNEDF/8Na/FAC0+ppanWVcHDSnIqtWcmTO4NzSjQtg
	rT227BqmafIe/USlmpYZ+iloF59LX4RSf+cVdQtB3i0MKwtSauMXLQRddWYYcrHhk6yAoRa2mmXcR
	JWYSE2SQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiMq-0003y6-Lh; Tue, 25 Jun 2019 10:08:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiMb-0003xY-1z
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 10:07:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AB69360;
 Tue, 25 Jun 2019 03:07:42 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F26DB3F71E;
 Tue, 25 Jun 2019 03:07:41 -0700 (PDT)
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: mathieu.poirier@linaro.org, andrew.murray@arm.com
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com> <20190618225549.GB24894@xps15>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <494e131a-0fcf-a4b0-6112-cb5861756004@arm.com>
Date: Tue, 25 Jun 2019 11:07:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190618225549.GB24894@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_030745_147901_6681333F 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexander.shishkin@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 18/06/2019 23:55, Mathieu Poirier wrote:
> On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
>> Some hardware will ignore bit TRCPDCR.PU which is used to signal
>> to hardware that power should not be removed from the trace unit.
>> Let's mitigate against this by saving and restoring the trace
>> unit state when the CPU enters low power states.
>>
>> To provide the benefit to both self-hosted and external debuggers
>> we save/restore the entire state which includes etmv4_config data
>> and dynamic data such as inflight counter values, sequencer
>> states, etc.
>>
>> To reduce CPU suspend/resume latency the state is only saved or
>> restored if coresight is in use as determined by the claimset
>> registers.
>>
>> To aid debug of CPU suspend/resume a disable_pm_save parameter
>> is provided to disable this feature.
>>
>> Signed-off-by: Andrew Murray <andrew.murray@arm.com>


>> +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
>> +			      void *v)
>> +{
>> +	struct etmv4_drvdata *drvdata = container_of(nb,
>> +					struct etmv4_drvdata, nb);
>> +
>> +	if (disable_pm_save)
>> +		return NOTIFY_OK;
>> +
>> +	switch (cmd) {
>> +	case CPU_PM_ENTER:
>> +		/* save the state if coresight is in use */
>> +		if (coresight_is_claimed_any(drvdata->base))
> 
> claimed_any()? At this point if coresight_is_claimed_self_hosted() == false an
> external agent is competing with the framework and we should abdicate.

I think claimed_any() is correct check. As per PSCI, ARM DEN 0022D, section
6.8.1 Debug and Trace save and restore,  the OS software is
in charge of save/restoring the context of Debug/Trace. The claim tags
are a mechanism to indicate who is consuming the components. Also, given
the OS software doesn't have a reliable way to communicate back to the
the External debugger about its decision to power down the CPU, that
makes sense to save/restore it.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
