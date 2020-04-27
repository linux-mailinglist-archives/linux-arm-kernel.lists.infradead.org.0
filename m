Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F651B964C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 06:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AT0eZnwA7TBb/WAhjdzsL0WeyrLpsITYqyu0e26TtiU=; b=TmEmS94LmRwhHz
	F7RLWzIuzza0Igafo8K8SSwg9+o1TU5I9wLn4o9gfPWFN+lFJcnWqgt6LVpftM5RZBKs7axtlxDHp
	oCYSysnLrprvYY0Xk8x0LUYlWar3VLnvsFnUP0VDoLZU++M5rSApQWXUHMJy8tDuxHXUkUdDizQld
	1Nrair3+YQ2eM4Ow06EVZixWET253CWZPknO6D2KxBKYIE2RnZIfCSD7jCQgwtIMiOvJqIymccKOf
	t633wjsXlwAOD0FwLcrUGe5GqWaENzCsPWJxdvcBEwJzOucnR2sdio+5g8NkmNOUZXdEzj3aynlHu
	3sJl19nejjUcI/QeeBUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSvn7-0006dZ-Q6; Mon, 27 Apr 2020 04:54:49 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSvmx-0006cv-CR
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 04:54:41 +0000
Received: by mail-lf1-x142.google.com with SMTP id j14so12670777lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 21:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uLhiyNXw2c6Bh3+KsgO2YOgoBrKeaIdCbQ6AiJEyQKg=;
 b=dH4og7eAlOMMU9zjR7c8eKMWiq0zQDIlb2GK5JUi+qJAjaTf4YedK6qxVckF97ctx5
 bGBaeyT7ehGjDXEaCX92gHWiYMqnAUubFrHu0hoz3WspncTOpvQ4F7/X3w5wOVsoI7go
 OXVjRax5ecUCoM0aBlzesbwzg4KmPUA0ipv5jUruDQmbXTeukXf5y7WBtTNsWuktbExN
 /XjN09lzj1e0TaiFh00i48xhlkOurl0X8i6puThAwyi/YGCIm4Y0H4kAQYEoaAOxFWGL
 YCwosYJ1JgRriI9ryOukPusUIT40A/IGr0vxzU+K66172GMXmNKHyBsgNbhzUNW8XhYh
 kObA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uLhiyNXw2c6Bh3+KsgO2YOgoBrKeaIdCbQ6AiJEyQKg=;
 b=clE31lm37QJkj9NdaxHAFk/LxqlOoHp4FAp6TAwWYoKfI5aHXTDg2c1Rv0tBJxNAp0
 gwu7LZki659wUDAznS1OmFXrnQLLlZKc1yLTovGV2cvwDsJNZkfndNAy9YBOyp2yJMIU
 DnjjZzAJEYhs3Lhc32ptGTo9+FqgxLFC5ZZcI0itjjzZjIhypWpponywmoxkug1cEeFZ
 kPFrfFqV8dhoApLHcDP2e/wVTrCjLFwJAGlxZKvSwbLEgtnA0e5KIqZou2/CBvywoSyi
 BTVrmZQ+acUlvfXl7CPkO/jCMYGG52E31EYZiEQtKHH62ZPWn9HEzSROe4JUYjMC18VS
 wykQ==
X-Gm-Message-State: AGi0PuaXkDQCjhIizcz81vELQusmUbnUqPXt7TGGUy2EqURjvv6aJCKi
 Nlg+54u05OS4JRJ0x8UMHnc390CzGRGcVkEX8nnrtg==
X-Google-Smtp-Source: APiQypLz3rHzGtlDr1/6paHraXe63+Mx5MbGFXQ94F/6yIUtpJZ84R5fG+aGZyp75Dsp1Qm7jipKQPY0eZUsNTZQuc0=
X-Received: by 2002:ac2:5f63:: with SMTP id c3mr14190318lfc.15.1587963277244; 
 Sun, 26 Apr 2020 21:54:37 -0700 (PDT)
