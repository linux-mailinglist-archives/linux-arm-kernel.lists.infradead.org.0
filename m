Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BA344BE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 21:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slUatZrp/kwbNLZ26TRtKRS3JsSsh0VQRsT6IWT3VO8=; b=P9Y5isNptQaQOf
	e53dhcaZgPAGGRgDeNQf2EjSmbOPn1QumrxdLUqdWLlmqPbOXAKTLAp/x9WG2myLZSSW2RQW3im2W
	KBV1N8//iq7y1YwW5Wo7BXLbl10tTlM1/Buuc86uiDvKMljUe89mzs2BasP/UsKAEKdRDIeF7j90y
	qRR8/TFEls4JSnuOBWxD+VCpG+JBddu8xLAwNxOiRcy2BhFE0HMtDvzO0MyLRTOoUoyyDE78vmSyK
	H/BuMcoEC0Rv9Zf14AcRyjcK7c7WNmQtCQSW4G2KJH46xw+nY3cNXWmknB81Of74+yG2gzopW+tkA
	4YwpurjZhV/HUH3VDi3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbVAN-0001Jg-36; Thu, 13 Jun 2019 19:13:43 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbVAC-0001JA-QU
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 19:13:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id p184so9119392pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 12:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uZvaP6J/2uj4GWczz8vQuvYjmww5DBmJt1/UPqQ75+g=;
 b=sYY6OUQCEcv+JDUvVJWD7r0iaaEI38vSxGY2WB2eDVe2DKNcJW0P18iIzvyDCiMpm2
 XlK3VBm7o4rpUCqsAPO+2MorRvvIA3fhIwYLljFVjfTjbfoQJCA1JVhcfm5gibu8OmzN
 3XRBw8ru3+0tQO4JANfnt6uQrJIdIi/zK2tQXoi9S9IxO0fug7Lp1gTMSgeYcUVpaXiG
 Y2dGRbwI29DwG2RcgcIxVDL9Ha9Le/OqokYMNsUTqL1gK7DUP2x6Rgi8rD0qvZzySWJA
 h9oKlSlTwQcVUnMyiDMpOerIvhZTghfejWj5HZalpxpQ2HWVFIzl9yA9NLjainCwKUw0
 7pSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uZvaP6J/2uj4GWczz8vQuvYjmww5DBmJt1/UPqQ75+g=;
 b=JQ3jvLtO08j82LKsU0CAXNmBo0xKjzy3bpli+3hHx0uwR7/YNf4BxhbhJMPyHkTrQu
 0LgSdLjfyQb+GJ2lIRlkwTq/5Y1o7EW28NVDYDrNNLZaq+Xd+OGLnblmZgebHHDppshQ
 vP8yW7nGHEWNB1y1sWnwj6cDNFi1MHVSeFjKY7AOCTstgWW7wDMmk1rPfOn4F5qcfiGc
 uFulU8hNpXZ6oXTYXopUEf0WdaFRukvUii0UGoyVM3YXl1aAbqYHwR1EyAUgK3Nyy7eb
 FU6xWGlxRHWQ8wuprPOBtX9QBGcNpatDirbmqW4F/6+DPjxqMIvcgcq0BVBRoWzpbMut
 5hfw==
X-Gm-Message-State: APjAAAWMcEZay1WMeDySouPBPXUlhASOwKeEmbuyMj4BmkGJHqEGx3Bj
 sN/jaaOs3SqE+IiE9YTD9qyjBBmW8E1NBfjC09A=
X-Google-Smtp-Source: APXvYqw8y/3F+ZW9m7cYr/+PV3Uz68k36e5U8xmtSSKl/KsuPU3YhRwJHNT2MQYkpjcO+D1YPRzbx+4jXyyNdkFRqDw=
X-Received: by 2002:a62:1990:: with SMTP id 138mr94766159pfz.133.1560453212028; 
 Thu, 13 Jun 2019 12:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com>
 <20190613112320.GA18966@fuggles.cambridge.arm.com>
 <CAHrpEqRZ0YL9SFk6o7iebJ+diJVMTtyba_9GtujL7H7e4G8qQA@mail.gmail.com>
 <20190613174436.GG18966@fuggles.cambridge.arm.com>
