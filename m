Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A0CD0E17
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 13:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S42PMKSWBErXffK1ah3+dPtfy0HdWCbZpuIzKQdSulA=; b=ErFLT9OdC+rVFw
	dKhM3L5vEbcXoy3q+aXztDgTE5heGcO1vu+2n5xgc4lB7WjrvwNcnOh0JAj4QJ0bXcDHopw/XXjQC
	gJlqjFhOVEJwO2Ubp4G2kq70Xgr+iQUB+IlAdBvN6soytVXZKbgQDBqO71BJVeRzUVMDDiIRMFT2K
	kAd1L9doCh1+tj/XYQrnWgBroqtVdPNrj3/MtaS3ibo29jC/Ndp/2X5Ud8QNMIy5gqOr6BytCcagp
	WseIj/jehooonCETJ0lhEs6b93/GtpzjPei2cc74Ylos/F1wlMz5q3l/JCVQYFwEu6h+sSDu/1yHx
	QUNIjcVTDntq+aF7r44Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAap-0003Yp-5K; Wed, 09 Oct 2019 11:57:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAad-0003YI-J8
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 11:57:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47D0B28;
 Wed,  9 Oct 2019 04:57:10 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72CF23F703;
 Wed,  9 Oct 2019 04:57:09 -0700 (PDT)
Subject: Re: [PATCH v8 05/12] kselftest: arm64: extend test_init
 functionalities
To: Dave Martin <Dave.Martin@arm.com>
References: <20191009082611.9441-1-cristian.marussi@arm.com>
 <20191009082611.9441-6-cristian.marussi@arm.com>
 <20191009113240.GC27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <a9b4ae53-1b69-60d2-2f83-60ee674e2b9e@arm.com>
Date: Wed, 9 Oct 2019 12:57:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191009113240.GC27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_045711_719974_6E3C8CD7 
X-CRM114-Status: GOOD (  21.33  )
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

On 09/10/2019 12:32, Dave Martin wrote:
> On Wed, Oct 09, 2019 at 09:26:04AM +0100, Cristian Marussi wrote:
>> Extend signal testing framework to allow the definition of a custom per
>> test initialization function to be run at the end of the common test_init
>> after test setup phase has completed and before test-run routine.
>>
>> This custom per-test initialization function also enables the test writer
>> to decide on its own when forcibly skip the test itself using standard KSFT
>> mechanism.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> 

Thanks