MIME-Version: 1.0
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <CAD=FV=W5FujyJMoH-TdQXxAYBvBO=rhjNo1EAv7xJ=R8eeaXZQ@mail.gmail.com>
In-Reply-To: <CAD=FV=W5FujyJMoH-TdQXxAYBvBO=rhjNo1EAv7xJ=R8eeaXZQ@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Mon, 27 Apr 2020 10:24:25 +0530
Message-ID: <CAFA6WYNgmnX7BJ2nTpSNUpmFm2wcpp3v_Psy2EoPccJBhk4WYg@mail.gmail.com>
Subject: Re: [RFC Patch v1 0/4] arm64: Introduce new IPI as IPI_CALL_NMI_FUNC
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_215439_941194_AAB6E923 
X-CRM114-Status: GOOD (  24.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wessel <jason.wessel@windriver.com>, LKML <linux-kernel@vger.kernel.org>,
 julien.thierry.kdev@gmail.com, Marc Zyngier <maz@kernel.org>,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Apr 2020 at 02:20, Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Fri, Apr 24, 2020 at 4:11 AM Sumit Garg <sumit.garg@linaro.org> wrote:
> >
> > With pseudo NMIs support available its possible to configure SGIs to be
> > triggered as pseudo NMIs running in NMI context. And kernel features
> > such as kgdb relies on NMI support to round up CPUs which are stuck in
> > hard lockup state with interrupts disabled.
> >
> > This patch-set adds support for IPI_CALL_NMI_FUNC which can be triggered
> > as a pseudo NMI which in turn is leveraged via kgdb to round up CPUs.
> >
> > After this patch-set we should be able to get a backtrace for a CPU
> > stuck in HARDLOCKUP. Have a look at an example below from a testcase run
> > on Developerbox:
> >
> > $ echo HARDLOCKUP > /sys/kernel/debug/provoke-crash/DIRECT
> >
> > # Enter kdb via Magic SysRq
> >
> > [11]kdb> btc
> > btc: cpu status: Currently on cpu 11
> > Available cpus: 0-10(I), 11, 12(I), 13, 14-23(I)
> > <snip>
> > Stack traceback for pid 623
> > 0xffff00086a644600      623      622  1   13   R  0xffff00086a644fc0  bash
> > CPU: 13 PID: 623 Comm: bash Not tainted 5.7.0-rc2 #27
> > Hardware name: Socionext SynQuacer E-series DeveloperBox, BIOS build #73 Apr  6 2020
> > Call trace:
> >  dump_backtrace+0x0/0x198
> >  show_stack+0x18/0x28
> >  dump_stack+0xb8/0x100
> >  kgdb_cpu_enter+0x5c0/0x5f8
> >  kgdb_nmicallback+0xa0/0xa8
> >  handle_IPI+0x190/0x200
> >  gic_handle_irq+0x2b8/0x2d8
> >  el1_irq+0xcc/0x180
> >  lkdtm_HARDLOCKUP+0x8/0x18
> >  direct_entry+0x124/0x1c0
> >  full_proxy_write+0x60/0xb0
> >  __vfs_write+0x1c/0x48
> >  vfs_write+0xe4/0x1d0
> >  ksys_write+0x6c/0xf8
> >  __arm64_sys_write+0x1c/0x28
> >  el0_svc_common.constprop.0+0x74/0x1f0
> >  do_el0_svc+0x24/0x90
> >  el0_sync_handler+0x178/0x2b8
> >  el0_sync+0x158/0x180
> > <snip>
> >
> > Looking forward to your comments/feedback.
> >
> > Sumit Garg (4):
> >   arm64: smp: Introduce a new IPI as IPI_CALL_NMI_FUNC
> >   irqchip/gic-v3: Add support to handle SGI as pseudo NMI
> >   irqchip/gic-v3: Enable arch specific IPI as pseudo NMI
> >   arm64: kgdb: Round up cpus using IPI_CALL_NMI_FUNC
> >
> >  arch/arm64/include/asm/hardirq.h |  2 +-
> >  arch/arm64/include/asm/smp.h     |  1 +
> >  arch/arm64/kernel/kgdb.c         | 15 +++++++++++++++
> >  arch/arm64/kernel/smp.c          | 36 +++++++++++++++++++++++++++++++++++-
> >  drivers/irqchip/irq-gic-v3.c     | 36 +++++++++++++++++++++++++++++++-----
> >  5 files changed, 83 insertions(+), 7 deletions(-)
>
> This is amazing!
>
> * picked your patches back to my current 5.4 tree
> * turned on "CONFIG_ARM64_PSEUDO_NMI"
> * set the "irqchip.gicv3_pseudo_nmi=1" command line
>
> ...and bam I can trace on the locked up CPU instead of being left in the dark.
>
> I'm not sure I'm going to be too much use in actually doing the review
> of the code since I'm not really an expert at how SGIs work (it took
> me a while to realize that it must stand for software generated
> interrupts) nor the bowels of the GIC.  I tried to do what little
> review I could.
>
> In any case, I'll keep this in my local patch stack for now and keep
> testing it to make sure I don't notice any weird problems.

Thanks for your review and testing.

-Sumit

>
> -Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
