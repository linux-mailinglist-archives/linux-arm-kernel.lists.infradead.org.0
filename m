Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31696E3F79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yqIQT6yNYMFuTtsSoCW6OKaC2oJ7tPnFPJh1uFa4Rek=; b=Vay59Jy/S8trvIBqqNhMSuo/T
	zWg4q915WhY2SFf1Pepwmiv/d++HOjJZgGH/AxfxBvjA/i8BZA0uK26ew8CUYsjrdBYhSVr+SB9yW
	TRTrpkn6xMi5RKtBbdbYE6K38xvVBZADD0Iq6Hvy5ANO1O1N4rN+lSOJ3a8k/tCiJJuYciOGaGqM5
	xwnVCYl+dzNulKMFj6Q8jN4lTSK3r7JcILgY7XUPpS0Ff0TVZ3QDtdAJD4+MuleZzY/5bj15WwO5z
	f/csu3zCu/pTxn4t3j61HHDw5HVxeFfbc3/3yCLs3FLtWfpR1yHnL1aNNrFTNjmzQUBeufvF8c624
	18TK95ifg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNlkd-0005Ge-Lc; Thu, 24 Oct 2019 22:38:39 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlkT-0005FH-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:38:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 005F128;
 Thu, 24 Oct 2019 15:38:17 -0700 (PDT)
Received: from [10.37.9.28] (unknown [10.37.9.28])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6EA7F3F718;
 Thu, 24 Oct 2019 15:38:15 -0700 (PDT)
Subject: Re: [PATCH v9 02/12] kselftest: arm64:
 mangle_pstate_invalid_compat_toggle and common utils
To: cristian.marussi@arm.com, linux-kselftest@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, shuah@kernel.org
References: <20191009120459.21805-1-cristian.marussi@arm.com>
 <20191009120459.21805-3-cristian.marussi@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <dde06d83-4c3b-0be4-db98-e740a1dd327e@arm.com>
Date: Thu, 24 Oct 2019 23:41:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20191009120459.21805-3-cristian.marussi@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_153829_682238_2D3E4F66 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cristian,

On 10/09/2019 01:04 PM, Cristian Marussi wrote:
> Add some arm64/signal specific boilerplate and utility code to help
> further testcases' development.
> 
> Introduce also one simple testcase mangle_pstate_invalid_compat_toggle
> and some related helpers: it is a simple mangle testcase which messes
> with the ucontext_t from within the signal handler, trying to toggle
> PSTATE state bits to switch the system between 32bit/64bit execution
> state. Expects SIGSEGV on test PASS.
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>

[...]

> +
> +#define get_regval(regname, out)			\
> +{							\
> +	asm volatile("mrs %0, " __stringify(regname)	\
> +	: "=r" (out)					\
> +	:						\
> +	: "memory");					\
> +}
> +
> +/* Regs encoding and masks naming copied in from sysreg.h */
> +#define SYS_ID_AA64MMFR1_EL1	S3_0_C0_C7_1	/* MRS Emulated */
> +#define SYS_ID_AA64MMFR2_EL1	S3_0_C0_C7_2	/* MRS Emulated */
> +#define ID_AA64MMFR1_PAN_SHIFT	20
> +#define ID_AA64MMFR2_UAO_SHIFT	4
> +
> +/* Local Helpers */
> +#define ID_AA64MMFR1_EL1_PAN_SUPPORTED(val) \
> +	(!!((val) & (0xfUL << ID_AA64MMFR1_PAN_SHIFT)))
> +#define ID_AA64MMFR2_EL1_UAO_SUPPORTED(val) \
> +	(!!((val) & (0xfUL << ID_AA64MMFR2_UAO_SHIFT)))
> +
> +/*
> + * Feature flags used in tdescr.feats_required to specify
> + * any feature by the test
> + */
> +enum {
> +	FSSBS_BIT,
> +	FPAN_BIT,
> +	FUAO_BIT,
> +	FMAX_END
> +};
> +
> +#define FEAT_SSBS		(1UL << FSSBS_BIT)
> +#define FEAT_PAN		(1UL << FPAN_BIT)
> +#define FEAT_UAO		(1UL << FUAO_BIT)
> +

[...]

> +static int test_init(struct tdescr *td)
> +{
> +	td->minsigstksz = getauxval(AT_MINSIGSTKSZ);
> +	if (!td->minsigstksz)
> +		td->minsigstksz = MINSIGSTKSZ;
> +	fprintf(stderr, "Detected MINSTKSIGSZ:%d\n", td->minsigstksz);
> +
> +	if (td->feats_required) {
> +		td->feats_supported = 0;
> +		/*
> +		 * Checking for CPU required features using both the
> +		 * auxval and the arm64 MRS Emulation to read sysregs.
> +		 */
> +		if (getauxval(AT_HWCAP) & HWCAP_SSBS)
> +			td->feats_supported |= FEAT_SSBS;
> +		if (getauxval(AT_HWCAP) & HWCAP_CPUID) {
> +			uint64_t val = 0;
> +
> +			/* Uses MRS emulation to check capability */
> +			get_regval(SYS_ID_AA64MMFR1_EL1, val);
> +			if (ID_AA64MMFR1_EL1_PAN_SUPPORTED(val))
> +				td->feats_supported |= FEAT_PAN;
> +			/* Uses MRS emulation to check capability */
> +			get_regval(SYS_ID_AA64MMFR2_EL1, val);
> +			if (ID_AA64MMFR2_EL1_UAO_SUPPORTED(val))
> +				td->feats_supported |= FEAT_UAO;

As discussed, these fields are never exposed to userspace via mrs. So
you may as well drop these features.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
