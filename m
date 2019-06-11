Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB823C5FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukX5m31s91RPrG+NW33eWlQiaePCExwtIpJMpgGiIt4=; b=l1YL8I5ulMjV3r
	KsYYweVLk+CETeWX+9pXE5MMaj4OmkQh7O03YLw2652e3/HsJC67FtogdD8aobn22n5fdfbLtr076
	/kIKL0v6w7DNvDbj/Y4xeykr2Us9BWbLUM3EjYlDfy59uamZvx1uGW6d5H+CjgIlBX3v0xq6nA2se
	6XiHRkvfnn0ZHyhSiRog+fspVD6oA180z843vzoIehebrGuRqgqQ+q4Q1O9ELFIskp/s68OguRsVU
	K3tigrfRmRZH/UMf8/v3XCFJu9zaL4OAEgAa6/k2MogyyP6cOJGyyo+F1sAPfA1XJEq7EhxCE1/eh
	ApwS1wZUxkRMrhNCZG5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacE0-0004w3-3C; Tue, 11 Jun 2019 08:33:48 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacDl-0004vP-Js
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:33:35 +0000
Received: by mail-it1-x141.google.com with SMTP id q14so3390973itc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 01:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B0Y3O12b1qmvyGKzErKcY2Z6E2KbcdPjV20vlFJhMxU=;
 b=BWg5U1gGfLRkwLfoAu8lH9SB/QqDRw4tOVtYw9KE2xrqLmWXWeT3EWucG3TlNuSZLh
 feVg/qrMTHbxZ05E/dm9fYUvbCebg649vufzVyPN1/o2Bp6O9Lbe8/AVXvPmGDYvcfa3
 DGG/Qr/QfYVB3sdoS0gBoSyr8zFkRcPwjpWI++OOemeeyu3OY+enYTEjHc+tUGK4nbMo
 Q1XnPEaFlSqO64tHLERIuUqZh/0TRbw4tkZxURrRyPKP0Ib2PLAnNc1MTSpv+WytPNP3
 nCfZM55QcZmCfXhdWa0tKZKg30VbCxlpp7Zt97K4EasEvGmn0zRfpY4rBAtfLrAzQ3r4
 Jt6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B0Y3O12b1qmvyGKzErKcY2Z6E2KbcdPjV20vlFJhMxU=;
 b=SkOZrMiIKQuSOLDRhfepzainlTzEFbASN+fvWs3Ua2hrZuXs0CDHcvAY4KnUlrfkgn
 LU3KSJLHoWI5eYmudRjnr5UngWB2eS/o2XJ+7YWG+VB1C6VLAImx57pRWual+i+Pjrj8
 urP5xXzT1OF/JtiUFIj7Zs9dzRdh5SWrkfJghyNYnKylFKlTNJWWe3LlxqeBKqUmcmY5
 PPpzGmkg6E1nwoKN/hYiX4fnb34AZLoV8WXQT2WEktJwKeiGUW+9M3+OgWF4Ehv8efGi
 qirDLTGYvxZpDz4tXSscCxEM7Z6z0rppR1KIKMwufsz56W+TfyVEd9yEGOIBDdl3JdKk
 dqCw==
X-Gm-Message-State: APjAAAUYMlXDRMNebPOXxYa0CSElOnKZc7Z685k19BN8KZLEyAUHyOZv
 /FGOjQIlKUyZhpffKyaXBrN6LKSyPJ0T44jTjbCntw==
X-Google-Smtp-Source: APXvYqyGRDEj+hGsvqMHlWAjCWLbR/yrf8USivwF+7Z+wkIgiAWU3j8sWSApndzgxwsYkARvyri0os2lim9tlenh+kI=
X-Received: by 2002:a02:22c6:: with SMTP id o189mr35904824jao.35.1560242012205; 
 Tue, 11 Jun 2019 01:33:32 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000e92d1805711f5552@google.com>
 <000000000000381684058ace28e5@google.com>
 <20190611080431.GP21222@phenom.ffwll.local>
