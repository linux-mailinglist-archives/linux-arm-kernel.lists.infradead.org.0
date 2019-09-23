Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7666ABBC19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 21:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3R+qwcbSAK912gCnQsAKSSXBcPfiPew8d7AJQ20TDY=; b=L1ewbA9/b9aKxW
	8PhqLSEci5LEHlfH7jeHvjVeKO1nEfs8GdmbDwhep61LBvEyP7qOOocjCxTmX3LZ4NmjZ89PhXyQC
	rrJc8PKQWBNsbtoxOH0yFQafUaWPE4XZT1X5KVqpLfhiSd1gqBfDNiSPi2Z2gjQJGhE9EKXfzdoHM
	QLUO8jn1PtqsKcKygBHMX16VG9y0bpiMEhfvyPfACcxHgOHLT1PmfYM08F6J6TLKADuwzb+nSYOLx
	L+B3JKiCGLUmxOw0l1HmYT1izmvuBnQ2ZcMpVaOyl0F7/uAPhclGIbXiwultSctdW4mfthQ/7mzeZ
	la9rpnCFFzGO7w/4Rraw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCTmB-0001Vj-9x; Mon, 23 Sep 2019 19:13:35 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCTm0-0001VK-NL
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 19:13:26 +0000
Received: by mail-ed1-x544.google.com with SMTP id h33so13956599edh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 12:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=stujTPtuGxuh59HTJ15B3m0skvzv4BxR2W0z7AHqmAs=;
 b=oyQ71NyOLCUCt3yrY4nzC3lmDE+RcloHR0cEYYRhtoJqaMrnTmBYWSRql93lKpdu/2
 bQrXfU9nfGQiEaAJlAXpotQPEAdsSUEJzcK1TJZdtDuOUgQpzT68LYoBtLzhCFlZpTRJ
 sOnLNz+ZCb/ooZ7Iz+F3s9J4d0eKTxzB9FAn34SubnMWewIiyOjoe9FDaI1tIMpIlgun
 AK+RuOBGaMOfBm1D/kLl4+++0qsBgwRznMqymwyisovqATfNnGBGb/epBk1cSr2HYziZ
 oBCaqwi4skj15AXxVrdUY03bPLGkEMGpebrDS+lLUEFOg8+Rrbn4NAaqNBqr7ymyjR8s
 BdVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=stujTPtuGxuh59HTJ15B3m0skvzv4BxR2W0z7AHqmAs=;
 b=QjO/PsFwd7/ne81U1JD+0Uhj0bBMGll5XNiE9vAJle/4LB4cdnelwq7I3widWu/s/X
 9H5p5+OkJD5CDbS1zmHGWla7PwEEfbKayfpd8tZep5hV/1E0v4rUZpsmbPnTHSoAJfkL
 e0bzy7op8L7OAINAkxvAm2ds8dZCjN7L/mkDdW4KAQG8OhcpfpkJJ7WRnTmFjtt31j9W
 eThcy8QAmILfRtAceN9wc1YHoeWvM/r3R3oZ1x6FIcBoOqpOLoZFc+LOXdzWtJqMLRFA
 y/vhr2SF67AHRPuAIcrmeQjxFSwhAUHPy03hVhucKpBqx8nXM+s8P0pERMkltOvL08Pq
 J1vA==
X-Gm-Message-State: APjAAAXrZucTAdkMZf5l9rOT3ijL1g84TULQTW2buolq5lifKc7cpGlR
 0gY+dvjD5bOIrWL40G8l/hbnQk6Sffrdl83+IAplcg==
X-Google-Smtp-Source: APXvYqwRmTK/cSlvNliNjYHt44n1Pba7VrLA3KdlnvROdyhykOSCNlF6ArPxqorDu7Day5E1074ogmGxE30V3X5XG3E=
X-Received: by 2002:aa7:d7d3:: with SMTP id e19mr1824376eds.80.1569266002752; 
 Mon, 23 Sep 2019 12:13:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190722103330.255312-1-marc.zyngier@arm.com>
 <CA+CK2bAFgDcc6ySCz7zzyeN0wg5WTcxFrKYQ6y5sz7grw-BfAw@mail.gmail.com>
 <86k1c9nrsa.wl-marc.zyngier@arm.com>
In-Reply-To: <86k1c9nrsa.wl-marc.zyngier@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 23 Sep 2019 15:13:11 -0400
Message-ID: <CA+CK2bBzoxDz2BgqbJn8-MzL-aaSon+mqKuAmikH-nBnwm0O2g@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: Allow early timestamping of kernel log
To: Marc Zyngier <marc.zyngier@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_121325_184107_DBB21E70 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Petr Mladek <pmladek@suse.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 John Stultz <john.stultz@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 3:17 AM Marc Zyngier <marc.zyngier@arm.com> wrote:
>
> On Mon, 22 Jul 2019 21:52:42 +0100,
> Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
> >
> > On Mon, Jul 22, 2019 at 3:33 AM Marc Zyngier <marc.zyngier@arm.com> wrote:
> > >
> > > So far, we've let the arm64 kernel start its meaningful time stamping
> > > of the kernel log pretty late, which is caused by sched_clock() being
> > > initialised rather late compared to other architectures.
> > >
> > > Pavel Tatashin proposed[1] to move the initialisation of sched_clock
> > > much earlier, which I had objections to. The reason for initialising
> > > sched_clock late is that a number of systems have broken counters, and
> > > we need to apply all kind of terrifying workarounds to avoid time
> > > going backward on the affected platforms. Being able to identify the
> > > right workaround comes pretty late in the kernel boot, and providing
> > > an unreliable sched_clock, even for a short period of time, isn't an
> > > appealing prospect.
> > >
> > > To address this, I'm proposing that we allow an architecture to chose
> > > to (1) divorce time stamping and sched_clock during the early phase of
> > > booting, and (2) inherit the time stamping clock as the new epoch the
> > > first time a sched_sched clock gets registered.

Hi Marc,

I know we briefly discussed this at plumbers, but I want to bring it
up again, because I am still puzzled why it is not possible to
stabilize unstable clock early in boot.

Here is an example where clock is stabilized:
https://soleen.com/source/xref/linux/kernel/sched/clock.c?r=457c8996#265

It uses a value that is read at last ticks to normalize clock, and
because ticks are not available early in boot instead we can make sure
that early in boot sched_clock() never returns value smaller than
previously returned value, and if we want to be extra careful, we can
also make sure that sched_clock() early in boot does not jump ahead by
more than some fixed amount of time i.e. more than one hour.

If sched_clock() is available early we will get the benefit of having
other tracers that use it to debug early boot information.

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
