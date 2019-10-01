Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC1BC2C27
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 05:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vB4IDnbdKywoWpuudAC6P0qDuu4bhOf2JZeTvUP7y4M=; b=myWz0zi93c/UHP
	0t3csr13Wmb68M9Y5LPUowUqVRgTrFLtvjrfDToLMgm1K8zjnETuPju38lXa2Ee2KPMnR0AxJTJ3E
	T8D7BuBfsJq+rV039wZEuiC7xCnY7ol2FaDNmi5et17/rBpcc95AW7NzgAsHQdWL/sKZW5j5f9P+Q
	WdvWLo2MgX2mRaomI+rOrfVOcypiot6kgGADre+3uvAEKFwVvQYx1rU8ORA+O540V4jvmZE8X/sOm
	tPh5GOGUTAAVMLN+r6fDIl8zcYHofe3j5JdK/lxRLsYI2k/Ul6g7lba4IkJqnPf2VAsQRWvTbPmTM
	/xRpiG5vF2WKcU192GJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF8R1-0005UT-6v; Tue, 01 Oct 2019 03:02:43 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF8QY-00055X-Vc
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 03:02:17 +0000
Received: by mail-qk1-x742.google.com with SMTP id h126so9790207qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 20:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NhU6yRd8rVi5W+b69famc3Wf+MRe5kZVRUYy3CZ04Qw=;
 b=j8TZ3XWt0rI+swgMAWG81IXe5bl3Mhp5Chfya22s00LvC2Qmaf21KWfpEq8VJ/MA8u
 iNhpL1/brVJ+WU5XJYYZLVgDbmD5roZeLEVCh3uhhAIB6Q7ldaHczGUfocR60s6gObys
 m1er4eyRCMglLPOygxeOlI4qFX7IKY66zuJwxiELQ/W3LoyKgzhnVXdJGqoQVZMXVAUC
 9KZuZ4rvVUmmQRBfr7LB1410few7nJXjYhZZqwfeEapnyqWRbKVK0cWhG6As5U6voF8R
 WYq499oUGxyH2Wy8JFjNthb89vV4tpHC/CAcFD2ijFpq6FcNQRn521nsK+FRvOmPctmD
 uTsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NhU6yRd8rVi5W+b69famc3Wf+MRe5kZVRUYy3CZ04Qw=;
 b=knexIGMa/tyl0mEqS5rdRpW0yuzAVCcX3N1TvxBGszzREq44HP4/naBWL2AG0FT/27
 1KEcFozGmGkK0bFL1YvKgdyoQtp8CUDPhgJwzAtI5eshAnb+49AnodDGhZkS97S+iMzB
 SKCK8EgpgR7EHiE49gzbGradcvxxFKGMXivOQ3S6lLtzxLuywwS4OMTr6fOXNpP9cFWE
 vQBfj9+d8w+an27whRbF5Gtwt4oVSTarheYahqHHJUCmH3Wi98qnipMqyKCTZ155B6LB
 CqTsuRoODwJx/zcEasVVYmQPFkoOI2mEHbj0ePA8ACUlOQbBXs451eiNJQ+MmgxGQiv4
 WaVA==
X-Gm-Message-State: APjAAAXmaJDmYpC9geOMy0r3CRxM/sKkIa+mqaHPDvwR6Gnwuj9LpJ0E
 1fMZH6uJLPfxWOTdB6kkz+6RBFezaeAguTkL1tT08A==
X-Google-Smtp-Source: APXvYqyuGC+X6DqxkXQJnINPoHMvpwc54U1WbIB3aUskUWBOJyL6MJ7/tA34rkq9cIbagHqaomA+H0vqIGNs+aOtpFY=
X-Received: by 2002:a37:d84:: with SMTP id 126mr3460614qkn.407.1569898930461; 
 Mon, 30 Sep 2019 20:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07>
 <a3a5e118-e6da-8d6d-5073-931653fa2808@free.fr>
 <1569897400.17361.27.camel@mtksdccf07>
