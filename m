Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5D54C5F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 05:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLNyJqiS84i1SZZT+H/PgP0GvzMz93Au/Ys0t9/dMIk=; b=qSgdR5g7sgWEOK
	PY4PsN4IrkWZziVEJuOiJ6rokoCibZ1z3NF317w8Pp5ZN5L/lmlDV3BnBF0jAQVKwm8TPyRImCgSi
	CHTN/gxNn9tT+iuSV5rJb5WiC91L0kDm8+hScj3R71+CSZUxOMqftmFCoH4wZPcJDWH7I88h5JPL2
	Kl5g01RKKep58+IWgPBZ+0fBDjx7Pgj4ghdRw61MHrcVKhvD2oo4Spywg5UEO/Dp48rPlJjKcyyiw
	I/V+Iu2bYtS9v3OOoEc0dSuGo9crUYfRTuOxCNaQ9A62gsb+eg4tuigldTgZvnpu70Sg3hbpT770J
	B8wW1z3jZuu++hWribLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdo7P-0001HO-AR; Thu, 20 Jun 2019 03:52:11 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdo7D-0001Gz-Mx
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 03:52:01 +0000
Received: by mail-ot1-x341.google.com with SMTP id r6so1358650oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 20:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=o7v/MxKerkj9lXOy7XckOwr/I7Upmu6TOve4Yqn6x4Q=;
 b=VMhEP5fif4wABtZ6fnhcX8LomnG6o9Ke1/iYLehVNCBc8CTXCY6eAYQs95V+lPrYD4
 q817yFJ4ckKp6fqb88youV+TDnjPo7BiqKfPBeqzsSvtKdbPb+d8Fj1fht8vuavCWuzA
 hw8uhFcFrQIKaMrVz2BbaWH3SiA86F+RQIoh/vJzKbvs9vQdB8teIqKMKwRhJIj6ZbxR
 nLuR86Ld4v3e0QHOvVX+iMQi06lQFl0ye7NEFsUrORYgDA30i6jfRXstlUWpJpqCwbHa
 SKqQkqUpuftwbTzQG+NW2ctVxgdCNqPvVlcsTVMj5Ab7fFqX5VooKynidrx4++vY6YvO
 l6pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o7v/MxKerkj9lXOy7XckOwr/I7Upmu6TOve4Yqn6x4Q=;
 b=PfjRSPlFL9gSVIEsZfbI67J9Y98+f5JQUedpY0A3LKTkrhxr7Yt2HU19RxgBlj3/qB
 DCV0KQwpGD6DAm5K6nKQ3wwV+N+CHnrBPLkIoGDQ347+9Rf9wvrDj/+tx6au/RRT4biX
 NZw9emBA1RwM1JI7AtWUISdmiBnm7fIqbHpJgvOJ+e5WlZ1SBZyT39d81vr6iqulrIBq
 cVDo2Bsk56YgNhHiwFjYy4TUu0gFJDGc5MXoLQT1pMl4as8snVp185KusF2RJlXduRmT
 fTWM3azC2YsM4m/ziP7bq1mfRevIqeikYwLwJD5QSKsZS3ImZ6P/xmhc6usIqbwdrIOq
 xnQw==
X-Gm-Message-State: APjAAAWoilSTsqOYX5qBnTWnEpOPbhAyQDfbxw1K0hF3BVwN2V7CsIXD
 LCRwSpGiPBMpZchYOAWqha/XuQ==
X-Google-Smtp-Source: APXvYqxbhOjgKvZ+zTXeEhCcFuDPnHqhfI7aTfjCaGnyc0GFuzYuIMQXsgTdJueXRifB7EQPe7awPQ==
X-Received: by 2002:a9d:62d2:: with SMTP id z18mr5979346otk.7.1561002718547;
 Wed, 19 Jun 2019 20:51:58 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id g10sm8033999otg.81.2019.06.19.20.51.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 20:51:57 -0700 (PDT)
