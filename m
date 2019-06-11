Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FEB3C696
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGePMjVQ76cwEojT9Ubbkej0impnQs5q/VEGfN8l3lk=; b=QqQZ6BPHlu9WlJ
	GYPT+ShdDJm1esyqKm4eEfnHnSRzqALTaUjoNiLluQ3Cf9rY+pHa9VbkNXz/+Mi8sBLOI+HLIGhTP
	b6R0ghLP2Q9d9TgfDeiwLSrbBILkBp0qx5fV4lRwo2eRQgKX1Zq7FEpWmC8tI/EPWQynSZ0HIlTBE
	ySbdySY0n2ls7ahGgn/vl/fqndOErHpEqroiRj3657EXPQSycJs1WxYPMOE+JeyKYzgFbKxeTI8Uv
	x+nLpUF+ZmcUKjxQck+pyTHPBbL3JnuWZQKS0JvQMGV5VjVL6IY2SFnXvzRbqIf6nLql3tg/QaXYh
	3+ZSLfYLfKuy7LuUQPDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacWu-0000g0-4i; Tue, 11 Jun 2019 08:53:20 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacV5-00085r-RS
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:51:36 +0000
Received: by mail-ed1-x544.google.com with SMTP id z25so18856504edq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 01:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=omJ/gQVCRHiP1mzn5vFGNqzD3Ej8FBhph57vNj7+2+U=;
 b=kUJTjpQuyMbXk93njpHM3k6QoX8RPZogTfl+8U8433P85C0qtQkomi2N3Ta3NwYpK8
 d3jnprLPROJiR7CcBOpw1oEakKM+siBt3nrXieW7Qy9wvruNhWOrjOC3JYbnqtOFXcUK
 s0BiQJn8siLUOn65av3Tjt06i6k0QCRN4LLPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=omJ/gQVCRHiP1mzn5vFGNqzD3Ej8FBhph57vNj7+2+U=;
 b=pfY+Isk3QSwkJeFYYZdamlvy2EhWJJPaBJDlqJxzj2we5oIe30I0Ej9SHFhR+3unKt
 1Hkn/FcQYE0BpG2NW5bzwQ+MqK1r251qBV6gwn4MDP9eXPYsix/q7uL1FKkITDC7vYx7
 9LbNw9+H4BUEgwaO1aMXDxuP97vll57IFfMN+fQ/KN5T8KHjlG1r+Bx0yGpbeJN3Ba6E
 u6xSbkfPaLZCMy3zz+xRkP5tS+YIPz68Kh0rQ03P1jpTwn+TE0YX1WwfhIytNxYOtYlv
 brp9sRYUNOHVFq4eVK3vUhwmA1e/Vukzn8yx4AbwyflEfDWWFp1lEqcfRhZHUr1kDXDf
 +Cuw==
X-Gm-Message-State: APjAAAXHybDZ6wbnpAuBXFMtxe6Nle6ksPPVs2bAtMzP7M0sKJvNCVFk
 7HnpEq50gELVu53DhDySGReVmA==
X-Google-Smtp-Source: APXvYqw3/aAUmVHCu0mGixW6kqJWcVN5+tdHtfvax9kpwDGm5hXz6VB7nLZ5jD0lSOSvFoX71EN+7w==
X-Received: by 2002:a17:906:9410:: with SMTP id
 q16mr28289475ejx.90.1560243086366; 
 Tue, 11 Jun 2019 01:51:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id q11sm3583175edd.51.2019.06.11.01.51.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 01:51:25 -0700 (PDT)
Date: Tue, 11 Jun 2019 10:51:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Dmitry Vyukov <dvyukov@google.com>
Subject: Re: WARNING in bpf_jit_free
Message-ID: <20190611085123.GU21222@phenom.ffwll.local>
Mail-Followup-To: Dmitry Vyukov <dvyukov@google.com>,
 syzbot <syzbot+2ff1e7cb738fd3c41113@syzkaller.appspotmail.com>,
 David Airlie <airlied@linux.ie>,
 Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 David Miller <davem@davemloft.net>,
 DRI <dri-devel@lists.freedesktop.org>, hawk@kernel.org,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Martin KaFai Lau <kafai@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, maxime.ripard@bootlin.com,
 netdev <netdev@vger.kernel.org>, paul.kocialkowski@bootlin.com,
 Song Liu <songliubraving@fb.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>, wens@csie.org,
 xdp-newbies@vger.kernel.org, Yonghong Song <yhs@fb.com>
References: <000000000000e92d1805711f5552@google.com>
 <000000000000381684058ace28e5@google.com>
 <20190611080431.GP21222@phenom.ffwll.local>
 <CACT4Y+YMFKe1cq_XpP0o5fd+XLD_8qMVjqnVX5rx1UCWyCR5eg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACT4Y+YMFKe1cq_XpP0o5fd+XLD_8qMVjqnVX5rx1UCWyCR5eg@mail.gmail.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_015127_948834_2D80A551 
