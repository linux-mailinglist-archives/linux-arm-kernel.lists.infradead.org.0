Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87452003EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brnbkihZmyCC5HPVoYlJfldmZMXpta4DZhhh63ZrrvE=; b=V9n7UdoVQW06Ks
	US6lzNGPy94S5JvP/ru5NF4akTIMg4pdBKkxWEgTejQjvyMCHiMgmYe1pG7n3A/NhMxpF/1FiMQ8B
	TWfqW8lfpkXPdVzjifazUsXfYnFRJedyxPmgQ2BGfkF4NfbWi0a9GPx+1iu5G+PsKxcOC9iuNdl5x
	0DxkE7JcWz4JSANaQtI9rKKYIgPXMs86V8tMhq8BXaTB02dkrHT4/obnkeZ9V/nnFJC1xA0GlA4Ov
	MkqBhDQBwJUQYxkK+862/F+5GCXFj/p9/PfEOW2YYxezyKSaBMFkrFYIKtOS7P57pFlnElpKE1n/z
	OQqk3Hwi8micNcvBr6dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCPj-0002mV-UR; Fri, 19 Jun 2020 08:30:19 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCPR-0002VT-HE
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:30:05 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s88so3999447pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 01:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=bal/f6C5W3hI/7eEDoJMPCvhC5IDLMyLNXSt4/S+Z6w=;
 b=asHKwznp8EZNJTx5F+A/9eKKgUGgsWkbC1twAT3301DPYW41sseSJwhpPeYQW2YpvB
 IjWQD8A0wDX/58ArkSviJh+wTiDlUhI4RX5exrXQ2fB89EmRq9QC+2EeGsn5/8xCNHcT
 dLdt/XKSjGAfV2aXSpQB0gjVamY2HLSon89Dg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=bal/f6C5W3hI/7eEDoJMPCvhC5IDLMyLNXSt4/S+Z6w=;
 b=ZbgbaJKhIgwvCpRdTpXsx5MVSftV7lWpdoJmDAy7axtJa5rW9mSI5qPLjW8wVqGIhf
 9fqwdCCOLRwhNmh1gyqQ9v47zsCZxp2oMd/VpgePv+OymwqcLNwnjLmtofaJYs59Lki5
 FgccdK/0bzAuzOXbve0LX7iyGAzvzMrs3m61XZ6fMFbyqtFZHQgQirM0pC4r3v8K6B5s
 cNjuVdSUzyiAVEzvx2Yr2HBXLg+t2lmi5vUCloZkNTp6lMwdW8LAVS1kLpLnagfYYl/8
 P3b16puCYP7gqTnjsr/AokVrJvU6k3mCr6U6FbQ+TpVCdFcKvqb+WPFSTP6do10JppwJ
 ukow==
X-Gm-Message-State: AOAM531ldpvNh4RXipW5JKCloE/ZFaStEpSBYGFkWkiQ7WapulhuTyDb
 mfsnvrIn0dhi+b3rTGCWTx652g==
X-Google-Smtp-Source: ABdhPJzSNN0Qpr5cQYl53gfznBN1okIAMcFX4yLnK/9HsM4RGMZCO2BfOQ/cjG1bNmm74yfvZUvcTw==
X-Received: by 2002:a17:90a:284b:: with SMTP id
 p11mr2480021pjf.22.1592555400970; 
 Fri, 19 Jun 2020 01:30:00 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id hi19sm4687515pjb.49.2020.06.19.01.30.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 01:30:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <bc265120-0d48-bcab-a58e-3b94f8c540ce@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
 <20200617113851.607706-4-alexandru.elisei@arm.com>
 <159242503203.62212.1690942414916053920@swboyd.mtv.corp.google.com>
 <bc265120-0d48-bcab-a58e-3b94f8c540ce@arm.com>
Subject: Re: [PATCH v5 3/7] arm64: perf: Remove PMU locking
From: Stephen Boyd <swboyd@chromium.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 01:29:59 -0700
Message-ID: <159255539947.62212.6059916295459835174@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_013002_597991_1DF8D016 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, maz@kernel.org,
 Jiri Olsa <jolsa@redhat.com>, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, catalin.marinas@arm.com,
 Namhyung Kim <namhyung@kernel.org>, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandru Elisei (2020-06-18 03:51:31)
> Hi,
> 
> On 6/17/20 9:17 PM, Stephen Boyd wrote:
> > Quoting Alexandru Elisei (2020-06-17 04:38:47)
> >> From: Julien Thierry <julien.thierry@arm.com>
> >>
> >> The PMU is disabled and enabled, and the counters are programmed from
> >> contexts where interrupts or preemption is disabled.
> >>
> >> The functions to toggle the PMU and to program the PMU counters access the
> >> registers directly and don't access data modified by the interrupt handler.
> >> That, and the fact that they're always called from non-preemptible
> >> contexts, means that we don't need to disable interrupts or use a spinlock.
> > Maybe we should add a lockdep assertion that the code isn't preemptible?
> > I.e. add a cant_sleep() call? Or is it more that we don't need locking
> > because we're just doing register accesses and don't need to protect
> > those accesses from each other?
> 
> It's both. The spinlocks were there to protect the functions from being preempted
> and possibly migrated to another CPU, and from being interrupted by the PMU irq
> handler.
> 
> There was no data race with the interrupt handler, but before the previous patch
> ("arm64: perf: Avoid PMXEV* indirection"), in order to read/write/program a
> counter, one had to write the counter number to a counter selection register, and
> then write/read the desired value from another register. This was done from both
> the armv8pmu_{enable,disable}_event() functions and the irq handler, and the
> spinlock was necessary. Now that we can access a counter using a single register
> access, there's no need to protect the functions from being interrupted by the IRQ
> handler. As for armv8pmu_{start,stop}(), they consist of one register write, so
> it's also safe for the irq handler to interrupt them.
> 
> For the preemption part of the locking. The armv8pmu_{enable,disable}_event(),
> when called by the perf core code via the pmu->{start,stop,add,del} callbacks, are
> guaranteed to be called with IRQs and preemption disabled, as per the comment in
> include/linux/perf_event.h. They are also called from the arm_pmu driver by the
> CPU PM notifiers, which should also be executed with interrupts disabled. Should
> we check here that the top level code respects these guarantees?
> 
> The armv8pmu_{start,stop}() functions are called from the irq handler, so we're
> safe from preemption in this case. They are also called via
> pmu->pmu_{enable,disable} callbacks, and I didn't find an explicit contract
> regarding preemption in include/linux/perf_event.h. I've checked the other call
> sites, and I didn't find any instances where they are called with preemption
> enabled, which makes sense as we don't want to disable the PMU on a another CPU by
> accident.

If they're all callbacks then it's overkill to add this. Presumably it
is better to enforce this wherever the callbacks are called from so as
to not litter the callee with random cant_sleep() calls. Probably best
to ignore my suggestion.

> 
> I would be inclined to add cant_sleep() calls to armv8pmu_{start,stop}(). In the
> previous iteration, there were WARN_ONs in these functions, and Will said [1] they
> can be removed because they are per-CPU operations. Will, what do you think about
> adding the lockdep assertions?
> 
> [1] https://www.spinics.net/lists/arm-kernel/msg745161.html
> 

If I read it correctly Will is saying the same thing in that thread.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