Date: Thu, 20 Jun 2019 11:51:46 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Subject: Re: [PATCH v2] perf cs-etm: Improve completeness for kernel address
 space
Message-ID: <20190620035146.GJ24549@leoy-ThinkPad-X240s>
References: <20190620005428.20883-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620005428.20883-1-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_205159_767569_0C66739C 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peter Zijlstra <peterz@infradead.org>, coresight@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

On Thu, Jun 20, 2019 at 08:54:28AM +0800, Leo Yan wrote:

[...]

> diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> index 51dd00f65709..cf5906d667aa 100644
> --- a/tools/perf/Makefile.config
> +++ b/tools/perf/Makefile.config
> @@ -418,6 +418,26 @@ ifdef CORESIGHT
>      endif
>      LDFLAGS += $(LIBOPENCSD_LDFLAGS)
>      EXTLIBS += $(OPENCSDLIBS)
> +    ARM_PRE_START_SIZE := 0
> +    ifeq ($(SRCARCH),arm64)
> +      # Extract info from lds:
> +      #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
> +      # ARM_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000)
> +      ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
> +        $(srctree)/arch/arm64/kernel/vmlinux.lds | \
> +        sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> +        awk -F' ' '{print "("$$6 "+"  $$7 "+" $$8")"}' 2>/dev/null)
> +    endif
> +    ifeq ($(SRCARCH),arm)
> +      # Extract info from lds:
> +      #   . = ((0xC0000000)) + 0x00208000;
> +      # ARM_PRE_START_SIZE := 0x00208000
> +      ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
> +        $(srctree)/arch/arm/kernel/vmlinux.lds | \
> +        sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> +        awk -F' ' '{print "("$$2")"}' 2>/dev/null)
> +    endif
> +    CFLAGS += -DARM_PRE_START_SIZE="$(ARM_PRE_START_SIZE)"

I did testing for building perf with this patch, this patch is fragile
and easily introduce the building warning:

  <command-line>: error: "ARM_PRE_START_SIZE" redefined [-Werror]
  <command-line>: note: this is the location of the previous definition

To dismiss this error, I need to change the macro define as below:

  +    CFLAGS += -DARM_PRE_START_SIZE=$(ARM_PRE_START_SIZE)

So I sent patch v3 to address this issue and please directly reivew
patch v3.  Sorry for spamming.

Thanks,
Leo Yan


>      $(call detected,CONFIG_LIBOPENCSD)
>      ifdef CSTRACE_RAW
>        CFLAGS += -DCS_DEBUG_RAW
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 0c7776b51045..5fa0be3a3904 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -613,10 +613,27 @@ static void cs_etm__free(struct perf_session *session)
>  static u8 cs_etm__cpu_mode(struct cs_etm_queue *etmq, u64 address)
>  {
>  	struct machine *machine;
> +	u64 fixup_kernel_start = 0;
>  
>  	machine = etmq->etm->machine;
>  
> -	if (address >= etmq->etm->kernel_start) {
> +	/*
> +	 * Since arm and arm64 specify some memory regions prior to
> +	 * 'kernel_start', kernel addresses can be less than 'kernel_start'.
> +	 *
> +	 * For arm architecture, the 16MB virtual memory space prior to
> +	 * 'kernel_start' is allocated to device modules, a PMD table if
> +	 * CONFIG_HIGHMEM is enabled and a PGD table.
> +	 *
> +	 * For arm64 architecture, the root PGD table, device module memory
> +	 * region and BPF jit region are prior to 'kernel_start'.
> +	 *
> +	 * To reflect the complete kernel address space, compensate these
> +	 * pre-defined regions for kernel start address.
> +	 */
> +	fixup_kernel_start = etmq->etm->kernel_start - ARM_PRE_START_SIZE;
> +
> +	if (address >= fixup_kernel_start) {
>  		if (machine__is_host(machine))
>  			return PERF_RECORD_MISC_KERNEL;
>  		else
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
