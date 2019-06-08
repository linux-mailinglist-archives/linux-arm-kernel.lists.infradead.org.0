Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269D739D29
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 13:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:Date:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=XgUxCJCyDMEG8bU1hymWWNhv9aaNq1KliNu1wZk0Au8=; b=D6ur7bi8gENKPM
	hWUuc/ZKN3IW7bxtLEy2CIz4sNO7LwgKgVOow/P5v0hnzDYGyCIDVaSKgcIknkQh26mXJvDJcq9Xp
	Cdec5nEyr2jmJUNLPztZBtLNLqWTkGlEwnfm9f93YBGKApGkQHgbDIjiYDv2S6fGloYzue+qAESzY
	bFCucmItzwhwDIEJpgLi4iaTGF8gPkcXAx9Org8yZS+MmGcJm6WjqevG/q3j95gYnYufne07pTfvN
	xUyUA62VgwBxxl+NkrUpbYB7IXShEyCYK4jpSwwsjz887oDuAe2Dqu0fNqJIgUAlqleaDkzyIZy5o
	t/DWsczUb4jdrYgtS62g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZZQX-0001CX-Ej; Sat, 08 Jun 2019 11:22:25 +0000
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZZQH-00013M-1H
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 11:22:10 +0000
Received: by mail-io1-f70.google.com with SMTP id k21so3330028ioj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 04:22:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=hVoG57mCN8NOasXfbKFhxicqTT/xW4k6vglaIu7Gsr8=;
 b=liKoqQI8iEnIpPhZSJTryXeIpdsK152fniItAjdf5r4nHlA1QLhlA7Z3v2ywVKr5Qh
 eoBFH9OKxhqaVRf1wHF2RfsrvwccJXRRE/KIYSdBF74J6K8eCbwjriT2sKVicBGXGTtt
 gkQXT0H0nMxzcj1aYCoPwqLS3iLSP5JykLd0oIHMA2X4JlsYSZg56yRh2yc/0D/KCkqp
 7THNJFxkmVhEgKALoY8Rj5ERbelXoG0DWKMrT7Czvg7krFC/Myx2yDV+gIvbCXo+roZ6
 UA48zfSNoCwGzKTgulBvSwMnLzPVPj4am9CyMBmr2BW6Fm1virJKbFfwzK+4wwJOvtRX
 Q0YQ==
X-Gm-Message-State: APjAAAUfRwv8ou9aRTT8nUDvbqMh5N5n6wDdOIlsYEkxOhGOEAoQZ7tR
 Vo01G5KUuLaYL/ERTHStL7bNfAiOw4GJPnAjJQLWUj1gfq7M
X-Google-Smtp-Source: APXvYqxR+yDqE0sbsVS8kE/JcX0C63g/G7rVLFT6sEkllG3CgH0tCwhH0z0uaNRie7Uk/8nBz/cdYlmm5MngD6hxJdcYk5neIjx8
MIME-Version: 1.0
X-Received: by 2002:a02:5489:: with SMTP id t131mr36685651jaa.70.1559992926211; 
 Sat, 08 Jun 2019 04:22:06 -0700 (PDT)
Date: Sat, 08 Jun 2019 04:22:06 -0700
In-Reply-To: <000000000000e92d1805711f5552@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000381684058ace28e5@google.com>
Subject: Re: WARNING in bpf_jit_free
From: syzbot <syzbot+2ff1e7cb738fd3c41113@syzkaller.appspotmail.com>
To: airlied@linux.ie, ast@kernel.org, bpf@vger.kernel.org, daniel@ffwll.ch, 
 daniel@iogearbox.net, davem@davemloft.net, dri-devel@lists.freedesktop.org, 
 hawk@kernel.org, jakub.kicinski@netronome.com, john.fastabend@gmail.com, 
 kafai@fb.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, maxime.ripard@bootlin.com, 
 netdev@vger.kernel.org, paul.kocialkowski@bootlin.com, songliubraving@fb.com, 
 syzkaller-bugs@googlegroups.com, wens@csie.org, xdp-newbies@vger.kernel.org, 
 yhs@fb.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_042209_114990_7C49FA54 
X-CRM114-Status: UNSURE (   6.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

syzbot has found a reproducer for the following crash on:

HEAD commit:    79c3ba32 Merge tag 'drm-fixes-2019-06-07-1' of git://anong..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1201b971a00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=60564cb52ab29d5b
dashboard link: https://syzkaller.appspot.com/bug?extid=2ff1e7cb738fd3c41113
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14a3bf51a00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=120d19f2a00000

The bug was bisected to:

commit 0fff724a33917ac581b5825375d0b57affedee76
Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Date:   Fri Jan 18 14:51:13 2019 +0000

     drm/sun4i: backend: Use explicit fourcc helpers for packed YUV422 check

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1467550f200000
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1667550f200000
console output: https://syzkaller.appspot.com/x/log.txt?x=1267550f200000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+2ff1e7cb738fd3c41113@syzkaller.appspotmail.com
Fixes: 0fff724a3391 ("drm/sun4i: backend: Use explicit fourcc helpers for  
packed YUV422 check")

WARNING: CPU: 0 PID: 8951 at kernel/bpf/core.c:851 bpf_jit_free+0x157/0x1b0
Kernel panic - not syncing: panic_on_warn set ...
CPU: 0 PID: 8951 Comm: kworker/0:0 Not tainted 5.2.0-rc3+ #23
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: events bpf_prog_free_deferred
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
  panic+0x2cb/0x744 kernel/panic.c:219
  __warn.cold+0x20/0x4d kernel/panic.c:576
  report_bug+0x263/0x2b0 lib/bug.c:186
  fixup_bug arch/x86/kernel/traps.c:179 [inline]
  fixup_bug arch/x86/kernel/traps.c:174 [inline]
  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
  invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:986
RIP: 0010:bpf_jit_free+0x157/0x1b0
Code: 00 fc ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 75 5d 48 b8 00 02 00 00  
00 00 ad de 48 39 43 70 0f 84 05 ff ff ff e8 f9 b5 f4 ff <0f> 0b e9 f9 fe  
ff ff e8 bd 53 2d 00 e9 d9 fe ff ff 48 89 7d e0 e8
RSP: 0018:ffff88808886fcb0 EFLAGS: 00010293
RAX: ffff88808cb6c480 RBX: ffff88809051d280 RCX: ffffffff817ae68d
RDX: 0000000000000000 RSI: ffffffff817bf0f7 RDI: ffff88809051d2f0
RBP: ffff88808886fcd0 R08: 1ffffffff14ccaa8 R09: fffffbfff14ccaa9
R10: fffffbfff14ccaa8 R11: ffffffff8a665547 R12: ffffc90001925000
R13: ffff88809051d2e8 R14: ffff8880a0e43900 R15: ffff8880ae834840
  bpf_prog_free_deferred+0x27a/0x350 kernel/bpf/core.c:1984
  process_one_work+0x989/0x1790 kernel/workqueue.c:2269
  worker_thread+0x98/0xe40 kernel/workqueue.c:2415
  kthread+0x354/0x420 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
Kernel Offset: disabled
Rebooting in 86400 seconds..


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