In-Reply-To: <1569897400.17361.27.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 1 Oct 2019 05:01:58 +0200
Message-ID: <CACT4Y+b3NPemYwJJsD_oC0vde5Ybz1qDNWb=cFu2HpOTMrGSnQ@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_200215_029897_534FAB03 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 4:36 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Mon, 2019-09-30 at 10:57 +0200, Marc Gonzalez wrote:
> > On 30/09/2019 06:36, Walter Wu wrote:
> >
> > >  bool check_memory_region(unsigned long addr, size_t size, bool write,
> > >                                 unsigned long ret_ip)
> > >  {
> > > +       if (long(size) < 0) {
> > > +               kasan_report_invalid_size(src, dest, len, _RET_IP_);
> > > +               return false;
> > > +       }
> > > +
> > >         return check_memory_region_inline(addr, size, write, ret_ip);
> > >  }
> >
> > Is it expected that memcpy/memmove may sometimes (incorrectly) be passed
> > a negative value? (It would indeed turn up as a "large" size_t)
> >
> > IMO, casting to long is suspicious.
> >
> > There seem to be some two implicit assumptions.
> >
> > 1) size >= ULONG_MAX/2 is invalid input
> > 2) casting a size >= ULONG_MAX/2 to long yields a negative value
> >
> > 1) seems reasonable because we can't copy more than half of memory to
> > the other half of memory. I suppose the constraint could be even tighter,
> > but it's not clear where to draw the line, especially when considering
> > 32b vs 64b arches.
> >
> > 2) is implementation-defined, and gcc works "as expected" (clang too
> > probably) https://gcc.gnu.org/onlinedocs/gcc/Integers-implementation.html
> >
> > A comment might be warranted to explain the rationale.
> > Regards.
>
> Thanks for your suggestion.
> Yes, It is passed a negative value issue in memcpy/memmove/memset.
> Our current idea should be assumption 1 and only consider 64b arch,
> because KASAN only supports 64b. In fact, we really can't use so much
> memory in 64b arch. so assumption 1 make sense.

Note there are arm KASAN patches floating around, so we should not
make assumptions about 64-bit arch.

But there seems to be a number of such casts already:

$ find -name "*.c" -exec egrep "\(long\).* < 0" {} \; -print
    } else if ((long) delta < 0) {
./kernel/time/timer.c
    if ((long)state < 0)
./drivers/thermal/thermal_sysfs.c
    if ((long)delay < 0)
./drivers/infiniband/core/addr.c
    if ((long)tmo < 0)
./drivers/net/wireless/st/cw1200/pm.c
    if (pos < 0 || (long) pos != pos || (ssize_t) count < 0)
./sound/core/info.c
        if ((long)hwrpb->sys_type < 0) {
./arch/alpha/kernel/setup.c
    if ((long)m->driver_data < 0)
./arch/x86/kernel/apic/apic.c
            if ((long) size < 0L)
    if ((long)addr < 0L) {
./arch/sparc/mm/init_64.c
    if ((long)lpid < 0)
./arch/powerpc/kvm/book3s_hv.c
            if ((long)regs->regs[insn.mm_i_format.rs] < 0)
            if ((long)regs->regs[insn.i_format.rs] < 0) {
            if ((long)regs->regs[insn.i_format.rs] < 0) {
./arch/mips/kernel/branch.c
            if ((long)arch->gprs[insn.i_format.rs] < 0)
            if ((long)arch->gprs[insn.i_format.rs] < 0)
./arch/mips/kvm/emulate.c
            if ((long)regs->regs[insn.i_format.rs] < 0)
./arch/mips/math-emu/cp1emu.c
        if ((int32_t)(long)prom_vec < 0) {
./arch/mips/sibyte/common/cfe.c
    if (msgsz > ns->msg_ctlmax || (long) msgsz < 0 || msqid < 0)
    if (msqid < 0 || (long) bufsz < 0)
./ipc/msg.c
    if ((long)x < 0)
./mm/page-writeback.c
    if ((long)(next - val) < 0) {
./mm/memcontrol.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
