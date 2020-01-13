Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEF9139A3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 20:34:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FCojxWGO/bJWY423tRxRp3EXUUExM4/khCnYDHkOWOk=; b=XFnX8ZvN4VygLk
	3VjhDAB422caEtydakItJc4cz3efeGKnNhh9HT2v4CD66oVqju8mTDTvRGxXm5It2XRJm3+uFrBeF
	jBsu6m/G+7aqGeqVL0vKacAne5CFPSuthW6VkyPbbkxXwRUsyvFhKog2fkvHGcCZaLllEkfMQOkp6
	BG3gVC4/u6WyWWou4P452eXloY9TELMMF5zUauQH12JUDGIPsYRWQc9xZmpNqdpR71p9+85Fctqsz
	3hfjTmTpHZcZ6/XQ62AKSnyx99zI1pBjolrUNzjQo6Anuw7Ft+mNGtHdsGrGtzPOrlUmESt/U92Uh
	YPoH1dk9wiPTKAjLMorg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir5Th-000673-Kt; Mon, 13 Jan 2020 19:34:21 +0000
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir5TZ-000666-15
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 19:34:14 +0000
Received: by mail-io1-f72.google.com with SMTP id m12so6429660ioh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 11:34:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=iKgXkUUifDTHe1wYti7XokONx9JjbAC539M6HstQB/k=;
 b=L5PTFXKz1gtRzB7a3nz82hL085WADgusoKD+Pa7FwUHBGonuLFkRn/lj9iUIYTYdAv
 ayjr4oK+QSSZWnh1icJ59c6wafIlMb4epv8GOYQ1O63ELBoTNj0gLhiJ3dXUeNOV9dtl
 dNmv1KjR6alwaOU6S5hAmq1l9ac3lX15sl0G7zNrVYXWDw7hEYOie3ah/3erGjoGZ2r7
 kjtjDwoh9jtMgaKMYAwjC/4tYgBy0k+rNmGBtyD74jv2s3Gw5SZ3J5VX0ETvEPda2q2w
 ue4zt/agsenckUmrR5TKSZygdHf68S0zleRz4p8Jm0evV6+RcOUtx8OTnFQbekO09slj
 t7Hg==
X-Gm-Message-State: APjAAAVc8LuV0BMlAjK28+ml55L1ObSNP/jrqTb4h4uI434uT/VeTIEj
 0Fsd9eCCVY+NJ6R/cPrGGc3hVFLwVHQxEqcdZ+0S7m4flrZ+
X-Google-Smtp-Source: APXvYqzaNcVpE7dne1l1ihiEgfr6Zy2LxQzVYEVdovLQ5xW8OKaJwY513n5SHhDdl21ILG0FBwo9bbP7vlQ9sXE0LfOo+H5i3o5w
MIME-Version: 1.0
X-Received: by 2002:a6b:6e06:: with SMTP id d6mr13077449ioh.95.1578944051034; 
 Mon, 13 Jan 2020 11:34:11 -0800 (PST)
Date: Mon, 13 Jan 2020 11:34:11 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000048427b059c0a8f9d@google.com>
Subject: WARNING: locking bug in finish_task_switch
From: syzbot <syzbot+edec84a8b77e5a0cae31@syzkaller.appspotmail.com>
To: coreteam@netfilter.org, davem@davemloft.net, johan.hedberg@gmail.com, 
 kaber@trash.net, kadlec@blackhole.kfki.hu, kernel@stlinux.com, 
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 marcel@holtmann.org, mchehab@kernel.org, mchehab@s-opensource.com, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, pablo@netfilter.org, 
 patrice.chotard@st.com, peter.griffin@linaro.org, 
 syzkaller-bugs@googlegroups.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_113413_073702_C2D7AC8D 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
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

Hello,

syzbot found the following crash on:

HEAD commit:    6c09d7db Add linux-next specific files for 20200110
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=150b6a9ee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7dc7ab9739654fbe
dashboard link: https://syzkaller.appspot.com/bug?extid=edec84a8b77e5a0cae31
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16d005e1e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1527b6aee00000

The bug was bisected to:

commit 7152c88e556bcbee525689063c260cd296f295a8
Author: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Date:   Tue Oct 18 19:44:11 2016 +0000

     [media] c8sectpfe: don't break long lines

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10930c21e00000
final crash:    https://syzkaller.appspot.com/x/report.txt?x=12930c21e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=14930c21e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+edec84a8b77e5a0cae31@syzkaller.appspotmail.com
Fixes: 7152c88e556b ("[media] c8sectpfe: don't break long lines")

