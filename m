Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AA41FEFEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpVRYloSMcL2tVnaDEoArg93eQO+xmir9q1zLv4F9UQ=; b=R9xq/c1WjbkIuC
	F9I8t+soVf6LEu06IIW6+rCMwj94fDKpEzZo/9XAUxynPeUsJM56l0KoPiGaTj4AgdV3sxwhbFEeN
	r7IG/CMomm1efcXHuq4Op89pDFetflugWn3KEPDg9vqc39H6qSfXNQ8qY8dTB+BPiFYeumSKUoxRf
	IIAu78vvYaeTncd8ebRMGBp6EFXgddGhH2Lkcuy1zchKkXwVT+XIIAG82w+yb8UT8EZkSaev1nohI
	zkwXyROpZbeKUdZroxWY5ihZzdUNpg1yyJwmZkkgNwO07Y5HAMTKL8HBjrh5zJ+/eurZdYOBG8ZWz
	0RHBNEAAKyl0YkdnZRLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jls7m-0005dp-4o; Thu, 18 Jun 2020 10:50:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jls7e-0005d2-3F
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:50:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85C5431B;
 Thu, 18 Jun 2020 03:50:14 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9935A3F71F;
 Thu, 18 Jun 2020 03:50:12 -0700 (PDT)
Subject: Re: [PATCH v5 1/7] arm64: perf: Add missing ISB in
 armv8pmu_enable_event()
To: Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
 <20200617113851.607706-2-alexandru.elisei@arm.com>
 <159242406774.62212.13909672383879587787@swboyd.mtv.corp.google.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <f1ab2ea4-97ad-0e27-ba0a-90fe53d54bce@arm.com>
Date: Thu, 18 Jun 2020 11:50:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <159242406774.62212.13909672383879587787@swboyd.mtv.corp.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_035018_181280_F2BA824D 
X-CRM114-Status: GOOD (  16.82  )
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
Cc: mark.rutland@arm.com, will@kernel.org,
 Julien Thierry <julien.thierry@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 maz@kernel.org, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, catalin.marinas@arm.com,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

Thank you very much for taking the time to review the patches!

Comments below.

On 6/17/20 9:01 PM, Stephen Boyd wrote:
> Quoting Alexandru Elisei (2020-06-17 04:38:45)
>> Writes to the PMXEVTYPER_EL0 register are not self-synchronising. In
>> armv8pmu_enable_event(), the PE can reorder configuring the event type
>> after we have enabled the counter and the interrupt. This can lead to an
>> interrupt being asserted because the of the previous event type that we
> 'because the of the' doesn't read properly.

Typo on my part, will fix it.

>
>> were counting, not the one that we've just enabled.
>>
>> The same rationale applies to writes to the PMINTENSET_EL1 register. The PE
>> can reorder enabling the interrupt at any point in the future after we have
>> enabled the event.
>>
>> Prevent both situations from happening by adding an ISB just before we
>> enable the event counter.
>>
>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>> index 4d7879484cec..ee180b2a5b39 100644
>> --- a/arch/arm64/kernel/perf_event.c
>> +++ b/arch/arm64/kernel/perf_event.c
>> @@ -605,6 +605,7 @@ static void armv8pmu_enable_event(struct perf_event *event)
>>          * Enable interrupt for this counter
>>          */
>>         armv8pmu_enable_event_irq(event);
>> +       isb();
> Please add a comment before the isb() explaining the situation. Nobody
> knows what this is for when reading the code and they don't want to do
> git archaeology to figure it out.

That's a good idea, I'll do that.

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
