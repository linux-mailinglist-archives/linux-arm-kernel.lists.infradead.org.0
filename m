Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5B77FE11
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 18:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UZTSlrQRafUQi2esNe8n9jr4TlCTdhAzUuMcheiqlkI=; b=QiuPBgTmfyIa8sRIQn8e2Ff3h
	oNEgRtxUOZVdLqFECZtTg6Y79R9b4JEoFTJjlK0BjYgs8JoSIwqGDWTkApyclBbAZgYieNFgPClHl
	LL5TA8PnPClW4vUdAPCUFO9gJVjoUqzW4ZUJtrkrRIX0w1Sv0b90Am1CQhOfpgNFa3EH30sQ5CAfN
	tlF0tTsgFUofrEaXPkPrAw86mQyDFBo8CG3JAaC1xsHrRizKAUjkwNg/MxGxmvgXs5IBiJgcYaJtv
	qlHCKtL1Ma5q/N8RiwS78mtQpJycWcXoBJTntWKO4pv0Whzf0anoU3owf1+zIvSlZsFbDYwaBLlHH
	wQQaI7SxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hta3J-0004k4-BM; Fri, 02 Aug 2019 16:05:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hta3B-0004Ql-9b
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 16:05:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C09515A2;
 Fri,  2 Aug 2019 09:05:00 -0700 (PDT)
Received: from [192.168.122.164] (U201426.austin.arm.com [10.118.28.59])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A5C13F575;
 Fri,  2 Aug 2019 09:05:00 -0700 (PDT)
Subject: Re: [PATCH v4 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
To: Robert Richter <rric@kernel.org>
References: <20190801034634.26913-1-jeremy.linton@arm.com>
 <20190801034634.26913-3-jeremy.linton@arm.com>
 <20190802134427.dmclik66zcgxapy3@rric.localdomain>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <f481feb9-faa9-ca7f-89b9-e23141129561@arm.com>
Date: Fri, 2 Aug 2019 11:04:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190802134427.dmclik66zcgxapy3@rric.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_090501_388714_C67733B3 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, rjw@rjwysocki.net,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


On 8/2/19 8:44 AM, Robert Richter wrote:
> On 31.07.19 22:46:34, Jeremy Linton wrote:
> 
>> @@ -358,6 +356,10 @@ static int __init parse_acpi_topology(void)
>>   		if (topology_id < 0)
>>   			return topology_id;
>>   
>> +		is_threaded = acpi_pptt_cpu_is_thread(cpu);
>> +		if (is_threaded < 0)
>> +			is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
>> +
> 
> I think the return code handling is error-prone, as in the kernel such
> functions are typically used like:
> 
> 	if (something_is_thread) { ... }

I don't really understand why this keeps getting repeated. The negative 
error code return is used by huge swaths of the kernel API. A couple 
lines up the exact same paradigm is used in get_cpu_for_node() and a few 
other places.

> 
> I see this is due to acpi and arch code separation so we cannot simply
> move the fallback to pptt code.

Right, the PPTT->arch data structure translation is arch specific. 
During the initial PPTT drop a lot of discussion when into how arm64 was 
doing that translation, as well as the corresponding translation to the 
core scheduler/etc.

> 
> So maybe we have a static function cpu_is_thread() in this file that
> handles all the logic and directly use check_acpi_cpu_flag() from
> there. However, code may change here in case of a rework as I
> suggested in patch #1. In both cases the acpi api is more straight
> then.

I'm ok with that, it effectively only moves those three lines to a 
standalone single call-site function. To be clear, that isn't a generic 
routine for anyone to call. Functions that need to know if the core is a 
threaded should be checking the topology thread_id directly rather than 
re-coding the acpi/dt/mpidr logic which populates it.


> 
> -Robert
> 
>>   		if (is_threaded) {
>>   			cpu_topology[cpu].thread_id = topology_id;
>>   			topology_id = find_acpi_cpu_topology(cpu, 1);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