In-Reply-To: <20190613174436.GG18966@fuggles.cambridge.arm.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Thu, 13 Jun 2019 14:13:20 -0500
Message-ID: <CAHrpEqS9GEC9Shf-6xLL0_+WJNuwYOdKe=5jtUogLajfcWYMew@mail.gmail.com>
Subject: Re: [PATCH V12 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_121332_887992_09A514A1 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lznuaa[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Frank Li <frank.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:44 PM Will Deacon <will.deacon@arm.com> wrote:
>
> On Thu, Jun 13, 2019 at 12:04:37PM -0500, Zhi Li wrote:
> > On Thu, Jun 13, 2019 at 6:23 AM Will Deacon <will.deacon@arm.com> wrote:
> > >
> > > On Wed, May 01, 2019 at 06:43:29PM +0000, Frank Li wrote:
> > > > Add ddr performance monitor support for iMX8QXP
> > > >
> > > > There are 4 counters for ddr perfomance events.
> > > > counter 0 is dedicated for cycles.
> > > > you choose any up to 3 no cycles events.
> > > >
> > > > for example:
> > > >
> > > > perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> > > > perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls
> > >
> > > I've pushed patches 1, 2 and 4 out with some minor tweaks to:
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf
> > >
> > > I'll leave the actual .dts change to go via the soc tree, since last time
> > > I took one of those it just resulted in conflicts.
> > >
> > > Frank, Andrey: Please could you try to run the perf fuzzer on this before
> > > it lands in mainline? It has a good track record of finding nasty PMU driver
> > > bugs, but it obviously requires access to hardware which implements the PMU:
> > >
> > > http://web.eece.maine.edu/~vweaver/projects/perf_events/fuzzer/
> >
> > Okay, how long should be run generally?
> > I need make sure it can pass without my patches at our platform.
>
> As you long as you can really, but if it survives a few hours that's usually
> a good sign. Overnight is even better.

Base on commit f2c7c76c5d0a443053e94adb9f0918fa2fb85c3a
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Sun Jun 2 13:55:33 2019 -0700

    Linux 5.2-rc3

RCU report problem:

[ 6048.741784] rcu: INFO: rcu_preempt self-detected stall on CPU
[ 6048.747550] rcu:     1-....: (5249 ticks this GP)
idle=c5a/1/0x4000000000000004 softirq=503121/503121 fqs=2425
[ 6048.757384]  (t=5253 jiffies g=1416105 q=117)
[ 6048.761745] Task dump for CPU 1:
[ 6048.764977] perf_fuzzer     R  running task        0 32520    426 0x00000202
[ 6048.772030] Call trace:
[ 6048.774493]  dump_backtrace+0x0/0x130
[ 6048.778159]  show_stack+0x14/0x20
[ 6048.781477]  sched_show_task+0x108/0x138
[ 6048.785401]  dump_cpu_task+0x40/0x4c
[ 6048.788983]  rcu_dump_cpu_stacks+0x94/0xd0
[ 6048.793082]  rcu_sched_clock_irq+0x5e0/0x918
[ 6048.797357]  update_process_times+0x2c/0x70
[ 6048.801545]  tick_sched_handle.isra.6+0x3c/0x50
[ 6048.806076]  tick_sched_timer+0x48/0x98
[ 6048.809918]  __hrtimer_run_queues+0x118/0x1a8
[ 6048.814277]  hrtimer_interrupt+0xe4/0x238
[ 6048.818296]  arch_timer_handler_phys+0x2c/0x38
[ 6048.822743]  handle_percpu_devid_irq+0x80/0x140
[ 6048.827277]  generic_handle_irq+0x24/0x38

Only armv8_pmuv3 and basic perf event enabled.
perf list

List of pre-defined events (to be used in -e):

  branch-instructions OR branches                    [Hardware event]
  branch-misses                                      [Hardware event]
  bus-cycles                                         [Hardware event]
  cache-misses                                       [Hardware event]
  cache-references                                   [Hardware event]
  cpu-cycles OR cycles                               [Hardware event]
  instructions                                       [Hardware event]

  alignment-faults                                   [Software event]
  bpf-output                                         [Software event]
  context-switches OR cs                             [Software event]
  cpu-clock                                          [Software event]
  cpu-migrations OR migrations                       [Software event]
  dummy                                              [Software event]
  emulation-faults                                   [Software event]
  major-faults                                       [Software event]
  minor-faults                                       [Software event]
  page-faults OR faults                              [Software event]
  task-clock                                         [Software event]

  L1-dcache-load-misses                              [Hardware cache event]
  L1-dcache-loads                                    [Hardware cache event]
  L1-icache-load-misses                              [Hardware cache event]
  L1-icache-loads                                    [Hardware cache event]
  branch-load-misses                                 [Hardware cache event]
  branch-loads                                       [Hardware cache event]
  dTLB-load-misses                                   [Hardware cache event]
  iTLB-load-misses                                   [Hardware cache event]

  armv8_pmuv3/br_immed_retired/                      [Kernel PMU event]
  armv8_pmuv3/br_mis_pred/                           [Kernel PMU event]
 ****8

>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
