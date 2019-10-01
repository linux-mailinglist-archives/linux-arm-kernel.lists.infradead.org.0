Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7F0C2C56
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 05:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2W+s6Kn1b9eYea56EphkXZ9l8wbBgDCRf93+O2gnS+w=; b=eIpg5R51zD/uC3
	RuhDoolbpMeE2EzNR4rGxep0guV+YFPsaFUr60d7IYu/Wg/HsLmRZ7+PIysh+HBEfkNrWOlSQfl4V
	muPb+KX+LD5iWMrTlQiGYtppNTa+Jg0sfxCAwyWtKMi3KfJz3YV78SxUl6NtnIOnrcSSuBP4WD3Cr
	cgCya84wGkb/HCxGGOUJEbYYNQ7nGqlisSP8Jk/3ZpmK39bNQ7jKsv1uPybV/4u3K0TWCWPX+h52W
	ANQACJX4VVjN+2kAPhGBGCiM0upUIPJ9mKectZi4yrbzMESyjkqmUBUfsX4jPW3KwSEF4ZPGApFnv
	pw6uBbOQWELInLws9fXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF8vR-0006dp-BF; Tue, 01 Oct 2019 03:34:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF8vH-0006dN-5I
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 03:34:02 +0000
X-UUID: 55b6c21d04864b1180e8c0371f5beb8b-20190930
X-UUID: 55b6c21d04864b1180e8c0371f5beb8b-20190930
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1154152384; Mon, 30 Sep 2019 19:33:53 -0800
Received: from mtkexhb01.mediatek.inc (172.21.101.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Sep 2019 20:33:52 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkexhb01.mediatek.inc (172.21.101.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 11:18:35 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 1 Oct 2019 11:18:35 +0800
Message-ID: <1569899916.17361.36.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 1 Oct 2019 11:18:36 +0800
In-Reply-To: <CACT4Y+b3NPemYwJJsD_oC0vde5Ybz1qDNWb=cFu2HpOTMrGSnQ@mail.gmail.com>
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07>
 <a3a5e118-e6da-8d6d-5073-931653fa2808@free.fr>
 <1569897400.17361.27.camel@mtksdccf07>
 <CACT4Y+b3NPemYwJJsD_oC0vde5Ybz1qDNWb=cFu2HpOTMrGSnQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_203359_204791_9EC9EB00 
X-CRM114-Status: GOOD (  22.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Linux
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-10-01 at 05:01 +0200, Dmitry Vyukov wrote:
> On Tue, Oct 1, 2019 at 4:36 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > On Mon, 2019-09-30 at 10:57 +0200, Marc Gonzalez wrote:
> > > On 30/09/2019 06:36, Walter Wu wrote:
> > >
> > > >  bool check_memory_region(unsigned long addr, size_t size, bool write,
> > > >                                 unsigned long ret_ip)
> > > >  {
> > > > +       if (long(size) < 0) {
> > > > +               kasan_report_invalid_size(src, dest, len, _RET_IP_);
> > > > +               return false;
> > > > +       }
> > > > +
> > > >         return check_memory_region_inline(addr, size, write, ret_ip);
> > > >  }
> > >
> > > Is it expected that memcpy/memmove may sometimes (incorrectly) be passed
> > > a negative value? (It would indeed turn up as a "large" size_t)
> > >
> > > IMO, casting to long is suspicious.
> > >
> > > There seem to be some two implicit assumptions.
> > >
> > > 1) size >= ULONG_MAX/2 is invalid input
> > > 2) casting a size >= ULONG_MAX/2 to long yields a negative value
> > >
> > > 1) seems reasonable because we can't copy more than half of memory to
> > > the other half of memory. I suppose the constraint could be even tighter,
> > > but it's not clear where to draw the line, especially when considering
> > > 32b vs 64b arches.
> > >
> > > 2) is implementation-defined, and gcc works "as expected" (clang too
> > > probably) https://gcc.gnu.org/onlinedocs/gcc/Integers-implementation.html
> > >
> > > A comment might be warranted to explain the rationale.
> > > Regards.
> >
> > Thanks for your suggestion.
> > Yes, It is passed a negative value issue in memcpy/memmove/memset.
> > Our current idea should be assumption 1 and only consider 64b arch,
> > because KASAN only supports 64b. In fact, we really can't use so much
> > memory in 64b arch. so assumption 1 make sense.
> 
> Note there are arm KASAN patches floating around, so we should not
> make assumptions about 64-bit arch.
I think arm KASAN patch doesn't merge in mainline, because virtual
memory of shadow memory is so bigger, the kernel virtual memory only has
1GB or 2GB in 32-bit arch, it is hard to solve the issue. it may need
some trade-off.

> 
> But there seems to be a number of such casts already:
> 
It seems that everyone is the same assumption.

> $ find -name "*.c" -exec egrep "\(long\).* < 0" {} \; -print
>     } else if ((long) delta < 0) {
> ./kernel/time/timer.c
>     if ((long)state < 0)
> ./drivers/thermal/thermal_sysfs.c
>     if ((long)delay < 0)
> ./drivers/infiniband/core/addr.c
>     if ((long)tmo < 0)
> ./drivers/net/wireless/st/cw1200/pm.c
>     if (pos < 0 || (long) pos != pos || (ssize_t) count < 0)
> ./sound/core/info.c
>         if ((long)hwrpb->sys_type < 0) {
> ./arch/alpha/kernel/setup.c
>     if ((long)m->driver_data < 0)
> ./arch/x86/kernel/apic/apic.c
>             if ((long) size < 0L)
>     if ((long)addr < 0L) {
> ./arch/sparc/mm/init_64.c
>     if ((long)lpid < 0)
> ./arch/powerpc/kvm/book3s_hv.c
>             if ((long)regs->regs[insn.mm_i_format.rs] < 0)
>             if ((long)regs->regs[insn.i_format.rs] < 0) {
>             if ((long)regs->regs[insn.i_format.rs] < 0) {
> ./arch/mips/kernel/branch.c
>             if ((long)arch->gprs[insn.i_format.rs] < 0)
>             if ((long)arch->gprs[insn.i_format.rs] < 0)
> ./arch/mips/kvm/emulate.c
>             if ((long)regs->regs[insn.i_format.rs] < 0)
> ./arch/mips/math-emu/cp1emu.c
>         if ((int32_t)(long)prom_vec < 0) {
> ./arch/mips/sibyte/common/cfe.c
>     if (msgsz > ns->msg_ctlmax || (long) msgsz < 0 || msqid < 0)
>     if (msqid < 0 || (long) bufsz < 0)
> ./ipc/msg.c
>     if ((long)x < 0)
> ./mm/page-writeback.c
>     if ((long)(next - val) < 0) {
> ./mm/memcontrol.c



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
