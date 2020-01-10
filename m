Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 646A01371CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WykJkBCBhkU+X67qUI3n0TWnIRkLS3beS4i2O939e3E=; b=h5xhZpbciXisyw
	0yGS1SxQWZdw67TosCbU6mRIcdaSxmA9Oec3eox5Hp4umWEroVd3+b3X2P52Ozz+xrhzws2/j+PP0
	i3nmiXIXRDT4r+KC7ri24TV/T2R2MWcNRQQcZDZ/9bxxUlMbblMGVGgAb2fDCTg8w1aEaCasGNfX+
	0qT6CudAh73aSUMdq9lc4kbyjuaIQ0DPbByMcl5Q7JsP4tEExTIDp+9eiUmQLEqVQPmfKlCOuYzut
	jLgO7jnlV0wfqxW3VUo92jBcJTAaj/NHR7XDlI35kwV2cQinhsyfOf455JaQtZ8+mPxPOZy86j8Dr
	0wC4dTKYRcvER8xqiXlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwaQ-0006on-U6; Fri, 10 Jan 2020 15:52:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwaH-0006nn-Tt
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:52:27 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 779C420721;
 Fri, 10 Jan 2020 15:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578671544;
 bh=3nRKzhqWY209SzpxePH8IpaFH19pRWJVa9ge9VwTUWg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hhUyUSbgOhcEXYmwe16oYRXofftAtCaPssxnlo8+wzR1Z+Hc7gIC74+9+Ofo0QovJ
 Uvu/OS2WmFEr18mb/K4VPPNI5p+e0NVDolFkj/C9Q9+59mAjao0fdDHytwiGkznrTa
 HNfDKF7+0bsZZIwPw/QJBAGKYSzKyf3waWGNpk/8=
Date: Sat, 11 Jan 2020 00:52:13 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
Message-Id: <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
In-Reply-To: <20200110140234.GO2844@hirez.programming.kicks-ass.net>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_075226_004067_1DF15C36 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, mhiramat@kernel.org,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 15:02:34 +0100
Peter Zijlstra <peterz@infradead.org> wrote:

> On Thu, Jan 09, 2020 at 02:36:50PM +0300, Alexey Budankov wrote:
> > On 08.01.2020 19:07, Peter Zijlstra wrote:
> > > On Wed, Dec 18, 2019 at 12:25:35PM +0300, Alexey Budankov wrote:
> 
> > >> diff --git a/kernel/events/core.c b/kernel/events/core.c
> > >> index 059ee7116008..d9db414f2197 100644
> > >> --- a/kernel/events/core.c
> > >> +++ b/kernel/events/core.c
> > >> @@ -9056,7 +9056,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
> > >>  	if (event->attr.type != perf_kprobe.type)
> > >>  		return -ENOENT;
> > >>  
> > >> -	if (!capable(CAP_SYS_ADMIN))
> > >> +	if (!perfmon_capable())
> > >>  		return -EACCES;
> > >>  
> > >>  	/*
> > > 
> > > This one only allows attaching to already extant kprobes, right? It does
> > > not allow creation of kprobes.
> > 
> > This unblocks creation of local trace kprobes and uprobes by CAP_SYS_PERFMON 
> > privileged process, exactly the same as for CAP_SYS_ADMIN privileged process.
> 
> I've no idea what you just said; it's just words.
> 
> Again, this only allows attaching to previously created kprobes, it does
> not allow creating kprobes, right?
> 
> That is; I don't think CAP_SYS_PERFMON should be allowed to create
> kprobes.
> 
> As might be clear; I don't actually know what the user-ABI is for
> creating kprobes.

There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace interface to
define new kprobe events, and those events are treated as completely same as
tracepoint events. On the other hand, ebpf tries to define new probe event
via perf_event interface. Above one is that interface. IOW, it creates new kprobe.

Thank you,


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
