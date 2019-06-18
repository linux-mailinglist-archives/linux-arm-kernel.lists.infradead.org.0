Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72E14A83C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 19:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2YSQK6ZtctXChXDwEnvJHp+Nn4ZdSD86HftPB0yGuU=; b=t9EasN0B13y4HY
	DvN/fWfoDGoxlJznbU+QETOS8+Vw8XOpu56GzN2j7KroHdy5NlQnHBKKxOwi0TvUPMwaNDQtv0uCU
	bBcQKTr+sG9srRmRcwYjfsU6InpzykX5INeFsQH6nw/ZgmJ+597+cyuQA5OZlL8uuRyTb83wapSsV
	/wuag/0f6wsKmq6eJdeZQV5yJS0UsPg1WEACA5G+CUCYVbD1RywpJAF00SEd+FhNGfaLX4iF4BsAN
	N0Kt9kd1KKH6/I0gLZZiRD+PXd1mZ+UOKibCCdGrlM3Gwc2NZDIwgWw+KwaqwglbpqwE28biDbqET
	Xst+lQdfJjAW4qjvMnlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHqj-0000bU-I9; Tue, 18 Jun 2019 17:24:49 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHqS-0000SX-LE
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 17:24:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so3403861pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 10:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BnbnMmU0Jlf0Dh3/RMX0Olnhoc4CQxFVUUZ/NavvDEw=;
 b=ll1rymTbPplaprZV57UnpS8jE5n5xi/OrEo/Y0NPjCmPVQxCvJh/6BIg3w33fTZjks
 uc58BY4oHSpbJWIU5Hqh857kUCCCLYsaK+9K1GzoisjFFxFu0fCAkzFgGaToMfSlQ4Y2
 phwyD12F7mbD2rr+9sCnFTQBBgD9ATyQg/MNtD0rqXzXwO0l4zZ6k1rH2QuUxftVNhVo
 MQxn+mIvzmOlZ2LGbmXiWOQfmYfJmVXLmgcHEXPi70qBALOr0pHKHr+AzWiShwZKF8sS
 7zQSJp4qHDnWe1bkA5EmffDgp0j9Rgj+PUEPHOLASQM2+5CbFiP9M+watB8/QAgbSmd7
 hoBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BnbnMmU0Jlf0Dh3/RMX0Olnhoc4CQxFVUUZ/NavvDEw=;
 b=iUw40yYj5h4ugDnSFUZwvNRQW6UaXDZtVe4KdfPeM6iO15xCllitMRtQp5eLEkDTmM
 2uRR7EoeZ9AvFoBjgfeIHslvdr8nd4bQQ8CMo4QRMjGZk2Z+l3PLq0a8PlEAh7GL7Nfr
 R6AixVVbldGe/HfTKaIadi71QlHuxuQJgepoN5Xw6AtqGzLNhcyBOQu4HUZYdbvSl5kA
 ErDsLvjlclo0BTrvjqXrS3avZGTH2eXzMvLt1wof7RmqSXKTUZ4FraMn19zoRLNC/fcV
 OsDmxoc8plVtH4ddJ43mtL3cwp18fHHmaf12aRbHipWTqAD1vXthhtUVI3t8m6g7LnFm
 4Mow==
X-Gm-Message-State: APjAAAWl98xQGxxBBB2F+wyKtxsDYKG5a8kMotKb2sstmAvJUdxCQ4gJ
 S0CZrs3upCXJvUQZd+4ACqe35E4Lqmc7MkNnkvM=
X-Google-Smtp-Source: APXvYqzM2IKyqsp/kPpaBQbvS7bhCUBPy+Kauw/vtklCyEXsZUFZq88mRay9kUQTKelLLfunSSvJnDNoVmqCbExhVXk=
X-Received: by 2002:a63:1d53:: with SMTP id d19mr3695875pgm.152.1560878671182; 
 Tue, 18 Jun 2019 10:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com>
 <20190613112320.GA18966@fuggles.cambridge.arm.com>
 <CAHrpEqRZ0YL9SFk6o7iebJ+diJVMTtyba_9GtujL7H7e4G8qQA@mail.gmail.com>
 <20190613174436.GG18966@fuggles.cambridge.arm.com>
 <CAHrpEqS9GEC9Shf-6xLL0_+WJNuwYOdKe=5jtUogLajfcWYMew@mail.gmail.com>
 <20190614102302.GD10659@fuggles.cambridge.arm.com>
