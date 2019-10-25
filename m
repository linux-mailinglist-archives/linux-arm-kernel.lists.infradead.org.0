Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3E8E47F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89LkkaQ7n+8UndLuJGbd+FCAkoZ/A2Ybxsbq+8icE1Y=; b=AUZsc6Sksm1KOD
	UfFNoYWD0XX7sKPtftFo9rmpH29wbVioNR9/Luv5UuOKkofqLMaExltz1muhmB0rQKQzEUSXIru6+
	Rs2DvzwDOo0WYd/xXB1PDh8RnP9JNjD9VaAL2VIuy/8B46pVWQCKXlgnzv+h+iCjLkQaiYAxzFSEg
	tPeSI1gEDGx5n3QsXHFru8saX9HXqE/DzpxCOIfCsrfcnIxwo/wfIrmR75n6YKRX0m7cMaLfBXax+
	1Pwd28wwPqvU9sJ0ww8SY8DDxeQOI8VZnqs1Aaok6SDyR94ycascX2nvg+KwDaup+wCjudaBSGZdb
	f0GDEhHeXpqhfRbT0nPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwL4-0005mn-L4; Fri, 25 Oct 2019 09:56:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwKq-0005m7-7h
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:56:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC1EF28;
 Fri, 25 Oct 2019 02:56:41 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C24D23F6C4;
 Fri, 25 Oct 2019 02:56:40 -0700 (PDT)
Subject: Re: [PATCH v9 02/12] kselftest: arm64:
 mangle_pstate_invalid_compat_toggle and common utils
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
References: <20191009120459.21805-1-cristian.marussi@arm.com>
 <20191009120459.21805-3-cristian.marussi@arm.com>
 <dde06d83-4c3b-0be4-db98-e740a1dd327e@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <d098f030-f3b7-82b6-8489-fa8985870237@arm.com>
Date: Fri, 25 Oct 2019 10:56:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <dde06d83-4c3b-0be4-db98-e740a1dd327e@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_025644_364771_1D5C4782 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, dave.martin@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/10/2019 23:41, Suzuki K Poulose wrote:
> Hi Cristian,
> 
> On 10/09/2019 01:04 PM, Cristian Marussi wrote:
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
> 
> [...]
> 
>> +
>> +#define get_regval(regname, out)			\
>> +{							\
>> +	asm volatile("mrs %0, " __stringify(regname)	\
>> +	: "=r" (out)					\
>> +	:						\
>> +	: "memory");					\
>> +}
>> +
>> +/* Regs encoding and masks naming copied in from sysreg.h */
>> +#define SYS_ID_AA64MMFR1_EL1	S3_0_C0_C7_1	/* MRS Emulated */
>> +#define SYS_ID_AA64MMFR2_EL1	S3_0_C0_C7_2	/* MRS Emulated */
>> +#define ID_AA64MMFR1_PAN_SHIFT	20
>> +#define ID_AA64MMFR2_UAO_SHIFT	4
>> +
>> +/* Local Helpers */
>> +#define ID_AA64MMFR1_EL1_PAN_SUPPORTED(val) \
>> +	(!!((val) & (0xfUL << ID_AA64MMFR1_PAN_SHIFT)))
>> +#define ID_AA64MMFR2_EL1_UAO_SUPPORTED(val) \
>> +	(!!((val) & (0xfUL << ID_AA64MMFR2_UAO_SHIFT)))
>> +
>> +/*
>> + * Feature flags used in tdescr.feats_required to specify
>> + * any feature by the test
>> + */
>> +enum {
>> +	FSSBS_BIT,
>> +	FPAN_BIT,
>> +	FUAO_BIT,
>> +	FMAX_END
>> +};
>> +
>> +#define FEAT_SSBS		(1UL << FSSBS_BIT)
>> +#define FEAT_PAN		(1UL << FPAN_BIT)
>> +#define FEAT_UAO		(1UL << FUAO_BIT)
>> +
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
> 
> As discussed, these fields are never exposed to userspace via mrs. So
> you may as well drop these features.
> 

Yes I'm going to drop this code in v10 (which is also un-needed in fact by the current testcases)

Thanks

Cristian
> Cheers
> Suzuki
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
