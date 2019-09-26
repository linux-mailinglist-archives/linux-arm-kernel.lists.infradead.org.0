Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C28ABF0B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 13:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=612ygNjDUs9tH2kXfEtPfGOUwylSPkpbc/i+lBY9BrA=; b=SbNmzOEJXhMAuH
	dylCqD12IYW4B/z5ThPoOwW7Wdho0/v+7nOy8gbL+4rum7p/WlWqVx85jAH/gjRfy9Su6POxVpY2p
	YuYBvHno4jHFiw6o7hQl1gwwpcjzLjCPNk+LmuL/HeI1fZpqaMZSZJe0CzPK83tzrYV3hBhB0VQHj
	ZlW/Ygq+YYKdhpKLVcuhH+k19a5SI9I0srJl2yiFp892TEgSd7DNeSZjO+WHNa6VP5XQ7xROlzVw9
	jrgGk9CFEX0DVTB8Pce8V9GCq5UD0zgY3mxAaje/GI5c0/Zqk46ajDKw/mncVtC9yiypY/CXCYVZ9
	Neb18k4oGKC6yJ0eQqAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRVi-000762-A5; Thu, 26 Sep 2019 11:00:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRVS-000732-Fp
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 11:00:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B267F1000;
 Thu, 26 Sep 2019 04:00:16 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE1763F67D;
 Thu, 26 Sep 2019 04:00:15 -0700 (PDT)
Subject: Re: [PATCH v6 02/11] kselftest: arm64:
 mangle_pstate_invalid_compat_toggle and common utils
To: Dave Martin <Dave.Martin@arm.com>
References: <20190910123111.33478-1-cristian.marussi@arm.com>
 <20190910123111.33478-3-cristian.marussi@arm.com>
 <20190917160545.GL27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <799f7556-75a8-59bb-ec3d-624d2bc241e6@arm.com>
Date: Thu, 26 Sep 2019 12:00:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190917160545.GL27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_040018_652357_778246D6 
X-CRM114-Status: GOOD (  17.25  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/09/2019 17:05, Dave Martin wrote:
> On Tue, Sep 10, 2019 at 01:31:02pm +0100, Cristian Marussi wrote:
>> Add some arm64/signal specific boilerplate and utility code to help
>> further testcases' development.
>>
>> Introduce also one simple testcase mangle_pstate_invalid_compat_toggle
>> and some related helpers: it is a simple mangle testcase which messes
>> with the ucontext_t from within the signal handler, trying to toggle
>> PSTATE state bits to switch the system between 32bit/64bit execution
>> state. Expects SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> v5 --> v6
>> - fix commit msg
>> - feat_names is char const *const
>> - better supported options check and reporting
>> - removed critical asserts to avoid issues with NDEBUG
>> - more robust get_header
>> - fix validation for ESR_CONTEXT size
>> - add more explicit comment in GET_RESV_NEXT_HEAD() macro
>> - refactored default_handler()
>> - feats_ok() now public
>> - call always test_results() no matter the outcome of test_run()
> 
> [...]
> 
>> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.c b/tools/testing/selftests/arm64/signal/test_signals_utils.c
> 
> [...]
> 
>> +static int test_init(struct tdescr *td)
>> +{
>> +	td->minsigstksz = getauxval(AT_MINSIGSTKSZ);
>> +	if (!td->minsigstksz)
>> +		td->minsigstksz = MINSIGSTKSZ;
>> +	fprintf(stderr, "Detected MINSTKSIGSZ:%d\n", td->minsigstksz);
>> +
>> +	if (td->feats_required) {
>> +		td->feats_supported = 0;
>> +		/*
>> +		 * Checking for CPU required features using both the
>> +		 * auxval and the arm64 MRS Emulation to read sysregs.
>> +		 */
>> +		if (getauxval(AT_HWCAP) & HWCAP_SSBS)
>> +			td->feats_supported |= FEAT_SSBS;
>> +		if (getauxval(AT_HWCAP) & HWCAP_CPUID) {
>> +			uint64_t val = 0;
>> +
>> +			/* Uses MRS emulation to check capability */
>> +			get_regval(SYS_ID_AA64MMFR1_EL1, val);
>> +			if (ID_AA64MMFR1_EL1_PAN_SUPPORTED(val))
>> +				td->feats_supported |= FEAT_PAN;
>> +			/* Uses MRS emulation to check capability */
>> +			get_regval(SYS_ID_AA64MMFR2_EL1, val);
>> +			if (ID_AA64MMFR2_EL1_UAO_SUPPORTED(val))
>> +				td->feats_supported |= FEAT_UAO;
>> +		} else {
>> +			fprintf(stderr,
>> +				"HWCAP_CPUID NOT available. Mark ALL feats UNSUPPORTED.\n");
> 
> Nit: this message isn't strictly correct now: SSBS may still be detected
> even if HWCAP_CPUID isn't present.
> 
> For simplicity I suggest to drop this fprintf() (and the containing
> else { }, which is otherwise empty).
> 
> The following code reports what features are supported in any case, so
> the user will be able to see what was detected.
> 
> 
> The rest looks reasonable to me now, so with the above nit fixed:
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Thanks I'll do the above fixes in v7.

Cristian
> 
> [...]
> 
> Cheers
> ---Dave
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
