Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE4E3C588
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFY2Bml/ycMgyo6DgYG5pI3bHeLgWZE7hbhBYfgw2pk=; b=CgC1PFWpXdwtY4
	IuNQ2R+38Qj80S3eKEoYmj5gcFFRAr42qJXbIau0n+2pv+8/57peCRUkvjfeU2UcWN/9oU4Cl2qsb
	1n3khbC/QAsQ7pzjCoCpeUXwQyZWwd8HsjQNtJBzlU/+Y1/ZHVUu7Yc3iCrDOgXAfS6+EqNPCosa1
	s7OkoS/wH0uGkuoZXp3W5VFRQxLLcyIV3co2JMYiAEr7xi65tpjw1FjHsCkm1DOs9Idmeqx9Ad56C
	jk6NexT/c54qQ+Z3ZSaut1SN6KeMhqvmwIVFFB5zCVG9fC3Eq0dT1UW76+R0EmVPU77UEti2ya+bH
	hqUSJHoCQQi6L0bxVqvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hably-0007Kt-PT; Tue, 11 Jun 2019 08:04:50 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habll-0007KP-JA
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:04:39 +0000
Received: by mail-ed1-x544.google.com with SMTP id h9so18679588edr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 01:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=1VpP4BQl0scWmMIfvVrIwxl9EaLNPQUpAZnq/R1E08A=;
 b=ZIa8H2Jy5lWKWQz1TT7B/cBLsAJV/t0RUOsjzlAUmvjxv48OR/2G2Z3xwj89VqyCSC
 Y7NCdLF+j+Zb7j9MlTsh2N8qAd9mQSkTkGybODE0RYNXFT6BGqim8aTZFx8ccV9Ema2X
 VHizYVWLs+TJqJRySt+NsoMrmPz7kLRDwVbHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=1VpP4BQl0scWmMIfvVrIwxl9EaLNPQUpAZnq/R1E08A=;
 b=T7IGVga9gQJT2cfQsr5SDqZn9x+gozXvbU4Ar2UOCSEX+AVTgrp5mDjddahCYGBZ4v
 uzhPTtCIgOrAIJEZ28hAlTU45wEzi7aJeAOdqGOGonH/oNvviB7J5Lq6xeRgBShh1KRq
 my4HeseOPcwerrji8OpqjkNwUSUo7ySpM3N7RNCuI1V5YlOLmSU9C7+unnBpQKKjAPMR
 igB+5WX7WelCojetK6pDbDVEPRmsNNpD7OZhhwhvGIUMOAlrGO2sDPWA/GUeXJbHIzWb
 hIY0W9c24wcXR1oLP5Z48mTp4OKaiSDA3M61ZyB7omRNHY0XHOryyXwpAvHihbJU+J5I
 aSoA==
X-Gm-Message-State: APjAAAWPS1ioA+0977TDuoh1tFSNSDw9NxQ4m++hIugyNmC04ksjjx4l
 FKBsZnoKYeYxxxDeZpY+on4HTQ==
X-Google-Smtp-Source: APXvYqxTt4reyZxOwFM7gpLn44B2/syN7stLMXz/LTQgDQdiH76jkBmOlBKjhtvaB3E/mb8+p5bIJQ==
X-Received: by 2002:a17:906:ad86:: with SMTP id
 la6mr44226340ejb.43.1560240275503; 
 Tue, 11 Jun 2019 01:04:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id y11sm3576596edj.96.2019.06.11.01.04.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 01:04:34 -0700 (PDT)
Date: Tue, 11 Jun 2019 10:04:31 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: syzbot <syzbot+2ff1e7cb738fd3c41113@syzkaller.appspotmail.com>
Subject: Re: WARNING in bpf_jit_free
Message-ID: <20190611080431.GP21222@phenom.ffwll.local>
Mail-Followup-To: syzbot
 <syzbot+2ff1e7cb738fd3c41113@syzkaller.appspotmail.com>, 
 airlied@linux.ie, ast@kernel.org, bpf@vger.kernel.org,
 daniel@iogearbox.net, davem@davemloft.net,
 dri-devel@lists.freedesktop.org, hawk@kernel.org,
 jakub.kicinski@netronome.com, john.fastabend@gmail.com,
 kafai@fb.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, maxime.ripard@bootlin.com,
 netdev@vger.kernel.org, paul.kocialkowski@bootlin.com,
 songliubraving@fb.com, syzkaller-bugs@googlegroups.com,
 wens@csie.org, xdp-newbies@vger.kernel.org, yhs@fb.com
