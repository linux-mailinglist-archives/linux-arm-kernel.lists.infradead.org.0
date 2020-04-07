Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8C61A0802
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QH6l6yVpBa3/FwFwSdvdA3q9aF+6f4Tezex6JSEGCQ=; b=mFyW5n9ht/v6qN
	P1BLqvQqv97JdzRDYByZ59rJGkyDKMyecT1Ns11yZo0Hy8vMERptpCJpWUV9AP6Z8AKPgL3NS/P5p
	xarMS2Ig34OnQdp7eUaVU0dFWJh83yAQGlaYsbmZtjl1Z9BLez16qmTZYMhEaJyl1ll+xHSkIc1Hj
	xhi0q0TvLdVRSVmhhjLijbjE8tS3z3i/QHVt1Xrp/Raicai+e+4LY2ovW8OvH1DdNE6X5AJrNKaVt
	U6V0hsr+VIlHgnc1n5+ckKyL3V5BWThqL+Gyo7TtxggzWjTnn7FTxz2Ycmw0SAelkijdG5ZEbOfWy
	Rb1sERyHQP0J/We5/9hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiPv-0001zJ-Ti; Tue, 07 Apr 2020 07:13:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLiPo-0001yj-23
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:12:57 +0000
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 565EA206F5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Apr 2020 07:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586243575;
 bh=lir4+QCgNQSa2jHefyq4JpsVoA0LoQVwTUOrM4jq4Sk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ohD0+KvITmkKLu6lU4I1iTPEnqiTEXACefGfSVuWDW3GCxjEkKLDcXMGqTYHZKXZb
 DG6MfSLPyspcGB77FmxUFWGTifP7kYjiKTh4tGH0o1XubIQ/Y1RYMr3zxrf7g0ET57
 g956obQ96yu1/RXtA67hpGVXlaajTHm8ft5pq9JI=
Received: by mail-io1-f48.google.com with SMTP id i3so2239609ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:12:55 -0700 (PDT)
X-Gm-Message-State: AGi0PuZsr6tRALYWsX/d5Tw4A9guCulHXCCI0QG7pVVQLIWGdWA51CkK
 D7tHTvTI9Ia+5V5YEAvwDVEndIaCE8U5tAK6yCY=
X-Google-Smtp-Source: APiQypLZHmDDGOPD2NVzTWGv6bwWuadRPYG/cQuVEo0xK/AUsMK21lgMqRi8Q6405Vlor/nlWmW800ZgJGBGbeJ3RWk=
X-Received: by 2002:a05:6638:a22:: with SMTP id 2mr664653jao.74.1586243574792; 
 Tue, 07 Apr 2020 00:12:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200402153845.30985-1-kursad.oney@broadcom.com>
 <CAMj1kXF9Oa6xsG6HsZG=buB8x5=wxSBR_qxhOd__hkn1pBj6jg@mail.gmail.com>
 <CAMm8Nh3w-AeEMHMdUs1YDHqDB5yqt7t6rLB0V-Pjx_PDCcBMDQ@mail.gmail.com>
