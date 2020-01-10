Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A47137A57
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 00:48:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyMjdIypUxDnn+IIO8vJgEc//8EKivUc4wniyNqQzv0=; b=OkGdx1tlJipUPe
	HEKUx2lpWzqu928K2kr7WUXBJZvx356p7HBfctsqzlt+O/cbDDeBji1/znlsRCsOKyoS+VtI4Dtmk
	EL9ax8T8aNQ/1UunqtbCaZ9Y7fLcsVjdwaHYPPLXz8LHYY0/6FWDb3gEOKp++X4CFI9woZrnji/0g
	krIvaCMo2wKOu8P7g1dL0EnkILlx/c7wCuUeMHrQBvr9y9BKxtKeUhzHzZ6AySKIsApqUAWAH0YH8
	rYB1uc6GgisQvjT/wTyWvVlPGNL21Gdrw+N4tWUZvxLqksyMLqj63BM0Ae+ke6XMlS9A1wQJX4P6k
	mRgEfpalSW3AEsANMz+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq40Q-0004qw-F8; Fri, 10 Jan 2020 23:47:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq40I-0004qc-CC
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 23:47:47 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A61EC20721;
 Fri, 10 Jan 2020 23:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578700065;
 bh=NuMXPw3kPSPAokfxRtkSxkyo7a4EVAlOcwjKZAwv8nY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=t116nza3ajSBnjZbfKgcN5ONvfAghlxApVIAIUZPf0R8FY7ey0DryHbox6JEQPVwR
 2xql9T24vHJ7lZgd8/0P6ybYgmcY34jFGX+VnlShjoGYoVU3chcg4p7xaRfP4Azzzx
 FSSjjNHlhTZMBRDpXhh2exzFwwJlouRtCsAGpcsw=
Date: Sat, 11 Jan 2020 08:47:35 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
Message-Id: <20200111084735.0ff01c758bfbfd0ae2e1f24e@kernel.org>
In-Reply-To: <20200110164531.GA2598@kernel.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
 <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
 <20200110164531.GA2598@kernel.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_154746_455762_E0EFAF21 
X-CRM114-Status: GOOD (  16.97  )
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
 Peter Zijlstra <peterz@infradead.org>,
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
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 13:45:31 -0300
Arnaldo Carvalho de Melo <acme@kernel.org> wrote:

> Em Sat, Jan 11, 2020 at 12:52:13AM +0900, Masami Hiramatsu escreveu:
> > On Fri, 10 Jan 2020 15:02:34 +0100 Peter Zijlstra <peterz@infradead.org> wrote:
> > > Again, this only allows attaching to previously created kprobes, it does
> > > not allow creating kprobes, right?
> 
> > > That is; I don't think CAP_SYS_PERFMON should be allowed to create
> > > kprobes.
> 
> > > As might be clear; I don't actually know what the user-ABI is for
> > > creating kprobes.
> 
> > There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace interface to
> > define new kprobe events, and those events are treated as completely same as
> > tracepoint events. On the other hand, ebpf tries to define new probe event
> > via perf_event interface. Above one is that interface. IOW, it creates new kprobe.
> 
> Masami, any plans to make 'perf probe' use the perf_event_open()
> interface for creating kprobes/uprobes?

Would you mean perf probe to switch to perf_event_open()?
No, perf probe is for setting up the ftrace probe events. I think we can add an
option to use perf_event_open(). But current kprobe creation from perf_event_open()
is separated from ftrace by design.

I think the reason why ebpf uses perf_event_open() interface is to avoid conflict
with ftrace users. Those probes are temporally used by ebpf, but if it is appeared on
ftrace, it is easy to be used by ftrace. In that case, it can not be removed when
the ebpf exits.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