In-Reply-To: <20190614102302.GD10659@fuggles.cambridge.arm.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Tue, 18 Jun 2019 12:24:19 -0500
Message-ID: <CAHrpEqR+3LETyDosyRq=SBDC=g3tkm72vg-f=550H+TTVLbmcQ@mail.gmail.com>
Subject: Re: [PATCH V12 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_102432_703216_DBBD0C17 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lznuaa[at]gmail.com)
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

On Fri, Jun 14, 2019 at 5:23 AM Will Deacon <will.deacon@arm.com> wrote:
>
> On Thu, Jun 13, 2019 at 02:13:20PM -0500, Zhi Li wrote:
> > On Thu, Jun 13, 2019 at 12:44 PM Will Deacon <will.deacon@arm.com> wrote:
> > >
> > > On Thu, Jun 13, 2019 at 12:04:37PM -0500, Zhi Li wrote:
> > > > On Thu, Jun 13, 2019 at 6:23 AM Will Deacon <will.deacon@arm.com> wrote:
> > > > >
> > > > > On Wed, May 01, 2019 at 06:43:29PM +0000, Frank Li wrote:
> > > > > > Add ddr performance monitor support for iMX8QXP
> > > > > >
> > > > > > There are 4 counters for ddr perfomance events.
> > > > > > counter 0 is dedicated for cycles.
> > > > > > you choose any up to 3 no cycles events.
> > > > > >
> > > > > > for example:
> > > > > >
> > > > > > perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> > > > > > perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls
> > > > >
> > > > > I've pushed patches 1, 2 and 4 out with some minor tweaks to:
> > > > >
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf
> > > > >
> > > > > I'll leave the actual .dts change to go via the soc tree, since last time
> > > > > I took one of those it just resulted in conflicts.
> > > > >
> > > > > Frank, Andrey: Please could you try to run the perf fuzzer on this before
> > > > > it lands in mainline? It has a good track record of finding nasty PMU driver
> > > > > bugs, but it obviously requires access to hardware which implements the PMU:
> > > > >
> > > > > http://web.eece.maine.edu/~vweaver/projects/perf_events/fuzzer/
> > > >
> > > > Okay, how long should be run generally?
> > > > I need make sure it can pass without my patches at our platform.
> > >
> > > As you long as you can really, but if it survives a few hours that's usually
> > > a good sign. Overnight is even better.
> >
> > Base on commit f2c7c76c5d0a443053e94adb9f0918fa2fb85c3a
> > Author: Linus Torvalds <torvalds@linux-foundation.org>
> > Date:   Sun Jun 2 13:55:33 2019 -0700
> >
> >     Linux 5.2-rc3
> >
> > RCU report problem:
> >
> > [ 6048.741784] rcu: INFO: rcu_preempt self-detected stall on CPU
> > [ 6048.747550] rcu:     1-....: (5249 ticks this GP)
> > idle=c5a/1/0x4000000000000004 softirq=503121/503121 fqs=2425
> > [ 6048.757384]  (t=5253 jiffies g=1416105 q=117)
> > [ 6048.761745] Task dump for CPU 1:
> > [ 6048.764977] perf_fuzzer     R  running task        0 32520    426 0x00000202
> > [ 6048.772030] Call trace:
> > [ 6048.774493]  dump_backtrace+0x0/0x130
> > [ 6048.778159]  show_stack+0x14/0x20
> > [ 6048.781477]  sched_show_task+0x108/0x138
> > [ 6048.785401]  dump_cpu_task+0x40/0x4c
> > [ 6048.788983]  rcu_dump_cpu_stacks+0x94/0xd0
> > [ 6048.793082]  rcu_sched_clock_irq+0x5e0/0x918
> > [ 6048.797357]  update_process_times+0x2c/0x70
> > [ 6048.801545]  tick_sched_handle.isra.6+0x3c/0x50
> > [ 6048.806076]  tick_sched_timer+0x48/0x98
> > [ 6048.809918]  __hrtimer_run_queues+0x118/0x1a8
> > [ 6048.814277]  hrtimer_interrupt+0xe4/0x238
> > [ 6048.818296]  arch_timer_handler_phys+0x2c/0x38
> > [ 6048.822743]  handle_percpu_devid_irq+0x80/0x140
> > [ 6048.827277]  generic_handle_irq+0x24/0x38
>
> This is the timer interrupt which prompts the RCU splat. Do you have
> information about where the CPU was when the interrupt occurred?
>
> In the meantime, it's still worth leaving the fuzzer running to see what
> else it finds.

Overnight test done, only above rcu problem happen at both with and
without ddr perf patches.

best regards
Frank Li


>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