References: <000000000000e92d1805711f5552@google.com>
 <000000000000381684058ace28e5@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000381684058ace28e5@google.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_010437_701905_56DB428F 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: xdp-newbies@vger.kernel.org, songliubraving@fb.com,
 jakub.kicinski@netronome.com, hawk@kernel.org, daniel@iogearbox.net,
 syzkaller-bugs@googlegroups.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, john.fastabend@gmail.com, ast@kernel.org,
 dri-devel@lists.freedesktop.org, kafai@fb.com, paul.kocialkowski@bootlin.com,
 maxime.ripard@bootlin.com, wens@csie.org, daniel@ffwll.ch,
 netdev@vger.kernel.org, yhs@fb.com, bpf@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 08, 2019 at 04:22:06AM -0700, syzbot wrote:
> syzbot has found a reproducer for the following crash on:
> 
> HEAD commit:    79c3ba32 Merge tag 'drm-fixes-2019-06-07-1' of git://anong..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=1201b971a00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=60564cb52ab29d5b
> dashboard link: https://syzkaller.appspot.com/bug?extid=2ff1e7cb738fd3c41113
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14a3bf51a00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=120d19f2a00000

Looking at the reproducer I don't see any calls to ioctl which could end
up anywhere in drm.
> 
> The bug was bisected to:
> 
> commit 0fff724a33917ac581b5825375d0b57affedee76
> Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Date:   Fri Jan 18 14:51:13 2019 +0000
> 
>     drm/sun4i: backend: Use explicit fourcc helpers for packed YUV422 check

And most definitely not in drm/sun4i. You can only hit this if you have
sun4i and run on arm, which per your config isn't the case.

tldr; smells like bisect gone wrong.
-Daniel

> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1467550f200000
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=1667550f200000
> console output: https://syzkaller.appspot.com/x/log.txt?x=1267550f200000
> 
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+2ff1e7cb738fd3c41113@syzkaller.appspotmail.com
> Fixes: 0fff724a3391 ("drm/sun4i: backend: Use explicit fourcc helpers for
> packed YUV422 check")
> 
> WARNING: CPU: 0 PID: 8951 at kernel/bpf/core.c:851 bpf_jit_free+0x157/0x1b0
> Kernel panic - not syncing: panic_on_warn set ...
> CPU: 0 PID: 8951 Comm: kworker/0:0 Not tainted 5.2.0-rc3+ #23
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> Google 01/01/2011
> Workqueue: events bpf_prog_free_deferred
> Call Trace:
>  __dump_stack lib/dump_stack.c:77 [inline]
>  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
>  panic+0x2cb/0x744 kernel/panic.c:219
>  __warn.cold+0x20/0x4d kernel/panic.c:576
>  report_bug+0x263/0x2b0 lib/bug.c:186
>  fixup_bug arch/x86/kernel/traps.c:179 [inline]
>  fixup_bug arch/x86/kernel/traps.c:174 [inline]
>  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
>  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
>  invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:986
> RIP: 0010:bpf_jit_free+0x157/0x1b0
> Code: 00 fc ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 75 5d 48 b8 00 02 00 00
> 00 00 ad de 48 39 43 70 0f 84 05 ff ff ff e8 f9 b5 f4 ff <0f> 0b e9 f9 fe ff
> ff e8 bd 53 2d 00 e9 d9 fe ff ff 48 89 7d e0 e8
> RSP: 0018:ffff88808886fcb0 EFLAGS: 00010293
> RAX: ffff88808cb6c480 RBX: ffff88809051d280 RCX: ffffffff817ae68d
> RDX: 0000000000000000 RSI: ffffffff817bf0f7 RDI: ffff88809051d2f0
> RBP: ffff88808886fcd0 R08: 1ffffffff14ccaa8 R09: fffffbfff14ccaa9
> R10: fffffbfff14ccaa8 R11: ffffffff8a665547 R12: ffffc90001925000
> R13: ffff88809051d2e8 R14: ffff8880a0e43900 R15: ffff8880ae834840
>  bpf_prog_free_deferred+0x27a/0x350 kernel/bpf/core.c:1984
>  process_one_work+0x989/0x1790 kernel/workqueue.c:2269
>  worker_thread+0x98/0xe40 kernel/workqueue.c:2415
>  kthread+0x354/0x420 kernel/kthread.c:255
>  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
> Kernel Offset: disabled
> Rebooting in 86400 seconds..
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
