Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D13CF8BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppW66R+H0BVNEHWbj+dr0unwT3Tr2hnWBgfIcauW65k=; b=eEXQRUXdCoFT3Q
	Z+fETvs4FHNaIwPkqU4bZPgGBGCELC/SKtWmbHoONrbHyNpRnyCaM4nuOxPpj2Dy1Cpnm6SA00cNl
	I+FmFvnF0Hl3ZeDnTKqTX8FPxRxqrtisq/z9tBZK4wNeYExwIvELUHt0mZ+3zTQPN+m1OZSnWDX61
	Q+pOY0oEYmu3xZYaAfhsDDNrwaTOSbD5NagaljXvyZyaHW2ZFNV87s5xHF6j/BZbo9EXK6pAZ97ht
	Fve33MXjpf53FMyOym+ognO7YqOThFixBdmp1oMjNLZgrgsdcI2sSCG/gdbofptV9vVO1EGynl+MX
	Ki0/Q48YeC4spUVvx7NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHntd-0003tg-OI; Tue, 08 Oct 2019 11:43:17 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHntO-0003pH-8K
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:43:03 +0000
Received: by mail-qt1-f195.google.com with SMTP id j31so24740001qta.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 04:43:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=umsIHYk/EdwfY26Vo9wwZW7bO5IW89cNfvlnj/Kaxdg=;
 b=VUzcZcZ7Rl4OxYoktffwCE5/5LNzd2vfI2oKE2vMkO+pMx17g6D0klgEsQa3mYXfm3
 p9x1RHSP6hcWX2WQgRLvSOsZ1JlChKjW6zxOviwQnwG73q1CGAMCW6bbXAVy4izJjsGd
 nIewzrjDnO295Oedgush+j+IBtfnXn7LNerijnNZEFo/qnxYBmeDnjoKvLxPV5Y3UIw7
 rRXicG5apqfUAOHZZYxgIsHAh00La98sXDPsR/GWIYFfHqpJqc6XQDcKO7xNbTpdT7Fq
 dcG8W5/j/Z7ivVbS6xAsUNdKziMgQcqAWXFJyqAUrjIQ24tSby5zU99S55EtclI46WIp
 x9ww==
X-Gm-Message-State: APjAAAUIZ9ki3gvVnvfYCEzKeuWkVJQFmSED/PpZ4sDziR98JFr+pIUG
 fU97mYCQuRZQAZE+Hfxo390W8lIxtF15LRM87ko=
X-Google-Smtp-Source: APXvYqz589jJQA/dL++xS/ac2fwbidwcoKs9fK4I++aywFL5vuYSQeuOYY83BGWrAPMLcEhnv9sIUFP5OFW4bk2pvO4=
X-Received: by 2002:ac8:1a2e:: with SMTP id v43mr35056963qtj.204.1570534980880; 
 Tue, 08 Oct 2019 04:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
In-Reply-To: <20191007214439.27891-1-sebastian@breakpoint.cc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 8 Oct 2019 13:42:43 +0200
Message-ID: <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_044302_323017_C7C835A5 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 11:45 PM Sebastian Andrzej Siewior
<sebastian@breakpoint.cc> wrote:
>
> I added support for queued-RW and -spinlocks for ARM. I wanted to
> remove the current implementation but this does not work. The CPU_V6
> kernel config does not have support for xchg() on 2 byte memory address.
> This is required by q-lock' slowpath. It is possible to create a
> multi-kernel (with v6+v7+SMP) which then lack the function.
>
> I tested the q-lock implementation with
>         hackbench -g40 -s 500 -l 500
>
> The numbers in the table below represent the average runtime of 10
> invocations. I tested with HZ_100,HZ_250 and the different preemption
> levels on a IMX6q-board (quad Cortex-A9) and an AM572x board (dual
> Cortex-A15).
> "Ticket" means the current implementation on v5.4-rc1, Q-Locks is the
> switch to queued RW and spinlocks and in Q-locksI the locking
> instruction is additionally inlined.

This looks nice, and I don't see anything wrong with the implementation,
but I am slightly worried about switching everything over to a generic
spinlock while keeping the custom ARM version for an exceptionally
rare corner case:

The ARM spinlock is now only used when you build an SMP-enabled
kernel for an ARM1136r0 that is used in OMAP2, i.MX3 and some
of the least common Integrator/Realview variants. I'm not aware
of any binary distros with ARMv6+ kernels, so these would run custom
kernels that are almost always non-SMP as well as no longer getting
kernel upgrades (almost all have been discontinued years ago, the i.MX35
chip itself was the last to get EOLd in 2018).
Raspbian builds an ARMv6K SMP kernel that is not affected by this.

I wonder if we can do something better here and make the
asm-generic/qspinlock.h implementation always degrade into an
equivalent of include/linux/spinlock_up.h when running on uniprocessor
systems, avoiding both the atomic cmpxchg and the slowpath.

That way, an ARMv6+SMP kernel on UP could share the qspinlock
implementation but never actually get into the invalid 16-bit xchg() or
sev()/wfe(). It already shouldn't ever get into the slowpath on a
non-SMP system if I understand it correctly, but avoiding the cmpxchg()
entirely would be an added benefit.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
