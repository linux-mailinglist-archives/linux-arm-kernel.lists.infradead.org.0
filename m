Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756D3D0CD8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 12:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/yiYF2QcoU5rZPTSyP9xgL5xCnJfhcD84BSU59h0Dw=; b=nWBEoQ6WLzcF6b
	H8vs+H0Q0WEH3Uz6+Pb0fkEORZzJlfwCUUodSJsg0U4Hl1ctzEaYWEuzv9EtLAGmv+6g5xbYjGfFw
	/k4Jc6jDWRe2Eo0PIDHk1A3/JY2iT9SHw43Da8FyCYgbhpngG0zFjVXTbspQpcuQdmIM0iHH3iSCI
	zygxIqPaS2+C2Ty0U8upBDeG61tQcEQ88zmy+UXFn9fQkJ/bpqrPA47CGZ0ejctp3ZKLotRkP/wCh
	rq4S0rALuAU3Ee6lpVLZ8dpcLeu8YHlV+LxVIsK4hdMwUScuXWX6NM2yr8ScmlVrj5hJuEMlQk8kw
	XWUStGWmOzF3J+i4A4Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI9G1-0005lf-Ed; Wed, 09 Oct 2019 10:31:49 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI9Fu-0005lJ-1J
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 10:31:43 +0000
Received: by mail-qk1-f193.google.com with SMTP id 201so1652821qkd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 03:31:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IynHDBfxMDPyPdpwxI2/CB0VETKSyQYaM4R/82+/Dec=;
 b=WnPRsXi21UnFsL8oRJtKCiZ3gBk3jxXET0GbmicOJ6lp2FgLMNYJ54mkkL2eB2Jj8p
 p1Jfyc8KEW4fRnfC4bMQmlTZ0IbvJsozL8UbZCVtgpzwoZ9+vngTr13VhugwwmlXtXbQ
 HTIKqzlVNdYPMAaLobeTjhs7tleabsON0vZ2/zdUgS2MDBq7L9NOn+ClSbJLD8mYAyi5
 ExR2M+2UZyKNJihMNpJzJWluwvEFYNwpBH9Rd2fMvtnTpVcRPpQjLEXjjXc0NfdyOBRf
 8C0xKyehOh3FuB8RavuIqWXa3QkkMlpETPvM6QZe8I131YpdujfCY5u84j6YNgGPJClz
 9+qw==
X-Gm-Message-State: APjAAAV3Ky2/nP5qYnb8ECCv5LLmIbwuDdQRehStZ7EMx5vEe5/9DT/H
 FpFlwbBq7W7ZeEdcdxk5S+FjPPbYTyriIrrJhdQ=
X-Google-Smtp-Source: APXvYqwW9AMGcNVIGrSAOony1Y7+bMUW9dg5qvjU4FTXJfC5Efg8YaK/QfYVLj4G9fYvR5Lk6DkWggHYkve0bU3C5Iw=
X-Received: by 2002:a05:620a:218f:: with SMTP id
 g15mr2748609qka.3.1570617100507; 
 Wed, 09 Oct 2019 03:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191009084610.GG2311@hirez.programming.kicks-ass.net>
 <CAK8P3a3--khxZgWNa3uH8g5PsP7y8PrgpdktEV49UrOhFCX8jQ@mail.gmail.com>
 <20191009093118.GJ2328@hirez.programming.kicks-ass.net>
In-Reply-To: <20191009093118.GJ2328@hirez.programming.kicks-ass.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 9 Oct 2019 12:31:24 +0200
Message-ID: <CAK8P3a0W2+oayv8D=DBqDaeR+dp2QsjhigKevT_D6NLtGPMWxw@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_033142_078219_06484710 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 9, 2019 at 11:31 AM Peter Zijlstra <peterz@infradead.org> wrote:
> On Wed, Oct 09, 2019 at 10:57:25AM +0200, Arnd Bergmann wrote:
> > On Wed, Oct 9, 2019 at 10:46 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > > Why is this not in __xchg() as a variant for case 2 ?
> >
> > ldrexh/strexh are instructions that are only available on SMP-capable
> > architecture revisions (ARMv6K or higher). When building a kernel
> > that runs both on pre-K ARMv6 uniprocessor systems and on later
> > SMP systems, __xchg() can only do 32-bit  ldrex/strex.
>
> You can do u16 xchg using a u32 ll/sc, see openrisc's xchg_small().

Ah, right. That would be much nicer than my smp_xchg16_relaxed()
hack to get the corner case working, as it avoids the ugly special
case in qspinlock.h.

Would this still have comparable performance characteristics?
I assume the 16-bit xchg_relaxed() in qspinlock.c was meant as
an optimization for x86 and other cmpxchg based architectures but
doesn't actually help on ll/sc based architectures that get the
reservation on the whole cache line anyway?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