------------[ cut here ]------------
DEBUG_LOCKS_WARN_ON(1)
WARNING: CPU: 1 PID: 9970 at kernel/locking/lockdep.c:167 hlock_class  
kernel/locking/lockdep.c:167 [inline]
WARNING: CPU: 1 PID: 9970 at kernel/locking/lockdep.c:167 hlock_class  
kernel/locking/lockdep.c:156 [inline]
WARNING: CPU: 1 PID: 9970 at kernel/locking/lockdep.c:167  
__lock_acquire+0x21dd/0x4a00 kernel/locking/lockdep.c:3950
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 9970 Comm: syz-executor719 Not tainted  
5.5.0-rc5-next-20200110-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x197/0x210 lib/dump_stack.c:118
  panic+0x2e3/0x75c kernel/panic.c:221
  __warn.cold+0x2f/0x3e kernel/panic.c:582
  report_bug+0x289/0x300 lib/bug.c:195
  fixup_bug arch/x86/kernel/traps.c:176 [inline]
  fixup_bug arch/x86/kernel/traps.c:171 [inline]
  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:269
  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:288
  invalid_op+0x23/0x30 arch/x86/entry/entry_64.S:1027
RIP: 0010:hlock_class kernel/locking/lockdep.c:167 [inline]
RIP: 0010:hlock_class kernel/locking/lockdep.c:156 [inline]
RIP: 0010:__lock_acquire+0x21dd/0x4a00 kernel/locking/lockdep.c:3950
Code: 05 98 39 4a 09 85 c0 75 a0 48 c7 c6 e0 91 4b 88 48 c7 c7 20 92 4b 88  
4c 89 9d 30 ff ff ff 4c 89 95 70 ff ff ff e8 b2 ff ea ff <0f> 0b 31 db 4c  
8b 95 70 ff ff ff 4c 8b 9d 30 ff ff ff e9 22 f8 ff
RSP: 0018:ffffc90002d87738 EFLAGS: 00010086
RAX: 0000000000000000 RBX: 00000000000005e3 RCX: 0000000000000000
RDX: 0000000040000000 RSI: ffffffff815e8546 RDI: fffff520005b0ed9
RBP: ffffc90002d87850 R08: ffff8880903f8380 R09: fffffbfff13748ed
R10: fffffbfff13748ec R11: ffffffff89ba4763 R12: 000000009ecb23e7
R13: ffffffff8aa50270 R14: ffff8880903f8c48 R15: 0000000000000000
  lock_acquire+0x190/0x410 kernel/locking/lockdep.c:4484
  finish_lock_switch kernel/sched/core.c:3123 [inline]
  finish_task_switch+0x13f/0x750 kernel/sched/core.c:3224
  context_switch kernel/sched/core.c:3388 [inline]
  __schedule+0x93c/0x1f90 kernel/sched/core.c:4081
  preempt_schedule_irq+0xb5/0x160 kernel/sched/core.c:4338
  retint_kernel+0x1b/0x2b
RIP: 0010:arch_local_irq_restore arch/x86/include/asm/paravirt.h:752  
[inline]
RIP: 0010:lock_acquire+0x20b/0x410 kernel/locking/lockdep.c:4487
Code: 9c 08 00 00 00 00 00 00 48 c1 e8 03 80 3c 10 00 0f 85 d3 01 00 00 48  
83 3d a9 a4 58 08 00 0f 84 53 01 00 00 48 8b 7d c8 57 9d <0f> 1f 44 00 00  
48 8d 65 d8 5b 41 5c 41 5d 41 5e 41 5f 5d c3 65 8b
RSP: 0018:ffffc90002d87ae0 EFLAGS: 00000286 ORIG_RAX: ffffffffffffff13
RAX: 1ffffffff13675eb RBX: ffff8880903f8380 RCX: ffffffff815ad05a
RDX: dffffc0000000000 RSI: 0000000000000004 RDI: 0000000000000286
RBP: ffffc90002d87b28 R08: 0000000000000004 R09: fffffbfff1708c51
R10: fffffbfff1708c50 R11: ffff8880903f8380 R12: ffff888094a93d28
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
  flush_workqueue+0x126/0x14c0 kernel/workqueue.c:2775
  hci_dev_open+0xe0/0x280 net/bluetooth/hci_core.c:1626
  hci_sock_bind+0x4bf/0x12d0 net/bluetooth/hci_sock.c:1189
  __sys_bind+0x239/0x290 net/socket.c:1662
  __do_sys_bind net/socket.c:1673 [inline]
  __se_sys_bind net/socket.c:1671 [inline]
  __x64_sys_bind+0x73/0xb0 net/socket.c:1671
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x4483b9
Code: e8 9c e6 ff ff 48 83 c4 18 c3 0f 1f 80 00 00 00 00 48 89 f8 48 89 f7  
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff  
ff 0f 83 3b 05 fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007fb43a523d88 EFLAGS: 00000246 ORIG_RAX: 0000000000000031
RAX: ffffffffffffffda RBX: 00000000006e4a18 RCX: 00000000004483b9
RDX: 0000000000000006 RSI: 00000000200007c0 RDI: 0000000000000004
RBP: 00000000006e4a10 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000006e4a1c
R13: 00007ffc78f07a4f R14: 00007fb43a5249c0 R15: 20c49ba5e353f7cf
Shutting down cpus with NMI
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