In-Reply-To: <CAMm8Nh3w-AeEMHMdUs1YDHqDB5yqt7t6rLB0V-Pjx_PDCcBMDQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 7 Apr 2020 09:12:43 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHa85Ctw7eh3VVuCkDNKOzwnZT7BvN=1HXgXmjHgktB0A@mail.gmail.com>
Message-ID: <CAMj1kXHa85Ctw7eh3VVuCkDNKOzwnZT7BvN=1HXgXmjHgktB0A@mail.gmail.com>
Subject: Re: 32-bit arm unwind info for PLTs
To: Kursad Oney <kursad.oney@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_001256_142824_C8856F1C 
X-CRM114-Status: GOOD (  27.52  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, 6 Apr 2020 at 23:55, Kursad Oney <kursad.oney@broadcom.com> wrote:
>
> Hi Ard,
>
> On Mon, Apr 6, 2020 at 8:28 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Thu, 2 Apr 2020 at 17:45, Kursad Oney <kursad.oney@broadcom.com> wrote:
> > >
> > > Hi,
> > >
> > > I have a large kernel module that gets loaded to vmalloc via
> > > ARM_MODULE_PLTS. When I either use perf, or enable (yet unmerged)
> > > KASAN-arm changes, I see occasional warnings like this:
> > >
> > > unwind: Index not found pc:f3aa8d6c
> > >
> > > The address f3aa8d6c is in the .plt section. I printed the backtrace
> > > in unwind_frame where the warning is printed, and the backtrace looks
> > > like this:
> > >
> > > NMI backtrace for cpu 0
> > > CPU: 0 PID: 7193 Comm: hostapd Tainted: P                  4.19.100 #7
> > > Hardware name: Generic DT based system
> > > [<c02144b8>] (unwind_backtrace) from [<c020dac8>] (show_stack+0x10/0x14)
> > > [<c020dac8>] (show_stack) from [<c083b238>] (dump_stack+0x9c/0xb0)
> > > [<c083b238>] (dump_stack) from [<c0842dfc>] (nmi_cpu_backtrace+0xb4/0xe8)
> > > [<c0842dfc>] (nmi_cpu_backtrace) from [<c0842fb0>] (nmi_trigger_cpumask_backtrace+0x180/0x1d4)
> > > [<c0842fb0>] (nmi_trigger_cpumask_backtrace) from [<c0214428>] (unwind_frame+0x650/0x6e0)
> > > [<c0214428>] (unwind_frame) from [<c020d53c>] (walk_stackframe+0x30/0x3c)
> > > [<c020d53c>] (walk_stackframe) from [<c020d778>] (__save_stack_trace+0x100/0x108)
> > > [<c020d778>] (__save_stack_trace) from [<c03369ec>] (__kasan_slab_free+0x124/0x1f8)
> > > [<c03369ec>] (__kasan_slab_free) from [<c033396c>] (kmem_cache_free+0x5c/0x19c)
> > > [<c033396c>] (kmem_cache_free) from [<c029138c>] (rcu_process_callbacks+0x360/0x604)
> > > [<c029138c>] (rcu_process_callbacks) from [<c020295c>] (__do_softirq+0x174/0x374)
> > > [<c020295c>] (__do_softirq) from [<c022b07c>] (irq_exit+0xd0/0xf8)
> > > [<c022b07c>] (irq_exit) from [<c027ce3c>] (__handle_domain_irq+0x7c/0xd4)
> > > [<c027ce3c>] (__handle_domain_irq) from [<c04dfc00>] (gic_handle_irq+0x4c/0x90)
> > > [<c04dfc00>] (gic_handle_irq) from [<c02020cc>] (__irq_svc+0x6c/0xac)
> > > Exception stack(0xe4c3b400 to 0xe4c3b448)
> > > b400: dca01404 f3d63a80 bd7ac750 00000000 f3d63a84 f0b6c164 f3bb6434 dca0126c
> > > b420: f3d665d0 dca01408 dca01404 0c002c24 00000000 e4c3b450 f37ed5a4 f3aa8d6c
> > > b440: 600b0013 ffffffff
> > > [<c02020cc>] (__irq_svc) from [<f3aa8d6c>] (wl_module_exit+0xf64/0x21f8 [wl])
> > >
> > > To me it looks like while the CPU is executing an instruction in the
> > > PLT, it gets an interrupt. If we call save_stack_trace() or any
> > > function that eventually gets to unwind_frame() from that context,
> > > then the unwinder doesn't know how to unwind the PLT. Does this sound
> > > right? Any idea how the unwinder code should deal with this situation?
> > >
> >
> > It is going to be infeasible to emit CFI directives on the fly, and
> > expose them via a separate .eh_frame section in the module. So what we
> > should probably be doing is teaching the unwinder about these entries,
> > and simply ignore them, which is reasonable, given that they only set
> > PC using a PC+immediate LDR, and so they don't affect the state of the
> > stack or the register file. That means we'll need to use the value of
> > LR to locate the next stack frame.
>
> Thanks for the response. Given an address, what is a good way to teach
> the unwinder about these entries? Since before the interrupt we can be
> in any module's PLT region, do we search all modules or is there a
> thing we can directly check on the address/instruction itself?
>

You could use __module_address() to retrieve the module, and cross
reference the address with its PLT sections.

> Also I understand the idea of using LR to locate the next stack frame,
> but I have no idea how to do it.
>

The unwinder should have access to a struct pt_regs at each level, and
the value of LR can simply be read from there.

> Lastly, as far as I can tell, we don't seem to be losing any important
> information here with the current code (but I am certainly not
> considering all possible cases). Would it be reasonable to emit the
> "unwind: Index not found" message only if we are not in PLT and not
> unwind the rest of the stack?
>

What would that fix? The unwind already terminates at this point, and
the warning only appears occasionally, and is factually correct.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
