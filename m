Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD9470ADF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 22:53:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qgsn5JLQWngu/7eh2JH3QFB4P9wvKG6KDotGQiIMLI=; b=cgQt6vi6HSqdAO
	ltYhHx/rbhJTg0pdc4ho2DXafCNQu8QOxbqRrMGwlqEksRrngjWxve5sqT3z+1RHNk8sRC7W8TZte
	/9jADqiNt/qyHAzvTm00XRL3gzQ9alu1FV+ViQu8uR/nsAWDoIUZQ8lzGuJcG8vEWjB0/fS31O2Vd
	QepPdk5jp8SuOslO8QhTKiH+JcKu6tIRzn+HTcXfeHu2j+NtXQ90UxgM++wZvbDjJoLtPI1RaNvPx
	yMEB8r+ST+jss2GFiImKU8tJMsHF6w+fg+jBuex9ZGfitdJN9PyCPozfZUGqB9c9pw7Us5OsobmjY
	epEzK9AHPIlvwVCikqbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpfJH-00061r-5h; Mon, 22 Jul 2019 20:53:27 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfIn-00060d-I5
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 20:52:59 +0000
Received: by mail-ed1-x544.google.com with SMTP id i11so41809473edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 13:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GMLjbC9YjRUgCF5zGAKD15kt9b4CY1BkByLwAzTGVzU=;
 b=Jp9cBTPwU29wiqBjXqSNe2Ds3OiKv8dsKfL3Phe5kkNX25x/T28nL3L+8191B3JCPR
 hy1sk5Bxfh+AwS4A7EkGg9n2/EpBnGq/Umc8w5i0nBFGgOChJCBXdAgT/IxxQINxsWOo
 plgQv2oNd2yzIlQknQ/QTj+tJFoAuGi+nAOxlaG98kAZ00jU8FmzG2/c5vxKUdYfa7XF
 zOLDTdNEojTG2AlB5NYAoHBnggaUwMVmoO5LIpBj0VdKrk26EHUsn111w7w3FV4VRH0Y
 7Q/I2d5ouTAaUsap3LyQVTZFqEeJQLtzpSaExYDAMv6GqQH2CWvp4jl3HCrV3CqRbpdD
 DfhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GMLjbC9YjRUgCF5zGAKD15kt9b4CY1BkByLwAzTGVzU=;
 b=iFVekSncUpNqufyZaAE/ptRb1B92lHZ9TTodHPwgxOTp6UzB4Zdm2E3ioIDUnFZdw0
 7qWtaQA1/MuSfGE5aGOgZNM7cmcuqKAI8cRQ138I0lkX9Rv0pFtNOOpYaBU4cM4SN6cd
 QJ96zk6Fb30xX1dQ5ylDlmrXIs5S/klTIQnL6KNqDzRhDJjHkm9zepdbQ+iWJg+ofPJC
 1CLfB3OZy9P3wuZa3trbdpo6FotycjNhneRS6PEKWYo66IT8T3MvWd4dqTjQWiffG3Zu
 P7xjnSJrAO7jCp3/ri64FPmGKG0qEzKHGDxIdJyLKFOrS+fUitmIKzeUSiHDnDPHgMyQ
 4iOg==
X-Gm-Message-State: APjAAAVd3SUKKz68SqVYUYpERZKMqBj+jKF4BMG7lPs4U1yYdDh0+lcd
 dJI/Of4ueZNyoYlQEh8PxDjUICTIg6WH0DHmb8A=
X-Google-Smtp-Source: APXvYqxA8mp6pHUExIYVYg514P87IzaOJ2cRvoDp4dYaIO6GxWQ4MfK0zzMrz18CXiYpnSXjzFce1A5e9xB8fqm2emw=
X-Received: by 2002:a05:6402:14c4:: with SMTP id
 f4mr61443251edx.170.1563828773560; 
 Mon, 22 Jul 2019 13:52:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190722103330.255312-1-marc.zyngier@arm.com>
In-Reply-To: <20190722103330.255312-1-marc.zyngier@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 22 Jul 2019 13:52:42 -0700
Message-ID: <CA+CK2bAFgDcc6ySCz7zzyeN0wg5WTcxFrKYQ6y5sz7grw-BfAw@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: Allow early timestamping of kernel log
To: Marc Zyngier <marc.zyngier@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_135258_028431_AB0D5B3A 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Jul 22, 2019 at 3:33 AM Marc Zyngier <marc.zyngier@arm.com> wrote:
>
> So far, we've let the arm64 kernel start its meaningful time stamping
> of the kernel log pretty late, which is caused by sched_clock() being
> initialised rather late compared to other architectures.
>
> Pavel Tatashin proposed[1] to move the initialisation of sched_clock
> much earlier, which I had objections to. The reason for initialising
> sched_clock late is that a number of systems have broken counters, and
> we need to apply all kind of terrifying workarounds to avoid time
> going backward on the affected platforms. Being able to identify the
> right workaround comes pretty late in the kernel boot, and providing
> an unreliable sched_clock, even for a short period of time, isn't an
> appealing prospect.
>
> To address this, I'm proposing that we allow an architecture to chose
> to (1) divorce time stamping and sched_clock during the early phase of
> booting, and (2) inherit the time stamping clock as the new epoch the
> first time a sched_sched clock gets registered.

Could we have a stable clock config for arm64: if it is known that
this Linux build is going to run on non-broken firmware, and with a
known stable cntvct_el0 register it can be optionally configured to
use that stable sched_clock instead of generic clock that arm64 is
using? This way, the early printk are going to be available on those
systems without adding a different method for printk's only. It would
also mean that other users of early sched_clock() such as ftrace could
benefit from it.

>
> (1) would allow arm64 to provide a time stamping clock, however
> unreliable it might be, while (2) would allow sched_clock to provide
> time stamps that are continuous with the time-stamping clock.
>
> The last patch in the series adds the necessary logic to arm64,
> allowing the (potentially unreliable) time stamping of early kernel
> messages.
>
> Tested on a bunch of arm64 systems, both bare-metal and in VMs. Boot
> tested on a x86 guest.
>
> [1] https://lore.kernel.org/patchwork/patch/1015110/
>
> Marc Zyngier (3):
>   printk: Allow architecture-specific timestamping function
>   sched/clock: Allow sched_clock to inherit timestamp_clock epoch
>   arm64: Allow early time stamping
>
>  arch/arm64/Kconfig          |  3 +++
>  arch/arm64/kernel/setup.c   | 44 +++++++++++++++++++++++++++++++++++++
>  include/linux/sched/clock.h | 13 +++++++++++
>  kernel/printk/printk.c      |  4 ++--
>  kernel/time/sched_clock.c   | 10 +++++++++
>  5 files changed, 72 insertions(+), 2 deletions(-)
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
