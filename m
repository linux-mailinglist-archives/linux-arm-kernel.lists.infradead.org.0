Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F37D08BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q5gx6X3NogeGp5oG0IH1bNgRtaG2ElHFsTSnGDyqPRs=; b=e5IlR7GxZH0pTH/9+JyDGeteh
	4CBOFk9CPWLSYTQc2DR30sAVNf7yvw02ixS+sfT3rVZGHnlVWiQ1bdbSfFs/2rzVvhvv8YP7PeZNs
	9A/Xo09Ixkg2peaTWPFWNTvpXAvrV6qyJIFhryvP/na4+wt+f5t1m+yNzlRt7rNOJOn2oVZN3iFd2
	zBy37g90ns0XQyHD8L57k5F7YGsojq3CuJGOglENW9ywn86oHFlOxHaZiq+0TdWpkQK9t99HXO+hi
	9er4GfOGT3cqUzsAOvOlAF/rkgPLSMwXvyKO6EvL8dSg/XKJ2dNbPiwoIPbJ0qtDzzxGjbAGLkOs4
	mx1BeJjiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6h3-0003qH-9P; Wed, 09 Oct 2019 07:47:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6gN-0003K2-3W
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:46:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3383A1000;
 Wed,  9 Oct 2019 00:46:48 -0700 (PDT)
Received: from [10.37.8.60] (unknown [10.37.8.60])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2ADE03F68E;
 Wed,  9 Oct 2019 00:46:47 -0700 (PDT)
Subject: Re: [PATCH v7 02/11] kselftest: arm64:
 mangle_pstate_invalid_compat_toggle and common utils
To: Dave Martin <Dave.Martin@arm.com>
References: <20191007182954.25730-1-cristian.marussi@arm.com>
 <20191007182954.25730-3-cristian.marussi@arm.com>
 <20191008180119.GZ27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <51cb947d-c477-f378-8457-34b7e807d6cc@arm.com>
Date: Wed, 9 Oct 2019 08:47:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008180119.GZ27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_004651_263651_374DD322 
X-CRM114-Status: GOOD (  14.28  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/8/19 7:01 PM, Dave Martin wrote:
> On Mon, Oct 07, 2019 at 07:29:45pm +0100, Cristian Marussi wrote:
>> Add some arm64/signal specific boilerplate and utility code to help
>> further testcases' development.
>>
>> Introduce also one simple testcase mangle_pstate_invalid_compat_toggle
>> and some related helpers: it is a simple mangle testcase which messes
>> with the ucontext_t from within the signal handler, trying to toggle
>> PSTATE state bits to switch the system between 32bit/64bit execution
>> state. Expects SIGSEGV on test PASS.
>>
>> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> v6 --> v7
>> - removed ambiguos fprintf in test_init
>> - fixed spacing
> 
> [...]
> 
>> diff --git a/tools/testing/selftests/arm64/signal/test_signals.h b/tools/testing/selftests/arm64/signal/test_signals.h
> 
> [...]
> 
>> +/* Local Helpers */
>> +#define ID_AA64MMFR1_EL1_PAN_SUPPORTED(val) \
>> +	(!!((val) & (0xfUL << ID_AA64MMFR1_PAN_SHIFT)))
>> +#define ID_AA64MMFR2_EL1_UAO_SUPPORTED(val) \
>> +	(!!((val) & (0xfUL << ID_AA64MMFR2_UAO_SHIFT)))
>> +
>> +#define SSBS_SYSREG		S3_3_C4_C2_6	/* EL0 supported */
> 
> Does anything in the series still use SSBS_SYSREG?
> 
> If not, please drop it.  No need to remove my Reviewed-by just for thato
> change.
> 

Ok I'll remove all the SSBS refs, even related to capabilities check at
test init.

Cristian
> [...]
> 
> Cheers
> ---Dave
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
