Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D97887CA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 05:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XmOOu5h4h61Q3zx/9tb02vB5wEdWPbhl8j4dvf3fJA=; b=sbQsZbwYZ8aGNr
	yutkQjdnm4cHUO7eLEGGSKL7LCPillPp66BWmNYNAKSiRHPUI3dbLIXPBYfXcCHxKFD9V1Z9Gi7sa
	e7lU4KRANJywIvuEkVN9cejVN1d1ESou5iDl4BIrV7SDc8maiG3PYLwRgauiilxNHXkWIB1hwO4Yo
	YkowqMuC3ztiIroxOOlhiO3gTys4GQFC2ln//JnRJYaNfHjJVIw8dEdNsqk89Gkgv/PyrjikPv04m
	BiKeR5FioYOFWD+IYlaUzqWRY3Hx16XbDHt7aClR4ydj6KewBwC8YuZz8msCIgx5/RgKQJYL7t6AO
	aYzeK9aVi0C3Vz/bL2ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwIX8-000146-J1; Sat, 10 Aug 2019 03:59:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwIX1-00013T-Fu
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 03:59:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so6179898wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 20:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JZcLDaI0Pv1+a41Dcgy/bozUQohL00XTvpUYVt3VIWU=;
 b=QI8XAP4tV/wjuj2Djh0PTE4BTWzNRA7ElH1iUSyR0IgD8DvRINHs8Ycmvpj9Y8nKJD
 zUZwStIDuNhkftB9rsRYn68TmlPmK1XCWsNNkAy9uH1LXdjXBV+4mYE+tw3NIerhw1Lx
 9mhrp9RmHoYuV/JlXpQ7RXV7rlx2PN7XpRC62ccpI0eFRrz76VttXc8RDklU7hRIFuiF
 IAUk1/WBxm4DOb91TAPmCtqhKaI1k14DDoba7B76jvkoHlOAcAT5zkD8Aa2fGc32S89U
 0ZcpLE5GV8GFz8gZQRIRw5v7y0CAU7MIbWWajejqB6OtqwDBCTRb48q/4+86CB3P4JdM
 oReA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JZcLDaI0Pv1+a41Dcgy/bozUQohL00XTvpUYVt3VIWU=;
 b=kluDC3jTFtbtKKy8lzZGA254REpp1kPrcxKCOz8+NKopIk1o/guSxiEclEb59MJM+D
 sonDYypA+IOA/t3+duh7c0fwkZTRwnfyepOIJ0XNDFNQQ3vvD7h9H/ApLY6RVXo8aTAC
 MYK/qy3n/jAhw/OLFIVyDAXF91OqUuXyE9KujWJddIprPewKA3X/h9uTU1kNga9neSKW
 oxZ0nJhM6qhHkzwz6KhzwajXltXqp/iwCXaTG2gWIp/g3eoQx9QyTg2qnAK7LTEYeFHW
 qGf3J7rjNxrTdXu4+juBkBfUJb9h4hhl2qp5mWaZreDelFials3DWaCBySUX8mBmMR8/
 mkyw==
X-Gm-Message-State: APjAAAUrPxVqwcx0aRVeJ4vwHUPkY0NTdk+msiJgb1e8ERb5liOmzFyA
 TxcZZCjZrZrVaprGMAQTCTM=
X-Google-Smtp-Source: APXvYqwdCucQ9fkhhewSarY/6dZhax+8i7CkiHyq0Xehi6uvtubsOJpcbc3yWFA4BqfrsD2h4Yd/0A==
X-Received: by 2002:adf:f14f:: with SMTP id y15mr21428520wro.28.1565409538629; 
 Fri, 09 Aug 2019 20:58:58 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id q1sm5936857wmq.25.2019.08.09.20.58.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 09 Aug 2019 20:58:57 -0700 (PDT)
Date: Fri, 9 Aug 2019 20:58:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: Fwd: [CRON] Broken: ClangBuiltLinux/continuous-integration#895
 (master - 2a3984b)
Message-ID: <20190810035856.GA61458@archlinux-threadripper>
References: <ClangBuiltLinux/continuous-integration+122566420+broken@travis-ci.com>
 <5d4d7164795c7_43f9afa8b58b0242711@29afa0b1-fa00-407e-a40e-a8edb471126a.mail>
 <CAKwvOd=2v0j5=-q9662xiv9ofrKfQm+04KUQAo1pEz+6MZXYMg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=2v0j5=-q9662xiv9ofrKfQm+04KUQAo1pEz+6MZXYMg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_205903_558419_76FDA0F8 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, pauld@redhat.com,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-next@vger.kernel.org, Mark Brown <mark.brown@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 02:21:21PM -0700, Nick Desaulniers wrote:
