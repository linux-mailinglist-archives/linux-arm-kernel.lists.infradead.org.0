Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640FB1A007E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 23:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DkzmUpVIhMirgE8+pWD4+pXvubBnbG/5XynsDbYkuk=; b=dH9Fl4h6Z4P/Q8
	+sJiGH+BJMQpKFlEr2NkTronsjG7zPD5PA/vuwMJb+R2w7gLi9AP1wmWclSu+WudSFOa6IPhc3baw
	EfwkK+Rf7/dYjrtMdu1xHaQkqqA0Q4MdTotU4nrDfnVw0/dtlTWli7a2ab3PApRuCpZfZnuA6x1Kx
	49DnrbH+A+rK/m5MO3cIp4+9hXwOfiPNE7b5Z5Yrx6GK3NkhkEdeMqCIeQK67l0HF0Y4BGB1v4PS3
	PtcBzXnkIJjwZaTviquNmlxFPkYkpHdbcyHf+vyx55EnUgzse6mzp7HpE1VTF/uS8D3osCh/k4LCH
	N/QyM9ybQ0XP2WnaGDhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLZih-0007pV-HX; Mon, 06 Apr 2020 21:55:51 +0000
Received: from mail-vs1-xe2a.google.com ([2607:f8b0:4864:20::e2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLZiZ-0007p3-V2
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 21:55:45 +0000
Received: by mail-vs1-xe2a.google.com with SMTP id a63so885888vsa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 14:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t2X6R0Ao/ouQbN3NckJo+Yg+YKPWD2e2E1fxE4Y9Ihs=;
 b=gGO5b0YWLH7FJcDUqPiyxovdssDro/wRaOpMbCuAJPieZZ31cS0Y5qb/GNZczi0RRW
 xSc/WTyffBz5Jk+WMvwIJESeMLFF7C7KUAs6owjBoViOEpgWfsXFKojOON+nminnu7Hi
 f00I0eUIGQZ5YrxbZXVutV6580x2LGLuuUI5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t2X6R0Ao/ouQbN3NckJo+Yg+YKPWD2e2E1fxE4Y9Ihs=;
 b=QdkZJLFzq2OGOGMX94ZlroPFnIM/ohuRRUQx0zZkzfCba3rYNCFlxSjOwElU/zRVbg
 MW1n8yUm+9z7wsjtXT48pW/SFu6Ap2c+YT5/cNV27uV8PZN8IErjFu8Vspb0HnO3T6TY
 6EtA0YaJZac3X5AfxQe/idDSbZ6hsqozuRF5ydSXlcvMu4ObSaEBvvKlEfzFh/GHVWn6
 MdGdLdU98TkaDzIObUcYkKbLXBL/aC5uR9In4qemkbOQO8P+tUkJtFygBQBhstlziV3/
 QAOzEhVh2SHiuvijvEJ60MLrM9IlCi1KknUP0ux7L8QFwstlW6VFeJYct15jYmqnT3cv
 +2wQ==
X-Gm-Message-State: AGi0PuYolc6QFKU5WEysLoyIys1nVatyW+1pk+V7HQCjsThqU7LczwU6
 /mNNVeKVpBstJmnRXNv0Tle5YumfwqmTeJCe23iTG6iB4xU=
X-Google-Smtp-Source: APiQypKHsHZEnHGGJ8M1T/jycPNpvI8ConfvzomX8LTeqBYA+37I7Uy9UvmzIc+36N4I9RFpUzR2faW5HwMIVsEZjKI=
X-Received: by 2002:a05:6102:185:: with SMTP id
 r5mr1679851vsq.164.1586210142008; 
 Mon, 06 Apr 2020 14:55:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200402153845.30985-1-kursad.oney@broadcom.com>
 <CAMj1kXF9Oa6xsG6HsZG=buB8x5=wxSBR_qxhOd__hkn1pBj6jg@mail.gmail.com>
In-Reply-To: <CAMj1kXF9Oa6xsG6HsZG=buB8x5=wxSBR_qxhOd__hkn1pBj6jg@mail.gmail.com>
From: Kursad Oney <kursad.oney@broadcom.com>
Date: Mon, 6 Apr 2020 17:55:31 -0400
Message-ID: <CAMm8Nh3w-AeEMHMdUs1YDHqDB5yqt7t6rLB0V-Pjx_PDCcBMDQ@mail.gmail.com>
Subject: Re: 32-bit arm unwind info for PLTs
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_145544_000290_FD1BB4DA 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On Mon, Apr 6, 2020 at 8:28 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 2 Apr 2020 at 17:45, Kursad Oney <kursad.oney@broadcom.com> wrote:
> >
> > Hi,
> >
> > I have a large kernel module that gets loaded to vmalloc via
> > ARM_MODULE_PLTS. When I either use perf, or enable (yet unmerged)
> > KASAN-arm changes, I see occasional warnings like this:
> >
> > unwind: Index not found pc:f3aa8d6c
> >
> > The address f3aa8d6c is in the .plt section. I printed the backtrace
> > in unwind_frame where the warning is printed, and the backtrace looks
> > like this:
> >
> > NMI backtrace for cpu 0
> > CPU: 0 PID: 7193 Comm: hostapd Tainted: P                  4.19.100 #7
> > Hardware name: Generic DT based system
> > [<c02144b8>] (unwind_backtrace) from [<c020dac8>] (show_stack+0x10/0x14)
> > [<c020dac8>] (show_stack) from [<c083b238>] (dump_stack+0x9c/0xb0)
> > [<c083b238>] (dump_stack) from [<c0842dfc>] (nmi_cpu_backtrace+0xb4/0xe8)
> > [<c0842dfc>] (nmi_cpu_backtrace) from [<c0842fb0>] (nmi_trigger_cpumask_backtrace+0x180/0x1d4)
> > [<c0842fb0>] (nmi_trigger_cpumask_backtrace) from [<c0214428>] (unwind_frame+0x650/0x6e0)
> > [<c0214428>] (unwind_frame) from [<c020d53c>] (walk_stackframe+0x30/0x3c)
> > [<c020d53c>] (walk_stackframe) from [<c020d778>] (__save_stack_trace+0x100/0x108)
> > [<c020d778>] (__save_stack_trace) from [<c03369ec>] (__kasan_slab_free+0x124/0x1f8)
> > [<c03369ec>] (__kasan_slab_free) from [<c033396c>] (kmem_cache_free+0x5c/0x19c)
> > [<c033396c>] (kmem_cache_free) from [<c029138c>] (rcu_process_callbacks+0x360/0x604)
> > [<c029138c>] (rcu_process_callbacks) from [<c020295c>] (__do_softirq+0x174/0x374)
> > [<c020295c>] (__do_softirq) from [<c022b07c>] (irq_exit+0xd0/0xf8)
> > [<c022b07c>] (irq_exit) from [<c027ce3c>] (__handle_domain_irq+0x7c/0xd4)
> > [<c027ce3c>] (__handle_domain_irq) from [<c04dfc00>] (gic_handle_irq+0x4c/0x90)
> > [<c04dfc00>] (gic_handle_irq) from [<c02020cc>] (__irq_svc+0x6c/0xac)
> > Exception stack(0xe4c3b400 to 0xe4c3b448)
> > b400: dca01404 f3d63a80 bd7ac750 00000000 f3d63a84 f0b6c164 f3bb6434 dca0126c
> > b420: f3d665d0 dca01408 dca01404 0c002c24 00000000 e4c3b450 f37ed5a4 f3aa8d6c
> > b440: 600b0013 ffffffff
> > [<c02020cc>] (__irq_svc) from [<f3aa8d6c>] (wl_module_exit+0xf64/0x21f8 [wl])
> >
> > To me it looks like while the CPU is executing an instruction in the
> > PLT, it gets an interrupt. If we call save_stack_trace() or any
> > function that eventually gets to unwind_frame() from that context,
> > then the unwinder doesn't know how to unwind the PLT. Does this sound
> > right? Any idea how the unwinder code should deal with this situation?
> >
>
> It is going to be infeasible to emit CFI directives on the fly, and
> expose them via a separate .eh_frame section in the module. So what we
> should probably be doing is teaching the unwinder about these entries,
> and simply ignore them, which is reasonable, given that they only set
> PC using a PC+immediate LDR, and so they don't affect the state of the
> stack or the register file. That means we'll need to use the value of
> LR to locate the next stack frame.

Thanks for the response. Given an address, what is a good way to teach
the unwinder about these entries? Since before the interrupt we can be
in any module's PLT region, do we search all modules or is there a
thing we can directly check on the address/instruction itself?

Also I understand the idea of using LR to locate the next stack frame,
but I have no idea how to do it.

Lastly, as far as I can tell, we don't seem to be losing any important
information here with the current code (but I am certainly not
considering all possible cases). Would it be reasonable to emit the
"unwind: Index not found" message only if we are not in PLT and not
unwind the rest of the stack?

Thanks!
kursad

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