X-CRM114-Status: GOOD (  26.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>, David Airlie <airlied@linux.ie>,
 Alexei Starovoitov <ast@kernel.org>, DRI <dri-devel@lists.freedesktop.org>,
 hawk@kernel.org, xdp-newbies@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, maxime.ripard@bootlin.com,
 wens@csie.org, Yonghong Song <yhs@fb.com>,
 syzbot <syzbot+2ff1e7cb738fd3c41113@syzkaller.appspotmail.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 David Miller <davem@davemloft.net>, paul.kocialkowski@bootlin.com,
 Daniel Vetter <daniel@ffwll.ch>, bpf <bpf@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:33:21AM +0200, Dmitry Vyukov wrote:
> On Tue, Jun 11, 2019 at 10:04 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Sat, Jun 08, 2019 at 04:22:06AM -0700, syzbot wrote:
> > > syzbot has found a reproducer for the following crash on:
> > >
> > > HEAD commit:    79c3ba32 Merge tag 'drm-fixes-2019-06-07-1' of git://anong..
> > > git tree:       upstream
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=1201b971a00000
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=60564cb52ab29d5b
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=2ff1e7cb738fd3c41113
> > > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14a3bf51a00000
> > > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=120d19f2a00000
> >
> > Looking at the reproducer I don't see any calls to ioctl which could end
> > up anywhere in drm.
> > >
> > > The bug was bisected to:
> > >
> > > commit 0fff724a33917ac581b5825375d0b57affedee76
> > > Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > Date:   Fri Jan 18 14:51:13 2019 +0000
> > >
> > >     drm/sun4i: backend: Use explicit fourcc helpers for packed YUV422 check
> >
> > And most definitely not in drm/sun4i. You can only hit this if you have
> > sun4i and run on arm, which per your config isn't the case.
> >
> > tldr; smells like bisect gone wrong.
> > -Daniel
> 
> From the bisection log it looks like the bug is too hard to trigger
> for reliable bisection. So it probably classified one bad commit as
> good. But it should got quite close to the right one.

Well statistically it'll get close, since there's a fair chance that it's
one of the later bisect results that got mischaracterized.

But you can be equally unlucky, and if it's one of the earliers, then it
can easily be a few thousand commits of. Looking at the log it's mostly
bad, with a few good sprinkled in, which could just be reproduction
failures. So might very well be that the very first "good" result is
wrong. And that very first "good" decision cuts away a big pile of bpf
related commits. The next "good" decision then only cuts away a pile of
drm commits, but at that point you're already off the rails most likely.

I'd say re-test on f90d64483ebd394958841f67f8794ab203b319a7 a few times,
I'm willing to bet that one is actually bad.

Cheers, Daniel

> 
> > > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1467550f200000
> > > final crash:    https://syzkaller.appspot.com/x/report.txt?x=1667550f200000
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=1267550f200000
> > >
> > > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > > Reported-by: syzbot+2ff1e7cb738fd3c41113@syzkaller.appspotmail.com
> > > Fixes: 0fff724a3391 ("drm/sun4i: backend: Use explicit fourcc helpers for
> > > packed YUV422 check")
> > >
> > > WARNING: CPU: 0 PID: 8951 at kernel/bpf/core.c:851 bpf_jit_free+0x157/0x1b0
> > > Kernel panic - not syncing: panic_on_warn set ...
> > > CPU: 0 PID: 8951 Comm: kworker/0:0 Not tainted 5.2.0-rc3+ #23
> > > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> > > Google 01/01/2011
> > > Workqueue: events bpf_prog_free_deferred
> > > Call Trace:
> > >  __dump_stack lib/dump_stack.c:77 [inline]
> > >  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
> > >  panic+0x2cb/0x744 kernel/panic.c:219
> > >  __warn.cold+0x20/0x4d kernel/panic.c:576
> > >  report_bug+0x263/0x2b0 lib/bug.c:186
> > >  fixup_bug arch/x86/kernel/traps.c:179 [inline]
> > >  fixup_bug arch/x86/kernel/traps.c:174 [inline]
> > >  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
> > >  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
> > >  invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:986
> > > RIP: 0010:bpf_jit_free+0x157/0x1b0
> > > Code: 00 fc ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 75 5d 48 b8 00 02 00 00
> > > 00 00 ad de 48 39 43 70 0f 84 05 ff ff ff e8 f9 b5 f4 ff <0f> 0b e9 f9 fe ff
> > > ff e8 bd 53 2d 00 e9 d9 fe ff ff 48 89 7d e0 e8
> > > RSP: 0018:ffff88808886fcb0 EFLAGS: 00010293
> > > RAX: ffff88808cb6c480 RBX: ffff88809051d280 RCX: ffffffff817ae68d
> > > RDX: 00000000> >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
> >
> > --
> > You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/20190611080431.GP21222%40phenom.ffwll.local.
> > For more options, visit https://groups.google.com/d/optout.00000000 RSI: ffffffff817bf0f7 RDI: ffff88809051d2f0
> > > RBP: ffff88808886fcd0 R08: 1ffffffff14ccaa8 R09: fffffbfff14ccaa9
> > > R10: fffffbfff14ccaa8 R11: ffffffff8a665547 R12: ffffc90001925000
> > > R13: ffff88809051d2e8 R14: ffff8880a0e43900 R15: ffff8880ae834840
> > >  bpf_prog_free_deferred+0x27a/0x350 kernel/bpf/core.c:1984
> > >  process_one_work+0x989/0x1790 kernel/workqueue.c:2269
> > >  worker_thread+0x98/0xe40 kernel/workqueue.c:2415
> > >  kthread+0x354/0x420 kernel/kthread.c:255
> > >  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
> > > Kernel Offset: disabled
> > > Rebooting in 86400 seconds..

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