> Did anyone report any issue with last night's -next for arm64?
> 
> Some kind of deadlock in online_fair_sched_group.
> 
> [   15.256790] ================================
> [   15.257025] WARNING: inconsistent lock state
> [   15.257243] 5.3.0-rc3-next-20190809 #1 Not tainted
> [   15.257393] --------------------------------
> [   15.257526] inconsistent {IN-HARDIRQ-W} -> {HARDIRQ-ON-W} usage.
> [   15.258096] init/1 [HC0[0]:SC0[0]:HE1:SE1] takes:
> [   15.258522] (____ptrval____) (&rq->lock){?.-.}, at:
> online_fair_sched_group+0x78/0xe4
> [   15.259170] {IN-HARDIRQ-W} state was registered at:
> [   15.259658]   lock_acquire+0x1dc/0x228
> [   15.259940]   _raw_spin_lock+0x40/0x54
> [   15.260251]   scheduler_tick+0x50/0xfc
> [   15.260491]   update_process_times+0x80/0x98
> [   15.260677]   tick_periodic+0xd8/0xf0
> [   15.260910]   tick_handle_periodic+0x30/0x94
> [   15.261126]   arch_timer_handler_virt+0x34/0x40
> [   15.261332]   handle_percpu_devid_irq+0x1a8/0x3c4
> [   15.261495]   __handle_domain_irq+0x7c/0xbc
> [   15.261689]   gic_handle_irq+0x48/0xac
> [   15.261881]   el1_irq+0xbc/0x180
> [   15.262024]   _raw_spin_unlock_irqrestore+0x4c/0x80
> [   15.262263]   tty_register_ldisc+0x58/0x6c
> [   15.262430]   n_tty_init+0x18/0x20
> [   15.262615]   console_init+0x20/0x3e4
> [   15.262820]   start_kernel+0x248/0x3c4
> [   15.263079] irq event stamp: 220201
> [   15.263362] hardirqs last  enabled at (220201):
> [<ffff000010e1f334>] _raw_spin_unlock_irqrestore+0x48/0x80
> [   15.263731] hardirqs last disabled at (220200):
> [<ffff000010e1f190>] _raw_spin_lock_irqsave+0x30/0x7c
> [   15.264046] softirqs last  enabled at (220196):
> [<ffff0000100f84c0>] irq_exit+0x114/0x134
> [   15.264419] softirqs last disabled at (220185):
> [<ffff0000100f84c0>] irq_exit+0x114/0x134
> [   15.264751]
> [   15.264751] other info that might help us debug this:
> [   15.265044]  Possible unsafe locking scenario:
> [   15.265044]
> [   15.265256]        CPU0
> [   15.265458]        ----
> [   15.265615]   lock(&rq->lock);
> [   15.265898]   <Interrupt>
> [   15.266087]     lock(&rq->lock);
> [   15.266353]
> [   15.266353]  *** DEADLOCK ***
> [   15.266353]
> [   15.266574] no locks held by init/1.
> [   15.266784]
> [   15.266784] stack backtrace:
> [   15.267120] CPU: 0 PID: 1 Comm: init Not tainted 5.3.0-rc3-next-20190809 #1
> [   15.267341] Hardware name: linux,dummy-virt (DT)
> [   15.267756] Call trace:
> [   15.267928]  dump_backtrace+0x0/0x140
> [   15.268159]  show_stack+0x14/0x1c
> [   15.268341]  dump_stack+0xa8/0x104
> [   15.268482]  mark_lock+0xda0/0xda8
> [   15.268728]  __lock_acquire+0x300/0x858
> [   15.268869]  lock_acquire+0x1dc/0x228
> [   15.269057]  _raw_spin_lock+0x40/0x54
> [   15.269201]  online_fair_sched_group+0x78/0xe4
> [   15.269392]  sched_online_group+0x88/0xac
> [   15.269591]  sched_autogroup_create_attach+0xcc/0x12c
> [   15.269765]  ksys_setsid+0xe8/0xec
> [   15.269990]  __arm64_sys_setsid+0xc/0x18
> [   15.270178]  el0_svc_common+0x9c/0x15c
> [   15.270317]  el0_svc_handler+0x5c/0x64
> [   15.270493]  el0_svc+0x8/0xc
> 
> https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/223856448

While that warning certainly looks it needs to be dealt with, I just
redid the job and it boots fine; I also verified this locally. I think
the job just got stuck somewhere or the build took simply took too long
so Travis killed the job.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
