Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1626B125D57
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:10:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zMmlO3bApYZaX0ooEN4fQvL4SHChG7aXm0XQXlCbb3I=; b=fPao6AbU7qyREjBRCGxUSmJ6N
	Sr9kUeg+D3upgQ3GQER8Lcl6lF5RUcBNam+wlO2fnv6UIbGfZq3H7Td9KErotRXY0Qx99rjJm4hmh
	T3pS5/e0A0iqunsEjrLRrgPdiqAobxe+7qwHzNUiE/IiXDGlXZfkh+irugm7Mn+2CgNLf7ipOe1Zx
	DeK8F20rm/eaR3fparji16rCo5ogjjY2ZP1WXBJxiYqmEhTgvspchEvYRYJcgMQfEQvaOhlEfOU2r
	PpLAc0kpTYZTbwfBsHnzzY9zbDEDCUVkir7Z0+cJHaSa4IQjY4/OpEaRA/J5Pt7dMYEY4nPt3YRmZ
	uW2J+2thg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrpa-0003h2-Of; Thu, 19 Dec 2019 09:10:50 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrpR-0003gI-VL
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:10:43 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 01:10:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="212954494"
Received: from bbartede-mobl2.ger.corp.intel.com (HELO [10.252.33.233])
 ([10.252.33.233])
 by fmsmga007.fm.intel.com with ESMTP; 19 Dec 2019 01:10:30 -0800
Subject: Re: [PATCH v4 4/9] drm/i915/perf: open access for CAP_SYS_PERFMON
 privileged process
To: Alexey Budankov <alexey.budankov@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>, Will Deacon <will.deacon@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Casey Schaufler
 <casey@schaufler-ca.com>, Robert Richter <rric@kernel.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <ea050255-a125-8831-ce91-ee23bd6ad08b@linux.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d5f908f3-b545-7953-8c72-ceb7177609d3@intel.com>
Date: Thu, 19 Dec 2019 11:10:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <ea050255-a125-8831-ce91-ee23bd6ad08b@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_011042_439407_F112B843 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 Kees Cook <keescook@chromium.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Jann Horn <jannh@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/12/2019 11:27, Alexey Budankov wrote:
> Open access to i915_perf monitoring for CAP_SYS_PERFMON privileged
> processes. For backward compatibility reasons access to i915_perf
> subsystem remains open for CAP_SYS_ADMIN privileged processes but
> CAP_SYS_ADMIN usage for secure i915_perf monitoring is discouraged
> with respect to CAP_SYS_PERFMON capability.
>
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>

Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

> ---
>   drivers/gpu/drm/i915/i915_perf.c | 13 ++++++-------
>   1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index e42b86827d6b..e2697f8d04de 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2748,10 +2748,10 @@ i915_perf_open_ioctl_locked(struct drm_i915_private *dev_priv,
>   	/* Similar to perf's kernel.perf_paranoid_cpu sysctl option
>   	 * we check a dev.i915.perf_stream_paranoid sysctl option
>   	 * to determine if it's ok to access system wide OA counters
> -	 * without CAP_SYS_ADMIN privileges.
> +	 * without CAP_SYS_PERFMON or CAP_SYS_ADMIN privileges.
>   	 */
>   	if (privileged_op &&
> -	    i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
> +	    i915_perf_stream_paranoid && !perfmon_capable()) {
>   		DRM_DEBUG("Insufficient privileges to open system-wide i915 perf stream\n");
>   		ret = -EACCES;
>   		goto err_ctx;
> @@ -2939,9 +2939,8 @@ static int read_properties_unlocked(struct drm_i915_private *dev_priv,
>   			} else
>   				oa_freq_hz = 0;
>   
> -			if (oa_freq_hz > i915_oa_max_sample_rate &&
> -			    !capable(CAP_SYS_ADMIN)) {
> -				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without root privileges\n",
> +			if (oa_freq_hz > i915_oa_max_sample_rate && !perfmon_capable()) {
> +				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without CAP_SYS_PERFMON or CAP_SYS_ADMIN privileges\n",
>   					  i915_oa_max_sample_rate);
>   				return -EACCES;
>   			}
> @@ -3328,7 +3327,7 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   		return -EINVAL;
>   	}
>   
> -	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
> +	if (i915_perf_stream_paranoid && !perfmon_capable()) {
>   		DRM_DEBUG("Insufficient privileges to add i915 OA config\n");
>   		return -EACCES;
>   	}
> @@ -3474,7 +3473,7 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
>   		return -ENOTSUPP;
>   	}
>   
> -	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
> +	if (i915_perf_stream_paranoid && !perfmon_capable()) {
>   		DRM_DEBUG("Insufficient privileges to remove i915 OA config\n");
>   		return -EACCES;
>   	}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