In-Reply-To: <20190611080431.GP21222@phenom.ffwll.local>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 11 Jun 2019 10:33:21 +0200
Message-ID: <CACT4Y+YMFKe1cq_XpP0o5fd+XLD_8qMVjqnVX5rx1UCWyCR5eg@mail.gmail.com>
Subject: Re: WARNING in bpf_jit_free
To: syzbot <syzbot+2ff1e7cb738fd3c41113@syzkaller.appspotmail.com>, 
 David Airlie <airlied@linux.ie>, Alexei Starovoitov <ast@kernel.org>,
 bpf <bpf@vger.kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, David Miller <davem@davemloft.net>, 
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_013333_674127_908B4741 
X-CRM114-Status: GOOD (  23.55  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:04 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Sat, Jun 08, 2019 at 04:22:06AM -0700, syzbot wrote:
> > syzbot has found a reproducer for the following crash on:
> >
> > HEAD commit:    79c3ba32 Merge tag 'drm-fixes-2019-06-07-1' of git://anong..
> > git tree:       upstream
> > console output: https://syzkaller.appspot.com/x/log.txt?x=1201b971a00000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=60564cb52ab29d5b
> > dashboard link: https://syzkaller.appspot.com/bug?extid=2ff1e7cb738fd3c41113
> > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14a3bf51a00000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=120d19f2a00000
>
> Looking at the reproducer I don't see any calls to ioctl which could end
> up anywhere in drm.
> >
> > The bug was bisected to:
> >
> > commit 0fff724a33917ac581b5825375d0b57affedee76
> > Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > Date:   Fri Jan 18 14:51:13 2019 +0000
> >
> >     drm/sun4i: backend: Use explicit fourcc helpers for packed YUV422 check
>
> And most definitely not in drm/sun4i. You can only hit this if you have
> sun4i and run on arm, which per your config isn't the case.
>
> tldr; smells like bisect gone wrong.
> -Daniel

From the bisection log it looks like the bug is too hard to trigger
for reliable bisection. So it probably classified one bad commit as
good. But it should got quite close to the right one.

> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1467550f200000
> > final crash:    https://syzkaller.appspot.com/x/report.txt?x=1667550f200000
> > console output: https://syzkaller.appspot.com/x/log.txt?x=1267550f200000
> >
> > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > Reported-by: syzbot+2ff1e7cb738fd3c41113@syzkaller.appspotmail.com
> > Fixes: 0fff724a3391 ("drm/sun4i: backend: Use explicit fourcc helpers for
> > packed YUV422 check")
> >
> > WARNING: CPU: 0 PID: 8951 at kernel/bpf/core.c:851 bpf_jit_free+0x157/0x1b0
> > Kernel panic - not syncing: panic_on_warn set ...
> > CPU: 0 PID: 8951 Comm: kworker/0:0 Not tainted 5.2.0-rc3+ #23
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> > Google 01/01/2011
> > Workqueue: events bpf_prog_free_deferred
> > Call Trace:
> >  __dump_stack lib/dump_stack.c:77 [inline]
> >  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
> >  panic+0x2cb/0x744 kernel/panic.c:219
> >  __warn.cold+0x20/0x4d kernel/panic.c:576
> >  report_bug+0x263/0x2b0 lib/bug.c:186
> >  fixup_bug arch/x86/kernel/traps.c:179 [inline]
> >  fixup_bug arch/x86/kernel/traps.c:174 [inline]
> >  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
> >  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
> >  invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:986
> > RIP: 0010:bpf_jit_free+0x157/0x1b0
> > Code: 00 fc ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 75 5d 48 b8 00 02 00 00
> > 00 00 ad de 48 39 43 70 0f 84 05 ff ff ff e8 f9 b5 f4 ff <0f> 0b e9 f9 fe ff
> > ff e8 bd 53 2d 00 e9 d9 fe ff ff 48 89 7d e0 e8
> > RSP: 0018:ffff88808886fcb0 EFLAGS: 00010293
> > RAX: ffff88808cb6c480 RBX: ffff88809051d280 RCX: ffffffff817ae68d
> > RDX: 00000000> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/20190611080431.GP21222%40phenom.ffwll.local.
> For more options, visit https://groups.google.com/d/optout.00000000 RSI: ffffffff817bf0f7 RDI: ffff88809051d2f0
> > RBP: ffff88808886fcd0 R08: 1ffffffff14ccaa8 R09: fffffbfff14ccaa9
> > R10: fffffbfff14ccaa8 R11: ffffffff8a665547 R12: ffffc90001925000
> > R13: ffff88809051d2e8 R14: ffff8880a0e43900 R15: ffff8880ae834840
> >  bpf_prog_free_deferred+0x27a/0x350 kernel/bpf/core.c:1984
> >  process_one_work+0x989/0x1790 kernel/workqueue.c:2269
> >  worker_thread+0x98/0xe40 kernel/workqueue.c:2415
> >  kthread+0x354/0x420 kernel/kthread.c:255
> >  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
> > Kernel Offset: disabled
> > Rebooting in 86400 seconds..

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
