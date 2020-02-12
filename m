Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A564C15AD58
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:24:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1TC4C48v0lEWsfHz+Qsnavt3LsfuHf0Z02pJilAUck=; b=GilrKVVw6ahSMl
	Ij7x3fM3AF+O2LCmyAKbG107j75i1haB171l5FJkyOUtxaym4xyX5U0O0iTsTPWE5s2jV20HtOEUb
	FoMdiPjKASJrn0W9lJpFJpmGcmY7EZKOfraFTo9wT3n5Tym+CleoUR7bLWYzLWrBu3y7k/K4bswjP
	pyZX2wY6FP3Z4RNu26fJgy518KTK1xHjDQRF6P4e+5kpbKhaNhfKNffsrmkmlJAFl8tnZOzYazvM3
	GJsRd1f3K1insnIHQ+aNEZliFqneutCtGcAhfRH3QwQzKaPG0NOY8Zg3Ru+CAMmPrmVtxaQtuvA2G
	fU58foL+umhZXMSZDCuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1uos-0006AV-3X; Wed, 12 Feb 2020 16:24:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1uoi-00069H-Nb
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:24:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9EEF328;
 Wed, 12 Feb 2020 08:24:45 -0800 (PST)
Received: from [10.1.28.191] (e121487-lin.cambridge.arm.com [10.1.28.191])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BCD9A3F68F;
 Wed, 12 Feb 2020 08:24:43 -0800 (PST)
Subject: Re: [PATCH v3 1/7] arm64: add support for the AMU extension v1
To: Ionela Voinescu <ionela.voinescu@arm.com>,
 Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-2-ionela.voinescu@arm.com>
 <93472f17-6465-641d-ea82-3230b5697ffd@arm.com>
 <20200212161045.GA7475@arm.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <ade32e03-b56b-7c5d-628d-124e52279d34@arm.com>
Date: Wed, 12 Feb 2020 16:24:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200212161045.GA7475@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_082448_812101_D8B6B2BB 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, sudeep.holla@arm.com, linux-pm@vger.kernel.org,
 peterz@infradead.org, maz@kernel.org, linux-doc@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, mingo@redhat.com,
 viresh.kumar@linaro.org, lukasz.luba@arm.com, catalin.marinas@arm.com,
 will@kernel.org, valentin.schneider@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 2/12/20 4:10 PM, Ionela Voinescu wrote:
> Hi Suzuki,
> 
> On Wednesday 12 Feb 2020 at 11:30:44 (+0000), Suzuki Kuruppassery Poulose wrote:
>>> +static int __init set_disable_amu(char *str)
>>> +{
>>> +	int value = 0;
>>> +
>>> +	disable_amu = get_option(&str, &value) ? !!value : true;
>> minor nit: You could simply use strtobool(str) here, which accepts:
>>
>> disable_amu= [0/1/on/off/y/n]
>>
> Yes, this was intentional as I wanted "disable_amu" to be a valid option
> as well, not only "disable_amu=<option>".
> 
> If you don't mind I'd like to keep it like this. Currently the use of
> AMU is enabled by default, and the most common kernel parameter to
> disable it would be "disable_amu". Allowing "disable_amu=0" is just in
> case we change the default in the kernel to not support AMU and we'd
> like platforms to be able to enable it. 
> 

Sorry for jumping into thread, but can we avoid negatives into naming which
accept values? If is always tricky to get expected effect when both are combined.

If value doesn't really mater than can it be just "noamu"?

If value does matter can it be (per Suzuki) amu=[0/1/on/off/y/n]?

Or can you postpone introduction of "just in case" option till that case happens?

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