Cristian
>> ---
>> v7 --> v8
>> - per test .init() helper added new in v8 (splitted out of v7 05/11)
>> ---
>>  .../selftests/arm64/signal/test_signals.c     |  6 ++--
>>  .../selftests/arm64/signal/test_signals.h     |  7 ++--
>>  .../arm64/signal/test_signals_utils.c         | 32 +++++++++++++------
>>  .../arm64/signal/test_signals_utils.h         |  1 +
>>  4 files changed, 31 insertions(+), 15 deletions(-)
>>
>> diff --git a/tools/testing/selftests/arm64/signal/test_signals.c b/tools/testing/selftests/arm64/signal/test_signals.c
>> index cb970346b280..416b1ff43199 100644
>> --- a/tools/testing/selftests/arm64/signal/test_signals.c
>> +++ b/tools/testing/selftests/arm64/signal/test_signals.c
>> @@ -19,11 +19,11 @@ int main(int argc, char *argv[])
>>  	current = &tde;
>>  
>>  	ksft_print_msg("%s :: %s\n", current->name, current->descr);
>> -	if (test_setup(current)) {
>> +	if (test_setup(current) && test_init(current)) {
>>  		test_run(current);
>> -		test_result(current);
>>  		test_cleanup(current);
>>  	}
>> +	test_result(current);
>>  
>> -	return current->pass ? KSFT_PASS : KSFT_FAIL;
>> +	return current->result;
>>  }
>> diff --git a/tools/testing/selftests/arm64/signal/test_signals.h b/tools/testing/selftests/arm64/signal/test_signals.h
>> index 3fd4499f00bf..901521188202 100644
>> --- a/tools/testing/selftests/arm64/signal/test_signals.h
>> +++ b/tools/testing/selftests/arm64/signal/test_signals.h
>> @@ -84,17 +84,20 @@ struct tdescr {
>>  	unsigned int		timeout;
>>  	bool			triggered;
>>  	bool			pass;
>> +	unsigned int		result;
>>  	/* optional sa_flags for the installed handler */
>>  	int			sa_flags;
>>  	ucontext_t		saved_uc;
>>  	/* optional test private data */
>>  	void                    *priv;
>>  
>> -	/* a custom setup function to be called before test starts */
>> +	/* a custom setup: called alternatively to default_setup */
>>  	int (*setup)(struct tdescr *td);
>> +	/* a custom init: called by default test init after test_setup */
>> +	bool (*init)(struct tdescr *td);
>>  	/* a custom cleanup function called before test exits */
>>  	void (*cleanup)(struct tdescr *td);
>> -	/* an optional function to be used as a trigger for test starting */
>> +	/* an optional function to be used as a trigger for starting test */
>>  	int (*trigger)(struct tdescr *td);
>>  	/*
>>  	 * the actual test-core: invoked differently depending on the
>> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.c b/tools/testing/selftests/arm64/signal/test_signals_utils.c
>> index ff24db6f9d06..e8bbe36c2660 100644
>> --- a/tools/testing/selftests/arm64/signal/test_signals_utils.c
>> +++ b/tools/testing/selftests/arm64/signal/test_signals_utils.c
>> @@ -11,6 +11,8 @@
>>  #include <linux/auxvec.h>
>>  #include <ucontext.h>
>>  
>> +#include <kselftest.h>
>> +
>>  #include "test_signals.h"
>>  #include "test_signals_utils.h"
>>  #include "testcases/testcases.h"
>> @@ -54,12 +56,18 @@ static void unblock_signal(int signum)
>>  
>>  static void default_result(struct tdescr *td, bool force_exit)
>>  {
>> -	if (td->pass)
>> +	if (td->result == KSFT_SKIP) {
>> +		fprintf(stderr, "==>> completed. SKIP.\n");
>> +	} else if (td->pass) {
>>  		fprintf(stderr, "==>> completed. PASS(1)\n");
>> -	else
>> +		td->result = KSFT_PASS;
>> +	} else {
>>  		fprintf(stdout, "==>> completed. FAIL(0)\n");
>> +		td->result = KSFT_FAIL;
>> +	}
>> +
>>  	if (force_exit)
>> -		exit(td->pass ? EXIT_SUCCESS : EXIT_FAILURE);
>> +		exit(td->result);
>>  }
>>  
>>  /*
>> @@ -211,7 +219,7 @@ static inline int default_trigger(struct tdescr *td)
>>  	return !raise(td->sig_trig);
>>  }
>>  
>> -static int test_init(struct tdescr *td)
>> +int test_init(struct tdescr *td)
>>  {
>>  	td->minsigstksz = getauxval(AT_MINSIGSTKSZ);
>>  	if (!td->minsigstksz)
>> @@ -224,8 +232,6 @@ static int test_init(struct tdescr *td)
>>  		 * Checking for CPU required features using both the
>>  		 * auxval and the arm64 MRS Emulation to read sysregs.
>>  		 */
>> -		if (getauxval(AT_HWCAP) & HWCAP_SSBS)
>> -			td->feats_supported |= FEAT_SSBS;
>>  		if (getauxval(AT_HWCAP) & HWCAP_CPUID) {
>>  			uint64_t val = 0;
>>  
>> @@ -250,7 +256,14 @@ static int test_init(struct tdescr *td)
>>  						~td->feats_supported));
>>  	}
>>  
>> +	/* Perform test specific additional initialization */
>> +	if (td->init && !td->init(td)) {
>> +		fprintf(stderr, "FAILED Testcase initialization.\n");
>> +		return 0;
>> +	}
>>  	td->initialized = 1;
>> +	fprintf(stderr, "Testcase initialized.\n");
>> +
>>  	return 1;
>>  }
>>  
>> @@ -262,9 +275,8 @@ int test_setup(struct tdescr *td)
>>  	assert(td->name);
>>  	assert(td->run);
>>  
>> -	if (!test_init(td))
>> -		return 0;
>> -
>> +	/* Default result is FAIL if test setup fails */
>> +	td->result = KSFT_FAIL;
>>  	if (td->setup)
>>  		return td->setup(td);
>>  	else
>> @@ -285,7 +297,7 @@ int test_run(struct tdescr *td)
>>  
>>  void test_result(struct tdescr *td)
>>  {
>> -	if (td->check_result)
>> +	if (td->initialized && td->result != KSFT_SKIP && td->check_result)
>>  		td->check_result(td);
>>  	default_result(td, 0);
>>  }
>> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.h b/tools/testing/selftests/arm64/signal/test_signals_utils.h
>> index 47a7592b7c53..5e3a2b7aaa8b 100644
>> --- a/tools/testing/selftests/arm64/signal/test_signals_utils.h
>> +++ b/tools/testing/selftests/arm64/signal/test_signals_utils.h
>> @@ -6,6 +6,7 @@
>>  
>>  #include "test_signals.h"
>>  
>> +int test_init(struct tdescr *td);
>>  int test_setup(struct tdescr *td);
>>  void test_cleanup(struct tdescr *td);
>>  int test_run(struct tdescr *td);
>> -- 
>> 2.17.1
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
