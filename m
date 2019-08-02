Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4743C7FDA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 17:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s10wfvNPCH4FgN3c2wCfg1AfHRHvpF1LM1xZi/7YwvA=; b=slX81uv4OdkauHeDVNUq7+mIx
	veyCwAoiuqz44pQ+Gkdox2vNgLkjRgCEjOpdgDYOMxcp1Iz5ACziBj7O8TGdM2Fh8Wp6UvZ/IhcG0
	kPl9Qbq/fbC0rGGy8k6CMrYlAQR7NaSDZIEcWxucurEZ+QFhwm9a9POWCxMYJTENVyn/b6V2OBcaB
	UXMC4/XtznlPJ7mOvvFCTr+q8y39vYUxnPxwZCa05SJm2por4kbBFlm5ZV7ZGe2p/XCuPud1uus++
	gFWiL3Ki5fInrM/DiaXRifB+ujo9r4wZyZ3F8bcN9fBV92b/wKYFx/RBV1VRCQhRAUAtfe2vXTGir
	FBdvnTDYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htZbz-0004mC-7P; Fri, 02 Aug 2019 15:36:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htZbt-0004lQ-OO
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 15:36:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E8FEB1596;
 Fri,  2 Aug 2019 08:36:46 -0700 (PDT)
Received: from [192.168.122.164] (U201426.austin.arm.com [10.118.28.59])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A27293F575;
 Fri,  2 Aug 2019 08:36:46 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Robert Richter <rric@kernel.org>
References: <20190801034634.26913-1-jeremy.linton@arm.com>
 <20190801034634.26913-2-jeremy.linton@arm.com>
 <20190802130510.rd4uyndtqlcfdhtm@rric.localdomain>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <488e9444-d01e-6bf4-770c-34091a8a8244@arm.com>
Date: Fri, 2 Aug 2019 10:36:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190802130510.rd4uyndtqlcfdhtm@rric.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_083649_842041_47209BB7 
X-CRM114-Status: GOOD (  18.37  )
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

Thanks for taking a look at this.

On 8/2/19 8:05 AM, Robert Richter wrote:
> On 31.07.19 22:46:33, Jeremy Linton wrote:
> 
>> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
>> index 9426b9aaed86..9d0e20a2ac83 100644
>> --- a/include/linux/acpi.h
>> +++ b/include/linux/acpi.h
>> @@ -1302,11 +1302,16 @@ static inline int lpit_read_residency_count_address(u64 *address)
>>   #endif
>>   
>>   #ifdef CONFIG_ACPI_PPTT
>> +int acpi_pptt_cpu_is_thread(unsigned int cpu);
>>   int find_acpi_cpu_topology(unsigned int cpu, int level);
>>   int find_acpi_cpu_topology_package(unsigned int cpu);
>>   int find_acpi_cpu_topology_hetero_id(unsigned int cpu);
>>   int find_acpi_cpu_cache_topology(unsigned int cpu, int level);
> 
> All those functions (exept hetero_id) are used only in
> parse_acpi_topology(). So how about creating a struct with thread_id,
> core_id, and cache_id (and hetero_id (?)) and have a single pptt table
> parsing function that fills in all of this into that struct? This
> simplifies the api and also the code.
> 
> This also shows that hetid (see arm_pmu_acpi.c) better should be
> stored in cpu_topology[] too and thus being parsed with the other
> parameters as well and made accessible from there by a helper.


I think the idea here was to avoid an additional set of intermediate 
data structures between the PPTT table/structure and the final arch 
specific data structures (which themselves are used to feed other 
things, like the scheduler, note the llc parsing). Rather the attempt is 
to provide a set of tools to retrieve information and let the policy for 
how that information is used be dictated by the consumer.

In the future, if we can further unify the arch specific cpu_topology 
structures it would make sense to parse directly into them, but until 
that happens I don't think we should try. The existing code does parse 
directly into the cache structures, but the cpu topology is subtly arm64 
at the moment. If another arch decided to use this, i'm not sure they 
would want or need it parsed in exactly the same way.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
